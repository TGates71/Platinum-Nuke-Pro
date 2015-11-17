<?php


if (!defined('ADMIN_FILE')) {
	die('Access Denied');
}
require_once('mainfile.php');


global $prefix, $db, $admin_file, $gfx_chk;
$aid = substr($aid, 0, 25);
$row = $db->sql_fetchrow($db->sql_query('SELECT name, radminsuper FROM ' . $prefix . '_authors WHERE aid=\'' . $aid . '\''));
if (($row['radminsuper'] == 1) && ($row['name'] == 'God')) {
$module_name = basename(dirname(__FILE__));

if (@file_exists("admin/language/lang-bugreport.php"))
{
	include_once("admin/language/lang-bugreport.php");
}

/**********************************/
/* Configuration                  */
/*                                */
/* You can change this:           */
/* $index = 0; (right side off)   */
/**********************************/
//$index = 1;
define('INDEX_FILE', true);
/**********************************/

include_once('header.php');
$FB_NO = 'NO';
$cookie[0] = intval($cookie[0]);
if (!empty($cookie[1])) {
	$row = $db->sql_fetchrow($db->sql_query('SELECT name, username, user_email FROM '.$user_prefix.'_users WHERE user_id='.$cookie[0]));
	if (!empty($row['name'])) {
		$sender_name = stripslashes($row['name']);
	} else {
		$sender_name = stripslashes($row['username']);
	}
	$sender_email = stripslashes($row['user_email']);
}
OpenTable();
 echo "<div align=\"center\">\n[ <a href=\"$admin_file.php\">" . _MAINADMIN . "</a> ]</div>\n";
if (!isset($opi)) $opi = '';
if (!isset($send)) $send = '';
if (!isset($name_err)) $name_err = '';
if (!isset($email_err)) $email_err = '';
if (!isset($subject_err)) $subject_err = '';
if (!isset($sec_err)) $sec_err = '';
if (!isset($message_err)) $message_err = '';
if (!isset($message)) $message = '';
if ($opi != 'ds') {
	form_block();
} elseif ($opi == 'ds') {
	if (empty($sender_name)) {
		$name_err = '<center><font class="option"><strong><i>'._FBENTERNAME.'</i></strong></font></center><br />';
		$send = $FB_NO;
	}
	if (preg_match('#(Content-Type)|(MIME-Version)|(Content-Disposition)|(\\\\n)|(%0A)|(0x0A)|(\\\\r)|(0x0D)|(%0D)|(to:)|(cc:)|(bcc:)#i', $sender_name)) {
		$name_err = '<center><font class="option"><strong><i>'._FBINVALIDNAME.'</i></strong></font></center><br />';
		$sender_name = '';
		$send = $FB_NO;
	}
	if (empty($sender_email)) {
		$email_err = '<center><font class="option"><strong><i>'._FBENTEREMAIL.'</i></strong></font></center><br />';
		$send = $FB_NO;
	}
	if (!check_email_address($sender_email)) {
		$email_err = '<center><font class="option"><strong><i>'._FBRENTEREMAIL.'</i></strong></font></center><br />';
		$sender_email = '';
		$send = $FB_NO;
	}
	if (empty($subject)) {
		$subject_err = '<center><font class="option"><strong><i>'._FBENTERSUBJECT.'</i></strong></font></center><br />';
		$send = $FB_NO;
	}	
	if (preg_match('#(Content-Type)|(MIME-Version)|(Content-Disposition)|(\\\\n)|(%0A)|(0x0A)|(\\\\r)|(0x0D)|(%0D)|(to:)|(cc:)|(bcc:)#i', $subject)) {
		$subject_err = '<center><font class="option"><strong><i>'._FBINVALIDSUBJECT.'</i></strong></font></center><br />';
		$subject = '';
		$send = $FB_NO;
	}
	if (empty($message)) {
		$message_err = '<center><font class="option"><strong><i>'._FBENTERMESSAGE.'</i></strong></font></center><br />';
		$send = $FB_NO;
	}

	if ($send != $FB_NO) {
		$to = "sgtmudd@mach-hosting.com";
		$phpversion = "" . phpversion() . "";
		$mySqlVersion = "" . MysqlVersion() . "";
		$subject = "$sitename - "._FEEDBACK.": $subject\n";
		$subject = stripslashes(FixQuotes(check_html(removecrlf($subject))));
		$sender_name = stripslashes(FixQuotes(check_html(removecrlf($sender_name))));
		$sender_email = stripslashes(FixQuotes(check_html(removecrlf($sender_email))));
		$message = check_html($message, 'nohtml');
		$msg  = "$sitename\n\n";
		$msg .= _SENDERNAME.": $sender_name\n";
		$msg .= _SENDEREMAIL.": $sender_email\n";
		$msg .= _SUBJECT.": $subject\n";
		$msg .= _PHPVERSION.": $phpversion\n";
		$msg .= _MYSQLVERSION.": $mySqlVersion\n";
		$msg .= _ERRMODULE.": $err_module\n";
		$msg .= _MESSAGE.": $message\n\n";
		$mailheaders  = "From: $sender_name <$sender_email>\r\n";
		$mailheaders .= "Reply-To: $sender_email\r\n" . 'X-Mailer: PHP/' . phpversion();
		/*
		 * TegoNuke Mailer added by montego for 2.20.00
		 */
		$mailsuccess = false;
		if (defined('TNML_IS_ACTIVE')) {
			$mailsuccess = tnml_fMailer($to, $subject, $msg, $sender_email, $sender_name);
		} else {
			$mailsuccess = mail($to, $subject, $msg, $mailheaders);
		}
		if ($mailsuccess) {
			echo '<center><p>'._FBMAILSENT.'</p></center>'."\n"
				.'<center><p>'._FBTHANKSFORCONTACT.'</p></center>'."\n";
				Header('Refresh: 3; url='.$admin_file.'.php');
		} else {
			echo '<center><p>'._FBMAILNOTSENT.'</p></center>'."\n";
			Header('Refresh: 3; url='.$admin_file.'.php');
		}
		/*
		 * end of TegoNuke Mailer add
		 */
	} elseif ($send == $FB_NO) {
		OpenTable2();
		echo "$name_err\n"
				."$email_err\n"
				."$subject_err\n"
				."$message_err\n"
				."$sec_err\n";
		CloseTable2();
		echo '<br />';
		form_block();
	}
}

CloseTable();
include_once('footer.php');
die();

} else {
	die('Illegal File Access');
}

