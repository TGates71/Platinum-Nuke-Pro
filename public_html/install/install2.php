<?php

/************************************************************************/
/* Platinum Nuke Pro: Advanced Content Management System                         */
/* ==================================================================== */
/*                                                                      */
/* Copyright (c) 2007 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* Platinum Nuke Pro Installer was based on Joomla Installer                     */
/* Joomla is Copyright (c) by Open Source Matters                       */
/************************************************************************/
/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                  */
/*     Techgfx - Graeme Allan                       (goose@techgfx.com) */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */
/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */
/*                                                                      */
/* Copyright (c) 2007 - 2013 by http://www.platinumnukepro.com          */
/*                                                                      */
/* Refer to platinumnukepro.com for detailed information on this CMS    */
/*******************************************************************************/
/* This file is part of the PlatinumNukePro CMS - http://platinumnukepro.com   */
/*                                                                             */
/* This program is free software; you can redistribute it and/or               */
/* modify it under the terms of the GNU General Public License                 */
/* as published by the Free Software Foundation; either version 2              */
/* of the License, or any later version.                                       */
/*                                                                             */
/* This program is distributed in the hope that it will be useful,             */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of              */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               */
/* GNU General Public License for more details.                                */
/*                                                                             */
/* You should have received a copy of the GNU General Public License           */
/* along with this program; if not, write to the Free Software                 */
/* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA. */
/*******************************************************************************/
/************************************************************************/
error_reporting(E_ALL);
// Set flag that this is a parent file
define( "_VALID_MOS", 1 );

// Include common.php
require_once( 'common.php' );
require_once( './includes/database.php' );
require_once('version.php');

$DBhostname = mosGetParam( $_POST, 'DBhostname', '' );
$DBuserName = mosGetParam( $_POST, 'DBuserName', '' );
$DBpassword = mosGetParam( $_POST, 'DBpassword', '' );
$DBname  	= mosGetParam( $_POST, 'DBname', '' );
$DBcreated	= intval( mosGetParam( $_POST, 'DBcreated', 0 ) );
$BUPrefix = 'old_';
$configArray['sitename'] = trim( mosGetParam( $_POST, 'sitename', '' ) );

$database = null;

$errors = array();
if (!$DBcreated){
	if (!$DBhostname || !$DBuserName || !$DBname) {
		db_err ("stepBack3","The database details provided are incorrect and/or empty.");
	}

	$database = new database( $DBhostname, $DBuserName, $DBpassword, '', '', false );
	$test = $database->getErrorMsg();

	if (!$database->_resource) {
		db_err ('stepBack2','The password and username provided are incorrect.');
	}

	if($DBname == '') {
		db_err ('stepBack','The database name provided is empty.');
	}

	// Does this code actually do anything???
	$configArray['DBhostname'] = $DBhostname;
	$configArray['DBuserName'] = $DBuserName;
	$configArray['DBpassword'] = $DBpassword;
	$configArray['DBname']	 = $DBname;

	$sql = "CREATE DATABASE `$DBname`";
	$database->setQuery( $sql );
	$database->query();
	$test = $database->getErrorNum();

	if ($test != 0 && $test != 1007) {
		db_err( 'stepBack', 'A database error occurred: ' . $database->getErrorMsg() );
	}

	// db is now new or existing, create the db object connector to do the serious work
	$database = new database( $DBhostname, $DBuserName, $DBpassword, $DBname );

	// delete existing mos table if exists
	$query = "SHOW TABLES FROM `$DBname`";
	$database->setQuery( $query );
	$errors = array();
	if ($tables = $database->loadResultArray()) {
		foreach ($tables as $table) {
				$query = "DROP TABLE IF EXISTS `$table`";
				$database->setQuery( $query );
				$database->query();
				if ($database->getErrorNum()) {
					$errors[$database->getQuery()] = $database->getErrorMsg();
				}
		}
	}

	populate_db( $database, $version_number.'.sql' );
	$DBcreated = 1;
	$sqlfile = $version_number.'.sq;';
}

