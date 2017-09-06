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
/* Copyright (c) 2007 - 2017 by http://www.platinumnukepro.com          */
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
require_once( 'common.php' );

$tz_select = mosGetParam( $_POST, 'tz_select', '' );
$DBhostname = mosGetParam( $_POST, 'DBhostname', '' );
$DBuserName = mosGetParam( $_POST, 'DBuserName', '' );
$DBpassword = mosGetParam( $_POST, 'DBpassword', '' );
$DBname  	= mosGetParam( $_POST, 'DBname', '' );
$DBprefix  	= mosGetParam( $_POST, 'DBprefix', '' );
$sitename  	= mosGetParam( $_POST, 'sitename', '' );
$adminEmail = mosGetParam( $_POST, 'adminEmail', '');
$configArray['siteUrl'] = trim( mosGetParam( $_POST, 'siteUrl', '' ) );
$configArray['absolutePath'] = trim( mosGetParam( $_POST, 'absolutePath', '' ) );
if (get_magic_quotes_gpc()) {
	$configArray['absolutePath'] = stripslashes(stripslashes($configArray['absolutePath']));
	$sitename = stripslashes(stripslashes($sitename));
}

if ($sitename == '') {
	echo "<form name=\"stepBack\" method=\"post\" action=\"install2.php\">
			<input type=\"hidden\" name=\"tz_select\" value=\"$tz_select\">
			<input type=\"hidden\" name=\"DBhostname\" value=\"$DBhostname\">
			<input type=\"hidden\" name=\"DBuserName\" value=\"$DBuserName\">
			<input type=\"hidden\" name=\"DBpassword\" value=\"$DBpassword\">
			<input type=\"hidden\" name=\"DBname\" value=\"$DBname\">
			<input type=\"hidden\" name=\"DBprefix\" value=\"$DBprefix\">
			<input type=\"hidden\" name=\"DBcreated\" value=1>
		</form>";

	echo "<script>alert('The sitename has not been provided'); document.stepBack.submit();</script>";
	return;
}

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
	if ( f.siteUrl.value == '' ) {
		alert('Please enter Site URL');
		f.siteUrl.focus();
		formValid = false;
	} else if ( f.absolutePath.value == '' ) {
		alert('Please enter the absolute path to your site');
		f.absolutePath.focus();
		formValid = false;
	} else if ( f.adminEmail.value == '' ) {
		alert('Please enter an email address to contact your administrator');
		f.adminEmail.focus();
		formValid = false;
	} else if ( f.adminPassword.value == '' ) {
		alert('Please enter a password for you administrator');
		f.adminPassword.focus();
		formValid = false;
	} else if ( f.adminName.value == '' ) {
		alert('Please enter a Administrator Username');
		f.adminName.focus();
		formValid = false;
	}


	return formValid;
}

//-->
</script>
</head>
<body onload="document.form.siteUrl.focus();">
<div id="wrapper">
	<div id="header">
		<div id="phpnuke"><img src="install_h1.png" alt="Platinum Nuke Pro Installation" /></div>
	</div>
</div>
<div id="ctr" align="center">
	<form action="install4.php" method="post" name="form" id="form" onsubmit="return check();">
    <input type="hidden" name="tz_select" value="<?php echo "$tz_select"; ?>" />
	<input type="hidden" name="DBhostname" value="<?php echo "$DBhostname"; ?>" />
	<input type="hidden" name="DBuserName" value="<?php echo "$DBuserName"; ?>" />
	<input type="hidden" name="DBpassword" value="<?php echo "$DBpassword"; ?>" />
	<input type="hidden" name="DBname" value="<?php echo "$DBname"; ?>" />
    <input type="hidden" name="DBprefix" value="<?php echo "$DBprefix"; ?>" />
	<input type="hidden" name="sitename" value="<?php echo "$sitename"; ?>" />
    <input type="hidden" name="user_new" value="<?php echo "$user_new"; ?>" />
	<div class="install">
		<div id="stepbar">
			<div class="step-off">pre-installation check</div>
			<div class="step-off">license</div>
			<div class="step-off">step 1</div>
			<div class="step-off">step 2</div>
			<div class="step-on">step 3</div>
			<div class="step-off">step 4</div>
		</div>
		<div id="right">
			<div id="step">step 3</div>
			<div class="far-right">
				<input class="button" type="submit" name="next" value="Next >>"/>
			</div>
			<div class="clr"></div>
			<h1>Super User Administrator Creation</h1>
			<div class="install-text">
				
				<p>The default Super User or Admin ID is <strong>admin</strong> and this can be changed later from your administration panel.<br /><br />
				   Enter your e-mail address, this will be the e-mail address of the site Super User.<br /><br />
				   Set your password. The system provides a random generated password. This password is CaSe sensitive and will be used to enter the administration panel of your site. Write something you can remember or write it in a secure place because the password can't be recovered and will be saved into the database encrypted.
				  </p>
			</div>
			<div class="install-form">
				<div class="form-block">
					<table class="content2">
					<tr>
