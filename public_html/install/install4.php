<?php

/************************************************************************/
/* Platinum Nuke Pro: Advanced Content Management System                */
/* ==================================================================== */
/*                                                                      */
/* Copyright (c) 2007 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* Platinum Nuke Pro Installer was based on Joomla Installer            */
/* Joomla is Copyright (c) by Open Source Matters                       */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/

// Set flag that this is a parent file
define( "_VALID_MOS", 1 );

// Include common.php
require_once( 'common.php' );
require_once( './includes/database.php' );

$tz_select = mosGetParam( $_POST, 'tz_select', '' );
$DBhostname = mosGetParam( $_POST, 'DBhostname', '' );
$DBuserName = mosGetParam( $_POST, 'DBuserName', '' );
$DBpassword = mosGetParam( $_POST, 'DBpassword', '' );
$DBname  	= mosGetParam( $_POST, 'DBname', '' );
$DBprefix  	= mosGetParam( $_POST, 'DBprefix', '' );
$sitename  	= mosGetParam( $_POST, 'sitename', '' );
$name		= mosGetParam( $_POST, 'name', '');
$adminEmail = mosGetParam( $_POST, 'adminEmail', '');
$siteUrl  	= mosGetParam( $_POST, 'siteUrl', '' );
$absolutePath = mosGetParam( $_POST, 'absolutePath', '' );
$adminName	= mosGetParam( $_POST, 'adminName', '');
$adminPassword = mosGetParam( $_POST, 'adminPassword', '');
$user_new	= mosGetParam( $_POST, 'user_new', '' );

if ((trim($adminEmail== "")) || (preg_match("/[\w\.\-]+@\w+[\w\.\-]*?\.\w{1,4}/", $adminEmail )==false)) {
	echo "<form name=\"stepBack\" method=\"post\" action=\"install3.php\">
		<input type=\"hidden\" name=\"tz_select\" value=\"$tz_select\">
		<input type=\"hidden\" name=\"DBhostname\" value=\"$DBhostname\" />
		<input type=\"hidden\" name=\"DBuserName\" value=\"$DBuserName\" />
		<input type=\"hidden\" name=\"DBpassword\" value=\"$DBpassword\" />
		<input type=\"hidden\" name=\"DBname\" value=\"$DBname\" />
		<input type=\"hidden\" name=\"DBprefix\" value=\"$DBprefix\">
		<input type=\"hidden\" name=\"DBcreated\" value=\"1\" />
		<input type=\"hidden\" name=\"sitename\" value=\"$sitename\" />
		<input type=\"hidden\" name=\"name\" value=\"$name\" />
		<input type=\"hidden\" name=\"adminEmail\" value=\"$adminEmail\" />
		<input type=\"hidden\" name=\"siteUrl\" value=\"$siteUrl\" />
		<input type=\"hidden\" name=\"absolutePath\" value=\"$absolutePath\" />
		</form>";
	echo "<script>alert('You must provide a valid admin email address.'); document.stepBack.submit(); </script>";
	return;
}

if($DBhostname && $DBuserName && $DBname && $DBprefix) {
	$configArray['DBhostname']	= $DBhostname;
	$configArray['DBuserName']	= $DBuserName;
	$configArray['DBpassword']	= $DBpassword;
	$configArray['DBname']	 	= $DBname;
	$configArray['DBprefix'] 	= $DBprefix;
} else {
	echo "<form name=\"stepBack\" method=\"post\" action=\"install3.php\">
		<input type=\"hidden\" name=\"tz_select\" value=\"$tz_select\">
		<input type=\"hidden\" name=\"DBhostname\" value=\"$DBhostname\" />
		<input type=\"hidden\" name=\"DBuserName\" value=\"$DBuserName\" />
		<input type=\"hidden\" name=\"DBpassword\" value=\"$DBpassword\" />
		<input type=\"hidden\" name=\"DBname\" value=\"$DBname\" />
		<input type=\"hidden\" name=\"DBprefix\" value=\"$DBprefix\">
		<input type=\"hidden\" name=\"DBcreated\" value=\"1\" />
		<input type=\"hidden\" name=\"sitename\" value=\"$sitename\" />
		<input type=\"hidden\" name=\"name\" value=\"$name\" />
		<input type=\"hidden\" name=\"adminEmail\" value=\"$adminEmail\" />
		<input type=\"hidden\" name=\"siteUrl\" value=\"$siteUrl\" />
		<input type=\"hidden\" name=\"absolutePath\" value=\"$absolutePath\" />
		</form>";

	echo "<script>alert('The database details provided are incorrect and/or empty'); document.stepBack.submit(); </script>";
	return;
}

if ($sitename) {
	if (!get_magic_quotes_gpc()) {
		$configArray['sitename'] = addslashes($sitename);
	} else {
		$configArray['sitename'] = $sitename;
	}
} else {
	echo "<form name=\"stepBack\" method=\"post\" action=\"install3.php\">
		<input type=\"hidden\" name=\"tz_select\" value=\"$tz_select\">
		<input type=\"hidden\" name=\"DBhostname\" value=\"$DBhostname\" />
		<input type=\"hidden\" name=\"DBuserName\" value=\"$DBuserName\" />
		<input type=\"hidden\" name=\"DBpassword\" value=\"$DBpassword\" />
		<input type=\"hidden\" name=\"DBname\" value=\"$DBname\" />
		<input type=\"hidden\" name=\"DBprefix\" value=\"$DBprefix\">
		<input type=\"hidden\" name=\"DBcreated\" value=\"1\" />
		<input type=\"hidden\" name=\"sitename\" value=\"$sitename\" />
		<input type=\"hidden\" name=\"name\" value=\"$name\" />
		<input type=\"hidden\" name=\"adminEmail\" value=\"$adminEmail\" />
		<input type=\"hidden\" name=\"siteUrl\" value=\"$siteUrl\" />
		<input type=\"hidden\" name=\"absolutePath\" value=\"$absolutePath\" />
		</form>";

	echo "<script>alert('The sitename has not been provided'); document.stepBack2.submit();</script>";
	return;
}

if (file_exists( '../config.php' )) {
	$canWrite = is_writable( '../config.php' );
} else {
	$canWrite = is_writable( '..' );
}

if ($siteUrl) {
	$configArray['siteUrl'] = $siteUrl;
	// Fix for Windows
	$absolutePath = str_replace("\\\\","/", $absolutePath);
	$configArray['absolutePath']=$absolutePath;

$config = "<?php\n";
$config .= "\n";
$config .= "/************************************************************************/\n";
$config .= "/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */\n";
$config .= "/*                                                                      */\n";
$config .= "/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                  */\n";
$config .= "/*     Techgfx - Graeme Allan                       (goose@techgfx.com) */\n";
$config .= "/*                                                                      */\n";
$config .= "/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */\n";
$config .= "/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */\n";
$config .= "/*                                                                      */\n";
$config .= "/* Refer to Platinumnukepro.com for detailed information on this CMS    */\n";
$config .= "/*                                                                      */\n";
$config .= "/* Platinum Nuke Pro: Expect to be Impressed!                           */\n";
$config .= "/************************************************************************/\n";
$config .= "\n";
$config .= "if (stristr(htmlentities(\$_SERVER['PHP_SELF']), 'config.php')) {\n";
$config .= "Header('Location: index.php');\n";
$config .= "die();\n";
$config .= "}\n";
$config .= "\n";
$config .= "/************************************************************************\n";
$config .= "/ Database & System Config\n";
$config .= "/\n";
$config .= "/ dbhost:       SQL Database Hostname\n";
$config .= "/ dbuname:      SQL Username\n";
$config .= "/ dbpass:       SQL Password\n";
$config .= "/ dbname:       SQL Database Name\n";
$config .= "/ :      Your Database table's prefix\n";
$config .= "/ : Your Users' Database table's prefix (To share it)\n";
$config .= "/ :      Your Database Server type. Supported servers are:\n";
$config .= "/               MySQL, mysql4, postgres, mssql, oracle, msaccess,\n";
$config .= "/               db2 and mssql-odbc\n";
$config .= "/               Be sure to write it exactly as above, case SeNsItIvE!\n";
$config .= "/ :    Security Key. CHANGE it to whatever you want, as long\n";
$config .= "/               as you want. Just don't use quotes.\n";
$config .= "/ :    Set the graphic security code on every login screen,\n";
$config .= "/      You need to have GD extension installed:\n";
$config .= "/      0: No check\n";
$config .= "/      1: Administrators login only\n";
$config .= "/      2: Users login only\n";
$config .= "/      3: New users registration only\n";
$config .= "/      4: Both, users login and new users registration only\n";
$config .= "/      5: Administrators and users login only\n";
$config .= "/      6: Administrators and new users registration only\n";
$config .= "/      7: Everywhere on all login options (Admins and Users)\n";
$config .= "/      NOTE: If you aren't sure set this value to 0\n";
$config .= "/ : If you manage subscriptions on your site, you\n";
$config .= "/                    must write here the url of the subscription\n";
$config .= "/                    information/renewal page. This will send by\n";
$config .= "/                    email if set.\n";
$config .= "/ : Administration panel filename. \"admin\" by default for\n";
$config .= "/         \"admin.php\". To improve security please rename the file\n";
$config .= "/              \"admin.php\" and change the  value to the\n";
$config .= "/              new filename (without the extension .php)\n";
$config .= "/ :          Path to where the topic images are stored.\n";
$config .= "/ :  Debug control to see PHP generated errors.\n";
$config .= "/                   false: Don't show errors\n";
$config .= "/                   true: See all errors ( No notices )\n";
$config .= "/\n";
$config .= "/************************************************************************/\n";
$config .= "\$dbhost = \"{$configArray['DBhostname']}\";\n";
$config .= "\$dbuname = \"{$configArray['DBuserName']}\";\n";
$config .= "\$dbpass = \"{$configArray['DBpassword']}\";\n";
$config .= "\$dbname = \"{$configArray['DBname']}\";\n";
$config .= "\$prefix = \"{$configArray['DBprefix']}\";\n";
$config .= "\$user_prefix = \"{$configArray['DBprefix']}\";\n";
$config .= "\$dbtype = \"MySQLi\";\n";
$skey = mosMakePassword(40);
$config .= "\$sitekey = \"$skey\";\n";
$config .= "\$gfx_chk = 0;\n";
$config .= "\$subscription_url = '';\n";
$config .= "\$admin_file = 'admin';\n";
$config .= "\$tipath = \"images/topics/\";\n";
$config .= "\$display_errors = 1; //  1 = on / 0 = off\n";
$config .= "\n";
$config .= "/*********************************************************************/\n";
$config .= "/* You finished configuring the Database. Now you can change all     */\n";
$config .= "/* you want in the Administration Section.   To enter just launch    */\n";
$config .= "/* your web browser pointing to http://yourdomain.com/admin.php      */\n";
$config .= "/* (For example: platinumnukepro.com)                                */\n";
$config .= "/*                                                                   */\n";
$config .= "/* Remember to go to Settings section where you can configure your   */\n";
$config .= "/* new site. In that menu you can change all you need to change.     */\n";
$config .= "/*                                                                   */\n";
$config .= "/* Congratulations! Now you have an automated news portal!           */\n";
$config .= "/* Thanks for choosing Platinum Nuke Pro: The Future of the Web      */\n";
$config .= "/*********************************************************************/\n";
$config .= "/*********************************************************************/\n";
$config .= "/* Include the configuration options for Platinum Nuke Pro  START    */\n";
$config .= "/*********************************************************************/\n";
$config .= "\n";
$config .= "// Specifically for Donations module IPN check\n";
$config .= "if (!isset(\$ipnCheck)) { /* do not display the following */\n";
$config .= "\n";
$config .= "if (defined('INCLUDE_PATH') && file_exists(INCLUDE_PATH . 'pnpconfig.php')) {\n";
$config .= "	require_once INCLUDE_PATH . 'pnpconfig.php';\n";
$config .= "} else {\n";
$config .= "    echo \"<link rel='stylesheet' href='includes/infobar/infobar.css' type='text/css' />\n\";\n";
$config .= "	echo <<< ERROR
		<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">
	<head>
		<title>Unable To Locate PNPro CONFIG file!</title>
	</head>
	<body>
	<table align=\"center\" class=\"submenu\" width=\"95%\" height=\"50%\" border=\"0\" cellspacing=\"0\" cellpadding=\"10\">
		<tr><td>
		<div align=\"center\">ERROR with the configuration<br />Unable to locate the platinumnukepro configuration file - pnpconfig.php<br /></div>
		<br /><br /><div>
		It could be missing or not readable. Please verify that the file exists and is readable in the root folder.<br />
		<br />
		This may also be caused by a third party module/script which attempts to include config.php directly rather than including mainfile.php and letting it load config.php, or otherwise does not follow platinumnukepro standards on how the constant INCLUDE_PATH is defined (this is done in mainfile.php, and is dependent upon other constants).</div>
		</td>
		</tr></table>
	</body>
</html>
ERROR;\n";
$config .= "}\n";
$config .= "}\n";
$config .= "?>";

	if ($canWrite && ($fp = fopen("../config.php", "w"))) {
		fputs( $fp, $config, strlen( $config ) );
		fclose( $fp );
	} else {
		$canWrite = false;
	}

	$database = new database( $DBhostname, $DBuserName, $DBpassword, $DBname );
	$nullDate = $database->getNullDate();
// save timezone - sgtmudd
	$query = "UPDATE `".$configArray['DBprefix']."_bbconfig` SET `config_value` = '$tz_select' WHERE `".$configArray['DBprefix']."_bbconfig`.`config_name` = 'board_timezone';";
	$database->setQuery( $query );
	$database->query();
// save general info in forum config also - convert to an array? - sgtmudd
	$query = "UPDATE `".$configArray['DBprefix']."_bbconfig` SET `config_value` = '$sitename' WHERE `".$configArray['DBprefix']."_bbconfig`.`config_name` = 'sitename';";
	$database->setQuery( $query );
	$database->query();
	$query = "UPDATE `".$configArray['DBprefix']."_bbconfig` SET `config_value` = '$adminEmail' WHERE `".$configArray['DBprefix']."_bbconfig`.`config_name` = 'board_email';";
	$database->setQuery( $query );
	$database->query();
	$url = preg_replace("(^https?://)", "", $siteUrl );
	$query = "UPDATE `".$configArray['DBprefix']."_bbconfig` SET `config_value` = '$url' WHERE `".$configArray['DBprefix']."_bbconfig`.`config_name` = 'server_name';";
	$database->setQuery( $query );
	$database->query();
// create the admin user - sgtmudd
	$cryptpass = md5( $adminPassword );
	$query = "INSERT INTO ".$configArray['DBprefix']."_authors (aid, name, url, email, pwd, counter, radminsuper, admlanguage, radminblocker) VALUES ('$adminName', 'God', 'http://', '$adminEmail', '$cryptpass', '0', '1', '', '')";
	$database->setQuery( $query );
	$database->query();	
// start - add first user account - sgtmudd
		if ($user_new == 1) {
		    $user_regdate = date("M d, Y");
		    $user_avatar = "gallery/blank.gif";
		    $commentlimit = 4096;
		    if (@$url == "http://") { $url = ""; }
	    @$query = "INSERT INTO ".$configArray['DBprefix']."_users (user_id, name, username, user_email, user_website, user_avatar, user_regdate, user_password, theme, commentmax, user_level, user_timezone, user_lang, user_dateformat) VALUES (NULL, '$name','$adminName','$adminEmail','http://','$user_avatar','$user_regdate','$cryptpass','DEFAULT','$commentlimit', '2', '$tz_select', 'english','D M d, Y g:i a')";
	$database->setQuery( $query );
	$database->query();				
		}
// end - add first user account		
	// touch config table
	$date = date("F Y");
	$query = "UPDATE ".$configArray['DBprefix']."_config SET sitename='$sitename', nukeurl='$siteUrl', startdate='$date', adminmail='$adminEmail', backend_title='$sitename', notify_email='$adminEmail'";
	$database->setQuery( $query );
	$database->query();
} else {
?>
	<form action="install3.php" method="post" name="stepBack3" id="stepBack3">
      <input type="hidden" name="tz_select" value="<?php echo $tz_select;?>" />
	  <input type="hidden" name="DBhostname" value="<?php echo $DBhostname;?>" />
	  <input type="hidden" name="DBusername" value="<?php echo $DBuserName;?>" />
	  <input type="hidden" name="DBpassword" value="<?php echo $DBpassword;?>" />
	  <input type="hidden" name="DBname" value="<?php echo $DBname;?>" />
	  <input type="hidden" name="DBcreated" value="1" />
	  <input type="hidden" name="sitename" value="<?php echo $sitename;?>" />
	  <input type="hidden" name="adminEmail" value="$adminEmail" />
	  <input type="hidden" name="siteUrl" value="$siteUrl" />
	  <input type="hidden" name="absolutePath" value="$absolutePath" />
	</form>
	<script>alert('The site url has not been provided'); document.stepBack3.submit();</script>
<?php
}
echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Platinum Nuke Pro - Installer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	color : #333;
	background-color : #669;
	font-size : 11px;
	font-family : Arial, Helvetica, sans-serif;
}