function db_err($step, $alert) {
	global $DBhostname,$DBuserName,$DBpassword,$DBname;
	echo "<form name=\"$step\" method=\"post\" action=\"install1.php\">
	<input type=\"hidden\" name=\"DBhostname\" value=\"$DBhostname\">
	<input type=\"hidden\" name=\"DBuserName\" value=\"$DBuserName\">
	<input type=\"hidden\" name=\"DBpassword\" value=\"$DBpassword\">
	<input type=\"hidden\" name=\"DBname\" value=\"$DBname\">
	</form>\n";
	//echo "<script>alert(\"$alert\"); window.history.go(-1);</script>";
	echo "<script>alert(\"$alert\"); document.location.href='install1.php';</script>";  
	exit();
}

/**
 * @param object
 * @param string File name
 */
function populate_db( &$database, $sqlfile) {
	global $errors;

	$mqr = @get_magic_quotes_runtime();
	@set_magic_quotes_runtime(0);
	$query = fread( fopen( 'sql/' . $sqlfile, 'r' ), filesize( 'sql/' . $sqlfile ) );
	@set_magic_quotes_runtime($mqr);
	$pieces  = split_sql($query);

	for ($i=0; $i<count($pieces); $i++) {
		$pieces[$i] = trim($pieces[$i]);
		if(!empty($pieces[$i]) && $pieces[$i] != "#") {
			$database->setQuery( $pieces[$i] );
			if (!$database->query()) {
				$errors[] = array ( $database->getErrorMsg(), $pieces[$i] );
			}
		}
	}
}

/**
 * @param string
 */
function split_sql($sql) {
	$sql = trim($sql);
	$sql = preg_replace("/\n#[^\n]*\n/", "\n", $sql);

	$buffer = array();
	$ret = array();
	$in_string = false;

	for($i=0; $i<strlen($sql)-1; $i++) {
		if($sql[$i] == ";" && !$in_string) {
			$ret[] = substr($sql, 0, $i);
			$sql = substr($sql, $i + 1);
			$i = 0;
		}

		if($in_string && ($sql[$i] == $in_string) && $buffer[1] != "\\") {
			$in_string = false;
		}
		elseif(!$in_string && ($sql[$i] == '"' || $sql[$i] == "'") && (!isset($buffer[0]) || $buffer[0] != "\\")) {
			$in_string = $sql[$i];
		}
		if(isset($buffer[1])) {
			$buffer[0] = $buffer[1];
		}
		$buffer[1] = $sql[$i];
	}

	if(!empty($sql)) {
		$ret[] = $sql;
	}
	return($ret);
}

$isErr = intval( count( $errors ) );

echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Platinum Nuke Pro Installer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon" href="../../images/favicon.ico" />
<link rel="stylesheet" href="install.css" type="text/css" />
<script type="text/javascript">
<!--
function check() {
	// form validation check
	var formValid = true;
	var f = document.form;
	if ( f.sitename.value == '' ) {
		alert('Please enter a Site Name');
		f.sitename.focus();
		formValid = false
	}
	return formValid;
}
//-->
</script>
</head>
<body onload="document.form.sitename.focus();">
<div id="wrapper">
	<div id="header">
	  <div id="phpnuke"><img src="install_h1.png" alt="Platinum Nuke Pro Installation" /></div>
	</div>
</div>

<div id="ctr" align="center">
	<form action="install3.php" method="post" name="form" id="form" onsubmit="return check();">
	<input type="hidden" name="DBhostname" value="<?php echo "$DBhostname"; ?>" />
	<input type="hidden" name="DBuserName" value="<?php echo "$DBuserName"; ?>" />
	<input type="hidden" name="DBpassword" value="<?php echo "$DBpassword"; ?>" />
	<input type="hidden" name="DBname" value="<?php echo "$DBname"; ?>" />
	<input type="hidden" name="DBcreated" value="<?php echo "$DBcreated"; ?>" />
	<div class="install">
		<div id="stepbar">
		  	<div class="step-off">pre-installation check</div>
	  		<div class="step-off">license</div>
		  	<div class="step-off">step 1</div>
		  	<div class="step-on">step 2</div>
	  		<div class="step-off">step 3</div>
		  	<div class="step-off">step 4</div>
		</div>
		<div id="right">
  			<div class="far-right">