function MysqlVersion()
{
    global $db;
    $result = $db->sql_query("SELECT VERSION() as version");
    $row = $db->sql_fetchrow($result);
    return $row[0];
}

function check_email_address($sender_email) {
	if (!preg_match('#^[^@]{1,64}@[^@]{1,255}$#', $sender_email)) {
		return false;
	}
	$email_array = explode('@', $sender_email);
	$local_array = explode('.', $email_array[0]);
	for ($i = 0; $i < sizeof($local_array); $i++) {
		if (!preg_match(">^(([A-Za-z0-9!#$%&'*+/=?^_`{|}~-][A-Za-z0-9!#$%&'*+/=?^_`{|}~\.-]{0,63})|(\"[^(\\|\")]{0,62}\"))$>", $local_array[$i])) {
			return false;
		}
	}
	if (!preg_match('#^\[?[0-9\.]+\]?$#', $email_array[1])) {
		$domain_array = explode('.', $email_array[1]);
		if (sizeof($domain_array) < 2) {
			return false;
		}
		for ($i = 0; $i < sizeof($domain_array); $i++) {
			if (!preg_match("#^(([A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9])|([A-Za-z0-9]+))$#", $domain_array[$i])) {
				return false;
			}
		}
	}
	return true;
}

function form_block() {
	global $db, $prefix, $admin_file, $gfx_chk, $message, $module_name, $sender_email, $sender_name, $sitename, $subject, $email, $name;
	echo '<form name"err_form" method="post" action="' . $admin_file . '.php?op=bugreport">'."\n"
		.'<table border="0" cellspacing="0" cellpadding="3">'."\n"
	    .'<tr><td colspan="2">'."\n"
		.'<font class="title"><strong>'._BUGREPORTTITLE.'</strong></font>'."\n"
		.'</td></tr>'."\n"
		.'<tr><td colspan="2">'."\n"
		.'<font class="content">'._BUGREPORTNOTE.'</font>'."\n"
		.'</td></tr>'."\n"
		.'<tr><td>'."\n"
		.'<strong>'._YOURNAME.':</strong></td>'."\n"
		.'<td><input type="text" name="sender_name" value="'.$sender_name.'" size="30" />'.$name.''."\n"
		.'</td></tr>'."\n"
		.'<tr><td align="left">'."\n"
		.'<strong>'._YOUREMAIL.':</strong></td>'."\n"
		.'<td><input type="text" name="sender_email" value="'.$sender_email.'" size="30" />'.$email.''."\n"
		.'</td></tr>'."\n"
		.'<tr><td>'."\n";
	echo '<strong>'._SUBJECT.':</strong></td>'."\n";
	echo '<td><input type="text" name="subject" value="Bug Report" size="30" onfocus="this.blur()" />'."\n"
	    .'</td></tr>'."\n"
		.'<tr><td>'."\n";
	echo '<strong>'._MODULE.':</strong></td>'."\n";
	echo '<td><select name="err_module">'
				.'<option value="select">---------------------';
	
	$sql = 'SELECT title, custom_title FROM '.$prefix.'_modules ORDER BY title ASC';
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result)) {
		$module[$key] = $row['title'];
		$key++;
		$mn_title = $row['title'];
		$custom_title = $row['custom_title'];
		$mn_title2 = (!$custom_title) ? preg_replace("#_#", " ", $mn_title) : $custom_title;
		if ($custom_title != "") {
			$mn_title2 = $custom_title;
		}
		echo '<option value="'.$mn_title2.'">'.$mn_title2.'';
		$dummy = 1;
	}
	echo '<option value="Other">'._FBOTHER.'';
	echo '</select>&nbsp;<span class="gensmall">'._MODULEDESC.'</span></td></tr>'
		.'<tr><td>'."\n";
	echo '<strong>'._PHPVERSION.':</strong>&nbsp;'._AUTOPOP.'</td>'."\n";
	$phpversion = phpversion();
	echo '<td><input type="text" name="phpversion" value="'.$phpversion.'" size="30" onfocus="this.blur()" />'."\n"
	.'</td></tr><tr><td>'."\n";
	$mySqlVersion = MysqlVersion();
	echo '<strong>'._MYSQLVERSION.':</strong>&nbsp;'._AUTOPOP.'</td>'."\n";
	echo '<td><input type="text" name="phpversion" value="'.$mySqlVersion.'" size="30" onfocus="this.blur()" />'."\n"
		.'</td></tr><tr><td>'."\n";
	
	echo '<strong>'._MESSAGE.':</strong></td>'."\n"
		.'<td><textarea name="message" cols="30" rows="5">'.$message.'</textarea>'."\n"
		.'</td></tr>'."\n"
		.'<tr><td align="center" colspan="2">'."\n"
		.'<input type="hidden" name="opi" value="ds" />'."\n";
/*****[BEGIN]******************************************
 [ Base:    GFX Code                           v1.0.0 ]
 ******************************************************/
//	echo security_code(array(1,5,6,7), 'stacked'); // not needed as reporter should be logged in admin only...
/*****[END]********************************************
 [ Base:    GFX Code                           v1.0.0 ]
 ******************************************************/
 	echo '</td></tr>'."\n";
 	echo '<tr><td align="right" colspan="2">'."\n";
	echo '<input type="submit" name="submit" value="'._SEND.'" /></td></tr>'."\n"
		.'</form></table>'."\n"
		.'<strong>'._ALLFIELDSREQUIRED.'</strong>'."\n";
}

?>