#wrapper {
        border: 0px;
        margin: 0px;
        margin-left: auto;
        margin-right: auto;
        padding: 0px;
}

#header {
        background-color: #FFF;
        background-position: right top;
        border-bottom: 4px solid #000000;
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAABOCAIAAABNIrqyAAAAK3RFWHRDcmVhdGlvbiBUaW1lAFR1ZSA2IEF1ZyAyMDEzIDAwOjE4OjQ2IC0wNTAwNVuROAAAAAd0SU1FB90IBgQUHT3OohwAAAAJcEhZcwAAHsIAAB7CAW7QdT4AAAAEZ0FNQQAAsY8L/GEFAAAET0lEQVR42qVYW3LkMAiE1Nz/kLsXyAFiWAFNC9mzP5OkKmNrJB5N81D0759v+ejn67Njvzr5cndxEY0/Ep+Cp/WheNNeqKf6fLm5q6jHgufu9VdDUiyt79aTrdVc0FjU3BY6rbSmIMdvbkv5+NL7zJIcqpbOy1xpTf6mxnhQoxflgGtJ1fgq/Cx5cbzkxXu8Wi1ISFLv01iUl5mlCi9FCjOXD/Fpin2i2CUpsbC1UA/R5VPbnrAAwNjFiIQPS6cXjhoydEZMrdxIpQVQYR5Il7UJqxUGsgNrjGv9gQAYHToZe+mg7yBBEvDq5Yyn2dW7eLag9qJEHnRxLmLP1tkqTE4RjEWSiTxsP3uleRbKrGGsOA0/KiphLTHBgQFGcijXwCseftllMvCsHUXNlFMJsM0vbq4PcMgnPs01376SfNwSjLe5fPwMxGdE6rn8nN6PNC6sVJuTnbr5HH76gF4qjZAkBUtuAFDSApe1cXLAvgN22oAELWbEcpwU7ahV8XiEjoBOOQuhq99wwNsmRs/bSG7zZJ9tBx+sH8lS4KJMqiYTCmhkaQPoTLp808OirGA/19U6XIcxCvk3yKpchYBi/IDysJumkbE7aRe2FxJQtq2o7zAjqqSThU2Q5ed1QDaJ1nq1CqjYNCp0etfEzbtRrVpUR6v9Tya8D8ad/T5sWC+VK050kFDeqTzMOIRmPOknEqhKeltIghVOFOGI59PFHV/CfmbE0Akb+1OYZ52ckItmR4RcnulwuKg4rbAMTPjgp07eqkla6aOqHU2uqwnjOcJd6c3GKeyQXRlRhy4/q+KhZtpzvif7dCSKdscF73yHUrvRpp7XT9YEVd/qJqQzZzkNFYeWzp3CPVKdgTkDxFzJvvK/QpT23VHY2B6dt7ZyDoKMBz+1Mlt0Q9dVripIC9s4sK1UjUdpG3lMKk+//UAAldoQEBtIHD/6yPnKFbSerrEVQPwe53rk8qy3xkbgIznfkEiHE/cJYwAsqsNUl+bR6aeP1hFEN91IS6d6Di5NzmCfX2xJwpluzD06rTZH8c06VDOYHxxKwbunQjOQQHVc2HrP7J2XIRoieqpiYPeQCA4JJwg/YnmgvRELgYHtbOt07DmunGU75yEhBRisHrY4gUvnOwdOTG+NS0tlfy0WM38COMOtY01SrOwycKjpX2rKRTXDayGZ9xXhfJ/3oB6mTG7j9u4b6zF0NgAczuBou4uDJuBWOcO7wzLICMog9qbuYG3fdHaNPq4lt63jllhM2Be6jc8sOz3kqM+RLO8rfvU0IuWIc8QY086oZzBh5Yo7Bi42uXn9G+MHR5vKlTR2T72Dt8xuwgxfEoue44XXUx0wsJm1xz7ELJ3WXW7yjOx29sDT1bhFCqpM62Ap6xRYVw9CRysWQmbbl8H7vjmWWnTh3SKWtbup79UR8p0t9+r9dWPGTUIpfx7DybfdUsfDszU4//vx/MLfPXPnkvUP2VjxVvGlA7kAAAAASUVORK5CYII=);
}

#phpnuke {
        position: relative;
        width: 100%;
        background-position: bottom right;
        margin: 0px;
        padding: 0px;
}

#stepbar {
	background-color: #333366;
	width: 170px !important;
	width: 170px;
	height: 400px;
	font-size: 11px;
	float: left;
	text-align: left;
}

#step {
	background: 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 no-repeat;
	font-size: 30px;
	font-weight: bold;
	text-align: left;
	color: #666666;
	padding: 10px 0px 20px 80px;
	white-space: nowrap;
	position: relative;
	float: left;
}

.step-on {
	color: #fff;
	background: #c64934;
	font-weight: bold;
	font-size: 13px;
	padding: 10px;
	border: 1px solid #cccccc;
	margin-bottom: 2px;
}

.step-off {
  font-size: 13px;
	color: #E3E2F0;
	font-weight: bold;
	padding: 10px;
	border: 1px solid #cccccc;
	margin-bottom: 2px;
}

#right {
  float: right;
  width: 555px !important;
  width: 545px;
  border-left: 1px solid #cccccc;
  padding-left: 10px;

}

#break {
	height: 20px;
}

.licensetext {
  text-align: left;
}

.license {
  padding: 0px;
  width: 530px;
  height: 300px;
}

.license-form {
  float: left;
}

.install {
	margin-left: auto;
	margin-right: auto;
	margin-top: 3em;
	margin-bottom: 3em;
	padding: 10px;
	border: 1px solid #cccccc;
	width: 750px;
	background: #E3E2F0;
}

.footer {
	margin-left: auto;
	margin-right: auto;
	margin-top: 3em;
	margin-bottom: 3em;
	padding: 10px;
	border: 1px solid #cccccc;
	width: 750px;
	background: #E3E2F0;
}
	
.install h1 {
	font-size: 15px;
	font-weight: bold;
 	color: #c64934;
	padding: 10px 10px 4px 0px;
 	text-align: left;
	border-bottom: 1px solid #c64934;
	margin-bottom: 10px;

}

.install h2 {
	font-size: 12px;
	font-weight: bold;
 	color: #c64934;
	padding: 10px 10px 4px 0px;
 	text-align: left;
	border-bottom: 1px solid #c64934;
	margin-bottom: 10px;

}

.install-form {
  position: relative;
	text-align: left;
	float: right;
	width: 69%;
}

.install-text {
  position: relative;
	text-align: left;
	width: 30%;
	float: left;
}

.form-block {
	border: 1px solid #cccccc;
	background: #E9ECEF;
	padding-top: 5px;
	padding-left: 5px;
	padding-bottom: 5px;
	padding-right: 5px;
}

.left {
  position: relative;
	text-align: left;
	float: left;
	width: 50%;
}

.right {
  position: relative;
	text-align: left;
	float: right;
	width: 50%;
}

.far-right {
  position: relative;
	text-align: right;
	float: right;
}

.far-left {
  position: relative; 
	text-align: left;
	float: left;
}

.clr {
    clear:both;
    }

.ctr {
	text-align: center;
}

.button {
	border : solid 1px #cccccc;
	background: #E9ECEF;
	color : #666666;
	font-weight : bold;
	font-size : 11px;
	padding: 4px;
}

table.content {
	width: 80%;
}

table.content td {
	color : #333333;
	font-size: 11px;
	width: 50%;
}

table.content2 {
	width: 90%;
}

table.content2 td {
	color : #333333;
	font-size: 11px;
}

.toggle {
	font-weight: bold;
}


/*  old stuff */


a {
	color: #C64934;
	text-decoration: none;
}
a:hover {
	color : #30569D;
	text-decoration : underline;
}
a:active {
	color : #FF9900;
	text-decoration : underline;
}

.inputbox {

	color: blue;
	font-family: Arial, Helvetica, sans-serif;
	z-index: -3;
	font-size: 11px;
}

.small {
	color : #333;
	font-size : 10px;
}

.error {
	color : #cc0000;
	font-size : 12px;
	font-weight : bold;
	padding-top: 10px;
	padding-bottom: 10px;
}


select.options, input.options {
	font-size: 8pt;
	border: 1px solid #999;
}

form {
	margin: 0px 0px 0px 0px;
}


.dottedline {
	border-bottom: 1px solid #333;
}

.installheader {
	color : #FFF;
	font-size : 24px;
}

