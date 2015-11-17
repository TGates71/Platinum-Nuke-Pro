<?php

/************************************************************************/
/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                  */
/*     Techgfx - Graeme Allan                       (goose@techgfx.com) */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */
/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */
/*                                                                      */
/* Refer to Platinumnukepro.com for detailed information on this CMS    */
/*                                                                      */
/* Platinum Nuke Pro: Expect to be Impressed!                           */
/************************************************************************/

if (stristr(htmlentities($_SERVER['PHP_SELF']), 'config.php')) {
Header('Location: index.php');
die();
}

/************************************************************************
/ Database & System Config
/
/ dbhost:       SQL Database Hostname
/ dbuname:      SQL Username
/ dbpass:       SQL Password
/ dbname:       SQL Database Name
/ :      Your Database table's prefix
/ : Your Users' Database table's prefix (To share it)
/ :      Your Database Server type. Supported servers are:
/               MySQL, mysql4, postgres, mssql, oracle, msaccess,
/               db2 and mssql-odbc
/               Be sure to write it exactly as above, case SeNsItIvE!
/ :    Security Key. CHANGE it to whatever you want, as long
/               as you want. Just don't use quotes.
/ :    Set the graphic security code on every login screen,
/      You need to have GD extension installed:
/      0: No check
/      1: Administrators login only
/      2: Users login only
/      3: New users registration only
/      4: Both, users login and new users registration only
/      5: Administrators and users login only
/      6: Administrators and new users registration only
/      7: Everywhere on all login options (Admins and Users)
/      NOTE: If you aren't sure set this value to 0
/ : If you manage subscriptions on your site, you
/                    must write here the url of the subscription
/                    information/renewal page. This will send by
/                    email if set.
/ : Administration panel filename. "admin" by default for
/         "admin.php". To improve security please rename the file
/              "admin.php" and change the  value to the
/              new filename (without the extension .php)
/ :          Path to where the topic images are stored.
/ :  Debug control to see PHP generated errors.
/                   false: Don't show errors
/                   true: See all errors ( No notices )
/
/************************************************************************/
$dbhost = "localhost";
$dbuname = "database_user_name";
$dbpass = "dataabse_password";
$dbname = "database_name";
$prefix = "nuke";
$user_prefix = "nuke";
$dbtype = "MySQLi";
$sitekey = ".hLh,FuLFN2ChC6dCg90OFVJV6FfKH9.SWf7KJOv";
$gfx_chk = 0;
$subscription_url = '';
$admin_file = 'admin';
$tipath = "images/topics/";
$display_errors = 1; //  1 = on / 0 = off

/*********************************************************************/
/* You finished configuring the Database. Now you can change all     */
/* you want in the Administration Section.   To enter just launch    */
/* your web browser pointing to http://yourdomain.com/admin.php      */
/* (For example: platinumnukepro.com)                                */
/*                                                                   */
/* Remember to go to Settings section where you can configure your   */
/* new site. In that menu you can change all you need to change.     */
/*                                                                   */
/* Congratulations! Now you have an automated news portal!           */
/* Thanks for choosing Platinum Nuke Pro: The Future of the Web      */
/*********************************************************************/
/*********************************************************************/
/* Include the configuration options for Platinum Nuke Pro  START    */
/*********************************************************************/
// Specifically for Donations module IPN check
if (!isset($ipnCheck)) { /* do not display the following */ 

if (defined('INCLUDE_PATH') && file_exists(INCLUDE_PATH . 'pnpconfig.php')) {
	require_once INCLUDE_PATH . 'pnpconfig.php';
} else {
    echo "<link rel='stylesheet' href='includes/infobar/infobar.css' type='text/css' />
";
	echo <<< ERROR
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
		<title>Unable To Locate PNPro CONFIG file!</title>
	</head>
	<body>
	<table align="center" class="submenu" width="95%" height="50%" border="0" cellspacing="0" cellpadding="10">
		<tr><td>
		<div align="center">ERROR with the configuration<br />Unable to locate the platinumnukepro configuration file - pnpconfig.php<br /></div>
		<br /><br /><div>
		It could be missing or not readable. Please verify that the file exists and is readable in the root folder.<br />
		<br />
		This may also be caused by a third party module/script which attempts to include config.php directly rather than including mainfile.php and letting it load config.php, or otherwise does not follow platinumnukepro standards on how the constant INCLUDE_PATH is defined (this is done in mainfile.php, and is dependent upon other constants).</div>
		</td>
		</tr></table>
	</body>
</html>
ERROR;
}
}
?>