<?php if (!$isErr) { ?>
  		  		<input class="button" type="submit" name="next" value="Next >>"/>
<?php } ?>
  			</div>
	  		<div id="step">step 2</div>
  			<div class="clr"></div>

  			<h1>Enter the name of your Platinum Nuke Pro site:</h1>
			<div class="install-text">
<?php if ($isErr) { ?>
			Looks like there have been some errors with inserting data into your database!<br />
  			You cannot continue.
<?php } else { ?>
			SUCCESS!
			<br/>
			<br/>
  			Type in the name for your Platinum Nuke Pro powered site. This
			name is used all over your site so make it something very nice.
<?php } ?>
  		</div>
  		<div class="install-form">
  			<div class="form-block">
  				<table class="content2">
<?php
			if ($isErr) {
				echo '<tr><td colspan="2">';
				echo '<strong></strong>';
				echo "<br/><br />Error log:<br />\n";
				// abrupt failure
				echo '<textarea rows="10" cols="50">';
				foreach($errors as $error) {
					echo "SQL=$error[0]:\n- - - - - - - - - -\n$error[1]\n= = = = = = = = = =\n\n";
				}
				echo '</textarea>';
				echo "</td></tr>\n";
  			} else {
?>
  				<tr>
  					<td width="100">Site name</td>
  					<td align="center"><input class="inputbox" type="text" name="sitename" size="50" value="<?php echo "{$configArray['sitename']}"; ?>" /></td>
  				</tr>
  				<tr>
  					<td width="100"> </td>
  					<td align="center" class="small">e.g. The Home of Platinum Nuke Pro</td>
  				</tr>
<!-- START - Timezone select -->
                <tr>
                	<td>
                    	Set Timezone:
                    </td>
                	<td>
						<select name="tz_select" id="tz_select">
							<option value="-12">(GMT -12:00)</option>
							<option value="-11">(GMT -11:00)</option>
							<option value="-10">(GMT -10:00)</option>
							<option value="-9">(GMT -9:00)</option>
							<option value="-8">(GMT -8:00)</option>
							<option value="-7">(GMT -7:00)</option>
							<option value="-6">(GMT -6:00)</option>
							<option value="-5">(GMT -5:00)</option>
							<option value="-4">(GMT -4:00)</option>
							<option value="-3.5">(GMT -3:30)</option>
							<option value="-3">(GMT -3:00)</option>
							<option value="-2">(GMT -2:00)</option>
							<option value="-1">(GMT -1:00)</option>
							<option value="0">(GMT)</option>
							<option value="1">(GMT +1:00)</option>
							<option value="2">(GMT +2:00)</option>
							<option value="3">(GMT +3:00)</option>
							<option value="3.5">(GMT +3:30)</option>
							<option value="4">(GMT +4:00)</option>
							<option value="4.5">(GMT +4:30)</option>
							<option value="5">(GMT +5:00)</option>
							<option value="5.5">(GMT +5:30)</option>
							<option value="5.75">(GMT +5:45)</option>
							<option value="6">(GMT +6:00)</option>
							<option value="7">(GMT +7:00)</option>
							<option value="8">(GMT +8:00)</option>
							<option value="9">(GMT +9:00)</option>
							<option value="9.5">(GMT +9:30)</option>
							<option value="10">(GMT +10:00)</option>
							<option value="11">(GMT +11:00)</option>
							<option value="12">(GMT +12:00)</option>
						</select>
                    </td>
                </tr>
<!-- END - Timezone select -->
  				</table>
<?php
  			} // if
?>
  			</div>
  		</div>
  		<div class="clr"></div>
  		<div id="break"></div>
	</div>
	<div class="clr"></div>
	</form>
</div>
<div class="clr"></div>
</div>
<div class="footer" id="footer" align="center">
© <?php echo date("Y"); ?> <a href="http://www.platinumnuke.com" target="_blank">Platinum Nuke Pro</a><br /><br /><strong>When finished you <font color="red"> must verify the install folder was completely removed</font></strong>. <br /><br />
    </div>  </body>
</html>