textarea {
	color : #0000dd;
	font-family : Arial;
	font-size : 11px;
	border: 1px;
}
</style>
<!--<link rel="stylesheet" href="install.css" type="text/css" />-->
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="phpnuke"><img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABOCAIAAABZknN6AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAfkVJREFUeNrsvQdgG8exPn536B0gAIK9V4nqherFliX3krgldnqcvDj1/ZOXl5441Umc4sSxY8dJXOMiWZYsySpW7xQlir33AqL3jiu/2TsABEBKJimb8cvfMC1RuLa3O/PNN7Ozs/jIsAv78PPhJ/nDXMO1+Ifd92EP/ucPFf6+N+o9eAL/w9H9EC4+hJf3+vNhD344VNeC6e9Noz4E9w9l8MPPh58PP/+BSs5nmJlzwv9Ep5O5hvfC/4P6YS6dC+bDLvy/NLzM7GUC/08cXwZjcPTnxMtxb4unBlWYpDPYExgc/oM/8fRzud/R+Ulvz37JJDqEiX+L48lUP/EbEz8N2gbgTs8FoDGzRQCcmSs5nLU04TN6HD5bAzlrk4pjs9fKuaIqs+hBJMBz8E4MPtuXYmaLGe9/r+NzKBTMLK+cmRLP3hIw+Kw7HUfUmFV/1KHwDxxHsB1rOofJ6DuaYQEdTyA9DV/T6CiNjk6AAnu7CeHG2dahb9i7YuzduUdh3OMwgG8cZ7/g2sGehnG35tP0nIjgrPuemZ3uz1IM5wDS5gY1r93SzQW049g1DdMM3wyfo+5jrkHe8bkYLNSB9BwO81wIPZPgt3MAMckPxTjo5WAXoxkmKRDAHmU40MVpnE46JUavOTzHGCbeTZxxwLm/ObhnEp3I/Rfn9omDTBzWcWRt8Pg3DJ+eIXPHr6EDZ+2347O4aG6cuplHc2bdvNlR/jni+7PqbToBnMxctHB2XcHMqcc044fhc2W6mWvgZ/hcgPvsnzHLmFEcwBmOUifQF4+9Lxd6icdamFjIJSaKDD4R2GHwhKVIIDh7E3qCAMW+Z3k7ex2dEOmYOeHMAXIQ6Fgb+BjNzHyMZ20i8dkB/MwcNHzWqszMVpPx91+Lr8EnnvVgfUD9EWY2z5w9n55tjI+ZnQDNhivMhR89+1kpfFYBllm80yyxiZmFF8hgMZbNDXQC1dmYSwwnGS5yEveSWH4dB/C4PNJMLPAOpJuOIXmCoscCPzFIY1k5kwjsxIJCWILlx5g/w90cTp4xc7+KNAUCZDAY0Wql09GT1rbmsdFht8dtMo2bLePQJD5PwNBkJBqVyRUF+QVKpUqt1pZVlOu02mg0HA5F9Jk5cGEoFKBpTCpNeQo8d3Q0UlYmx/EkKXy/EQe/1ijQXHjEc+WRXGM84v3uN3zmBmtOzSpzDRRy1m17v71A/NoEfcbwzsyZjtAJeecIIYu4NBvuwmPIHmP0TAz/Y3FxbgY1MWkaO4eN22AMzVF1hkmEspiJKVYuqs4aB5r9m8bjT8cnvAJ6guAyeFen8T3ROI8n0tY+Pn+eWiKR8ng8giAmnxMOh+vrz+0/sMfpdOj16srKyky9XqvTi8VyHl+cbcjw+QJjJnteTrbHY29s6hCJVHw+1tra6HLbPveZLxUUVXR3dTsdzuLinJzsbJz9cHemKPLs2SEMV6xfl3ltMc/33xm8lgSCufHD57AD5572z0Ewgpn1MDGzneqciyDkBzpJ7hqy3WY1xolkldh0anLeChMb/BjTxJOiMXgszyXR3EmpNhPRwPjlcYKe+rZ4LDyT8B9SbBwH7h3tY9fesy5X+Oy54aVLVHK5hM/ni8WStBMuXTp/8tSx9vbGmpqae++5t7ikSCaXCYVSh8MT9EeiJGmxOEZGjXKZqLS8xGyyt7R0hEOBqqqi7JycpqZ247jZ7/Pu2vVabm7epz756dWr1pIklUbeaZp56616jcawYUMBN0eNfVC15IP+uZaJKRz7T+p2fM7iWh94wMX/Ta38v6MzOJaa4TLFcSw1VxGf/H1y6iSTah/wNI7HHWbiRibhCCQmsPG21pFrfK1gkNy/v7uqSlBcnBcM+tXqjGTafrnx0gsv/M1qG//GN76xZvUaPh93uVwET+j30z09Q2q1KhwJHzp0xOW0Xb91U4bGsG/f/qGhruVLFtz10XusFt/hd46YrSM8PJqdnREKhZuamuvrL9504+1f/9q3c3Jy01oSjUZf/tf52pXV1dU6Jjm99P2RXvzapPc/LYklEVf8gML0nALTXD0Ov2ZI+gCC+9y91HslV3HWjadpQCJEM9XJab/gcYafHEWf8syU/CN8ImlnUttaWoauxZWB5pw9awkE+jdsWOJw2PR6AzB37pDVannmb08eOrTr4Ycf/vSnP+1wOAcH+hQqdUnJ/KbWwZbmpuVLF3Z0db7yrxekEvw73/1hJCr89aO/0GnFX3zoc+s3bnziqVd27njOoFfq9ZkKuUKr05QUl1RUVo+OGf/nW9/yBUKf+8yX7v7I3UqlKrldRqPpyFHfjTcZdFoFl3f6AcSLuZPBa3HxmQ+yYuFzOFrMnKSe/9/Bs/9/v1Qqck/8EZ+Aiyc6xkGdxWw8CTS5/JhEEvyUfCgWc0lLI8VTHOQEpCfx/4kAPft/c+PgtfS8yRQ6fKTh/vtW2u02lUqVCMicOnvqd4/9Ytw4/NOf/eITn/j46VOnxoxjK2trDYaqPzz+lNU6+tWvfW3njh3PPvunedXFv//9EwRf//CXv7Riael3v/NtQ3b+gQNnjx47LBUzgaBPIZfl5OWrFBJ2NQAvPz+PJJmHv/RQd1fHitoNX3n464sXLaVpOhDG5BLkMTQ2Gbu67PfcXZMclP9PYGmzbBn+H6Za+LW1bm6AGv9gYxozx6/1HxiXYRIUG5+IiSS6KpG0nnxmPJiCTWA9k8bCY0tXE4F8JpWn45PC7QmDgk+E9uP8Hr/c0DdrCaZp5oUXWrZs0YhEQh6Pn5GhhS8jkfDTz/71+eeeocjgQ1/46j33frTx4nmKITduvkEo1n71q9/EMd8/nnt51+59v3rkO0WF+h8/8uu77rz1pVePhULuW25cV1fX9M/nnjONjxQWAVOvEYk1ajVfJmMA0NFqLAYLhgKFhfngB3z7m9/0eOwKlf5rX/nv5bWbIlF+eZGWYT+vvFpfWKBZv75yTgRwBhLfN9BvyDTIZbK5XnA6R7o4F7mG+LV1AjPnSGO2WAyZmR8wkjtn9QDmblaAmUNpT0TV04B44mhsuWpsfpP7xev39w8OLJpfw0zcYSJsA3ICf4Ko4MlZ9BP4PikYg6WH5tM+fHrGS1QnnIP6eqdIPCqX53m93pycXLhVMBj4/ve/ceb8RYqM5OaXL1iy5NKlRp/XtWzlRrUq91Of/tzgQPOOHbsdds8fH/sNj4jee/+nANl37DrR3lpHUdQdzzzR3tqgUioEfGJ4qLPh4omcvJKcvCJg62qVml1Yh57b0tJZVl5cu2b9Owf2eN3uv/zl98+s3OZ1j7jdPKFQCN7DmtXZ27cPLVhgkMvlU+btzDGi9Q8N/uuN7efqzzM0BaP+wN33P3jPx7A5zNz6P+KIT/9Df4BBJvZp6Wjf/fbeprZmn8+XqdP/5pFfGPSZH5g+Z+boqrniCfi1PWuW1jGR7JhAxYm50NgKJQ52j5w8sWv/XkB2sAWZ+swffut/SwuLOKLtD/j/9sJz5y7WeX1ehqYXVM8HUUlKiUz0ZLzQAKLs9IRlwVMDNingTjGzGi4mHKY7OgbWrilxOh1qlYahGZKO/OQn/3Pi5GlMqMawsEars9occjGj02UvWrLqxz96pKvj7H9/83srV6x47uXd+sysu++6/wtf/K8f/uR3f//bUx6Pg6IiFWXFy5fUCASCCIXLpWKlTIgJNTghCATCFO3BY1pNkNHo8Mi4Wq3DcYJhIj/8yaO9Xe07XnvqJz/6RXZ2LkXR+fm5Or3l+ImGW25eT5Lk9IMz70eIfvveva/veYsiozy+gCJxhiLf3Lf743ff95/o4TIfUNWf9UNn28B9Rw7/47VX6GiEgiEneBab9UzduTtvvu3/5CglBxtm+cQ5LlU0w4tm07r4MlBm8jxoYikS6jF/0P/bp/7a2tlOUxRPIAKMtrs9R06fLsovgJPaurt/89RfwPxTUZIg+ACiLe1tvf19JUUlyenu8RwcOu4qTBSvwemkOE3K1C1axETNrh9NZioQ6JErNvr9PplcEYlGfvfHXx4+chQTajECmsXr7xnUZ+YphP4oJevrHz52bJ/BkHXD1js6egYKCvJeeOlF81jPvfc82NJSL5NKDHplVpaBx+eXV1bk5ea4PBGLIxjwWiUCqUSWEYxG/BEfWiCAM9FICN6AEAqcbi/DRLfefO8dH73v1ls/ahkb3b79xS8//C2cQG92802Fv/t93cYNHolEQhC899djv7JQPfv69tOXGoRSBRUJRcM4GzSiZVIZTVNzpck4NleIey1r1OfmGTg2F9bx8eefv9TaJhTLSBA8EFcgPjSN/qDo9zbaxMx60Jg5TKefk0mfa8hzn/WKEzrhQKYkQmLxZaMYFvAHf/XM34aNJpFUSUXDwPCQ/BI8pVIFwnDqUsPft2+ncYFALAUCSiJWTsOPRCyhkYufnl3DgThXPoaF+lhBm4SJ4rIrOasDV/MpapYlhM6d61y0KNfhsGVmZlEU9eyzT+7c8TomAseTxAgxxlDLa9cp1TndTYe33HRXb//w2NDw1hu35hXkDQ2PXao/+7N9OxqbGkUCorSoIBIJLl+x6s4772QIucnmpamwXMdULFDqdAYguucvtre2XBTzaR5f5PY4dPpcPoHbHN4L588Ulc77858f/8XPfpOhUfMF87dvf3npspW1KzfAG2rUypxs3tGj52+5+fppeifvObafa2q52DUgkqlWzq8yW0xup6O3r1ur0dx3x10zj4bNYNG9xWq12Cw11fPnjv/gsw6XzAaa5nIKe6aXPL97T9vgWHZ2Xu2CeWaLuW+gt6+vZ1515cqlK6grDzp+bREt5gPp0M1xavy1FGubcbHaVHVEy1O5Go2pfsCTr++0eIPZOfnleblmqwUcOJvTOa+sbN2K2iHj+BtHT4pk6tLcbBEfd7ucvb1dHrfrtm3bdFodB8uJVaxYMn2PVy9IGBImNRafMAmziLmj6wIBuq3t4prV17lcTqDW586ffuGFZzGRDj0IF2JkmM8XfOnr3zxy4O2RvnPXbbuzqqpy+Zrrt23bppBLzp09+den/uiwmysqSiQikSGn7Lob76moWmA02px28w2blglFQp8fmK7r3OmTew+8Y7J6RGKRUpXhD9gMBv2KlZsPH9pdd+5glsHwxhuvHzlx4dS5uq03XPf3px+TSiUdHQ3FRSU6bTY0c82a6j176tatcwNTfh9zIq9w42AovPPEWb5I8uW7by/LT0/Jn7VNfdfPhYaLjz7+GDCA3//818WFRXMUgcSSl0vPLQxc8wdU7sKlel/AX7t0xex6LPHpGR6p7+zL1Gd++5MfA9lO9+SnM+j43HXbBzTCx7wv+vjeNxK/auNxrK6lfcBsB2H40ec+MfmqP7+2M4oRt25af+OqlWm3QpicSG68kt1Om16dyJqZOIVPzSo+0NrmLSomXB5Xbl6+2Wp6/PHfUrgMw3nIhEUojHLPW7GmZn7ln//0h7G+rtFR8/xq2dNPPq5UKhoamo+8s99qHufzKCpC1SxbsGbd5o7Opl/+9Ie2oOQvj31fIuYfP3PpwL43Dx14y+/1CKQqpUqj0eUFIx6Pz/+XP/7q7cPnTxzece999/320Z+/sv3QT3/x+5/8+DsvvPCPsN+2aP6So0eONDY2P/roEzyeIDdP6fYQLa0tK1fWTifqd3WpsNpsFrsV/Wm16HX6TJ2uqKAQzMaVyOrbZ86HomSGQlGSk52q1bPeE2RaYnvszGkc5zE4eDwXClFcb9YF8edopu79UMa6hnp/IHDduo3veuaOvW9t37OLpkiGpl7buWPTug1f/fyXZv06L+07hOPEhiULRYJZ0ab36APvPjgyhP4cHgIvvqaqWiqVFhcUXTN84rM6fdZpLB/c5AFmYsaTKxuDJ4VlYtGR/efqQRhqSorAY8NTI2h9I2N9YyY4uryqEuQkbaeNFKeCSY/NJD2dXcczsUQ1ec0rG5ZhZkwhUTinqbl30aKiYDAoEkme/Oufh4dNmESFbh7yVy9aVlJZefncSZoMffQjd+98zcFQPn8o4rRbCZ6AZuiaRSsv1dfVLi3NyisZGxt59V+vNLSNqDSGI0eeLyrMOn6y/szJfYcP7g1GMaWuQChRShTaMC0eHRx/9Of/vXxJ+bjZvu/tfUVFhT945NHn/v7Kiy/+/XJza0PdEYyQX25sjUaiWF9f/YVTK1duVMh5lZVVbW1186qrJRLp7Mi71WE/ePzYpZZmm93BRcwZBAQ0CorRVHVF1b13fGR+VXU6bQ+Hz7W0U9FooUFLzVl4nf1cam3FCR44iDqtlqLm6NHXooUzh0B8cuGWQDBQ39Q4ODI8ODzY1tUOAyQRizetXn/12MU7p0+9dfQoeFcoHhqNMhh57PSJe267C4x3Urhkui8HtN3qcsMvYM4pFAmkZ9ONs1oozcQ6IXiy7vypC+eGx8bY+C36gJTu2LsbxFWXod20dv29d3z038Go099qaHTEarfBeMULkjPgP8FPwO/7zMc+Mb9q3qyfOKcJPYkVQzidRMFQXktda4fN5YJ/Vxfl05waMglRYo5evEyRpFohV8mlLLgnIBxPKgo+sS1TUhiGiZULi5UZoJmJeVUsjvnxCdUZxwdw4LC00XiptnalSqXp6Grfu+cgJpRhGIEhTAmtql0lUefse+3J3fve+dQ9N25av1Srlo2OW3AePxwJet3OmqriX/3u8YaW0brjOyvLDAdPWbdef+tTf/kBTVJv7nnn8ME9Rw6/E2UEQrGEkBgImT5I47ae3oe//ulvf+2BPYdODfa2vNPTt2v3bpvZsuftfb5A9JXX38wrXTbS00RGoxKp1JCZ+eSTj8+bt0gqVeblag4ccDuus2dni8BOzuhFQVVeeWv32YYGDCegJ7Oyc7UaTWVx0dDoKJB3ABGgex093Y889ujNW7Z98p77k69t7OzxelygXUWZOvq9iMBMXwCLCooGBvswiqwqq+KCvB/wVUzX+Jwz9fWHTp8aGTeCVMOI0GQUJ/gMQ8LwuX1eWbwA0eROsLvd+8/UCSQKPBLUajLMZiMTBUjGxWg6i55FC880NkVDfmiEQZsxO4t+LTby0KlTuw+/E4pEQFaVam1BVnZedhZ0ydDISHtXB05F7U7HjrfevHCp/kff/r5MKp3dUL0n6fFf+t53gP2wdRPZWWbgSTBwFGJLBbl5+Xn5sd5j5kb8ZvdOTMpvdPqLNnZ2RoMBhqE4S48n5awHw6HGjg6aJvU5egQOiQqQOBavAD8ReGEmm3xmEpOP+zk4kxKy4VMzdx4dDprPC0Kz1CrNc8+/SPMEGCFA4I5sCV8gkBQW5MLdn/3rs+tWLVJIiL5Bp8Uy3t/fOzI0PDpu9vkimTnlGF9538c//9E7N/8UF6hUUuOY5ezZc4iGNzQJJQoS4/P4miiuiYYx/0DLnQ/c87tffuU3v/vTs8/+bXR0JOhzl1Qsb+883ts/+ps//HXBvPIzZ+rAYPEIQigQiMXizs7OxsbztbXXFxczPr/MZB5XqzNEk2KgV3EDR8bHf//Pf4Kq8IXSVYsXX1dbm5dlSD7X5nQ8/uwzAPEwsIdOnpArVHfcsDVxtLN/IBoKkNGwUia5An2exQL6aQn7Des37PS4PnbnXdoMDUsZPrgLaGffFWzTAqHgky+/3DcyCp6KWqNfWFlZVpDv9/teeuM11sWiBwYH5lVWX+l1DpytJwlBYUHhx7fdAIPb0NJ84tzpgpxcsUiUMmTTdvgut7VHgv7SvNy4bZijms6BUOipl1/uGR4G+lJdXnXdqtpFVZVpNGXXwf0HjhyiMBKoySO//sWvf/TTWfU5Tl8zfo6Mm7Jy8iuLisC1euvwYbDHOBkBJvfQxx5Ytmgxd068/+duw53ZhIzSdy9lJvLQMeZyOzjukRy9FsxW0npVnMX9bgQOkbBBpWDNGJ4aj0lC9MQGfvHQDzM5pT2eIpMO9QzKc58xxejtHdfpFWKJbMw4dvHyZYzHx3g8DOOhmLswY+fOV5557h8///UfGhsuq1Tq3s6Gt3bvtlodo0abVpe5ePmqxQsXLF1YnmVQk1HaZLU5XY5IhLKYLK+/+s/zdRdhoP0kTQg1FK4KR3FsuO2627a+/tKvfvDdX/3m0e/B0yUK/U9++qtvfP1rew+ceOJvr61YXLr3rbec5nFcJCXoYCQcGh8fz87O3r17x9Il67OzxHK5dnBgpKigVMAXTmOYUa+Nmsx/evmVKEZUlVU8cMtNGSolO8uR0lEZKtX/fvmrv37qieHRUYLH23vs+JrlK7SqWKGbrv6+aCgYDQfKC4vSaeA1gG0gELDZbGwk/Yqf1UuWwg82zem79w5krimOO/OdEoKh0B9feNFkdyo1+ruu27RifgzEj54/z+MLGUSWqIGRocryykk2hGHjZpH2YSPBF372jtsylAoYo8Xza+AH46azZq79YxaLz+uBEVdJJTGNnQuoYYKh4OMvvTxudSiUGQ/ccuOC8rIkcIx9RELhfbfd4Q8ET547RdPM0NjIsdOnNqxe+28x27mZhu994Ytsj1n3nzlPRUIkht11441LahalZrXN0cQA95iT505vWL1uZtHE2N4cKDaStISJYQN0o2Q4TIIwSHJBGOL58DEA7gLmF0bgUJqfn1BSZlIFMTwFsBMVI+N8g0krHJy8hzY3A4DPmLlTFD42NiyXUXKp7Oz5c06HBxMK2Vbw0a1FCpvF+uDddzz30mvf//Y3fvmr3/7rXy8NDpkr5y357ve+U11R4PF4z58/++u3Xx0eHiOpaFFhwZo163Lzct/eu72urpEkxbhEiclyMYEKfGTM1P+RB+9+9qkft7e2BUnhQ1/5wfUblpWUlGTqVf/11e+OmIP33L7un88+O9zfi0n0TMgcYUgsSmYasnJyctrb29weu0qpV6sKurv3r6oNSqWy6WgVaOlfXt8ZYfCNK1feuRGNty8QMFptfaPGfqNJIpF86qYtcZ0R3H/7Xb979hlgjoRAdKz+EqAMF3C32m3RSDALuef0e8UY3nz7rYPH3tm66Ya8nLz3luz/26azrqF5+06eNDk9+bl5X7r7LolImOAogNoA2Vg0AgI/ODx0Je7S0jcIhHdJWYlKJnuXyOT0uqFrYIiMRshISK2Qz5lZDQbDT7y23ez05uXmPoz6QQSP7hsdQ+JqNA0YzY889MnEyffdentDa7PX7cJIeseeXWtrV/974252txfMMDB3DCdWLVk2Z/NDaZ+O3q43973lDwTWzaxDkuYvsdQsdwzrHhykomEQhpx4VDaWJckK09CYEQ6R4ZBGqUT4wCSX/UomO3ga6ieBfKpXxMQTa+L14rkp2hkzd6+XNzpqXLdGB/5vw+VGTChFie10EAXcMTFGRiUy5cZ1C+HMjz/w2Vf+9U/45bs/+NkXvvC5Qwf2/NcXf9NwuY4mmaycrCjJ2C2WixfabrrtvpPH9x88eDwQJgmJjlBUYEIt6bDzQ+4fPPo/P/72pzu7O3t6eh+8F3CWMJnGn376yV27D65cd/P/fO0jj/zg+63NrbhIzxfIMjO0ZvM4SVJWq9Vut/t8vksNJzduuFOlFl9usAZDgUg0zOPxr6rCOODy33e/HSbp+7ZuWV5dCTTn4LkLB8+eQz4RQRB8wR0bN9BJGxOWFRQqFOpgBABF0Dc6zglo9+AQBe2IRjNg8N4jkf3NX/7U0dMJrLKyrHz69hhnZs+DPrCpCvBSvSOjJxuaM9TqL951h4jPTwZTo80JY4GmlHF8aGQ4HWfjDKe5pxdc48qCnGl05rS6zuZw0FQUxr28uHg2gz6r7n75wCGT0z2/vPzeLZuEAv6I2fz7F19B+/ngOHRCeUFBcuhfKBQsXbDo1LkzgKc2ByifRccWg3pfQ2hXqfE/ZrODJgH+5Oh1IpEobSDmJpj4zsljr7y5g6GptStqZzj7mLrXW3y3O67w1/D4OEVGKYosLyymWX9kYnETxoyMG0FOhHyeRq1GojLBz/GkRJjE3nqJyExKnTIssf0qnogQMam9zcx4QpUkcZ/PgRNKj8/X0TuAonCECGckGBVhCOaG227bvHbp+lVLOnv6pZocRWbVL376w4/fff2tt991HiASEP9TX/rUg3dfaOh46g8/yy5f++xffz7U0/bPf+7wBShckscI8mm3ACNNSxaX/fG3D8+bp3/qycfrLl52OOxjI2ODg0MOh0MgUv7y17/bsGbRpz/z5c6eEYE8O8rI+TypJgMHcJfJ5RKx2OVygXifOnlo/brb8/N1ly7ynU6HUqkRi99lTvWV/e+4fP51ixctqSjjVLQ4J1utkNkdTug0gqYNGlWa6ubnFvSNjoIumRwuDkpGTGZ2RSKdl5X9XpG4nsFBguDRcM/sHPrfxHHetxj9jP3oupZW0JktK5YKBARJk8lHQyQFwIbAHcOHjWNpRxOB0s6+Xpwk5xUVvledOTJu4lJTMlSauWHurX397QNDOXr9PZs3cBZOxBcU5+b0oAImQBSpwix9WksyNFocLB8ZwWjcbLNq1JoZu1mz25lvKtM1ZrWieVSSzNbrJ5tDfE7kr3tgAEQFVFWryUA+xKyENq2CF0MjYWBYSq5WaTiAjS0axXDwq2h2DjmPzZBmJsoDp8XO06rGJMoFY0l1KNPsDD6xdR+3iGmm0/oej4BhIlKZ1Ol0+oPA2QmUhQKMWCDBwtSZt3eKwtbCXHVNCa/5MvbNb/7PvXeuWbH25oGuBpkq6+/PPLdiReUPH/nF3t3vbNy45r5PfXX/24eff/r3QpFkYb6+e3CYJ8xbWF3z4Kc23Hf3iqNHDn7iwe8ODw/iPD7D9rtYkX3XvZ/58Q+/aTEOfPSeLwoVutVrNtfXtWAiRRh6rW8Quszv8wX8fq6WD8ED/aXUKjISFblczuzssEAguMqrQb+DwpTk5d68ekVC2oqyDcuqqvafPAnaQvBBYTLTBBHnCwm+iODx4HncoVHQcwqNX25W9pVJ3Aykt3doCHQSSI5EIhWJxNQcJFDPaS2QmT0MvKu65hYR8NCqyskwOmi25WZlDfR7MTY5amh4OD83PYrVNzLqcTnmFRdNi2JPb6B6hobYfA8a0bFZJ78yM+iE1w4eEfL4D2y7XsCPCZ5SJr3n+s0/f6aXnaUkDOp0IiIRS4iY5SOh6+YqEjJ19Rabw0VGw/BTll+QMo5zWMHG4fayTh5ZXlI2M7Vikgu5J9WWAe8/FHa4nGyqNKNRqmLsOV52BpgfwnSKys3mwAFPqtA+ufgjnuoipPYkHo/yM0lRoaQ6knyanBlSuJwej8fPI/jugIfPGR6eAMOR9eMxzLbb7tiy7fpcg+TxPz1V3zz22C8X3/3xb69ce+Py5dfXrl2zYX311q13trZ2EMrKYZP8vx682xdwaNSKoM/e6XFu3Hz9T37wzTXrr/d6bV0dl06e6SgsX51VtEgkllVXFi+oKF2ycqVS5PvpL/546tSlW++4we1079t7huRLCYGAJsEEZMyvNlhsPrPZzDXVarEFAiGtVhyN0oGAPxwOT97/L/mz6+hJcJc+snlD2jDDP4FfgNNtyNBMlgB4MIA7KmiD87ijo2YzO7S0Wq25osRMJYiBYNDudORP2mHKBo4IwQdrlZeTCy18fx3pa0HpOZlEBFpERSNF+bmTnc5QlMRxPrDXcMA3NNgHDRoaHc3JykmLEHQN9JOhIPhk74rC+PT60Gi1I1+NYcqKSpKnyN4/a3ri0mV/IHDbxnVKqZTi0uk4UXG7aRQSDMPvmRnpUz6BMMoTBUEFQsYlIV7p/kdOHT9bf/7T9z+YP/0Jnhm+2sj4OBkJw49KkRK9nD22z/xKo83OZkjjucjJpmbyTgg9A8GQ0+XMy8qZ4M44qL8F9SxNlxUVUwBMnMsTx144yiDmR2tUam4laqLZSbOuiTnRZLswccJEoTAUCIpvooonr21C+MInZ8gywtEwupKmPS53lCIwvhglQQJzDwQwGquors7TiUYGeuubhm6/dfOf/3Fw/YZ1X/r0tpd2HKkqkne2nDfao3AT2iNoqgvJVUUlxUqZQr3pui2f/dSDhQVZFsvI355+zGa1i8TiW6+v+MoXbqFwOU2FPS57W3PDIz/6Vt2FwfXXb37s0f/e8cbhPfvO02IJXyylMURHfEy+0dQTCft0en1+fn5TY6PLEwiFI2KJkM8Xh8LhSCR6lRhU/+jY6LjxhlW1Kpk0bZgdbg+ANUVG1HLZZAkIkQzgO/SqKn7U7nLTrKrnGrImn89ccXIs+INf/3RxzaJP3H3/ZAcWiSCOlxWVJkf80z7nLl3o7u+tKC5dvbx28gPh/nACuJ+L5i9IuepiHRgVuEQqkUzZzHMX0VUVpWUzkpOmtpaRcePieTV5SbYKmodaWFIGPwlFtjkd0AZ4RGqzrxKhGiIjIdbQpvftuMPFEDyxSJhjyBoa6gfy3tXfu3LpsrR+HxkbI6OhkvwCaipmA/YVGp+yuvXdUAOsL2eswbVK4JQdvdcF+AVuldq3Uz8RRgG6pXwa/Qy0/eTFiwqJcNWC+Wmd4A+GQPJAWEHHQSDTuDnSfp4AxBV+2BgSK65OZ3NHm0QiWbVkGXfa0y89D+0BJT988vinUG3qictHx8fYQxg7XitnzS8Gxs1oyjEaoclIWVFRSipaqoBzMnP9uo2SJGbG9S3IZFyQJu1XxAlhe+uocRRaCyZqEZsKlaLyY0bk3uGERAwiI6ZmVh8X4fLP//iYXm/42mc+l5wVOWaxsgE6Rg3wTQLS0nHKjZAXeptb/5hjyAYrzNoDhplqa6W0X7CkipPJ5R9xlGMPuE4nX8Hh/LQWSYdCcA4pFgtZxkmg1ZnQeBT4EKFQEV8ExBiP+H722M/vunlV2+VTbW1tSxaV7nj78tcfur2ySP7d7/1wyBStLFQXFor//sS3LneGGHE+gftv21RSUZwLVIKK+jo7Ln3x89868M4pmhbIFWKcnSUgCBTA8gcibg+JEfmf/uz1zz70ZSEz9t0f/bWjy4LJZDyJhsGFBA5uToQQyJweQiHCXC6XXq+vrKgcHh0I+ENCgQZkOOD3oQV7FBWJUEIhD4+XYZ6gQvUXATKWVFZMNgCIlyFzxrDBQTqVKkbNLi9bdwEzaNRwdMBo4pZjZGcarj6fEQyFTtSdb+nsAIVBws0WhMvNyqWnaICDlUI8A83AkFPe6vF//A3kGG4CQl9aVKLVaJKPvvH2nrrLl+D3suLSmvh62jHT+ItvvD5qHIPnNrY1f+Ohh9P0BHT+jb1v2Z12kP7f/ujnqU8MPvPic9zvX3/oS8kRbfBJX9y5vXdwAGeTSh/62IOxNuzfy7Vh//Hjf3rkl9wl8M0bb7/FRtJom91285Yb31UaKTKKQIGKTjacJqcHWlGYbZCLBOfqET8Fepg4LfFewNyFfEG2wZCGjNDyN/a91dzWCnqkUasXzqtJ+MYYKlSwG0YKvHgA6wWVVakDZENsieDnZsf8if3Hj7599B2GRouZj5w69o0vfCUvO3fK1zlw4tjbxw5zy573Hj5QXlTyxU98VnJVY9Da3ePzem/etnVyXAVagt6UZkry8yYfHTCakaPJE4LHXlpYDE09fv7sgRPHw+DxEMSKhUvgnDffOdja04P4ClIQIiHDYybTy7t3jo0buVINMF7ovR76ytWbeiVwt7s84IOigPuV1aS5ox1kAwYFblAGZq+ohPv+2Lkzb+zbhYLah/d/4ROfXTRvwRQBfZPp76/9y+a0o6RYhoZRqyyr+MonPzNVTAZoew45jYA7yPCFpsaWzs7egT5OYWHIVy9flVhNwmG03eViazrSGSoliZg7lpzj0jsywi4cpnMNBnoiZXZizpWj4tjEfh1YUlJOEkVPCcozKYGheIP5FPnuzN3tJijSYTCgNdnBABUBEhwOge0CloQRAjoSwULu3/zpV5+5b+3uN55v6xjR6bQqpf6rn10qxa3f+t7zOn1G7dp1yxfmtjZd0KvlD91dKhQISUpodwy3XmoOBdwMFWxqG33nRLvXB+5keO36TUsWzevo7ucRAqFIsGhB2cY1S2h+DuVv/fNfnti5t5MhRDy1EhdpCULCMGAcowRBUAxFyIvEeGskGO1ob1cq1UIUCedHogRFe6OkhKJ5JMVYbYGsLBkBBiGJAgOvB5BdWl2lRGSHnKwwXOGB4ry8tKOdI+Ps6i10q/IcVB1zzGJBAXeK1lwpVYbt+7be3tcPHAyFwkCzCCHKMgL1hiM5WVkc4rh8/j3nGkHlAMVMDjciXAT/2Lmz5y6hghUYwbtr280gH3Cm0+3+/T//EfB7CR6fm8YBh10d31o2GA499dJLYyYjwRexSRRCzhk3WsxPvvii38/KN431Dg4mO+kgLPXNTa/s3smw5cjBAbLa7RlJ82/DY8beoSE4MQFnsb6ymJ96+SXwEngCsNB4Xm4+uIbANP/68stG0zhPKGbTCoiuwYHSgoJ3Tp8+eOI4aDi4XiBNw8bR6USrgekDvlgdjsmgEAhFQOKVUpkCWB6BSJnRbPb5A2CcEurh9HigeUU56W44nPnEi88FA364ECz/iNFYM7EACo1Zc2e7w+mA3rjpuhvSRhasL/Qs9DB4DHDotf37LzY3sXl+QNvIYDiy99D+hx78zOR3ef3AgYutLTyBhMYRhwUq0z3Qf+bihU1r11+lB+qaWwQEtnhedWLIEmlR/aPjrNdIZ2dm0pOIyKDZAVSMJyTnlZejdr697yIqVkHwxTKNCmVugP96prGZEIhQ8hu7cQT3phfb2rYfPATf6HRZdocVvFiwsWPj49v37Hzwo/fPIoSCvFvwm2gyB4H7FINe39L86p7dIM9szJMAgeROe3Xf3vrGBlTIBAMbA3I4WlM5L+1aGOKnXns9GIroddkiAQEkBgS/f8zUMzxckpt76FKzxe2HO8OLsEEqvt3t+ePf/ooAjWZWLVteu3TFFAEci+WF3W853R6ksAJQWBgslMSZapwQOx9DYRkUlS3OL0wbApfXx8ZkKJFQJBSIkuZaJ8gHPuU8BX5Vrz+5ciRXFZi9gD+dSRU0rU3ZdLoMDCVURQRCudfvBUeGB4w1TIux0K+e+OGXP7H06af+1NLZY7QLbti0NEPtsdl7fvLMMYtNeMtd9/3vV7b0NB2NBB32sMs8NgDCx4MPgbs8/u5+i8cTqijNeuVv3zB6xHZHVCRk7r19M4FhHq/H5QvYbGNnT+ze/ubRC01ujMnElBqRWIYJdQxPhNFRDK0R4AHV4uFgJWUerEKZYY5Yxnw+l1Yr5fGwSEQsFGAEjkcjDJikoSGfXifG+USySw6ePhWNVBWXTMYLM8qBITk/y6BLYe7Qf00DRgatosZEAn5Zjh6GzeF2s6ky4HZlXaloe0Nn964TZzCeWCARwc0pEiwlwbATgEV5BdwjHB7/iMOL3L8o8CoazQ4T/HEwM/C+BA8wWs0myQLsvrj/UBTjI4HDCZq1EFkgcKzah8PhZ3fuMnt8PJGUDcURZcVlNEmN2+zPvrkHrgIIprAwN/doA/hWqWMt7Oh8452jsaPIt2TUCmUyGvYODSJbgmGsq0Fx7HbcZvv7zrdIXMAXoRtCOzXqDJDvN945ZvWGeGI5t4qPLa9PXGrrPHaxiSeUYFxtEZoOBoL0NKiGPxCEk3sG+idbgiGrA56gkIrZyUOpLxphpzoH55eXJ3TD5kQhlNKCwuShdHq8T+/YGaUJZES5ZfEYPnECjlgbaCaCPJwoAhuf+minP4CS63ECBmX74aNNfcNlpeXXrVh+8OTx3v4eaG0gFJrc2stdPc39o3Kl9qY1tSIh/5VdO8FCg38dCPiv0g9ARHoH+pdUVU55DoAmQ6GQYLYuPQWlrgvlJrD7RWDL5i/YfuhoY98QX6xAOb48vk6b6Q8Gdx4/DZYGRmdeWcFtmzdzBAWkZdfJcwKJ8sbVK1YvrDFarE+99HzADzDH1DVc3LbphgyNZqZB977RUdYDQEZocs80dHS9ceQ4TyRj2ENgfbL0cBq988jxxt4BQihlIkGclZlRo3GClMSfs+PICZIQLqgu/fiNW6G7nn7tVZBMePGGrt7CrOzmQVMUKShJhsIYO73s8nrtdivnjpQVlUwO1kEPPLfnQAgkW6JECkuEkIxEkTBn6XSon5M2Lu0bGeM2XFMr0undmNWGkISicri8jInE9qQSwnhKpbCJCEM82zJ9Wz3mSpZgerVlwmEeQAp3JrBpHBf6fX5DVq5QKCDDnq/+98dr52u3v/rc6NhIa6epsLAy2yA+X39hz8HLFnv4vx5+4P/7/Lr289u7ekYzDVpwqbncTJvNK5eLI9EwnNbeNQBe8PIlxQsXzsvSZwhx6pEffruxucvm9Lu9IasjyL4luJMSscKPyfMpcRG0h4f5APmQ9wDCzOeBGedDU4k8cyhLKBVXFvEXLq4RCnlGozsU8jFMJs2EKSoCQxoM+qVSMJt4cqoDRUVZpU3vjTGbI5YFoVKBw5F8wojNNWQBNEHfLCsr5BMESVJsxA1FrUAcyanUz+Rw7jnfKJCpFxQXLCjKA+cORPlSaxPcBXkG8flSkIE11aWstfde7uzGCYFGk7G4opwtPwEYxBfwkWHedfqCzR9dtmChUiIEIgx6mq2foEI7T56z+qMf3brtXFOLyW7DcZ5GpfEFQ88fOknyRbk5GjISHDOOoGQkHFPKFSR7Ydfw6K4z9bm5+fl6zakL5zF0EEvrmXGbAxeIQNZysmOp4qFI5LWjZ3hSxWdvvnHX8dMunw90EsDuwPlLvWYXGJWK/KwD5y6iPct5YIzxPecbZKqMrcsXQrNtNhOYEDbr+d2lMVuna2H9lRHjOPC+FEfbE8jVqjjlLM4vaO0E68j0Dg1XFZcmmaVh9ugEuEPLXz1ykiREW9YuqW9uBD3HGVoslkzU1EZuvgXhPrhWYLMnKT8wQZQ0xeOP292tw6ZlNTW3r0Hx6Nuvu+EPgwMYgbzvtKvgoYcutfGlio9fv67QgLbfy8vJ7+nrhi5ArsmVg6WjZjPIKogKe05KbDEUiQK3APAAQDDo9cmgCQThYt8YaiSGZWp1Jpe3ddR0/ao1MEzNfUOA7yCu59q63KGIWCq7Y92W6uIijC1MjTrn6GkwzCuryleCr0Chyjnra1cfOnEUQ24ifb7hwrZNW2Y6lW+02Likg+zMrLRBBwU5eKk5N7dw46KaVw4ehNtIJFIBj3/sUnPLsAms0eKqqotNDQj3CUDJnHjsgYlf7hp1+sAXWVxVCX62gM+7ZdPmf761FzwAsQjGlFxeUYS4FEOdbGxhpx8EyxYsUslkXFx02cIlaYhscjhePHSSEkiXVhZU5GaJ+LyGjo76pss4j9IoVKA1cD4XOAfIBQbAZjrCrTCVXM4dwmIAjcfAgXtr1smeFGZh8Bikp4RjJtasMok4YdImfJNjOewp/OlsCQQvPjgYJkkU/SApYTQqsljGCwuKZVJxFCfO1g9mKqIFOr7H62/rcm5YrXPY3AChTi+NRTHo5+GO43985uCihTUUZT1xcei6NdVSEfbC9rM0jX/uY2s2r13Y1NprsdrePgQ/TXweQCIbz+eL2QyEWPM0GlDaiBB3Bu0n1JpWTFJi9OeJRWKCCaGXpAmOVQF3xUVEVFjT2T2qyghA5w4NBsNhF1f4IRJlAgFfOCKD+woEoqQI3XiWVisUCCb7MUhbODusTEksA23ZV9/KsY9MlWJpaT4dC3fEpBbOn6yioH4vHT7LE8o+tmllni5Gk/vQxA4PI+jsOOOGD4AU/MAvZzsHEL/g8bMz9ZtrJ6YcoTE9Y+Y+i7uqqOjWtUtPNDQBeWRoIjuef3m6tRuO3rZhDZiQxt4hnjcIJEUoEr987DwA2dbamuXlRYPjpn+8sZPGCUk8w9LsdO+90JKRofvE1o0mm+30xUsMwWhUyrTwncsXRHEehskChsgeAqjyk7z7Nm/I12f4ogxfJAO1CUaoS4PmRZUVNy2bN2yx84G84zg8a+fZJqlcff/65QaNEtAWHGQQTC6m8a7SCC4tW2WDaO3uNuh0qa3yFetzOFDL0uvbuvkwcH0jsWgP5/waLWZEuLS6hCPy1rnLYCDv2LBuYUlh79CQwwkGm8jWZXIncDoDnAtGAZAXvKK0HASLy4v8KgYTC/iHGtoKsnNuXrWMe6JSLkNjh5PglqXx04OXWqIYrzAnM08fqxsK1qhnoA/Rf4WavDJz7x0cokmyMCdv8jlGq4MTSGixIUOXzECPtPSHoxRqDB9fWFJ8rKV7UWXl2gVV+y40o6gguDsy6anmDpVU9sDWjWq5LNHac22dnmAE4HVtTWXiy1ULFx0+cxo9C4Swv2/L+s1XBPepIgmgBYFgAFEgBivKzU8WLTi041SDVq27f1Ot2ekCTYHBAsHoHBk72z2ck5l95xoAYqnd4ejt7waawGYGU8mxqa5hIxopFCaNrTIpzMq6ae06s9u7bkE1fLOqDFXv8ARCJ5vaMRwxd2A/TEp2XErHvnWuAfyAm1curCnIjs9aF15saQKImnA74hhs93g59S/Oywd/f4KEs9hsBOaOiB+tUiIiNbHHdiISk5QJg6eR8iQ7MJH3nkikSZs2Z/+aFnNXKnE0JxkIwBhLJRE+X22zjwgEwrLivJPHGgZ7jPO/unm0t9Fm97pdFE8ssVj9WZn66ny93ZP78ANVr7z44vEm0Zc/X/6rP/yrvsV3x5Y1Npuxvd9lt4wKcPILn7n1id98a/fBhkvNbUG/p6i4HCB9bGQIdDgSjQIiP/jgg01NTXV1dWq1OozqsvIDXlexxlieTbbbix0eoYgHX/KQL4o8TDThhtPRKBUVC1HlLLEESK4PZytkgnmiaZJH8IH6JgcZ7E6nSiqZ0s8dMJpYo0kU5xUkTgBkf/XMZacHHAIKLPm2pdVA21maEw2EgmgOB8VwMif37cH6pjDFXL+kKls9AZdwHzYwgmdmaCdPgZgcXnbzLcygyUANwJOjqJRKobxx2Xx4l0ETG0DEcPDHuVezeALLK8vm5edAM6zeICEQgxz3gHz5yRuXL5iXl8lO/5o5QpplyOZaC/RZIpXfvrJGyOcFwxHkJQDcqDRphsrs8rCPwwqysrhD8M/Ni+flZaicXqCxEjYwItp/ubs8L2fb4kpoktnlQ7EjDI8wPDFfdO+aBTolSudw+vxo3gLD2WjSu4N7RVERULBQKMimhUycP2J1gN8jFwu5LwuyshGW0ZTJ7vAHg2KhEI/nPoFoCQQTKzzEYvGyytL5RSjYYrI7WaRmlAo5VyKGU61xOzunjQHyqtKG1ekLgDFgMApGH8janauXwglc+ht46GhKg+Blg91KGlm3P9AyMEbwBfPzcyaJARtVu7KRo5B0kUqWFaap9bjdiQJcGJGVxBJQskD7YNuIhVv7sXVxhc0byNRqty5GNNwTAr9MwNDRuo6eYDB4/02bFRJx4unwRnVt3SB9S0sLBASeUBl2daXWZo1geHTMZLp6EuFkeDfa7VzSgUqhSLOU/kg4gvHuW71EyCPMTi8nMGKx7O1LnaAd966uQYXyKXaY0FwXOBz6tAlzh8/PkeJ+k7kgM2b7l1WXc78kHufwBzjqjBJGr9x+MHhWd2B5Vem83MzEg8ZtdoZF1UxW1xIlZeD/gbFxVv0BvpWsnMS3sGExG4XsEVOksljqwG2vPXF1Urg9uchMAsSRf5CyhHViMjbuAjDJNRGmFXMH9Q5HNE6nXSgUCYU0jmdarR4MLc7MwDBBaWE+j2HMVo/TQ2IMv3vQXZAp1mm1BYV6qZEa6ul849DodauWCXl4U687FFIESKlUyKMxJU+9qHvU/edn96xdMf8rn72JENxzqbGzs2vQ6fZqVKqxsTHG75PJZHK5nCTJrKwsUEKPx8OXyUxmazgczjMoW8cpvlAM8EMzPBxNX6PhQ+k80ShGe7fdeAOOi8aMQxIpyecLeDzC5Qb/A65FDBG+mdBPl7PAwEXB0l1Jty+I8oJ5ArAc/lBoxGLvNdn6TI4QegSlV8puXLEwQy7lAhpGG5qdB9NcBHZ7UscOm63NfYNqpXpRUXaywwSywi56ojM1mslk3+nxUChjLJqfiSL+yapSma0v0ml4OEGStMnhZpB7RujUGpKlbDcsrARNgJcCUxQBDkHAK+Ctw+bV1SWV2bFS7y4AVpTqQxXGllRgWrn0M9etBCEC0EGvg6P5z6KcvGRsghfhcsiQ4xn//oYFsZJVLl+ALbpLh6K0WizcUhNbju8OhNF6CFagasvzM2QxEBkat3AF27KmModTUA2Z7LMfufvs5YZVCxcmwwqAI1BanTyWyVpg0KNmsOI7MDpWWRirtjZutSZelvtsXVTBtRywDA0rO0OuQPnjVCI33mRzcCcX5uSmu+1OpLHwaNCsbcvmA3Gg4iG/fuM4Wy+at3rxsmS0bewbYuvcEsWZGYmgVvvgEAIykbgKVZi4olb2Dw+x6WrU5Ex8NCuAZJUvkcjB4wSq3jYyPmD1esMo1ifi4RvmF1fn6MIktbCA4t6Cm1oEPuR0+pZVFOtUyuQhqGvtBMTHCKI6P5v1pydSydUqYHgWeLtQODTTxVAoo4wGXgsYp08zDAqR8IH1i+Ui8KFpJDA8IWh1z7hNIpZ+dOV8jkKBaYSRYlUVBw8m1uC4YgCAUhGUp+BwefIyMq7UhiGTnS3iH1ZIFFeSOrfPD+AukchWlafM0AyMmdkMC6yIFQZmYhYTH0dRdeSSGNBWeRSeUiyGGbfZuFQZTtQT0ZjkHBcOqpmU3ScYbKrCjyk5NhzAJ9eRZOu5TwPcMUYo4JktFq02ky/AMzMVXV2UFW1IpBKJRQAdbk8Q7ubykphI8sb+kdqFpVoNXZCjDIWGTtT1SaTCMXvUYvHJ5DqHX/nSUf+Xb5CsXVa495JUULbSQfacbuh4+sVHsjPVC6qrlRog6IVdff0lJcVOp9NsNj/xxBMSiUSpVEYiESARgVBIJePRAu2exgwSWKaQiAIX5xFsMJrDTBojw0KUaAMkTtHTcxysKEpUIwgyKlMqBSCOMp48GUa5agGTA+4Ai+5gGJAd1B2G+Ux7H08ogX+yOyFQgJLLK4qBBCYEdNDIrUGnVanTj9zn5OVmgOklxblph0ww5FQU4FuvUU8ejnGLhQwHqUhIHis3mPIR8NA7ewLBUDjMChyTn6njeoE7xLJs4P44y/7pPG3GypKJAgYmu4sTU3j05AaPI0RDBgPxxGRr5HAi5oKs0RSrMU1OH81OdoGQravM5+Ox2RqTy8dm/9MqqXBhfky4QVG55T8glXqdnpweTOgyMm6/fgueulshtBZAKkczAU8Gnd5ks8JgAZ8qy8tj39cO/VCQnT2lPrPMF2MhIyftBBO3VQu7Miito8wOLqsvCuCYmzHRjRanu7G7BxSudvFShSwl5bypbwCMQb5Ww1kCJBuNbdwIblq99uoTD+xO21PvtQ0DjWSVpkeszr/s3McTSnlAfYCXMAx4VNuWVCqlyKDycEwmRItaAeXBOaPICBkJCnBqdU1Vmvg1dveSUbSkQC6OlUFOWvKOjBb3xUxLmKCt7dnohEGnm3ytTCjgvgRXDwktkl1qy4ISPhFLmHF4vJyoG/SZk/VFp5D1jwwzVPRYff38ovwrtQEYFagVGQnpVIorrfU5DgpLRqvyDDwennzOOJp9RbRfr0GrFFmZiRUPcHg8XLYSvFqanIA8cP4K4BI/NQLMvNdLDbkbTissA6AplZLDw97KCppH4MuX5dfXy7q629atvW7+whK3x291hqIk5vUzGF9KCzNwocLtd+Rk61bVuF48MKKUKcdHQo19ZFme2kYpm4aEf9kbuWdVljY/61ivJKS4RS4ruKNEc6au/a3DZ+QyiV6n9ft98PJA1TMyMqqqqoLBwODgcCAQUKtVPDIUoQVW3npCphaTNuDsfD6BepoHzjCFUVEMhNdtu/3+rSQVFUlEo6MtCxeqhUIJUIVxs0ellLMTqrJkVAJBcbrd6BtmUt40okJCYHP5iAkCS+YBmufpVDVFeSK2mEHyILFDi2Iy4G+mid2w2TIwZgQbAySISiqzDq4AzSb85humSPgdtTnZAnJI9xTcWsSpPoMmG3cT1jykb+lndnrYXSxQ6sjKshTiaUIOMsgtqVdNzOwnMnNdHg9KG2EQWaZTckt87FWUXqVKQxk42+zyANKBECtlwiLdxESF2eEC2wZyvxBlqlBxAmXhYpTAiKe9RBC/gro6ZMIUeS7IyjIDKGPM4LglloOE1pdR4CFNyWmQu82iCTdLlhRVd3ONhO+5eewUqPL6AALglUtipSlQ89oGxw5fvBQKhisKCm5YvSa5Vb1jJlAZoMPgJHHftw2NXWjrBJ9vYUVF7aIlV+dbXMwh6ZykTQhsbjaqzmSqVeABsOmzvDyduixbr1cpUlGYYeHGCyOCMC4crK2pEvJSYpU9o0bwaIF2xCxW6p4R+VmGPnaGAKUVvetamdQ1Jayryk5WZVxts7CY3FJkfqa2SD/BewbHYyvAOXacdhWyQ5EQHQ3bA96zlxtrFy6YOhfT7QKTRoWD+ZmGKVfpA21v6uoBhV1SWph8QjgaRWldIN5yORIGkkpOVgEPD8YGLLBek5E6RgxQB9bjogyZeibWZUxqkmNyJYOk5PW0E1IW6eBYcunflDrBDH+aLpVQqHC5CI/HJZcrdboQj1fQ39+yZHHt2tqqXQcbjPYIyQjCwNUEYkKoGrZEMC3tsPoXV2iNdkH7KKbW6Q410dkKlUyM63WiHnf+Yzubb15B3rdMWGdUSAhixeJai4PUosEmo9GoRKLLz88HlxCYu9vt9vl8i5csCofDbk+gvDCjZ8gxEBWKeREKl2IMAe4tQUdRtImiogTO+IPAm6sry6EDzOZoJNIrElZpNFqSFIyOdugWSaJRkk1yZ5Jlz2ixTE6BAu6AJmcIWq9U3rNx9aToZ/r+Ky7gFCwPLQB/LVXim7p7QeDKC/LBFCVPwiB7wEowYsGTUuzhKEvbA9m6RGGjKaANeCXwL/jJ12snQ6TTG2ADOxHQ8GzNRMh41OpgTUJUIRbKJdI0zU+mq7l6XfIqD2QSyCg8LjdTN2n1Bw7Qj0CcpqpyJpxZTzAMtpk1MEyRPiORiGKyOblkpEzttLesukLt+KHx8bQ6iHmGzPqOLoBDsCuBUEAsFI5bLQxFgpmc0pCYbQ42CRLLTPVjkH/DzaMg+ZyUKuN0o0AqRQVC4VNN7RGK7jVa3D4vFQkurSzbUrsyTcW6Row0WrdI52Qgy9c2bDxQ1wCdOa+46NaNG96dbLFMsb2np7KkNFmGoYcZNC3Ph+9uX7NCKZOkyio52UACd0Hl1AHjoKkotyTl0YCh0CoQWjmKwtNp06NssmhsQoK6wgqgpNJBeKq42tngBJj/K5ZHBq8CTbpGwyD2i4pTtGlo3MzFtZFtSNYytjUlOWhZOMgnTUWOnj1VVpCvViinUBnQd6RZQSUIw1TM/UJbO9wkM0OtkIiSTwCl4CR2YtojYSxdHs5oCQUClgTQyTOhTqBKrL+SqdWCwieVdpzoqUTYnInX703qyYlAfCJDMrauNanODRd958Jn0y0cplIRwZBy3DRaUlLp8wHE5wyPtA0O9lVWLSjMyzl5fvi62gyK4bEp2Ly2QTJLybN5iabm3jxdhkRTMuoSOUJ8tydLLvUJCaaoINvr5r95sdcg68g0BAUabV39uUg4pEQfhdfrhb8WL1588OBBHo9HkmQ4EgFf/uOff+DIO/sphmh2LhYGpHw8hNMiVDITp9mgMpJ6kG/GZVy5aalcLBULZW/uuqjTAkniySTyoF+EYyaaKhAIhGlzp/A4t9t1/ELd+uXLU7Td7aPZ3We0avnVOopJBPLM3Ha3Cqk8OUgdjkQB3BkqkqvTptEEhMvsao4pBZ1F7TBgZYLXM1fwMSm0YjOiVSvJKdZtOsG5hj6qzC9PBppxhxOugh+delI1NDQ/aadZS8UGItLU3sQ+jtSrkysgxmaEUCeQiKEXGzR0vCijy+eDNoCzrJRK5GJ+4ntWz9F8g56V+Fn7ocCzgBVoFdLkF8nRahg064vylweNpvL8vHFQaZrSZ0xdZ3/c7uCGT5coCsTEmSab5aCfNPk25vBQbC/B2W+ePIcWQOG8PH3GwsKKsrxslVw2WWxGbE4GEV5MLhFd7O4/3tQOEFZdkHvLutXTSV3Lz8kZGB0+39xYXlSULIBmtx9NurDhV5lENJ2NBMDniCJkD80rKhDweGmvNojq3yHaoUsUIMOTp5H9LD/ClXLluxukJKlFlIJdfw/dpsvQXikQB4YHrUOOhoU8ojhTl6xNCF5ZmclLnabmWqcQi/KzsgaG++GcYDC86+D+T95196QhcJDRMGgWn8AUk4o0xENSPRRS2IxJ3WLmouoFbM1XBo/PdmJcHiQKy2ZqY/U4maSyYIPgpLLozlmFFHBPtB9P2eo3jtepWp9aRh5LI+7YBNBPt567UkEJBOr+/taC/JIMDW/JYt3JU3ntnU3V1QtvvG7hz377+q3b7hbyRWBRZTJBa59vUZmEL1EYsrIPnegoKpdIBDlCkQwT5cpUlEQqBu1W5ebmZmV5PRY3xQT7z0h5yCeQyaQqlSYUConF4paWFr1en5eX193TzScYkTL3wIXgiTYtX5bliYplojBFSVHdBkRoGVQOlwrRBB71usX80HWbwBGm9JmlPT0vqdRKhULFF4g6u9xyOZiooEymTBN9g1bv9ngutLbWVFSgjNcJyADugDivXHDFjmLik0xWNxeTQYlocmnKFhBdw6Nc3liuXk+mEmTEjjlB12imwGVbLGwil0mvgn3DJhOiKiSgbVoQHE3LmG1o7ohB/nVKNdphkDaWuecbMqewKw4n54WA1UmWb6vbywZ5SIVEPIEI8X0FPMEQontsCEgjlyVedsjMtYHUKnRJPYAsAfv6VP5EwvJsPiaUZBbVgqIm3YSP43qNxoJehBkwmoqzs51ud35m5pUSDc0OJzcDoVUqE+eAKsH33FSKXpNu59x+dgEaRkAvgYOpVyhuXLFYr1ZxHTK5V60eP5ugwoNXPna5fcRqExLYttXLyvJypxm5VsoUGE4MGcfrWtuXVVclsMGMFvRHQVxzNfJ3dcfxBHWIhGBc8jL1k+2KmQsjoAoKFB2PWCZQxuX1I47IMKjs19UHLtXVdPpiqzTzs6Yu3MYFr81ONxVF0RWtSpvcjZ5AEFSYC16nDUdiVc+qmvmDo8PsFCM9ODbcPzpSkJ2TmqTgi0UjdRlk8oKXROhs1BgMBhmaLM3LnZz2TscUFl2bDLUmu5PTZXApyIR3Hk9oAreeo/z6DB2bT8Xtm5co3J4oCsPOHsZz35mUHbO5gmKJwgNJ5Qri2zdxZcS4BU98atpVIQ16cXtHdMUyr1SqKC3lnzmbPzo6MDTcl5tb/PnP3jU4ZJVr1NiYU8zHwS9vGyDztYw+K7d6PtU2GC6pEAlEArFIKRQQIgFfKOQJhYRQKNHpNDhPTBrHSD+dnVMqV8jMJlTTUSaXedweu92elZNXWZLvdYvaHPPGh2iloiZER5TSCEWJMYLCSZQYgqM91dgZURAy18DHHrgd1bYWCc9fGHO5GjP12owMfSgUdbnQ2lQyShJEOkkBOeseHAxHqbfP1t+7eUNyoBwcNzoaRNGMK3UUPpFkzS0ORGXcU6W2e3iYKzOCSFDq5r9sCVCUR6/TZEy1PtbJeqCUTq3lGjB5R08WbSluMbdOnV5MPBwl2RWPUWiAVpnif5iRgxmF++s0UxThMjtcLLhjbJvpJErlYrczJhUy1WR66Pay5pBCuT3JLUGkBuWTUFrFRPjegibWUBQSfFg5mJBp1lydWLKXzKfGacTc0yu75Wq1FlRwhhoeR/1ssllrSoqnXCKEupFd0AAUQ8DnJZ8zbGLjAGiM0jvKFYywgTtBSbZByMfPt3W9euTE3ZvWZGrUU7YdvTKi7UhOhs3WEkPG1uWLRGgKkZzG0h/2jQwGNneeONPcNq+oSBSvYm22u5CsRoIZUu27lXqNkUkzuE3RMPSbTp0+kz9qY3GKDSPIJdLJIX4m/snPzr3KkqvJjiba9oBFQMVV98ByeL0sr4oi7pzU50MWG4fsiLanC23sabk6DbRqcLgfw6FXmVMXL37slltSo/kcClOIfU9lmYCNca+vU6rSTJeZ6xmGEfL48S30YtwGBpQTIQXnhcfXE3HpLG6vl5mgCGSs9iOTlMwaS5xJWpE0cQMslanj6TXeE/QKS6TgzKSee0UlfeFi2dDwUHlFtUrFALl2uwt7ejqysgpyM+X2MFpQgKPejCplRENnMGOl0OvyVJUXOEJ+nAeEQ0PgjBBlsRAiPl8q4gsEfLGIF6D4Ncs2rZkn3rX3sMlkIghizZo1kXA4GomqNcrRgeaSwmJR+ecYqzhfGEQYRgJJF+MECQpCIi+YzUOioxTBi463333H6qIClB1VWFT5/ItvqlQR4Om5OYUYXmAyv5hlKOTx0MKWNFGuLi4509gUoZFMD1vsuVqkmTavn4yE6DCgVVCrmJINpVSENTvcNDsfx7pddCqzRuGavMy0VD8mBijxIF2aSfAEQsFQiCtCpM/IuJLPbna6WLeAzJsqPxoxIDLCIAVWpi3Ccnm9HIfKTbuQifnsXB5ArjbFKe4ZMca0KzNrMmUbMtu4wlIZypQeYz1WVKowO2MCR0ZiC74osL/XuGkGoLaAwGWS9GL38LjLbAzE4nR0Dg4hqJLKrrBy2MXNpgLSJZ/Qb4otOYYxkoslaa885vQzOCqiKxeLFhXntfT0uT2unYePfPLWW0TCKfbsdQcibOYSzSewLUtqSnOyZpptIpdIALlGLdYwSV3qHaytLIn3sJcNIgdAs6aj1CAAwUAAuVlg9VVp8/AYt9YGzUCwPUbFoCp5Iic2vYRmDt/V5UoyWBbOI6Rpdpb+ihdagHmguDmlVaZMbiMvihXavKyrLXm7YeXyFy3mIIgiQ49YrEDVlTJpilPCJh8rrkApuP12hKCT/JSNSEElXb7Yi+ek0hfon3ifAKlXx5PccYyt1zhmc8Y1nS/gCeJ5kO9if1N25WAm7aQ9OT8mtRABf/o5qtA5ep3ocpOttJSSSQlDJjY0XNnbd3z+vHENnZVfUCoUSvkYGY0GFFJ1MMTrHOKVZYmGjY4ViwrbhwGLcakUoJ0vEQpEYoFYwpPAewpFUixank119Qzw+byioqJgMJCbl1dQWDAyONjd1d5KKMfEW8igXilxkREhgaSWpFBOO0HzcJxiPUMmyjBE0N1fXMirqqgiyahMJh0zYm1tu0pLVGo1OEGY1y+ADoebK5WaybrE5/EWV8+70NENWtprsmVplCwTD9DgtEaCAoZMG+MpqYmZlVoU9ZOmVB+zuj0oy40d9dSpJ7x3zMQVotFpp5ipc/n8HL9AIeAr6z84yJy7NzX3d7oZEuUUK1KmTOOpCDRL29OvYncJt1i5VBmZdGIRoDcY7h0b5+zNVHwfd/t8nCPCRmySSjVYrFzAKiPJ8sXr9lB5V122M51cmRHjeJ7BMBksstVyDOcz7DxTa2/PlH5VHHRc7GIxRocKbU+c0Gc0cdN3urTpOw6sg1EukqORS+Hoyqryg2dPu4KeC81Na+IVdFPaaUcGlSKjmUpxkWHC2ONXZLpTfFbV1Ow4fhreq2PYvKKskLvMYrdTKIAe0E7K1JqyF5EAgNWnorn6zKnFhiuFipjQFCnCnphw0mhHmisw96lHiqO3iHpfaZ8yJg7iCJpl8SzM+PS1i3WCqcneRvJjZSLRkqrqs42XwExhODFsslQXFUxi7rRWnTHV20VRhS+QcHW6Vo5YYoX7ldIpIvUeuIpl7mAsUeOTAk2sLtMcj4nvn568JUfyDnnM5FKRU22iyl6VHpGfOB/H8Jlts1dRbj1xqnp0dCg7O3/DevE/nw+ZTGXt7a2rVuk9NktRedXlSy1Bj1mhzFTIRRYnrhRJVPLQYP/YvOJSR5QRCIRSMV8sFsgkQqmEL5MAtgt5PIXdOQg3v+2OO7s62vv7+zvamqym4bxsHaO7gaCkGZQ/FHRHIwJUuyUKjeaRHOqwUw8MFQERCPrH5L7+uz72SS7HKL+w/He/+3/sfXlwG9eZZ7++cN8XQfA+JFKUKIo6LNmWLduJj4wT55hMnGs2m+xuHGe2pjLZ2tQktTM72ZrsH1NbO5M5Nlupmc1upWoqm9PjZO04tnwokizbug+KN8ELIACCuI9Go9++97rRaJCQTIIWQrsMs2QSQHe/fv3e7/2+733f7/ul2bxqMu/u7urv7Br573/9D6MjbtStRDOkzpg4PLA7msyGElm/XQlRR8OojIzWUsHpsN2aYlQ3M/JypDkFWj01EVoR4t+gCCWsvTS4MbeouALqjRV1JLlrwqrw4EPH6jhW5b/EKyrJeTfrxnkik5GjM102ixaL5aPwaLNvxGgYS2VJ2AjF8zo0T9TTXpxekN1E6NNaa13jisV7ktCvidknZ8NWDY8aXYnsxssenqhk9UKG6tbq4NQGjEYi6CSBekHTLABOizkSww7iKewck8wmY11iG0kQ5k7RTptVu5jdCC7JDnd3vSyEVK5IjqIcJjyuOlu8aJgiwnj+2qWRgcGN5J3oxBWx88RUJziqKAg6Xve2d9/icj10+ODLl2/uCviU7Ll4kqTkFNBwba1Xta4OyEZismyyxVhnRuSLglyTgCI1ZNbdyEJUiRgZ7OljmVsSxI3gns4XIFHOQtBpNppudSBaPArEZkVP2mmpSTKSmXs9XF7vrBvu7T4/NlYs4CTEZDarVtFDJy8WBHVKyh4SdaC6rSZlmSdm3LqJfz24KJsd5g0+pWXsbsIf8SyP+mTd1lqC5M3Kho6cm6rB6Br83liRqUZhRqMyVtEHWy9QoJbv2JS2TDVwuMNtMlHn3lj8yOOtToepuzs8P99z8fKpXf0rLgBaPIHhPV2Xrswn4q0uX4vFxAcjbK/fHPCVJqYRWOc4XYDn3EY9YzFwZrMOEXm9jsccPmHiILWyHCqJ4sGDBxjOeGWBvRQ3FcqUS5/FSfA6jqGwtxxItGrEAtzzpXypvBaaspUWP/+vPo2QA411l9t1/bo0Pv4zr8dnszpsNufSctluWxNKFqfTc5vF7NFD+ytxYwq4k9FfCnhvO1sqo2kJy77jNHxkOMtQJYjl5y+MOY2sHFeAo3Qw8CkHTCxHUrm87LjEY0XWcSyJKmoncYa0JLvw0Key561YEn5x+hy6r0dHh9RAERKsIfOFch1CStAWTxJtBrwy2tAksW80q5EdS8QuKRce/UqPrWbyl+eWZHoLlcttCMzH8sgSAEBLuORroV/WkUrcw4RAOW23U1NZ39+gzn4yKV5qrYvaLQ7LSiwi9zOFmaCp7vbJYjROHJ20Sa9Xv/DS1WnFO4EZ/fr84VAyhzctYJmjAcfgOgfIXuluC9yYGCsUhWuTEyMD69VoC4W8DMEsWO+NicZXf/LcM7//2BMep/vtaVagFf2Ayp4t3vnH2ycll9W6uYhSQB4KXlnXbf4ri5Ck9BeOw1ldDVQF2iAB9xgkJtdAT88mN2/VXV/Z7EPnNtUjB5WFNilTYLTwaAEKrbXFoqBMmdoQxqXYKqDZVqdNY47TPW1tY7OzEDBoAqjmRSSZlpFbnnQqT7gaDJ2fWfrM8ZGVRFKOAEZTVRvFsLyWxjKClXgqgtGUUBYRmHIcky8IspioW47FIruewUgCzZqDPf5FDA54GprwRSFJpgf/8tJzx0YPeRweWAHuqq9dJeSgyh+rumKU9lPVJw/XVXNlt5Q6rNPx/X0LFy7uCy7MtgU6Dx4wzs4m0+nRM+fOPPLBxx122hPofshmuj4bjYVZr99jc1qCManDJu5uN4RTgC6EWBY6rAE9T+t0jEHHmAwUp2N4ewsQwjTL2K1mBPdrdK/ZDuhcWipnJOyJYUhKHh6BDIAlSpJT9BAFymWza7MTR4f1R0Y/ijAR4owmpr//rj//z38NQMRg6Dk4evd99x3/8lf+fHivTyyVrOYtFC/Gz4NAj9lwu50fuTsFvFsoW2CsUadXKjZcnESUyshYZdCPJlKq3ATC/TenFpU9KYR6NplBUM+fv9bd4t3b7pUxkZyQRtNP/hRx9mdeOx3Pi26nVx2sqWxOthgQRKI3Y8n0C5fHf//uA4g/EJhOytI0Jr1Bi01J+SiI4FvBrF+fv7a7I9DlwfKtiWyejDUGe6grC9XJsaAM7MTh6JPfnwtHri1GHz80hG4LzT0l3ZQCRp5XOy2SSMlA4dfkWK2ms/Kb2JeNblCSELrF4quDfbu26nCfJgUQ/O76K3ef13FpQm611ForuqJFDfIoscSNw6wstBeDkeXVlPKIADAaDKIoCiXxZ2/eeHx0wKznE5kcLmgHJYfNKFbkPLv8rdcnbmKWNzU93L97PWytrZE9zKKcBaZZTdd++utfCoKQSCVdtq3UrVbQNi5vn9Sx3uqPWID9G4RBt7rrhMrIxXhkOZp8saB8obKVPbOEoyRbXa5Wt1fa3OWU20yk5TnV6vHeZv88kkgrtMZYsxIn0jnZmAj4/PL70bX4r069+sGj9zxz5nVGZ/7E8btcFqPWxBmbm6cIuKuhaCuIuBDws5iVuGHUuKtzS69Ph+TdfrQwy/MOmXHauztzMwgrUjEcx5H2w9NjQYvBMNrVEsFS7/gjvJuKM5vgair38o051J4R0Yf1EvB1aLfNiZVfAbg0dm16fq6nvdNpdVQkwahqGT2obrjCSkYToLRabKDWBw9rvPFywDu71dThPYPu8QnqzNnEEx/2tbe39Pddnp7pvnGju6vzal+53N3ZPzUWf/Te3VfHIxdnFrytPn+rN5Zjs8vLvX70rDqg3oQgh2EolqZ4FiAblqMgyyLa5UqkirxOl8sJIpPiWWOJEQ2IiXOALVFcScLrIyTV7kTsskR0Pjwfzi3Pfeqjuzva8KymGbpUEvcOH3jp5MS1az9qb/N1dPQ6nY6fPzPpcqaKgsHnCwAa3HKvqdbSX83kiKNcrqhiv+2EwZ0fSRDVJ5p1VdQ5To0vImZ3oLsNigJRYmFTeVznT34CZyfD6UKJY7lyER/F4cIO8OUrN5bjaaJmh1tTSUvh8CATYTqXee71c/FscaCr+/hAt0y3Q2tpEtqMlV5YmsnlC8+ceYvmjYhHMHo+TaoLyvMBO4U1d7GMpZfw1DURP9XLl67ORlL9ba3yd5ZXE3Lyodmg5Pv86sr8arrQYrcshdPYKYQbXE7n8icvjXkqCospUpocXc3vcmjxIppMy7sRiM6r7xcEobK6YKcTaucLv30FjdFdGnnezTypdC4XjcfdNhu6/bo7e3Y9z9GMqNA9Q10wwgskltTHGoHyFyYjqQvBqMNkiBVS8rT0u1wIcU6PTaMHVxBEI89i0wpXK4UmzqIunH6XGwuUQhhLJhCAooatc8vIeS6LkeihQeVOliIrv3rtZaFUOjw8ilUSt2JMy8NpNizHaWA7bJMOrpjMjiXJZKjjlnGYjARNUJ9IiyvRzha/ejVscWbSyEo4uGeoLMHNr0AkCCcuB1Zu3MLVfjcpe6ghbHHW5BJHU2kS5sfyPG4zevQ/f+UVi0E/vYhlqyWxNBuKOYxtmseal2USHOZqjFYR69KQZw1Y9Cbq9rM3pycjaZ3e8NBQN4OFqiCZUGwsnVUbeWoyFMsUTAZ9qphFHzmJRuyr16emopmjfW3ojgrFEpnmjNmAY9IQ2/v15UlIMUe68Z4E9kziljMOG44xuzkz89qb5xA67upWC3NrYh61hVXJhixQC+nV21HdWIBcfoeVtgjuaMnaOzT3+rmjV6+d2T+89+hd7TOzM8hMfPW1yz5fhs5l2rr2zE1dPjQ8MLhbeP50ZGZK6Ojx01TXZCTkS1/2+rt57yjgjOj6CItFBjIMK+k6YvErDFXW63WpbLlYYrGRQmwbmpKw9DKemGVcdK8sCsViNJaMBZc7W8CDj47wLC/7LguFgt/vAXT3D3/4SZtNZ7HYerp2HTj48N/87SdGhnvRjLVbtxCScTW4LG+AEKeB7bbOK0CgqkSAmOI5PbrKqYnFqdVci8060tFyYWaBonkKSPGs8Mr1mV1+z6XlRDiZHwx4lqPRQg6tCiya6pdn5hbi2b093T0em0woMgURh9kx/Nj84mIkNrGAzsPs7uy6d6gqLIXaR5S/GJ7XI4b1y9ffEsrwA4M9Bp5B31GVW1zW9ZkmBMtwQiPLsIjdTCxF9vX2tjkU/6aEP+XQWojWp1gq99uZWDxXakccQwcWw2iZZZx2R6FQfP7Ni2hAH9/dJY+iJVmVEGEoAnFNV8ugjzrKpOPV92PJjNwGUhaj/OKZU6lM5omHHtmcKVkd4NNLywjU+ju7bsMEOzyOmym8P2y6hREWTeXQU8CgzDDo9/m13OXlFM+w9+7y//xsFDeSxjRoYik8sRw70NdlM2C7BIdAiJjyGzWyBwxNd7W2zy7OA7ynErx7b41nxme3hlbwtdDyee76DZfdOrccHp+bQSQazfODQ8NbJVuoI4KxRKFYkH3BmxRfCxFBBdkvhwBr4/B2mvUyY0AQMRsKH9s3pMLHWxPTkigMdXe2uF1lSXz7x1RxRApYio5I1eMVxXibyRjFLBjH55j1NdmhaE3Fo53hzWYz4i3Pv3GeYnUPHDp8ZWoaCyeRhbPGHkogIkIjCtXhqnos8XpEo7FdjqXzl6dmry2EsyWo15sf29djxOksqE8Q3+LQhUqQfeHS5N4O/42V9Hw8g05SyGdSOAcYokc/vhxdWMt3+jwDrTjgPYasCtw2DsEFWpxevDKVFqjjuwM2I0/ExRi8sY9oHM3cmJl5+Y2zHMc/evyBiqikEgipumRUKl4RlNSEz2j+q3XJyxWYgLqjym6JJshqZX09/vHx8fMXOt2uYIuv7dhR+szZpWJx9Nlnr33sicG1lVl/x8BccLo90PWR456ZcPri/KLN7nPZOhPl1dWJm+7QZGffCNc9oje4i+gJFoWiwOn4Losuujh73ebuydOWxGoSMXRsAxdFIuFbTiXzS6F4Jl9cjcR9hsSHjtsCXoecpyAIIlqcEeU6ds8TTz/99ULhZktLd3fX7o6uru9+9+97ezzpTAr9STNsuVq08HaUMJ4toCcnO+ZaPJ7NzBY0UIjsIh1K5X70+o1smXZazCd2+cpy4jaRPqdYfjKamU5iWW2HWb+/zX0tuARxsUru/OQMYDi/t+VwTzWWAxJJPIpIboWkBIKe/ra240O7tevxajqPkzBpVihLP3n1TLYkjfb3tTss8ncQgmD7GoPa+gmMjyLgfvLipflI3O107++slo7KFMsUI9+O8Isri6htDqPu7h7P9cWoHNY9vhBCJ0dX/8DoPgOn5A1gokSsBKNOp+20WCojR956rdVQGWTGyMtSaDX+4xd+HYtHTxw+6sR+7c2QwerJr0xNoTHQ6W+9zQLc7rKNTeHKElilvd4aUBQlpbcZ7plLc4CUtbp/l7dQEuXuRWPjhbcuzcfTnf6W/e2KNFssmcTpWgD4rDWu4c6W1tmlRYhVQmMbyBPGJnnH6Pz0PLkVDFguu+nEobskJct/8x4ZgBDz7OQC8bxhP6/DZhc3wdwT2UJFe9Zdd3gbOM5sMqfLJQqW00XxyszCUGcAXe/U2HQqnXIY9aO7dkubSJFRnyVq5xszy2RO4WnlsNpuKRIHsFkpO72N+prYVtQ7+DEBOhhLhxJX4gV4fO9eu8XitNuppTAkNqJa53oyFJ2LRLGzoTOgLX6dLuCxjZ61IIlnx2fR2NbpDI/s67bpFTEvo15HsXp5MAQT+YVsCP2CbLi7ez0/Pncd4z4Frs2HEKFCRuc9fa2SSIL2iJFNvDfTWUECrO5AT1uPy4J6KZwiNbzIxPnhb15Kp5M8p/vw8ftYhhMrpvz6aBeK0tRcApTqkd+4/aqJkqRUiWoSf8NuNb5YIvh+4EDxxRf9p05HHnsktWewNxR6KzjPx9cGXzw5feL+7vDStMvTtRJZdDg8nR6T35YPRmeDUbvR7LbYnWvCytrlC3OTlwNtPR29Q3ZvG29ki6JtNcuXgEBniyb+rblYqcR0pHNCZDUdXU0tLK9aDExXq2FmZnFosNjqdoklHNcoigJqjE5nQsj+hS9++Zvf/N7Nm//X6fQHWts6u3o4vm9s7K9afC1ms81qdcheUQBuN3vi2eL0anZsaRV3KN50pouCuLgS8nuwEzwUWZmYm9m7axAZv+t2iow6Dsc740NAulh2Wo0f3OVmiSPJZ7NQjIFwZfR0edTnDoP+A312ZOUhdowJIyijPnVarQ8M9dXMNMT3aYn0OJYu729tPT40uA4sSPozS0KtpUxR7G8L7O+oRpgRFyeZ8xtC73GSJD6wHAzHXHbHIweGGFAtLCehYYoujeuUswiPHAbdB/qdDBlA5FpsuiigOX+gv7fNWU1lSuICeFDmp+qb4UobsKKTZqI6jAb5VGhWxJKpvf27+zq6bkPbUc+/duH86NC+0d3VtMzrc/PpbKbF6cIocOtjvTazbMGQr9UhmyxDZiYmLyx2qDLsoTarx8jimr6EcyEWOxdNoI66u69d7iWEVsUizvvF5Ue4Gvdmu9eD1y0IV5OZZDaPblzD3G0h7MFjMabDMoUdcOW+traje/ZslCq6/StTLCHmeAMzHhwKLOt3LobDLpvdYjKtJtZCkTDP87u66ri5VpNKQo25UnBq42ukp+vUtTwgoYSvTwSXE1lMrZJraDA8dtdBhmE2mXS2EE8vJAqI+RYLOahMK2p8dhpZGzqeR0uIxWiquS8SyiIPJG+tBLEsZEvRdEaAVEk6vKu3x4cXp3aP93VmFoN+dO3VsdkOtx2NuqklbHw7zab9XTVlERF2Q1qHFfjxjg90mkz3DvZgU6xyO16riWINGNwxIvNoksoTNi+IgkRDPE5IaLjB8PDeTjQpKrr/NJnLMIMXD7bX6xpudZLdV2hg0SDnII1WcTGTL/Ac96Fjx3CZTCVQB1ZqL1E1m6Prkao2Q6m6HKhpT+uHDitKWzMD5b3bFp+/v//8xOT9p8+efeD+/mNHB6KrF3LZPcuhgZOvTBw+aFtevNHSNhRcuMExDMsCl46xOVPx7EwyaoO8m6I7coVCeGzh2o1Jm1nXGmj3trbrbT6K867ExHwumy0UV9ciQMrbjMDg5R8+usdnKU9cv+Ysl7NZYXxigmWwZiTP641GhCOl//iNb3/72//rN7/5L3a7B7Wtt3fg/hOf/NrXPu1xe0ui6PEEMMdB6wXD3BLcIZ4tz15dlnfVJDJV0BSNpzO/PPUaRRyaMo8+Mjxa0b2qVja3GXT46VJl1PVes+6B3T6MlWSAesx6h8W8li2SKqmg22k4FLAwgAi/o2eCf6jB9sARko2iRSjEc8NruFAjGuj7ezpGerux3lBtqz1mHQmPwotKX4vn7t3d2nG8imUdEYJIjg0JI0ZelxFw/UKHxfLI6F4WUNovIGqWKZTkbmm36o512RAaoTPZ0cSQBUwg6G/17e9s1R4VWk3g0mu4ImK1sAN2Z5M2aH0ycrdAxQCl+tvbjwwN355nzIXCiPNemJxFzOv4XoTv1KWZ+YsTE2gCj+zafXvvIgtoBLjBhVmTwVCXudsNPDGc8QzhaPCBXrvDwKJvGjkaAX1RpNH9Oi2mh/f1swDI14olMzjvl4C7Ecs+V0/L0rTTZl9NJtBgmIvE9rT71Y+63ZZg3IZFa9FoKQtozd7f03mgrwfH9MpFxzY9HU+Oh9fyZXwcofCYOQL2N6+fJWsGLlmIhut9h47V7ZlYIqU43PWGW3V7j8e+3No6jdX28X/BFRw767MYHxrZw9L0JkkhQmrUTmXhVEJQ8JyZCM6Nz06huXZs/8Gh3r6atiUzcoCsGZmbtY1H/UxmGX5Mh7tbB1oU+QEjz9+zd+D02Cz6dDK8OhWO41j4UsFnMz90YGidScdieXAGnwdS6AsPDvfzbI132sgy7S77QjxDJiztNfH3d1sRcVvNlyQyYdHVkS14z0A3HueVk9uN+tCq/KmE2oaL4WDQkM0gMopKgMQ16B4cGbabK5s06yuhVn0w1V3VmvJ7kkauhqpU78DIpKoTVENp/u2Xvrk1bCchSgDQ6K6e+/VEKn2ir/fMkUO9y6HgyVfmKGqf0din040PD2XSucTg8IPz0xez6bhQyiNg5dFCSKOhxwgSV6JMZYorSmypVC7mshwD7CaDyYzTnND8Qk0VhCJ6DIeG24f2dJ07d/7kyVcikTDHYt0Ci8XC0KwFWQEOn6/F/c1v/cWf/dkPf/SjPzGbXV6v58jhez79mS9+4xvovvDsCgS6/S0dCNNJvQ72NuC+lisuJgtehMVGjscjgELInsnl4niWoikE0SBAdr1aRXqda/HKYmwlkUJTotdXp0TAlaW1rFAeDthNvBLpKJSls1Mhjiq1Oy3tHtfGQ7JF8a25sF1PDwa86NK3eiJXFiLxVHKg1dvisG3+Oa5lC5dnF9qd1t5WX51Pc6VXJ8Mmnun1WHvcZvV93OaJ+VAsimB9sCNwm33OzbxuLseCK+H9nYEW19vHhyAidvr6OC7/xLAtDrsgivFEAoqFwfbWI0NDb3/44uKNqfGPnHio7qfovs7Px1dSWZ/FcLDTLT99xacfSbw5NdfhsBzq75IDkDbzGptfeOPGGCIHHf7AA8MD6288nFiIrSES0NviNOv1jfXh+YU1n1XvMHDyiMoUCplcHo1VoVSUXTSIwqOrU9t7TUfWpsNYE59nQbvTVne03Na8EBYTBYeRV+eUYs/FYuhu07mc3+0xG42biKKsdF0oHs/khtvRNOU3LiRoRKGBjd0+Rq7dZW25hQjElcVVNK8HWl1Os/GWg3MltZYTetwWn6VqeJ2dXhGEfJvD3NfiVouVyvtJWUF8awbZCqXhTr9yWg2ZRubL2OKKz8yj4cqTWOeqUi9Q3C4A1MS8aH0zKpdfVxi7JhZerelU+Qh86Qvf2JLPXXaZIauJptlEIvbiSWRj3tPV/trBg11zwcmzry+x7D6HYx9FFdsC5wBIB7oOMLS0sjRVLGTEsgjQYTS6D0gDfDdlsqEglMR8QRRLAiLXiE3gaHZYZhjI62wiMIaWl7PpCOoRo1GPo+KNRoPBZDLZnE7vAw8effLJp7761b/41a/+m9HocDqthw8e+6N//yd/+Z3/efPmCyaj1WZ1dHT0G/QmjuNpolVwW+fgFvEJaMJltvraOhTC7ej5N3hnd/iWwNau9qPTF0pYS4jEg0kiJRbtBvaRw4d4jnvbY9HQ+u2l8w8eOdbQnW351jKF4s9OnSbeL92n7ju6iVUBNPpg73i3V4+DjQ6/ZsyPRh5Tw/2uekaqrm85clGu2gGoaoUlFcIpjY5MxbkCYdWPrhZPhaCiGSbHvcOaDFVCzxX1MFgh9JTilZeZvhI9ubVQSJKQLJGsZEksF81m+8j+6PkLZxeXT0jw5aGhwOFDwoUL56PRRCBwdyb7mF53Nro8CQHb2T2aTYfzmTU5BZ9maAK1sgucCJ3huPVyCcc5lkjArqJlIYoi0+JMm1ns2dQbHQ63Xme0mB16g+6LX3rSaDr42GOfHhv7F6PR73QYRvaP/runnv6b7/700qVf2G0uZCu43X70ffQLJVc5eEefMqg6vaQdirfbmyzNmymbez12YOj8XGglkaag2OZytrls7R6c77OZgDw0Bg4O7t1qQbiNWuSbfBl4zmG2IIsKLSvB6GqPz725yzX6lMGdf76w6eOiSUMWNNQZUlVCnaiCayh1BZ8pSZM6qpbiqyixK9XwgMYTBzTBAqAy+GTxzYqOu3pOZWkAmoB3WEPr0Rt/+Nmvbx7ZCUSWZaF9hNGId7MMOz55Y3Kq1Wy+3+387a5+fnVt5eLFiVze7/Pd29U1zLKzFLwgSXlEYdq79sByLpdeJQ47KO9oUFUJS1AxDqBqhqALCSVBFIpoSdERDzvD0qOjez/7uS/98z9f/M53vl4sXjGbAwjZjxw5+tRXvvp3f/eTl176J7vNzXFse1u/zxtgWQ79wE2u6mAHD3jYvPEOmzL/QZMtBdg8UIJYcSxy7sZ1vAfj8jw0sr4e0Ex4ZTw4d3TPoKO2lARoRhObaAM2iX9Xbws05baqTFtrCGnMf61ezHo1dlh7njpfqj2t6pGHNXdXEz9TPb9aVZtiN7nlLe+FyMydIDuWakVsu1gstLd35QvXgvNZve73ro9d62i3Hhzdc/3G1XD4Z4nEbH//vb29f5hOvVoS5ucm3yxLwOPr4ozGYiEl5DMULCObQq/XoVchn6cZxqDXMxyXWEviQHhBkPDGB2syGViGQ83eNdD5lae/PjNT+Nzn/uu5c//AMLTV4nM6LY899vBTX/kPTz/9tcuXX7SY7aipPl+7wWCmAI3OKW5PcfBOUCCw1eEEG5yZDVFPuA20AFu9DNzJ4LQNKEOMA1GfklBYiUXSubxJXyMac3VqKptNjs1MHd030vCVwPa6BDbhiOYS6gaauI2lpKoLsC52kaqzL17jIqdUsg014jI1YjLrv79OiIbaWK+jdrHAbpnNJDHJ+euKw50iQgCSiKXUIU4WRX90tHWLpfGl5R/6/R8PRwbMplf27h2em7u5sHjy6tXJxcUje/fe3dP7QKEwHl+9logFkR2No08kSmewGg1Gs8X24AcfdDhaFpZC6Uxufj4kwEh8NZLNl2kpZbNY7A7jiRMPHj16byLp+OM//sFzz/09hHM8b7Va+UBr26ee/Ox9933uYx97aGVlzmi0oDvzegN6vQnhOmr7ZkVLGiYMYMczT9jw0G0Os4NNA4xmOowZAHYFAtdmphCDuTo9c2SgRoqAJSl5mWxm/QQEd77rYKP31aDXDTbleTXXb7m+WhJVEViHipeMFNyAWoKtFN5QfO1AkW4n4S/ydINqaQ+t2iOs+utA5R2NY18h8cpmbJW24+yazSQrV5LZFOIuO2TKRJCTcHgc/9cW6GaY4Fzw+y7XIybTH2Rzp1r9ZZt1bX5hMpFYOHXq3IUL+4eHD+3Z8xmfj0ulxoKzb2VzWEWoVEhNzcSu/e34SiQcjy7oeZFldS0tbR63t63Fe2D04ccff1IU9WfPzn35qf/xxhu/oKhZhtEZ0Ypgth47dvhPv/lXzz77+vHjQ2azYNCbWYbxedpMBmtJKPGcaDQwuZx051Hmjs8T2PA0ho2RoOZxtK13XaNtg6ChO2tsQwVfq9fvH18Ilkql2XCoN9Bq1xT5Mup0cqLOBtMZ3nFI246zqQnjAmyvJ5pESlRwxcIAKtZWBV9kvQAZ1iVteevKLqiM/LDitK9CM6xj2FeFfdUqTApJh6pSJF4vpKpuJDrrJz/+1be9D1EsyemaWOGeCLyUpZIK7vKnMrFfS0TnF1Zoek9//5MtLbpk4iVBmI/Hw7FYKJNFV7Xj3OzWwfb24ZGRgY4Oi9kMRDG9Eh4ThEw0GoyvRa1mW6C92+vtMBldDOuemIicO/fmtWuvJZNXKSqJyLheR5tM1sHB3U899UedXYe/9a0/fe21H6N3eJ7V6fRul5+Qd3x3HMfbHQ6ONRIKv7nZ38z99ubyz61gINwG8O7gvbPmdXbV+bocXzuLYyJpm8V6/9BujlGG4qtXLkfj0T2dnXu6+xu/ZBPZKtzOgHoPPmNIaQXXAajnJdFqOaqRirUlsSuRNpUcJk04pBz4ovHSq9umNcZCTQSlGg5J3LEf/+hTmwF3rKSOeTsOci+VioiMQMUFLxLuLhLVWXzSbDYdiS4nEpTH83sHDjxuswkr4f8XX5tNJSOpVDyTEYibBFEYF8/7TaZWl8vj9fqMRqZczpZKaWSk5rJSKpWMRkO5XFCSQhSVIVHqrNHAIbwePbj/85//QmfnoZ/+9OXvfe8/QSlhMDgYpozw3WZ1I3zHXYQjcbC7XaczoHd0vIGEQt4W4sE2RiC887tMTXUrvAdfcBsAtc0OPD8dDK6uUTTLc7rhNh/LgNDqajC8xIHyo0fu5moyGMBO78IGjwE7eNzChgcF3KAXAOrYHWoBbfXLNRitSTxdD0a15994lHYjTrO3Wim1Cj76kS+/7X0UijmSDYydMplsUhQFHa8viYIgFHEQYyX4HauhIAAFOP8oHo+srUUKRV9X16Ojox/xeErRyOnFpWuRyGwhn8nlMsViroQrBCHA5SgKjW+aouSsBFyoD10TgDJNUyyLAZ3n9F6f58Mf/sTI/sGhvY//4Af/5x//8Z8ymYs6nVWnQ4Sds5idOJCGYWQjhcQdYXBHx6Izol94Xs9zPMfp0DsA0O8yLt3sgbvTbws2dS8QbL8nboZi4ytrWJMAvcoCJeY5SrhnaMhmMr9DfrA7/rB2dITNtpoHG21hTV0NbYENUAv9Gpe56kyvEmwNvlOV8HhI1VoC68Pkq2uJ9lOt14Zc9InH/83b3kQmk0T4zjAsQs9isVAo5ADNAJwrL0KqEkFD0nARqtI4PoURRRFR+EQimkqviaLb6z1x8ODD/f29BkMuGrkyM3M2lYpk8CtdLGYVn0/lDAD/w9psDpvd7HJajtx1z4n7/4DlpGRS9/3v/++zZ36cTM1ynEWvR2weGI1ms8mOsLsiu42hHJ+ENIQi4e245ehNQuf1enSAvR6LbzzGuFkDfucHiTRpCwzu7OdE1duPzgniwlo2lslTUsll5DrcDqNOt+3LNXUXETQfeHc0i6kS69qSSRDUZJ4S+N4ot66RiVHTjtYJylS/U/HNU7X6YJTmuutNBnTY4x/60mbcMoJQEEqFUkmQfeuIvJN8ELIE0ZTijicqOVg+mcGCMujDUqmYy6dX49FCPlvEh3b19R3Zs+eegYGRtjZnuYzwPZxMzkvlLDpYKBZMJs5g1KED/f62nt59ZnN3Lpe6OXbl9XNvPfvs8+n0WxSFcFqPvsZw0KAzI5hGYI0uWNkWrmwyEFUHSCwJxP1xwhRFI3BHzUL/QxwfHfVugwy4jcs1J6S+SQGU7wo++F60At8d/dDkSACtYBfc0HK4oS4qpdJzamMYJKA2MPO6Z6v9vY5kmBJ386FH//VmwF32tpMCSHgrFW+q4jh3XA4JIymlVOiRFOUZhTkjUIU4GFHI5TK5bDpXyOZzRRJ0brNY2lyuXqezr7s74HBYOM6k11t0OrFYzGSzmeXlUDg8FY3MLC4Fy+UwRRVpzqLjWY6hOZYiIgRWg8HE0DhOnwSTQZnx07LLBVkW2M7AystY80B21MgZsRSFkN1m86DG/U6YJ9zeMGzW5AdNbBbcybE5zWwa2OkY2PCoaCjsF+7MPq8FVKAh2FQNgd+YXyRveEJYofZqwM06El49P9BuW8ANUgTKEgCqpVS1ZwOPPfyFt70TGc2VAmtKCU058l1SBJrxX5JcH1Yi1d1J9CSOZcdy/lD215dKoiCKhZIg5pEhkBOFkgAVsX8gF7shbZMq/wJSGoTldAxDl9E6wTLoTz3PGXhez7I81nCnaYTvmI/T2PGC0ZyguGzcAJLgCqsC4XgBYBlepzNwnG69zgxoGmGVLwd25nz8nVGgnYnSYBs9CHdyD4Kd2/PNFtrYBryrvu6aWneqwmMlqkWRfqlEy0CNNx7U/imfS8V8ANd79atpuBu2VDesO6wEN6O4r/UF4WvTRA4Zl7CSBWAZAp0skDdd5RRWSRLlmrAY4WEZUAYlPh9IDCLYDPawkLgWRKEB+SaF9a1LhIrj40UsN4NFbhmM+xCBN0f86bL+Fy171RHiV1zqNNSqO5BfaKzxS1cSgRGys2RVAHKoz/qH1VS/TFPoKmj0Ko1pqrwHFxK4DT2AhrxhTXI2NYPHNChQBpu6OALQmEaZoiCjNFdSq1YrMK/MPCBRUoUgAFiRW5HpuwrfVE1UUUW1QNasgpW4mMouqwbT1aQnWA3JAZqeY+FmCt9ApTY36QsGUhUFaYXL01XjAn+JBOTTFeIMy5C4uwm7x0WwylAslkk1K5wYRZJVy8QUkAEX4oB+GpC24SOx7jUFSrjSEqRYFrBoSaBZjPKkiC3CdIArLTAkPAbA2lBroKYUkOAZ9FXSOnhrQGvEGd4cP3ijs7HhRNj3Vlc0uoZsvfvq0Ko7d8FGNyuat8kJd7QFo4h+NTBmpQpOK74RjaqImqsKJFUWUo2OUUNhINAGvCgJURWuXkX4qqKkRltG3XqtrA1QcdpIqrEAN8fcqXXbeZULV5QU1P1g2QFE3CSktIU8xBHEi2JREAtFoVjIC8VisVQuki1PDtF5SJl5HISuYzkdwA76gvwDqTQJiMQeG4bBevosk2PpIsfrdToTp9fxvB6zeGI64KUEY7e6K11Za8hLicGhqDqEffvTHzSFBb0rYhphcwgh3AbYNMEcge/AI2uG6+fOR0+C5o+lZmn/ESotAcUEx9KOoOZpQC25AlRVY6wC9dWyqBV/PawQfliVqoGqmQU18ZHVNVMT/wi1SE8+2RxzX++DrNQg2nlb+2CjIhfcLH2AjTFPuEOnlnzboFlTs3mrz7byy5umo7/D42XgDtZ3bDh0qkF7CTSygFeReX1Fa42HRaMHBjVSY7KOeyVTCWqk32HN9yvwDqquoBrnuvop3JjkCKlNM/dtDz3Q2MNuTDBiWzlnW29dowc14WKNrFdQ6/trig0j3Xkwa3RntPFdi0Y9VLARRGsCq250Q2Dr4kaweR6qqktjq09X9lRDjfg6JJ501Y8ONaMOQq1bvKInVuXmFeVzSjm+IkkDKhVSq/RUkXCvpEUBCUjaE2iUZ7bM3Bt1qzb6wJrprtvJCqhUrV7FHW5koygNmtUnjT2qprjct7vQNamBsIlZArA5nGlb7jC49f6rxrkoxBlCVdVFcY1gH7i29gakqh511ZmgRtBoNB+VT5XKFqpXvGIwQNUSkJUlYS0+VPTct77d8V4LkWv2C+78qzVqTr8/NN6fJe9AH8AdfzHNaIf1+Ctcv6rV7oVuyDuCm1t54QaeXDEL6jJu9v0h+J7Hip2b9Nj0LLD3NdTef71TQwLWPXxDfQ2qksWjBeR6aat1zg9u8R2oDay/9UneB/f3/hCEO7aR8P2ueP/1XpiSWrStpxBQPQbATUG8+ia47aXrnkH9k93Z2dXvE+rfQZ/DbfQGeP9Jvf96pzoOvstuFKp1mdTie7BWEGaD/6RGfEYjNwNuPa3qVderYxag1/8XYAAu7bEB1jG+oAAAAABJRU5ErkJggg==" /></div>
	</div>
