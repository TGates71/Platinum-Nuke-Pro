<?php

/************************************************************************/
/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */
/*                                                                      */
/* Copyright (c) 2010-2011 by http://www.platinumnuke.com            */
/*                                                                                           */
/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                 */
/*     Techgfx - Graeme Allan                       (goose@techgfx.com)   */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */
/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */
/*                                                                      */
/* Refer to PlatinumNuke.com for detailed information on Platinum Nuke Pro*/
/*                                                                      */
/* TechGFX: Your dreams, our imagination                                */
/************************************************************************/
if (!defined('IN_PHPBB'))
{
    die("Hacking attempt");
    exit;
}
$unhtml_specialchars_match = array('#&gt;#', '#&lt;#', '#&quot;#', '#&amp;#');
$unhtml_specialchars_replace = array('>', '<', '"', '&');
// ---------------------------------------
// Load agreement template since user has not yet
// agreed to registration conditions/coppa
//
function show_coppa()
{
    global $userdata, $template, $lang, $phpbb_root_path, $phpEx;
    $template->set_filenames(array('body' => 'agreement.tpl'));
    $template->assign_vars(array('REGISTRATION' => $lang['Registration'],
        'AGREEMENT' => $lang['Reg_agreement'], "AGREE_OVER_13" => $lang['Agree_over_13'],
        "AGREE_UNDER_13" => $lang['Agree_under_13'], 'DO_NOT_AGREE' => $lang['Agree_not'],
        "U_AGREE_OVER13" => append_sid("profile.$phpEx?mode=register&amp;agreed=true"),
        "U_AGREE_UNDER13" => append_sid("profile.$phpEx?mode=register&amp;agreed=true&amp;coppa=true")));
    $template->pparse('body');
}
//
// ---------------------------------------
$error = false;
$error_msg = '';
$page_title = ($mode == 'editprofile') ? $lang['Edit_profile'] : $lang['Register'];
$start_conditions = $mode == 'register' && !$userdata['session_logged_in'];
$check_conditions = isset($_POST['submit']);
include_once ('includes/sub_proxy.php');
if ($mode == 'register' && !isset($_POST['agreed']) && !isset($_GET['agreed']))
{
    include_once ("includes/page_header.php");
    show_coppa();
    include_once ("includes/page_tail.php");
}
$coppa = (empty($_POST['coppa']) && empty($_GET['coppa'])) ? 0 : true;
//
// Check and initialize some variables if needed
//
if (isset($_POST['submit']) || isset($_POST['avatargallery']) ||
    isset($_POST['submitavatar']) || isset($_POST['cancelavatar']) ||
    $mode == 'register')
{
    include_once ("includes/functions_validate.php");
    include_once ("includes/bbcode.php");
    include_once ("includes/functions_post.php");
    if ($mode == 'editprofile')
    {
        $user_id = intval($_POST['user_id']);
        $current_email = trim(htmlspecialchars($_POST['current_email']));
    }
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12        START */
    /*****************************************************/
    $strip_var_list = array('email' => 'email', 'icq' => 'icq', 'aim' => 'aim',
        'msn' => 'msn', 'yim' => 'yim', 'website' => 'website', 'location' => 'location',
        'occupation' => 'occupation', 'user_wordwrap' => 'user_wordwrap', 'interests' =>
        'interests', 'confirm_code' => 'confirm_code');
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12          END */
    /*****************************************************/
    // Strip all tags from data ... may p**s some people off, bah, strip_tags is
    // doing the job but can still break HTML output ... have no choice, have
    // to use htmlspecialchars ... be prepared to be moaned at.
    while (list($var, $param) = @each($strip_var_list))
    {
        if (!empty($_POST[$param]))
        {
            $$var = trim(htmlspecialchars($_POST[$param]));
        }
    }
    /*****************************************************/
    /*               Fields Mod                    START */
    /*****************************************************/
    $nfield = $_POST[nfield];
    if (count($nfield) > 0)
    {
        foreach ($nfield as $key => $var)
        {
            $var = check_html($var, "nohtml");
            $var = trim(htmlspecialchars($var, ENT_QUOTES));
            $nfield[$key] = $var;
        }
    }
    /*****************************************************/
    /*               Fields Mod                      END */
    /*****************************************************/
    $username = (!empty($_POST['username'])) ? phpbb_clean_username($_POST['username']) :
        '';
    $trim_var_list = array('cur_password' => 'cur_password', 'new_password' =>
        'new_password', 'password_confirm' => 'password_confirm', 'signature' =>
        'signature');
    while (list($var, $param) = @each($trim_var_list))
    {
        if (!empty($_POST[$param]))
        {
            $$var = trim($_POST[$param]);
        }
    }
    $signature = (isset($signature)) ? str_replace('<br />', "\n", $signature) : '';
    // Start add - Birthday MOD
    if (isset($_POST['birthday']))
    {
        $birthday = intval($_POST['birthday']);
        if ($birthday != 999999)
        {
            $b_day = realdate('j', $birthday);
            $b_md = realdate('n', $birthday);
            $b_year = realdate('Y', $birthday);
        }
    } else
    {
        $b_day = (isset($_POST['b_day'])) ? intval($_POST['b_day']) :
            0;
        $b_md = (isset($_POST['b_md'])) ? intval($_POST['b_md']) : 0;
        $b_year = (isset($_POST['b_year'])) ? intval($_POST['b_year']) :
            0;
        if ($b_day && $b_md && $b_year)
        {
            $birthday = mkrealdate($b_day, $b_md, $b_year);
        } else
        {
            $birthday = 999999;
        }
    }
    // End add - Birthday MOD
    $gender = (isset($_POST['gender'])) ? intval($_POST['gender']) :
        0;
    $signature_bbcode_uid = '';
    // Run some validation on the optional fields. These are pass-by-ref, so they'll be changed to
    // empty strings if they fail.
    validate_optional_fields($icq, $aim, $msn, $yim, $website, $location, $occupation,
        $interests, $signature);
    $viewemail = (isset($_POST['viewemail'])) ? (($_POST['viewemail']) ? true :
        0) : 0;
    $allowviewonline = (isset($_POST['hideonline'])) ? (($_POST['hideonline']) ?
        0 : true) : true;
    $notifyreply = (isset($_POST['notifyreply'])) ? (($_POST['notifyreply']) ? true :
        0) : 0;
    $notifypm = (isset($_POST['notifypm'])) ? (($_POST['notifypm']) ? true :
        0) : true;
    $popup_pm = (isset($_POST['popup_pm'])) ? (($_POST['popup_pm']) ? true :
        0) : true;
    $sid = (isset($_POST['sid'])) ? $_POST['sid'] : 0;
    if ($mode == 'register')
    {
        $attachsig = (isset($_POST['attachsig'])) ? ((intval($_POST['attachsig'])) ? true :
            0) : $board_config['allow_sig'];
        $allowhtml = (isset($_POST['allowhtml'])) ? ((intval($_POST['allowhtml'])) ? true :
            0) : $board_config['allow_html'];
        $allowbbcode = (isset($_POST['allowbbcode'])) ? ((intval($_POST['allowbbcode'])) ? true :
            0) : $board_config['allow_bbcode'];
        $allowsmilies = (isset($_POST['allowsmilies'])) ? ((intval($_POST['allowsmilies'])) ? true :
            0) : $board_config['allow_smilies'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   START */
        /*****************************************************/
        $showquickreply = (isset($_POST['showquickreply'])) ? ((intval($_POST['showquickreply'])) ? true :
            0) : $board_config['allow_quickreply'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   END   */
        /*****************************************************/
    } else
    {
        if (isset($_POST['wrap']))
        {
            $user_wordwrap = $_POST['wrap'];
        }
        $attachsig = (isset($_POST['attachsig'])) ? ((intval($_POST['attachsig'])) ? true :
            0) : $userdata['user_attachsig'];
        $allowhtml = (isset($_POST['allowhtml'])) ? ((intval($_POST['allowhtml'])) ? true :
            0) : $userdata['user_allowhtml'];
        $allowbbcode = (isset($_POST['allowbbcode'])) ? ((intval($_POST['allowbbcode'])) ? true :
            0) : $userdata['user_allowbbcode'];
        $allowsmilies = (isset($_POST['allowsmilies'])) ? ((intval($_POST['allowsmilies'])) ? true :
            0) : $userdata['user_allowsmile'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   START */
        /*****************************************************/
        $showquickreply = (isset($_POST['showquickreply'])) ? ((intval($_POST['showquickreply'])) ? true :
            0) : $userdata['user_quickreply'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   END   */
        /*****************************************************/
    }
    $user_style = (isset($_POST['style'])) ? intval($_POST['style']) :
        $board_config['default_style'];
    if (!empty($_POST['language']))
    {
        if (preg_match('/^[a-z_]+$/i', $_POST['language']))
        {
            $user_lang = htmlspecialchars($_POST['language']);
        } else
        {
            $error = true;
            $error_msg = $lang['Fields_empty'];
        }
    } else
    {
        $user_lang = $board_config['default_lang'];
    }
    $user_timezone = (isset($_POST['timezone'])) ? doubleval($_POST['timezone']) :
        $board_config['board_timezone'];
    $user_flag = (!empty($_POST['user_flag']) && $_POST['user_flag'] !=
        'blank.gif') ? htmlspecialchars($_POST['user_flag']) : ''; // Country/Location Flags
    $sql = "SELECT config_value
		FROM " . CONFIG_TABLE . "
		WHERE config_name = 'default_dateformat'";
    if (!($result = $db->sql_query($sql)))
    {
        message_die(GENERAL_ERROR, 'Could not select default dateformat', '', __line__,
            __file__, $sql);
    }
    $row = $db->sql_fetchrow($result);
    $board_config['default_dateformat'] = $row['config_value'];
    $user_dateformat = (!empty($_POST['dateformat'])) ? trim(htmlspecialchars
        ($_POST['dateformat'])) : $board_config['default_dateformat'];
    $user_avatar_local = (isset($_POST['avatarselect']) && !empty($_POST['submitavatar']) &&
        $board_config['allow_avatar_local']) ? htmlspecialchars($_POST['avatarselect']) : ((isset
        ($_POST['avatarlocal'])) ? htmlspecialchars($_POST['avatarlocal']) :
        '');
    $user_avatar_category = (isset($_POST['avatarcatname']) && $board_config['allow_avatar_local']) ?
        htmlspecialchars($_POST['avatarcatname']) : '';
    $user_avatar_remoteurl = (!empty($_POST['avatarremoteurl'])) ? trim(htmlspecialchars
        ($_POST['avatarremoteurl'])) : '';
    $user_avatar_upload = (!empty($_POST['avatarurl'])) ? trim($_POST['avatarurl']) : (($HTTP_POST_FILES['avatar']['tmp_name'] !=
        "none") ? $HTTP_POST_FILES['avatar']['tmp_name'] : '');
    $user_avatar_name = (!empty($HTTP_POST_FILES['avatar']['name'])) ? $HTTP_POST_FILES['avatar']['name'] :
        '';
    $user_avatar_size = (!empty($HTTP_POST_FILES['avatar']['size'])) ? $HTTP_POST_FILES['avatar']['size'] :
        0;
    $user_avatar_filetype = (!empty($HTTP_POST_FILES['avatar']['type'])) ? $HTTP_POST_FILES['avatar']['type'] :
        '';
    $user_avatar = (empty($user_avatar_local) && $mode == 'editprofile') ? $userdata['user_avatar'] :
        '';
    $user_avatar_type = (empty($user_avatar_local) && $mode == 'editprofile') ? $userdata['user_avatar_type'] :
        '';
    if ((isset($_POST['avatargallery']) || isset($_POST['submitavatar']) ||
        isset($_POST['cancelavatar'])) && (!isset($_POST['submit'])))
    {
        $username = stripslashes($username);
        $email = stripslashes($email);
        $cur_password = '';
        $cur_password = htmlspecialchars(stripslashes($cur_password));
        $new_password = htmlspecialchars(stripslashes($new_password));
        $password_confirm = htmlspecialchars(stripslashes($password_confirm));
        /*****************************************************/
        /*               Fields Mod                    START */
        /*****************************************************/
        if (count($nfield) > 0)
        {
            foreach ($nfield as $key => $var)
            {
                $var = stripslashes($var);
                $nfield[$key] = $var;
            }
        }
        /*****************************************************/
        /*               Fields Mod                      END */
        /*****************************************************/
        $icq = stripslashes($icq);
        $aim = stripslashes($aim);
        $msn = stripslashes($msn);
        $yim = stripslashes($yim);
        $website = stripslashes($website);
        $location = stripslashes($location);
        $occupation = stripslashes($occupation);
        $interests = stripslashes($interests);
        $signature = htmlspecialchars(stripslashes($signature));
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12        START */
        /*****************************************************/
        $user_wordwrap = stripslashes($user_wordwrap);
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12          END */
        /*****************************************************/
        $user_lang = stripslashes($user_lang);
        $user_dateformat = stripslashes($user_dateformat);
        if (!isset($_POST['cancelavatar']))
        {
            $user_avatar = $user_avatar_category . '/' . $user_avatar_local;
            $user_avatar_type = USER_AVATAR_GALLERY;
        }
    }
}
//
// Let's make sure the user isn't logged in while registering,
// and ensure that they were trying to register a second time
// (Prevents double registrations)
//
if ($mode == 'register' && ($userdata['session_logged_in'] || $username == $userdata['username']))
{
    message_die(GENERAL_MESSAGE, $lang['Username_taken'], '', __line__, __file__);
}
//
// Did the user submit? In this case build a query to update the users profile in the DB
//
if (isset($_POST['submit']))
{
    include_once ("includes/usercp_avatar.php");
    /*	// session id check
    if ($sid == '' || $sid != $userdata['session_id'])
    {
    $error = true;
    $error_msg .= ( ( isset($error_msg) ) ? '<br />' : '' ) . $lang['Session_invalid'];
    }*/
    $passwd_sql = '';
    if ($mode == 'editprofile')
    {
        if ($user_id != $userdata['user_id'])
        {
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Wrong_Profile'];
        }
        /*****************************************************/
        /*               Fields Mod                    START */
        /*****************************************************/
        $result = $db->sql_query("SELECT * FROM " . $user_prefix .
            "_users_fields WHERE need = '3' ORDER BY pos");
        while ($sqlvalue = $db->sql_fetchrow($result))
        {
            $t = $sqlvalue[fid];
            if ($nfield[$t] == "")
            {
                $error = true;
                $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Fields_empty'];
            }
        }
        /*****************************************************/
        /*               Fields Mod                      END */
        /*****************************************************/
    } else
        if ($mode == 'register')
        {
            if (empty($username) || empty($new_password) || empty($password_confirm) ||
                empty($email))
            {
                $error = true;
                $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Fields_empty'];
            }
        }
    if ($board_config['enable_confirm'] && $mode == 'register')
    {
        if (empty($_POST['confirm_id']))
        {
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Confirm_code_wrong'];
        } else
        {
            $confirm_id = htmlspecialchars($_POST['confirm_id']);
            if (!preg_match('/^[A-Za-z0-9]+$/', $confirm_id))
            {
                $confirm_id = '';
            }
            $sql = 'SELECT code 
				FROM ' . CONFIRM_TABLE . " 
				WHERE confirm_id = '$confirm_id' 
					AND session_id = '" . $userdata['session_id'] . "'";
            if (!($result = $db->sql_query($sql)))
            {
                message_die(GENERAL_ERROR, 'Could not obtain confirmation code', '', __line__,
                    __file__, $sql);
            }
            if ($row = $db->sql_fetchrow($result))
            {
                if ($row['code'] != $confirm_code)
                {
                    $error = true;
                    $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Confirm_code_wrong'];
                } else
                {
                    $sql = 'DELETE FROM ' . CONFIRM_TABLE . " 
						WHERE confirm_id = '$confirm_id' 
							AND session_id = '" . $userdata['session_id'] . "'";
                    if (!$db->sql_query($sql))
                    {
                        message_die(GENERAL_ERROR, 'Could not delete confirmation code', '', __line__,
                            __file__, $sql);
                    }
                }
            } else
            {
                $error = true;
                $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Confirm_code_wrong'];
            }
            $db->sql_freeresult($result);
        }
    }
    $passwd_sql = '';
    if (!empty($new_password) && !empty($password_confirm))
    {
        if ($new_password != $password_confirm)
        {
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Password_mismatch'];
        } else
            if (strlen($new_password) > 32)
            {
                $error = true;
                $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Password_long'];
            } else
            {
                if ($mode == 'editprofile')
                {
                    $sql = "SELECT user_password
                                        FROM " . USERS_TABLE . "
                                        WHERE user_id = '$user_id'";
                    if (!($result = $db->sql_query($sql)))
                    {
                        message_die(GENERAL_ERROR, 'Could not obtain user_password information', '',
                            __line__, __file__, $sql);
                    }
                    $row = $db->sql_fetchrow($result);
                    if ($row['user_password'] != md5($cur_password))
                    {
                        $error = true;
                        $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Current_password_mismatch'];
                    }
                }
                if (!$error)
                {
                    $new_password = md5($new_password);
                    $passwd_sql = "user_password = '$new_password', ";
                }
            }
    } else
        if ((empty($new_password) && !empty($password_confirm)) || (!empty($new_password) &&
            empty($password_confirm)))
        {
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Password_mismatch'];
        }
    //
    // Do a ban check on this email address
    //
    if ($email != $userdata['user_email'] || $mode == 'register')
    {
        $result = validate_email($email);
        if ($result['error'])
        {
            $email = $userdata['user_email'];
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $result['error_msg'];
        }
        if ($mode == 'editprofile')
        {
            $sql = "SELECT user_password
                                FROM " . USERS_TABLE . "
                                WHERE user_id = '$user_id'";
            if (!($result = $db->sql_query($sql)))
            {
                message_die(GENERAL_ERROR, 'Could not obtain user_password information', '',
                    __line__, __file__, $sql);
            }
            $row = $db->sql_fetchrow($result);
            if ($row['user_password'] != md5($cur_password))
            {
                $email = $userdata['user_email'];
                $error = true;
                $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Current_password_mismatch'];
            }
        }
    }
    $username_sql = '';
    if ($board_config['allow_namechange'] || $mode == 'register')
    {
        if (empty($username))
        {
            // Error is already triggered, since one field is empty.
            $error = true;
        } else
            if ($username != $userdata['username'] || $mode == 'register')
            {
                if (strtolower($username) != strtolower($userdata['username']) || $mode ==
                    'register')
                {
                    $result = validate_username($username);
                    if ($result['error'])
                    {
                        $error = true;
                        $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $result['error_msg'];
                    }
                }
                if (!$error)
                {
                    $username_sql = "username = '" . str_replace("\'", "''", $username) . "', ";
                }
            }
    }
    if ($signature != '')
    {
        if (strlen($signature) > $board_config['max_sig_chars'])
        {
            $error = true;
            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Signature_too_long'];
        }
        /*****************************************************/
        /* Forum - Restrict Signatures v.0.1.1         START */
        /*****************************************************/  else
        {
            if (preg_match_all("#\[img\]((ht|f)tp://)([^\r\n\t<\"]*?)\[/img\]#sie", $signature,
                $matches))
            {
                if (count($matches[0]) > $board_config['sig_images_max_limit'])
                {
                    $error = true;
                    $l_too_many_images = ($board_config['images_max_limit'] == 1) ? sprintf($lang['Too_many_sig_image'],
                        $board_config['sig_images_max_limit']) : sprintf($lang['Too_many_sig_images'], $board_config['sig_images_max_limit']);
                    $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $l_too_many_images;
                } else
                {
                    for ($i = 0; $i < count($matches[0]); $i++)
                    {
                        $image = preg_replace("#\[img\](.*)\[/img\]#si", "\\1", $matches[0][$i]);
                        list($width, $height) = @getimagesize($image);
                        if ($width > $board_config['sig_images_max_width'] || $height > $board_config['sig_images_max_height'])
                        {
                            $error = true;
                            $l_image_too_large = sprintf($lang['Sig_image_too_large'], $board_config['sig_images_max_width'],
                                $board_config['sig_images_max_height']);
                            $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $l_image_too_large;
                            break;
                        }
                    }
                }
            }
        }
        /*****************************************************/
        /* Forum - Restrict Signatures v.0.1.1           END */
        /*****************************************************/
        if (!isset($signature_bbcode_uid) || $signature_bbcode_uid == '')
        {
            $signature_bbcode_uid = ($allowbbcode) ? make_bbcode_uid() : '';
        }
        $signature = prepare_message($signature, $allowhtml, $allowbbcode, $allowsmilies,
            $signature_bbcode_uid);
    }
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12        START */
    /*****************************************************/
    if ((int)$user_wordwrap < 50 || (int)$user_wordwrap > 99)
    {
        $error = true;
        $error_msg .= ((isset($error_msg)) ? '<br />' : '') . $lang['Word_Wrap_Error'];
    }
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12          END */
    /*****************************************************/
    if ($website != '')
    {
        rawurlencode($website);
    }
    $avatar_sql = '';
    if (isset($_POST['avatardel']) && $mode == 'editprofile')
    {
        $avatar_sql = user_avatar_delete($userdata['user_avatar_type'], $userdata['user_avatar']);
    } else
        if ((!empty($user_avatar_upload) || !empty($user_avatar_name)) && $board_config['allow_avatar_upload'])
        {
            if (!empty($user_avatar_upload))
            {
                $avatar_mode = (empty($user_avatar_name)) ? 'remote' : 'local';
                $avatar_sql = user_avatar_upload($mode, $avatar_mode, $userdata['user_avatar'],
                    $userdata['user_avatar_type'], $error, $error_msg, $user_avatar_upload, $user_avatar_name,
                    $user_avatar_size, $user_avatar_filetype);
            } else
                if (!empty($user_avatar_name))
                {
                    $l_avatar_size = sprintf($lang['Avatar_filesize'], round($board_config['avatar_filesize'] /
                        1024));
                    $error = true;
                    $error_msg .= ((!empty($error_msg)) ? '<br />' : '') . $l_avatar_size;
                }
        } else
            if ($user_avatar_remoteurl != '' && $board_config['allow_avatar_remote'])
            {
                user_avatar_delete($userdata['user_avatar_type'], $userdata['user_avatar']);
                $avatar_sql = user_avatar_url($mode, $error, $error_msg, $user_avatar_remoteurl);
            } else
                if ($user_avatar_local != '' && $board_config['allow_avatar_local'])
                {
                    user_avatar_delete($userdata['user_avatar_type'], $userdata['user_avatar']);
                    $avatar_sql = user_avatar_gallery($mode, $error, $error_msg, $user_avatar_local,
                        $user_avatar_category);
                }
    // Start add - Birthday MOD
    // find the birthday values, reflected by the $lang['Submit_date_format']
    if ($b_day || $b_md || $b_year) //if a birthday is submited, then validate it

    {
        $user_age = (date('md') >= $b_md . (($b_day <= 9) ? '0' : '') . $b_day) ? date('Y') -
            $b_year : date('Y') - $b_year - 1;
        // Check date, maximum / minimum user age
        if (!checkdate($b_md, $b_day, $b_year))
        {
            $error = true;
            if (isset($error_msg))
                $error_msg .= "<br />";
            $error_msg .= $lang['Wrong_birthday_format'];
        } else
            if ($user_age > $board_config['max_user_age'])
            {
                $error = true;
                if (isset($error_msg))
                    $error_msg .= "<br />";
                $error_msg .= sprintf($lang['Birthday_to_high'], $board_config['max_user_age']);
            } else
                if ($user_age < $board_config['min_user_age'])
                {
                    $error = true;
                    if (isset($error_msg))
                        $error_msg .= "<br />";
                    $error_msg .= sprintf($lang['Birthday_to_low'], $board_config['min_user_age']);
                } else
                {
                    $birthday = ($error) ? $birthday : mkrealdate($b_day, $b_md, $b_year);
                    $next_birthday_greeting = (date('md') < $b_md . (($b_day <= 9) ? '0' : '') . $b_day) ?
                        date('Y') : date('Y') + 1;
                }
    } else
    {
        if ($board_config['birthday_require_onced'])
        {
            $error = true;
            if (isset($error_msg))
                $error_msg .= "<br />";
            $error_msg .= sprintf($lang['Birthday_require_once']);
        }
        $birthday = 999999;
    }
    // End add - Birthday MOD
    if (!$error)
    {
        if ($avatar_sql == '')
        {
            $avatar_sql = ($mode == 'editprofile') ? '' : "'', " . USER_AVATAR_NONE;
        }
        if ($mode == 'editprofile')
        {
            if ($email != $userdata['user_email'] && $board_config['require_once_activation'] !=
                USER_ACTIVATION_NONE && $userdata['user_level'] != ADMIN)
            {
                $user_active = 0;
                $user_actkey = gen_rand_string(true);
                $key_len = 54 - (strlen($server_url));
                $key_len = ($key_len > 6) ? $key_len : 6;
                $user_actkey = substr($user_actkey, 0, $key_len);
                if ($userdata['session_logged_in'])
                {
                    session_end($userdata['session_id'], $userdata['user_id']);
                }
            } else
            {
                $user_active = 1;
                $user_actkey = '';
            }
            /*****************************************************/
            /* Forum - Force Word Wrapping v.1.0.12        START */
            /*****************************************************/
            $sql = "UPDATE " . USERS_TABLE . "
                                SET " . $username_sql . $passwd_sql .
                "user_email = '" . str_replace("\'", "''", $email) . "', user_icq = '" .
                str_replace("\'", "''", $icq) . "', user_website = '" . str_replace("\'", "''",
                $website) . "', user_occ = '" . str_replace("\'", "''", $occupation) .
                "', user_from = '" . str_replace("\'", "''", $location) .
                "', user_from_flag = '" . str_replace("\'", "''", $user_flag) .
                "',user_interests = '" . str_replace("\'", "''", $interests) .
                "', user_birthday = '$birthday', user_next_birthday_greeting = '$next_birthday_greeting', user_viewemail = '$viewemail', user_aim = '" .
                str_replace("\'", "''", str_replace(' ', '+', $aim)) . "', user_yim = '" .
                str_replace("\'", "''", $yim) . "', user_msnm = '" . str_replace("\'", "''", $msn) .
                "', user_attachsig = '" . str_replace("\'", "''", $attachsig) .
                "', user_allowsmile = '$allowsmilies', user_quickreply = '$showquickreply', user_allowhtml = '$allowhtml', user_allowbbcode = '$allowbbcode', user_allow_viewonline = '$allowviewonline', user_notify = '$notifyreply', user_notify_pm = '$notifypm', user_popup_pm = '$popup_pm', user_timezone = '$user_timezone', user_dateformat = '" .
                str_replace("\'", "''", $user_dateformat) . "', user_wordwrap = '" . str_replace("\'",
                "''", $user_wordwrap) . "', user_lang = '" . str_replace("\'", "''", $user_lang) .
                "', user_style = '$user_style', user_active = '$user_active', user_actkey = '" .
                str_replace("\'", "''", $user_actkey) . "'" . $avatar_sql . ", user_gender=$gender
                                WHERE user_id = '$user_id'";
            /*****************************************************/
            /* Forum - Force Word Wrapping v.1.0.12          END */
            /*****************************************************/
            if (!($result = $db->sql_query($sql)))
            {
                message_die(GENERAL_ERROR, 'Could not update users table', '', __line__,
                    __file__, $sql);
            }
            /*****************************************************/
            /*               Fields Mod                    START */
            /*****************************************************/
            $user_id = $userdata[user_id];
            if (count($nfield) > 0)
            {
                foreach ($nfield as $key => $var)
                {
                    if (($db->sql_numrows($db->sql_query("SELECT * FROM " . $user_prefix .
                        "_users_field_values WHERE fid='$key' AND uid = '$user_id'"))) == 0)
                    {
                        $sql = "INSERT INTO " . $user_prefix . "_users_field_values (uid, fid, value) VALUES ('$user_id', '$key','$nfield[$key]')";
                        $db->sql_query($sql);
                    } else
                    {
                        $db->sql_query("UPDATE " . $user_prefix . "_users_field_values SET value='$nfield[$key]' WHERE fid='$key' AND uid = '$user_id'");
                    }
                }
            }
            /*****************************************************/
            /*               Fields Mod                      END */
            /*****************************************************/
            // We remove all stored login keys since the password has been updated
            // and change the current one (if applicable)
            if (!empty($passwd_sql))
            {
                session_reset_keys($user_id, $user_ip);
            } else
            {
                getusrinfo($user);
                docookie($userinfo["user_id"], $userinfo["username"], $userinfo["user_password"],
                    $userinfo["storynum"], $userinfo["umode"], $userinfo["uorder"], $userinfo["thold"],
                    $userinfo["noscore"], $userinfo["ublockon"], $userinfo["theme"], $userinfo["commentmax"]);
            }
            if (!$user_active)
            {
                //
                // The users account has been deactivated, send them an email with a new activation key
                //
                include_once ("includes/emailer.php");
                $emailer = new emailer($board_config['smtp_delivery']);
                if ($board_config['require_once_activation'] != USER_ACTIVATION_ADMIN)
                {
                    $emailer->from($board_config['board_email']);
                    $emailer->replyto($board_config['board_email']);
                    $emailer->use_template('user_activate', stripslashes($user_lang));
                    $emailer->email_address($email);
                    $emailer->set_subject($lang['Reactivate']);
                    $emailer->assign_vars(array('SITENAME' => $board_config['sitename'], 'USERNAME' =>
                        preg_replace($unhtml_specialchars_match, $unhtml_specialchars_replace, substr(str_replace
                        ("\'", "'", $username), 0, 25)), 'EMAIL_SIG' => (!empty($board_config['board_email_sig'])) ?
                        str_replace('<br />', "\n", "-- \n" . $board_config['board_email_sig']) : '',
                        'U_ACTIVATE' => $server_url . '&mode=activate&' . POST_USERS_URL . '=' . $user_id .
                        '&act_key=' . $user_actkey));
                    $emailer->send();
                    $emailer->reset();
                } else
                    if ($board_config['require_once_activation'] == USER_ACTIVATION_ADMIN)
                    {
                        $sql = 'SELECT user_email, user_lang 
 						FROM ' . USERS_TABLE . '
 						WHERE user_level = ' . ADMIN;
                        if (!($result = $db->sql_query($sql)))
                        {
                            message_die(GENERAL_ERROR, 'Could not select Administrators', '', __line__,
                                __file__, $sql);
                        }
                        while ($row = $db->sql_fetchrow($result))
                        {
                            $emailer->from($board_config['board_email']);
                            $emailer->replyto($board_config['board_email']);
                            $emailer->email_address(trim($row['user_email']));
                            $emailer->use_template("admin_activate", $row['user_lang']);
                            $emailer->set_subject($lang['Reactivate']);
                            $emailer->assign_vars(array('USERNAME' => preg_replace($unhtml_specialchars_match,
                                $unhtml_specialchars_replace, substr(str_replace("\'", "'", $username), 0, 25)),
                                'EMAIL_SIG' => str_replace('<br />', "\n", "-- \n" . $board_config['board_email_sig']),
                                'U_ACTIVATE' => $server_url . '?mode=activate&' . POST_USERS_URL . '=' . $user_id .
                                '&act_key=' . $user_actkey));
                            $emailer->send();
                            $emailer->reset();
                        }
                        $db->sql_freeresult($result);
                    }
                $message = $lang['Profile_updated_inactive'] . '<br /><br />' . sprintf($lang['Click_return_index'],
                    '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
            } else
            {
                $message = $lang['Profile_updated'] . '<br /><br />' . sprintf($lang['Click_return_index'],
                    '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
            }
            //                            $template->assign_vars(array(
            //                        "META" => '<meta http-equiv="refresh" content="5;url=' . append_sid("index.$phpEx") . '">')
            //                        );
            message_die(GENERAL_MESSAGE, $message);
        } else
        {
            $sql = "SELECT MAX(user_id) AS total
                                FROM " . USERS_TABLE;
            if (!($result = $db->sql_query($sql)))
            {
                message_die(GENERAL_ERROR, 'Could not obtain next user_id information', '',
                    __line__, __file__, $sql);
            }
            if (!($row = $db->sql_fetchrow($result)))
            {
                message_die(GENERAL_ERROR, 'Could not obtain next user_id information', '',
                    __line__, __file__, $sql);
            }
            $user_id = $row['total'] + 1;
            //
            // Get current date
            //
            $reg_date = date("M d, Y");
            /*****************************************************/
            /* Forum - Force Word Wrapping v.1.0.12        START */
            /*****************************************************/
            $sql = "INSERT INTO " . USERS_TABLE .
                "        (user_id, username, user_regdate, user_password, user_email, user_icq, user_website, user_occ, user_from, user_from_flag, user_interests, user_avatar, user_avatar_type, user_viewemail, user_aim, user_yim, user_msnm, user_attachsig, user_allowsmile, user_allowhtml, user_allowbbcode, user_allow_viewonline, user_notify, user_notify_pm, user_popup_pm, user_timezone, user_dateformat, user_wordwrap, user_lang, user_style, user_gender, user_level, user_allow_pm, user_birthday, user_next_birthday_greeting, user_active, user_actkey)
                                VALUES ('$user_id', '" . str_replace("\'", "''",
                $username) . "', '" . $reg_date . "', '" . str_replace("\'", "''", $new_password) .
                "', '" . str_replace("\'", "''", $email) . "', '" . str_replace("\'", "''", $icq) .
                "', '" . str_replace("\'", "''", $website) . "', '" . str_replace("\'", "''", $occupation) .
                "', '" . str_replace("\'", "''", $location) . "', '" . str_replace("\'", "''", $user_flag) .
                "', '" . str_replace("\'", "''", $interests) . "', $avatar_sql, $viewemail, '" .
                str_replace("\'", "''", str_replace(' ', '+', $aim)) . "', '" . str_replace("\'",
                "''", $yim) . "', '" . str_replace("\'", "''", $msn) . "', '$attachsig', '$allowsmilies', '$allowhtml', '$allowbbcode', '$allowviewonline', '$notifyreply', '$notifypm', '$popup_pm', '$user_timezone', '" .
                str_replace("\'", "''", $user_dateformat) . "', '" . str_replace("\'", "''", $user_wordwrap) .
                "', '" . str_replace("\'", "''", $user_lang) . "', '$user_style', '$gender', '1', '1', '$birthday', '$next_birthday_greeting', '1', NULL";
            /*****************************************************/
            /* Forum - Force Word Wrapping v.1.0.12          END */
            /*****************************************************/
            if ($board_config['require_once_activation'] == USER_ACTIVATION_SELF || $board_config['require_once_activation'] ==
                USER_ACTIVATION_ADMIN || $coppa)
            {
                $user_actkey = gen_rand_string(true);
                $key_len = 54 - (strlen($server_url));
                $key_len = ($key_len > 6) ? $key_len : 6;
                $user_actkey = substr($user_actkey, 0, $key_len);
                $sql .= "0, '" . str_replace("\'", "''", $user_actkey) . "')";
            } else
            {
                $sql .= "1, '')";
            }
            if (!($result = $db->sql_query($sql, BEGIN_TRANSACTION)))
            {
                message_die(GENERAL_ERROR, 'Could not insert data into users table', '',
                    __line__, __file__, $sql);
            }
            if ($coppa)
            {
                $message = $lang['COPPA'];
                $email_template = 'coppa_welcome_inactive';
            } else
                if ($board_config['require_once_activation'] == USER_ACTIVATION_SELF)
                {
                    $message = $lang['Account_inactive'];
                    $email_template = 'user_welcome_inactive';
                } else
                    if ($board_config['require_once_activation'] == USER_ACTIVATION_ADMIN)
                    {
                        $message = $lang['Account_inactive_admin'];
                        $email_template = 'admin_welcome_inactive';
                    } else
                    {
                        $message = $lang['Account_added'];
                        $email_template = 'user_welcome';
                    }
                    include_once ("includes/emailer.php");
            $emailer = new emailer($board_config['smtp_delivery']);
            $emailer->from($board_config['board_email']);
            $emailer->replyto($board_config['board_email']);
            $emailer->use_template($email_template, stripslashes($user_lang));
            $emailer->email_address($email);
            $emailer->set_subject(sprintf($lang['Welcome_subject'], $board_config['sitename']));
            if ($coppa)
            {
                $emailer->assign_vars(array('SITENAME' => $board_config['sitename'],
                    'WELCOME_MSG' => sprintf($lang['Welcome_subject'], $board_config['sitename']),
                    'USERNAME' => preg_replace($unhtml_specialchars_match, $unhtml_specialchars_replace,
                    substr(str_replace("\'", "'", $username), 0, 25)), 'PASSWORD' => $password_confirm,
                    'EMAIL_SIG' => str_replace('<br />', "\n", "-- \n" . $board_config['board_email_sig']),
                    'FAX_INFO' => $board_config['coppa_fax'], 'MAIL_INFO' => $board_config['coppa_mail'],
                    'EMAIL_ADDRESS' => $email, 'ICQ' => $icq, 'AIM' => $aim, 'YIM' => $yim, 'MSN' =>
                    $msn, 'WEB_SITE' => $website, 'FROM' => $location, 'OCC' => $occupation,
                    'INTERESTS' => $interests, 'SITENAME' => $board_config['sitename']));
            } else
            {
                $emailer->assign_vars(array('SITENAME' => $board_config['sitename'],
                    'WELCOME_MSG' => sprintf($lang['Welcome_subject'], $board_config['sitename']),
                    'USERNAME' => preg_replace($unhtml_specialchars_match, $unhtml_specialchars_replace,
                    substr(str_replace("\'", "'", $username), 0, 25)), 'PASSWORD' => $password_confirm,
                    'EMAIL_SIG' => str_replace('<br />', "\n", "-- \n" . $board_config['board_email_sig']),
                    'U_ACTIVATE' => $server_url . '&mode=activate&' . POST_USERS_URL . '=' . $user_id .
                    '&act_key=' . $user_actkey));
            }
            $emailer->send();
            $emailer->reset();
            if ($board_config['require_once_activation'] == USER_ACTIVATION_ADMIN)
            {
                $sql = "SELECT user_email, user_lang
                                        FROM " . USERS_TABLE . "
                                        WHERE user_level = " . ADMIN;
                if (!($result = $db->sql_query($sql)))
                {
                    message_die(GENERAL_ERROR, 'Could not select Administrators', '', __line__,
                        __file__, $sql);
                }
                while ($row = $db->sql_fetchrow($result))
                {
                    $emailer->from($board_config['board_email']);
                    $emailer->replyto($board_config['board_email']);
                    $emailer->email_address(trim($row['user_email']));
                    $emailer->use_template("admin_activate", $row['user_lang']);
                    $emailer->set_subject($lang['New_account_subject']);
                    $emailer->assign_vars(array('USERNAME' => preg_replace($unhtml_specialchars_match,
                        $unhtml_specialchars_replace, substr(str_replace("\'", "'", $username), 0, 25)),
                        'EMAIL_SIG' => str_replace('<br />', "\n", "-- \n" . $board_config['board_email_sig']),
                        'U_ACTIVATE' => $server_url . '&mode=activate&' . POST_USERS_URL . '=' . $user_id .
                        '&act_key=' . $user_actkey));
                    $emailer->send();
                    $emailer->reset();
                }
                $db->sql_freeresult($result);
            }
            $message = $message . '<br /><br />' . sprintf($lang['Click_return_index'],
                '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
            message_die(GENERAL_MESSAGE, $message);
        } // if mode == register
    }
} // End of submit
if ($error)
{
    //
    // If an error occured we need to stripslashes on returned data
    //
    $username = stripslashes($username);
    $email = stripslashes($email);
    $new_password = '';
    $password_confirm = '';
    /*****************************************************/
    /*               Fields Mod                    START */
    /*****************************************************/
    $result = $db->sql_query("SELECT * FROM " . $user_prefix .
        "_users_fields WHERE need <> '0' ORDER BY pos");
    while ($sqlvalue = $db->sql_fetchrow($result))
    {
        $t = $sqlvalue[fid];
        $nfield[$t] = stripslashes($nfield[$t]);
    }
    /*****************************************************/
    /*               Fields Mod                      END */
    /*****************************************************/
    $icq = stripslashes($icq);
    $aim = str_replace('+', ' ', stripslashes($aim));
    $msn = stripslashes($msn);
    $yim = stripslashes($yim);
    $website = stripslashes($website);
    $location = stripslashes($location);
    $occupation = stripslashes($occupation);
    $interests = stripslashes($interests);
    $signature = stripslashes($signature);
    $signature = ($signature_bbcode_uid != '') ? preg_replace("/:(([a-z0-9]+:)?)$signature_bbcode_uid(=|\])/si", '\\3', $signature) : $signature;
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12        START */
    /*****************************************************/
    $user_wordwrap = stripslashes($user_wordwrap);
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12          END */
    /*****************************************************/
    $user_lang = stripslashes($user_lang);
    $user_dateformat = stripslashes($user_dateformat);
} else
    if ($mode == 'editprofile' && !isset($_POST['avatargallery']) && !
        isset($_POST['submitavatar']) && !isset($_POST['cancelavatar']))
    {
        $user_id = $userdata['user_id'];
        $username = $userdata['username'];
        $email = $userdata['user_email'];
        $cur_password = '';
        $new_password = '';
        $password_confirm = '';
        /*****************************************************/
        /*               Fields Mod                    START */
        /*****************************************************/
        $result = $db->sql_query("SELECT * FROM " . $user_prefix . "_users_fields");
        while ($sqlvalue = $db->sql_fetchrow($result))
        {
            list($value) = $db->sql_fetchrow($db->sql_query("SELECT value FROM " . $user_prefix .
                "_users_field_values WHERE fid ='$sqlvalue[fid]' AND uid = '$userdata[user_id]'"));
            $userdata[$sqlvalue[name]] = $value;
        }
        $result = $db->sql_query("SELECT * FROM " . $user_prefix .
            "_users_field_values WHERE need <> '0' ORDER BY pos");
        while ($sqlvalue = $db->sql_fetchrow($result))
        {
            $t = $sqlvalue[fid];
            $nfield[$t] = $userdata[$sqlvalue[name]];
        }
        /*****************************************************/
        /*               Fields Mod                      END */
        /*****************************************************/
        $icq = $userdata['user_icq'];
        $aim = str_replace('+', ' ', $userdata['user_aim']);
        $msn = $userdata['user_msnm'];
        $yim = $userdata['user_yim'];
        $website = $userdata['user_website'];
        $userdata['user_from'] = str_replace(".gif", "", $userdata['user_from']);
        $location = $userdata['user_from'];
        $user_flag = $userdata['user_from_flag']; // Country/Location Flags
        $occupation = $userdata['user_occ'];
        $interests = $userdata['user_interests'];
        // Start add - Birthday MOD
        $birthday = $userdata['user_birthday'];
        // End add - Birthday MOD
        $gender = $userdata['user_gender'];
        $signature_bbcode_uid = $userdata['user_sig_bbcode_uid'];
        $signature = ($signature_bbcode_uid != '') ? preg_replace("/:(([a-z0-9]+:)?)$signature_bbcode_uid(=|\])/si",
            '\\3', $userdata['user_sig']) : $userdata['user_sig'];
        $viewemail = $userdata['user_viewemail'];
        $notifypm = $userdata['user_notify_pm'];
        $popup_pm = $userdata['user_popup_pm'];
        $notifyreply = $userdata['user_notify'];
        $attachsig = $userdata['user_attachsig'];
        $allowhtml = $userdata['user_allowhtml'];
        $allowbbcode = $userdata['user_allowbbcode'];
        $allowsmilies = $userdata['user_allowsmile'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   START */
        /*****************************************************/
        $showquickreply = $userdata['user_quickreply'];
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   END   */
        /*****************************************************/
        $allowviewonline = $userdata['user_allow_viewonline'];
        $user_avatar = ($userdata['user_allowavatar']) ? $userdata['user_avatar'] : '';
        $user_avatar_type = ($userdata['user_allowavatar']) ? $userdata['user_avatar_type'] :
            USER_AVATAR_NONE;
        $user_style = $userdata['user_style'];
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12        START */
        /*****************************************************/
        $user_wordwrap = $userdata['user_wordwrap'];
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12          END */
        /*****************************************************/
        $user_lang = $userdata['user_lang'];
        $user_timezone = $userdata['user_timezone'];
        $user_dateformat = $userdata['user_dateformat'];
    }
//
// Default pages
//
include_once ("includes/page_header.php");
make_jumpbox('viewforum.' . $phpEx);
if ($mode == 'editprofile')
{
    if ($user_id != $userdata['user_id'])
    {
        $error = true;
        $error_msg = $lang['Wrong_Profile'];
    }
}
if (isset($_POST['avatargallery']) && !$error)
{
    include_once ("includes/usercp_avatar.php");
    $avatar_category = (!empty($_POST['avatarcategory'])) ?
        htmlspecialchars($_POST['avatarcategory']) : '';
    $template->set_filenames(array('body' => 'profile_avatar_gallery.tpl'));
    $allowviewonline = !$allowviewonline;
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12        START */
    /*****************************************************/
    /*****************************************************/
    /*               Fields Mod                    START */
    /*****************************************************/
    display_avatar_gallery($mode, $avatar_category, $user_id, $email, $current_email,
        $coppa, $username, $email, $new_password, $cur_password, $password_confirm, $icq,
        $aim, $msn, $yim, $website, $location, $user_flag, $occupation, $interests, $signature,
        $viewemail, $notifypm, $popup_pm, $notifyreply, $attachsig, $allowhtml, $allowbbcode,
        $allowsmilies, $allowviewonline, $user_style, $user_wordwrap, $user_lang, $user_timezone,
        $user_dateformat, $userdata['session_id'], $nfield, $gender, $birthday);
    /*****************************************************/
    /*               Fields Mod                      END */
    /*****************************************************/
    /*****************************************************/
    /* Forum - Force Word Wrapping v.1.0.12          END */
    /*****************************************************/
} else
{
    include_once ("includes/functions_selects.php");
    if (!isset($coppa))
    {
        $coppa = false;
    }
    if (!isset($user_style))
    {
        $user_style = $board_config['default_style'];
    }
    $avatar_img = '';
    if ($user_avatar_type)
    {
        switch ($user_avatar_type)
        {
            case USER_AVATAR_UPLOAD:
                $avatar_img = ($board_config['allow_avatar_upload']) ? '<img src="' . $board_config['avatar_path'] .
                    '/' . $user_avatar . '" alt="" />':
                '';
                break;
                //
                // case USER_AVATAR_REMOTE:
                // 	$avatar_img = ( $board_config['allow_avatar_remote'] ) ? '<img src="' . $user_avatar . '" alt="" />' : '';
                // 	break;
                //
            case USER_AVATAR_REMOTE:
                $avatar_img = resize_avatar($user_avatar);
                break;
                //
            case USER_AVATAR_GALLERY:
                $avatar_img = ($board_config['allow_avatar_local']) ? '<img src="' . $board_config['avatar_gallery_path'] .
                    '/' . $user_avatar . '" alt="" />':
                '';
                break;
        }
    }
    $s_hidden_fields = '<input type="hidden" name="mode" value="' . $mode .
        '" /><input type="hidden" name="agreed" value="true" /><input type="hidden" name="coppa" value="' .
        $coppa . '" />';
    $s_hidden_fields .= '<input type="hidden" name="sid" value="' . $userdata['session_id'] .
        '" />';
    if ($mode == 'editprofile')
    {
        $s_hidden_fields .= '<input type="hidden" name="user_id" value="' . $userdata['user_id'] .
            '" />';
        //
        // Send the users current email address. If they change it, and account activation is turned on
        // the user account will be disabled and the user will have to reactivate their account.
        //
        $s_hidden_fields .= '<input type="hidden" name="current_email" value="' . $userdata['user_email'] .
            '" />';
    }
    if (!empty($user_avatar_local))
    {
        $s_hidden_fields .= '<input type="hidden" name="avatarlocal" value="' . $user_avatar_local .
            '" /><input type="hidden" name="avatarcatname" value="' . $user_avatar_category .
            '" />';
    }
    $html_status = ($userdata['user_allowhtml'] && $board_config['allow_html']) ? $lang['HTML_is_ON'] :
        $lang['HTML_is_OFF'];
    $bbcode_status = ($userdata['user_allowbbcode'] && $board_config['allow_bbcode']) ?
        $lang['BBCode_is_ON'] : $lang['BBCode_is_OFF'];
    $smilies_status = ($userdata['user_allowsmile'] && $board_config['allow_smilies']) ?
        $lang['Smilies_are_ON'] : $lang['Smilies_are_OFF'];
    switch ($gender)
    {
        case 1:
            $gender_male_checked = "checked=\"checked\"";
            break;
        case 2:
            $gender_female_checked = "checked=\"checked\"";
            break;
        default:
            $gender_no_specify_checked = "checked=\"checked\"";
    }
    // Start add - Birthday MOD
    if ($birthday != 999999)
    {
        $b_day = realdate('j', $birthday);
        $b_md = realdate('n', $birthday);
        $b_year = realdate('Y', $birthday);
        $birthday = realdate($lang['Submit_date_format'], $birthday);
    } else
    {
        $b_day = '';
        $b_md = '';
        $b_year = '';
        $birthday = '';
    }
    // End add - Birthday MOD
    if ($error)
    {
        $template->set_filenames(array('reg_header' => 'error_body.tpl'));
        $template->assign_vars(array('ERROR_MESSAGE' => $error_msg));
        $template->assign_var_from_handle('ERROR_BOX', 'reg_header');
    }
    $template->set_filenames(array('body' => 'profile_add_body.tpl'));
    if ($mode == 'editprofile')
    {
        $template->assign_block_vars('switch_edit_profile', array());
    }
    // Country/Location Flags
    // Query to get the list of flags
    $sql = "SELECT *
		FROM " . FLAG_TABLE . "
		ORDER BY flag_name";
    if (!$flags_result = $db->sql_query($sql))
    {
        message_die(GENERAL_ERROR, "Couldn't obtain flags information.", "", __line__,
            __file__, $sql);
    }
    // Build the html select statement
    $flag_start_image = 'blank.gif';
    $flag_select = '<select name="user_flag" onChange="document.images[\'user_flag\'].src = \'images/flags/\' + this.value;">';
    $flag_select .= '<option value="blank.gif">' . $lang['Select_country'] .
        '</option>';
    while ($flag_row = $db->sql_fetchrow($flags_result))
    {
        $flag_name = $flag_row['flag_name'];
        $flag_image = $flag_row['flag_image'];
        $selected = ($user_flag == $flag_image) ? ' selected="selected"' : '';
        $flag_select .= '&nbsp;&nbsp;&nbsp;<option value="' . $flag_image . '"' . $selected .
            '">' . $flag_name . '</option>';
        if (isset($user_flag) && ($user_flag == $flag_image))
        {
            $flag_start_image = $flag_image;
        }
    }
    $flag_select .= '</select>';
    if (($mode == 'register') || ($board_config['allow_namechange']))
    {
        $template->assign_block_vars('switch_namechange_allowed', array());
    } else
    {
        $template->assign_block_vars('switch_namechange_disallowed', array());
    }
    // Visual Confirmation
    $confirm_image = '';
    if (!empty($board_config['enable_confirm']) && $mode == 'register')
    {
        $sql = 'SELECT session_id 
			FROM ' . SESSIONS_TABLE;
        if (!($result = $db->sql_query($sql)))
        {
            message_die(GENERAL_ERROR, 'Could not select session data', '', __line__,
                __file__, $sql);
        }
        if ($row = $db->sql_fetchrow($result))
        {
            $confirm_sql = '';
            do
            {
                $confirm_sql .= (($confirm_sql != '') ? ', ' : '') . "'" . $row['session_id'] .
                    "'";
            } while ($row = $db->sql_fetchrow($result));
            $sql = 'DELETE FROM ' . CONFIRM_TABLE . " 
				WHERE session_id NOT IN ($confirm_sql)";
            if (!$db->sql_query($sql))
            {
                message_die(GENERAL_ERROR, 'Could not delete stale confirm data', '', __line__,
                    __file__, $sql);
            }
        }
        $db->sql_freeresult($result);
        $sql = 'SELECT COUNT(session_id) AS attempts 
			FROM ' . CONFIRM_TABLE . " 
			WHERE session_id = '" . $userdata['session_id'] . "'";
        if (!($result = $db->sql_query($sql)))
        {
            message_die(GENERAL_ERROR, 'Could not obtain confirm code count', '', __line__,
                __file__, $sql);
        }
        if ($row = $db->sql_fetchrow($result))
        {
            if ($row['attempts'] > 3)
            {
                message_die(GENERAL_MESSAGE, $lang['Too_many_registers']);
            }
        }
        $db->sql_freeresult($result);
        // Generate the require_onced confirmation code
        // NB 0 (zero) could get confused with O (the letter) so we make change it
        $code = dss_rand();
        $code = substr(str_replace('0', 'Z', strtoupper(base_convert($code, 16, 35))), 2,
            6);
        $confirm_id = md5(uniqid($user_ip));
        $sql = 'INSERT INTO ' . CONFIRM_TABLE . " (confirm_id, session_id, code) 
			VALUES ('$confirm_id', '" . $userdata['session_id'] . "', '$code')";
        if (!$db->sql_query($sql))
        {
            message_die(GENERAL_ERROR, 'Could not insert new confirm code information', '',
                __line__, __file__, $sql);
        }
        unset($code);
        $confirm_image = '<img src="' . append_sid("profile.$phpEx?mode=confirm&amp;id=$confirm_id") .
            '" alt="" title="" />';
        $s_hidden_fields .= '<input type="hidden" name="confirm_id" value="' . $confirm_id .
            '" />';
        $template->assign_block_vars('switch_confirm', array());
    }
    // Start add - Birthday MOD
    $s_b_day = '<span class="genmed">' . $lang['Day'] .
        '&nbsp;</span><select name="b_day" size="1" class="gensmall"> 
		<option value="0">&nbsp;-&nbsp;</option> 
		<option value="1">&nbsp;1&nbsp;</option>
		<option value="2">&nbsp;2&nbsp;</option>
		<option value="3">&nbsp;3&nbsp;</option>
		<option value="4">&nbsp;4&nbsp;</option>
		<option value="5">&nbsp;5&nbsp;</option>
		<option value="6">&nbsp;6&nbsp;</option>
		<option value="7">&nbsp;7&nbsp;</option>
		<option value="8">&nbsp;8&nbsp;</option>
		<option value="9">&nbsp;9&nbsp;</option>
		<option value="10">&nbsp;10&nbsp;</option>
		<option value="11">&nbsp;11&nbsp;</option>
		<option value="12">&nbsp;12&nbsp;</option>
		<option value="13">&nbsp;13&nbsp;</option>
		<option value="14">&nbsp;14&nbsp;</option>
		<option value="15">&nbsp;15&nbsp;</option>
		<option value="16">&nbsp;16&nbsp;</option>
		<option value="17">&nbsp;17&nbsp;</option>
		<option value="18">&nbsp;18&nbsp;</option>
		<option value="19">&nbsp;19&nbsp;</option>
		<option value="20">&nbsp;20&nbsp;</option>
		<option value="21">&nbsp;21&nbsp;</option>
		<option value="22">&nbsp;22&nbsp;</option>
		<option value="23">&nbsp;23&nbsp;</option>
		<option value="24">&nbsp;24&nbsp;</option>
		<option value="25">&nbsp;25&nbsp;</option>
		<option value="26">&nbsp;26&nbsp;</option>
		<option value="27">&nbsp;27&nbsp;</option>
		<option value="28">&nbsp;28&nbsp;</option>
		<option value="29">&nbsp;29&nbsp;</option>
		<option value="30">&nbsp;30&nbsp;</option>
		<option value="31">&nbsp;31&nbsp;</option>
	  	</select>&nbsp;&nbsp;';
    $s_b_md = '<span class="genmed">' . $lang['Month'] .
        '&nbsp;</span><select name="b_md" size="1" class="gensmall"> 
     	<option value="0">&nbsp;-&nbsp;</option> 
		<option value="1">&nbsp;' . $lang['datetime']['January'] . '&nbsp;</option>
		<option value="2">&nbsp;' . $lang['datetime']['February'] . '&nbsp;</option>
		<option value="3">&nbsp;' . $lang['datetime']['March'] . '&nbsp;</option>
		<option value="4">&nbsp;' . $lang['datetime']['April'] . '&nbsp;</option>
		<option value="5">&nbsp;' . $lang['datetime']['May'] . '&nbsp;</option>
		<option value="6">&nbsp;' . $lang['datetime']['June'] . '&nbsp;</option>
		<option value="7">&nbsp;' . $lang['datetime']['July'] . '&nbsp;</option>
		<option value="8">&nbsp;' . $lang['datetime']['August'] . '&nbsp;</option>
		<option value="9">&nbsp;' . $lang['datetime']['September'] . '&nbsp;</option>
		<option value="10">&nbsp;' . $lang['datetime']['October'] . '&nbsp;</option>
		<option value="11">&nbsp;' . $lang['datetime']['November'] . '&nbsp;</option>
		<option value="12">&nbsp;' . $lang['datetime']['December'] . '&nbsp;</option>
		</select>&nbsp;&nbsp;';
    $s_b_day = str_replace("value=\"" . $b_day . "\">", "value=\"" . $b_day . "\" SELECTED>",
        $s_b_day);
    $s_b_md = str_replace("value=\"" . $b_md . "\">", "value=\"" . $b_md . "\" SELECTED>",
        $s_b_md);
    $s_b_year = '<span class="genmed">' . $lang['Year'] .
        '&nbsp;</span><input type="text" class="post" style="width: 50px" name="b_year" size="4" maxlength="4" value="' .
        $b_year . '" />&nbsp;&nbsp;';
    $i = 0;
    $s_birthday = '';
    for ($i = 0; $i <= strlen($lang['Submit_date_format']); $i++)
    {
        switch ($lang['Submit_date_format'][$i])
        {
            case d:
                $s_birthday .= $s_b_day;
                break;
            case m:
                $s_birthday .= $s_b_md;
                break;
            case Y:
                $s_birthday .= $s_b_year;
                break;
        }
    }
    // End add - Birthday MOD
    //
    // Let's do an overall check for settings/versions which would prevent
    // us from doing file uploads....
    //
    $ini_val = (phpversion() >= '4.0.0') ? 'ini_get' : 'get_cfg_var';
    $form_enctype = (@$ini_val('file_uploads') == '0' || strtolower(@$ini_val('file_uploads') ==
        'off') || phpversion() == '4.0.4pl1' || !$board_config['allow_avatar_upload'] ||
        (phpversion() < '4.0.3' && @$ini_val('open_basedir') != '')) ? '' :
        'enctype="multipart/form-data"';
    /*****************************************************/
    /*               Fields Mod                    START */
    /*****************************************************/
    get_lang("Your_Account");
    $ThemeSel = get_theme();
    $result = $db->sql_query("SELECT * FROM " . $user_prefix . "_users_fields");
    while ($sqlvalue = $db->sql_fetchrow($result))
    {
        list($value) = $db->sql_fetchrow($db->sql_query("SELECT value FROM " . $user_prefix .
            "_users_field_values WHERE fid ='$sqlvalue[fid]' AND uid = '$userdata[user_id]'"));
        $userdata[$sqlvalue[name]] = $value;
    }
    $customfields = "";
    $result = $db->sql_query("SELECT * FROM " . $user_prefix .
        "_users_fields WHERE need <> '0' ORDER BY pos");
    while ($sqlvalue = $db->sql_fetchrow($result))
    {
        $t = $sqlvalue[fid];
        $value2 = explode("::", $sqlvalue[value]);
        if (substr($sqlvalue[name], 0, 1) == '_')
            eval("\$name_exit = $sqlvalue[name];");
        else
            $name_exit = $sqlvalue[name];
        if (count($value2) == 1)
        {
            if (file_exists("themes/$ThemeSel/themeprofileeditfields.php"))
            {
                include_once ("themes/$ThemeSel/themeprofileeditfields.php");
            } else
            {
                $themeprofileeditfields = "<tr><td class=\"row1\" width=\"38%\"><span class=\"gen\">$name_exit: *</span></td><td class=\"row2\"><input type=\"text\" class=\"post\" style=\"width:200px\" name=\"nfield[$t]\" size=\"25\" maxlength=\"25\" value=\"" .
                    $nfield[$t] . "\" /></td></tr>";
            }
            $customfields .= $themeprofileeditfields;
            $sqlvalueMax = $sqlvalueMax - 1;
        } else
        {
            $seloptions = "";
            for ($i = 0; $i < count($value2); $i++)
            {
                if (trim($nfield[$t]) == trim($value2[$i]))
                    $sel = "selected";
                else
                    $sel = "";
                $seloptions .= "<option value=\"" . trim($value2[$i]) . "\" $sel>$value2[$i]</option>\n";
            }
            if (file_exists("themes/$ThemeSel/themeprofileeditselfields.php"))
            {
                include_once ("themes/$ThemeSel/themeprofileeditselfields.php");
            } else
            {
                $themeprofileeditselfields = "<tr><td class=\"row1\"><span class=\"gen\">$name_exit: *</span></td><td class=\"row2\"><span class=\"gensmall\"><select name=\"nfield[$t]\">" .
                    $seloptions . "</select></span></td></tr>\n";
            }
            $customfields .= $themeprofileeditselfields;
        }
    }
    /*****************************************************/
    /*               Fields Mod                      END */
    /*****************************************************/
    $template->assign_vars(array('USERNAME' => isset($username) ? $username : '',
        'CUR_PASSWORD' => isset($cur_password) ? $cur_password : '', 'NEW_PASSWORD' =>
        isset($new_password) ? $new_password : '', 'PASSWORD_CONFIRM' => isset($password_confirm) ?
        $password_confirm : '', 'EMAIL' => isset($email) ? $email : '', 'CONFIRM_IMG' =>
        $confirm_image, /*****************************************************/
        /* Forum - Signature Editor Deluxe v.1.1.0     START */
        /*****************************************************/
		'SIG_EDIT_LINK' => append_sid("profile.$phpEx?mode=signature"),
		'SIG_DESC' => $lang['sig_description'],
        'SIG_BUTTON_DESC' => $lang['sig_edit'], 'BB_BG' => $images['bbcode_bg'],
        /*****************************************************/
        /* Forum - Signature Editor Deluxe v.1.1.0       END */
        /*****************************************************/
		'YIM' => $yim,
        /*****************************************************/
        /*               Fields Mod                    START */
        /*****************************************************/ 
		'CUSTOMFIELDS' => $customfields,
        /*****************************************************/
        /*               Fields Mod                      END */
        /*****************************************************/
		'ICQ' => $icq, 
		'MSN' => $msn,
		'AIM' => $aim,
		'OCCUPATION' => $occupation,
		'INTERESTS' => $interests,
        // Start add - Birthday MOD
        'S_BIRTHDAY' => $s_birthday,
		'BIRTHDAY_REQUIRED' => ($board_config['birthday_require_onced']) ? '*' : '',
		// End add - Birthday MOD
        'LOCATION' => $location, 
		'L_FLAG' => $lang['Country_flag'],
        // Country/Location Flags
        'FLAG_SELECT' => $flag_select, // Country/Location Flags
        'FLAG_START' => $flag_start_image, // Country/Location Flags
        'LOCK_GENDER' => ($mode != 'register') ? 'DISABLED' : '',
		'GENDER' => $gender,
        'GENDER_NO_SPECIFY_CHECKED' => $gender_no_specify_checked,
		'GENDER_MALE_CHECKED' => $gender_male_checked,
		'GENDER_FEMALE_CHECKED' => $gender_female_checked,
        'WEBSITE' => $website,
		'SIGNATURE' => str_replace('<br />', "\n", $signature),
        'VIEW_EMAIL_YES' => ($viewemail) ? 'checked="checked"' : '',
		'VIEW_EMAIL_NO' => (!$viewemail) ? 'checked="checked"' : '',
		'HIDE_USER_YES' => (!$allowviewonline) ? 'checked="checked"' : '',
		'HIDE_USER_NO' => ($allowviewonline) ? 'checked="checked"' : '',
		'NOTIFY_PM_YES' => ($notifypm) ? 'checked="checked"' : '',
		'NOTIFY_PM_NO' => (!$notifypm) ? 'checked="checked"' : '',
		'POPUP_PM_YES' => ($popup_pm) ? 'checked="checked"' : '',
		'POPUP_PM_NO' => (!$popup_pm) ? 'checked="checked"' : '',
		'ALWAYS_ADD_SIGNATURE_YES' => ($attachsig) ? 'checked="checked"' : '',
		'ALWAYS_ADD_SIGNATURE_NO' => (!$attachsig) ? 'checked="checked"' : '',
		'NOTIFY_REPLY_YES' => ($notifyreply) ? 'checked="checked"' : '',
		'NOTIFY_REPLY_NO' => (!$notifyreply) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_BBCODE_YES' => ($allowbbcode) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_BBCODE_NO' => (!$allowbbcode) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_HTML_YES' => ($allowhtml) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_HTML_NO' => (!$allowhtml) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_SMILIES_YES' => ($allowsmilies) ? 'checked="checked"' : '',
		'ALWAYS_ALLOW_SMILIES_NO' => (!$allowsmilies) ? 'checked="checked"' : '',
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   START */
        /*****************************************************/
		'SHOW_QUICK_REPLY_YES' => ($showquickreply) ? 'checked="checked"' : '',
		'SHOW_QUICK_REPLY_NO' => (!$showquickreply) ? 'checked="checked"' : '',
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   END   */
        /*****************************************************/ 
		'ALLOW_AVATAR' => $board_config['allow_avatar_upload'],
        'AVATAR' => $avatar_img,
		'AVATAR_SIZE' => $board_config['avatar_filesize'],
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12        START */
        /*****************************************************/
		'WRAP_ROW' => ($mode == 'register') ? '70' : $user_wordwrap,
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12          END */
        /*****************************************************/
		'LANGUAGE_SELECT' => language_select($user_lang, 'language'),
		'STYLE_SELECT' => style_select($user_style, 'style'),
		'TIMEZONE_SELECT' => tz_select($user_timezone, 'timezone'),
        'DATE_FORMAT' => $user_dateformat, 'HTML_STATUS' => $html_status,
        'BBCODE_STATUS' => sprintf($bbcode_status, '<a href="' . append_sid("faq.$phpEx?mode=bbcode") . '" target="_phpbbcode">', '</a>'), 	
		'SMILIES_STATUS' => $smilies_status,
        'L_CURRENT_PASSWORD' => $lang['Current_password'],
		'L_NEW_PASSWORD' => ($mode == 'register') ? $lang['Password'] : $lang['New_password'],
		'L_CONFIRM_PASSWORD' => $lang['Confirm_password'],
		'L_CONFIRM_PASSWORD_EXPLAIN' => ($mode == 'editprofile') ? $lang['Confirm_password_explain'] : '',
		'L_PASSWORD_IF_CHANGED' => ($mode == 'editprofile') ? $lang['password_if_changed'] : '',
        'L_PASSWORD_CONFIRM_IF_CHANGED' => ($mode == 'editprofile') ? $lang['password_confirm_if_changed'] : '',
		'L_SUBMIT' => $lang['Submit'],
		'L_RESET' => $lang['Reset'],
		'L_ICQ_NUMBER' => $lang['ICQ'],
		'L_MESSENGER' => $lang['MSNM'],
		'L_YAHOO' => $lang['YIM'],
        'L_WEBSITE' => $lang['Website'],
		'L_AIM' => $lang['AIM'],
		'L_LOCATION' => $lang['Location'],
        'L_OCCUPATION' => $lang['Occupation'],
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12        START */
        /*****************************************************/ 
		'L_WORD_WRAP' => $lang['Word_Wrap'],
        'L_WORD_WRAP_EXPLAIN' => $lang['Word_Wrap_Explain'],
		'L_WORD_WRAP_EXTRA' => $lang['Word_Wrap_Extra'],
        /*****************************************************/
        /* Forum - Force Word Wrapping v.1.0.12          END */
        /*****************************************************/ 
		'L_BOARD_LANGUAGE' => $lang['Board_lang'],
        'L_BOARD_STYLE' => $lang['Board_style'],
		'L_TIMEZONE' => $lang['Timezone'],
        'L_DATE_FORMAT' => $lang['Date_format'],
		'L_DATE_FORMAT_EXPLAIN' => $lang['Date_format_explain'],
        'L_YES' => $lang['Yes'],
		'L_NO' => $lang['No'],
		'L_INTERESTS' => $lang['Interests'],
        // Start add - Birthday MOD
        'L_BIRTHDAY' => $lang['Birthday'], // End add - Birthday MOD
        'L_GENDER' => $lang['Gender'],
		'L_GENDER_MALE' => $lang['Male'],
        'L_GENDER_FEMALE' => $lang['Female'],
		'L_GENDER_NOT_SPECIFY' => $lang['No_gender_specify'],
        'L_ALWAYS_ALLOW_SMILIES' => $lang['Always_smile'],
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   START */
        /*****************************************************/
		'L_SHOW_QUICK_REPLY' => $lang['Show_quick_reply'],
        /*****************************************************/
        /* Forum - QUICK REPLY 1.0.2                   END   */
        /*****************************************************/
		'L_ALWAYS_ALLOW_BBCODE' => $lang['Always_bbcode'],
		'L_ALWAYS_ALLOW_HTML' => $lang['Always_html'],
        'L_HIDE_USER' => $lang['Hide_user'],
		'L_ALWAYS_ADD_SIGNATURE' => $lang['Always_add_sig'],
        'L_AVATAR_PANEL' => $lang['Avatar_panel'],
		'L_AVATAR_EXPLAIN' => sprintf($lang['Avatar_explain'],
        $board_config['avatar_max_width'],
		$board_config['avatar_max_height'],
		(round($board_config['avatar_filesize'] / 1024))),
		'L_UPLOAD_AVATAR_FILE' => $lang['Upload_Avatar_file'],
        'L_UPLOAD_AVATAR_URL' => $lang['Upload_Avatar_URL'],
        'L_UPLOAD_AVATAR_URL_EXPLAIN' => $lang['Upload_Avatar_URL_explain'],
        'L_AVATAR_GALLERY' => $lang['Select_from_gallery'],
		'L_SHOW_GALLERY' => $lang['View_avatar_gallery'],
        'L_LINK_REMOTE_AVATAR' => $lang['Link_remote_Avatar'],
        'L_LINK_REMOTE_AVATAR_EXPLAIN' => $lang['Link_remote_Avatar_explain'],
        'L_DELETE_AVATAR' => $lang['Delete_Image'],
		'L_CURRENT_IMAGE' => $lang['Current_Image'],
        'L_SIGNATURE' => $lang['Signature'],
		'L_SIGNATURE_EXPLAIN' => sprintf($lang['Signature_explain'],
        $board_config['max_sig_chars']), 
		'L_NOTIFY_ON_REPLY' => $lang['Always_notify'],
        'L_NOTIFY_ON_REPLY_EXPLAIN' => $lang['Always_notify_explain'],
        'L_NOTIFY_ON_PRIVMSG' => $lang['Notify_on_privmsg'],
		'L_POPUP_ON_PRIVMSG' => $lang['Popup_on_privmsg'],
        'L_POPUP_ON_PRIVMSG_EXPLAIN' => $lang['Popup_on_privmsg_explain'],
        'L_PREFERENCES' => $lang['Preferences'],
		'L_PUBLIC_VIEW_EMAIL' => $lang['Public_view_email'],
        // Spam warning Start
        'L_PUBLIC_VIEW_EMAIL_REQUEST' => $lang['Public_view_email_request'],
        // Spam warning End
        'L_ITEMS_REQUIRED' => $lang['Items_require_onced'],
		'L_REGISTRATION_INFO' => $lang['Registration_info'],
        'L_PROFILE_INFO' => $lang['Profile_info'],
		'L_PROFILE_INFO_NOTICE' => $lang['Profile_info_warn'],
        'L_EMAIL_ADDRESS' => $lang['Email_address'],
		'L_CONFIRM_CODE_IMPAIRED' => sprintf($lang['Confirm_code_impaired'],
		'<a href="mailto:' . $board_config['board_email'] . '">', '</a>'),
		'L_CONFIRM_CODE' => $lang['Confirm_code'],
        'L_CONFIRM_CODE_EXPLAIN' => $lang['Confirm_code_explain'],
		'L_FONT_COLOR' => $lang['Font_color'],
        'L_COLOR_DEFAULT' => $lang['color_default'],
		'L_COLOR_DARK_RED' => $lang['color_dark_red'],
        'L_COLOR_RED' => $lang['color_red'],
		'L_COLOR_ORANGE' => $lang['color_orange'],
        'L_COLOR_BROWN' => $lang['color_brown'],
		'L_COLOR_YELLOW' => $lang['color_yellow'],
        'L_COLOR_GREEN' => $lang['color_green'],
		'L_COLOR_OLIVE' => $lang['color_olive'],
        'L_COLOR_CYAN' => $lang['color_cyan'],
		'L_COLOR_BLUE' => $lang['color_blue'],
        'L_COLOR_DARK_BLUE' => $lang['color_dark_blue'],
		'L_COLOR_INDIGO' => $lang['color_indigo'],
        'L_COLOR_VIOLET' => $lang['color_violet'],
		'L_COLOR_WHITE' => $lang['color_white'],
        'L_COLOR_BLACK' => $lang['color_black'],
		'L_FONT_SIZE' => $lang['Font_size'],
        'L_FONT_TINY' => $lang['font_tiny'],
		'L_FONT_SMALL' => $lang['font_small'],
        'L_FONT_NORMAL' => $lang['font_normal'],
		'L_FONT_LARGE' => $lang['font_large'],
        'L_FONT_HUGE' => $lang['font_huge'],
		'L_BBCODE_CLOSE_TAGS' => $lang['Close_Tags'],
        'S_ALLOW_AVATAR_UPLOAD' => $board_config['allow_avatar_upload'],
        'S_ALLOW_AVATAR_LOCAL' => $board_config['allow_avatar_local'],
        'S_ALLOW_AVATAR_REMOTE' => $board_config['allow_avatar_remote'],
        'S_HIDDEN_FIELDS' => $s_hidden_fields, 'S_FORM_ENCTYPE' => $form_enctype,
        'S_PROFILE_ACTION' => append_sid("profile.$phpEx")));
    //
    // This is another cheat using the block_var capability
    // of the templates to 'fake' an IF...ELSE...ENDIF solution
    // it works well :)
    //
    if ($mode != 'register')
    {
        if ($userdata['user_allowavatar'] && ($board_config['allow_avatar_upload'] || $board_config['allow_avatar_local'] ||
            $board_config['allow_avatar_remote']))
        {
            $template->assign_block_vars('switch_avatar_block', array());
            if ($board_config['allow_avatar_upload'] && file_exists(@phpbb_realpath('./' . $board_config['avatar_path'])))
            {
                if ($form_enctype != '')
                {
                    $template->assign_block_vars('switch_avatar_block.switch_avatar_local_upload',
                        array());
                }
                $template->assign_block_vars('switch_avatar_block.switch_avatar_remote_upload',
                    array());
            }
            if ($board_config['allow_avatar_remote'])
            {
                $template->assign_block_vars('switch_avatar_block.switch_avatar_remote_link',
                    array());
            }
            if ($board_config['allow_avatar_local'] && file_exists(@phpbb_realpath('./' . $board_config['avatar_gallery_path'])))
            {
                $template->assign_block_vars('switch_avatar_block.switch_avatar_local_gallery',
                    array());
            }
        }
    }
}
function docookie($setuser_id, $setusername, $setuser_password, $setstorynum, $setumode,
    $setuorder, $setthold, $setnoscore, $setublockon, $settheme, $setcommentmax)
{
    $info = base64_encode("$setuser_id:$setusername:$setuser_password:$setstorynum:$setumode:$setuorder:$setthold:$setnoscore:$setublockon:$settheme:$setcommentmax");
    setcookie("user", "$info", time() + 15552000);
}
$template->pparse('body');
include_once ("includes/page_tail.php");

?>