<?php
	$abspath = "";
	if ($configArray['absolutePath'])
		$abspath = $configArray['absolutePath'];
	else {
		$path = getcwd();
		if (preg_match("/\/install/i", "$path"))
			$abspath = str_replace('/install',"",$path);
		else
			$abspath = str_replace('\install',"",$path);
	}
?>
					<input type="hidden" name="absolutePath" value="<?php echo $abspath; ?>" /></td>
					</tr>
<?php
	$url = "";
	if ($configArray['siteUrl'])
		$url = $configArray['siteUrl'];
	else {
		$port = ( $_SERVER['SERVER_PORT'] == 80 ) ? '' : ":".$_SERVER['SERVER_PORT'];
		$root = $_SERVER['SERVER_NAME'].$port.$_SERVER['PHP_SELF'];
		$root = str_replace("install/","",$root);
		$root = str_replace("/install3.php","",$root);
		$url = "http://".$root;
	}
?>
					<tr>
						<td nowarp>Your Site URL:</td>
					<td align="center"><input class="inputbox" type="text" name="siteUrl" value="<?php echo $url; ?>" size="40" /></td>
					</tr>
					<tr>
						<td nowarp>Your E-mail:</td>
						<td align="center"><input class="inputbox" type="text" name="adminEmail" value="<?php echo "$adminEmail"; ?>" size="40" /></td>
					</tr>
                    <tr>
						<td nowarp>Your Real Name:</td>
						<td align="center"><input class="inputbox" type="text" name="name" value="" size="40" /></td>
					</tr>
					<tr>
                    
                    <tr>
						<td nowarp>Admin Username:</td>
						<td align="center"><input class="inputbox" type="text" name="adminName" value="Admin" size="40" /></td>
					</tr>
					<tr>
						<td nowarp>Admin password:</td>
						<td align="center"><input class="inputbox" type="text" name="adminPassword" value="<?php echo mosMakePassword(8); ?>" size="40"/>
						</td>
					</tr>
                    </table>
                    <table>
                    <tr><td colspan="2">Create a user with the same information  <input type="radio" name="user_new" value="1" checked>Yes  <input type="radio" name="user_new" value="0">No</td></tr>
			<!--<tr><td><input type="hidden" name="fop" value="create_first">-->
			<!--<input type="submit" value="_SUBMIT">-->
					</table>
					<p>For security reasons is reccomended that you change the admin.php file name after the installation and then set the new name in config.php file.
						For this purpouse you must edit the variable named <strong>$admin_file</strong> with the exact new admin.php file name. The .php extension should not be written, just the new file name.</p>
				</div>
			</div>
			<div id="break"></div>
		</div>
		<div class="clr"></div>
	</div>
	</form>
</div>
<div class="clr"></div>
<div class="footer" id="footer" align="center">
© <?php echo date("Y"); ?> <a href="http://www.platinumnuke.com" target="_blank">Platinum Nuke Pro</a><br /><br /><strong>When finished you <font color="red"> must verify the install folder was completely removed</font></strong>. <br /><br />
    </div>  </body>
</html>