</div>
<div id="ctr" align="center">
	<form action="dummy" name="form" id="form">
	<div class="install">
		<div id="stepbar">
			<div class="step-off">pre-installation check</div>
			<div class="step-off">license</div>
			<div class="step-off">step 1</div>
			<div class="step-off">step 2</div>
			<div class="step-off">step 3</div>
			<div class="step-on">step 4</div>
		</div>
		<div id="right">
			<div id="step">step 4</div>
			<div class="far-right">
				<input class="button" type="button" name="runSite" value="Finish!"
<?php
				if ($siteUrl) {
					echo "onClick=\"window.location.href='$siteUrl/index.php'; \"";
				} else {
					echo "onClick=\"window.location.href='".$configArray['siteURL']."/index.php'; \"";
				}
?>/>

			</div>
			<div class="clr"></div>
			<h1>Congratulations! Platinum Nuke Pro is installed</h1>
			<div class="install-text">
			</div>
			<div class="install-form">
				<div class="form-block">
					<table width="100%">
						<tr><td class="error" align="center">PLEASE REMEMBER TO VERIFY THAT<br /> THE /install/ DIRECTORY<br/>WAS COMPLETELY REMOVED!!</td></tr>
						<tr><td align="center"><h3>Administration Login Details</h3></td></tr>
						<tr><td align="center" class="notice"><strong>Username : <?php echo $adminName; ?></strong></td></tr>
						<tr><td align="center" class="notice"><strong>Password : <?php echo $adminPassword; ?></strong></td></tr>
						<tr><td> </td></tr>
						<tr><td align="right"> </td></tr>
<?php					if (!$canWrite) { ?>
						<tr>
							<td class="small">
							<font color="FF0000"><strong>WARNING:</strong></font> Your configuration file or directory is not writeable,
								or there was a problem creating the configuration file. You will have to
								upload the following code by hand. Click in the textarea to highlight
								all of the code. Create a new file called <strong>config.php</strong>,
                                paste the code into it and upload it to your server root folder,
                                overwriting the old config.php file if present on your server.
							</td>
						</tr>
						<tr>
							<td align="center">
								<textarea rows="20" cols="60" name="configcode" onClick="javascript:this.form.configcode.focus();this.form.configcode.select();" ><?php echo htmlspecialchars( $config );?></textarea>
							</td>
						</tr>
<?php						} ?>
						<tr><td class="small"><?php /*echo $chmod_report*/; ?></td></tr>
					</table>
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
<?php include_once('../includes/install_cleanup.php'); ?>
    </div>  </body>
</html>