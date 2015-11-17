-- Remove duplicate bbgroup entries

ALTER TABLE nuke_bbgroups ADD user_id VARCHAR(10) AFTER group_single_user;
CREATE TABLE nuke_bbuser_group_fix as
SELECT * FROM nuke_bbuser_group WHERE 1 GROUP BY user_id;
DROP TABLE nuke_bbuser_group;
RENAME TABLE nuke_bbuser_group_fix TO nuke_bbuser_group;

-- Insert users into default user groups

UPDATE `nuke_bbuser_group` SET `group_id`=3;
UPDATE `nuke_bbuser_group` SET `group_id`=1 WHERE `user_id`=-1;
UPDATE `nuke_bbuser_group` SET `group_id`=2 WHERE `user_id`=2;

-- Update initial user group ID

UPDATE.`nuke_bbconfig` SET `config_value` = '3' WHERE `nuke_bbconfig`.`config_name` = 'initial_group_id';

-- EvoX to PNPv1 Clean up

ALTER TABLE nuke_config DROP admin_log_lines, DROP error_log_lines, DROP cache_data;
ALTER TABLE nuke_config ADD displayerror tinyint(1) NOT NULL DEFAULT '1';
DROP TABLE `nuke_themes`;
DROP TABLE nuke_modules_cat;

-- Add missing nuke_authors column (fixes admin modules not showing)

ALTER TABLE nuke_authors ADD radminblocker tinyint(2) NOT NULL DEFAULT '1';

-- Add attribute column - Quick Titles MOD

ALTER TABLE nuke_bbtopics ADD topic_attribute varchar(25) DEFAULT NULL;

-- Update config table with PNP info

UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPV1.0.1 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.PNPV1.0.1';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1</strong></font></a><br>';
UPDATE `nuke_config` SET `foot1` = '',`foot2` = '', `foot3` = '<p style="text-align: center;">\r\n	<span style="font-size:10px;"><font class="footmsg">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />All the rest &copy; 2013 by this site.<br />\r\n	PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="&quot;footmsg_l&quot;">GPL</font></a>.</font></span></p>\r\n<p style="text-align: center;">\r\n	<font class="footmsg"><span style="font-size:10px;">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="width: 80px; height: 15px;" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="width: 80px; height: 15px;" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="width: 80px; height: 15px;" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="width: 80px; height: 15px;" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" border="0" height="15" src="http://tool.motoricerca.info/pic/valid-robots-small.png" width="80" /></a><br />\r\n	Site Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1&nbsp;</strong></font></a><font class="footmsg"> and is maintained by the Platinum Pro Team.</font></span></font></p>\r\n';

ALTER TABLE nuke_config CHANGE default_theme Default_Theme varchar(255) NOT NULL;
UPDATE `nuke_config` SET `Default_Theme` = 'PNP_WB';

-- Update nuke_users table

ALTER TABLE nuke_users ADD `user_next_birthday_greeting` int(11) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_login_tries` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_last_login_try` int(11) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_cash` decimal(11,2) NOT NULL DEFAULT '0.00';
ALTER TABLE nuke_users ADD `user_effects` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_privs` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_custitle` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_specmsg` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_items` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_trade` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `kick_ban` int(2) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `last_seen_blocker` int(11) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_avatar_dimensions` varchar(255) DEFAULT NULL;
ALTER TABLE nuke_users ADD `user_topics` mediumint(8) unsigned NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_regip` char(8) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `lastsitevisit` int(11) NOT NULL DEFAULT '0';
ALTER TABLE nuke_users ADD `user_quickreply` tinyint( 1 ) NOT NULL DEFAULT '0';
UPDATE nuke_users SET theme = 'PNP_WB';

-- Add missing nuke_users_temp column

ALTER TABLE nuke_users_temp ADD `requestor` varchar(25) NOT NULL;

-- Add missing forums tables and columns

ALTER TABLE nuke_bbforums ADD `attached_forum_id` mediumint(8) NOT NULL DEFAULT '-1';
ALTER TABLE nuke_bbforums ADD `forum_notify` tinyint( 1 ) unsigned NOT NULL DEFAULT '1';

-- Insert default PNPv1 nuke_bbconfig

DROP TABLE IF EXISTS `nuke_bbconfig`;
CREATE TABLE IF NOT EXISTS `nuke_bbconfig` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_bbconfig` (`config_name`, `config_value`) VALUES
('config_id', '1'),
('board_disable', '0'),
('sitename', 'Platinum Nuke Pro v1'),
('site_desc', 'Expect to be impressed!'),
('cookie_name', ''),
('cookie_path', '/'),
('cookie_domain', ''),
('cookie_secure', '0'),
('session_length', '3600'),
('allow_html', '1'),
('allow_html_tags', 'b,i,u,pre,img,IMG'),
('allow_bbcode', '1'),
('allow_smilies', '1'),
('allow_sig', '1'),
('allow_namechange', '0'),
('allow_theme_create', '0'),
('allow_avatar_local', '1'),
('allow_avatar_remote', '0'),
('allow_avatar_upload', '1'),
('override_user_style', '1'),
('posts_per_page', '15'),
('topics_per_page', '50'),
('hot_threshold', '25'),
('max_poll_options', '10'),
('max_sig_chars', '999'),
('max_inbox_privmsgs', '100'),
('max_sentbox_privmsgs', '100'),
('max_savebox_privmsgs', '100'),
('board_email_sig', 'Thanks, \r\n\r\nManagement'),
('board_email', 'webmaster@yoursite.com'),
('smtp_delivery', '0'),
('smtp_host', 'smtp.yoursite.com'),
('require_activation', '1'),
('flood_interval', '15'),
('board_email_form', '1'),
('avatar_filesize', '99999'),
('avatar_max_width', '100'),
('avatar_max_height', '100'),
('avatar_path', 'modules/Forums/images/avatars'),
('avatar_gallery_path', 'modules/Forums/images/avatars'),
('smilies_path', 'modules/Forums/images/smiles'),
('default_style', '1'),
('default_dateformat', 'D M d, Y g:i a'),
('board_timezone', '-6'),
('prune_enable', '0'),
('privmsg_disable', '0'),
('gzip_compress', '0'),
('coppa_fax', ''),
('coppa_mail', ''),
('board_startdate', ''),
('default_lang', 'english'),
('smtp_username', 'you@yoursite.com'),
('smtp_password', ''),
('record_online_users', '14'),
('record_online_date', '1315492959'),
('server_name', 'www.yoursite.com'),
('server_port', '80'),
('script_path', '/modules/Forums/'),
('version', '.0.22'),
('enable_confirm', '1'),
('sendmail_fix', '1'),
('sub_forum', '1'),
('sub_forum_over', '0'),
('split_cat', ''),
('split_cat_over', '0'),
('last_topic_title', ''),
('last_topic_title_over', '0'),
('last_topic_title_length', '24'),
('sub_level_links', '2'),
('sub_level_links_over', '0'),
('display_viewonline', '2'),
('display_viewonline_over', '0'),
('split_announce', '0'),
('split_global_announce', '0'),
('split_sticky', '0'),
('allow_custom_rank', '100'),
('max_smilies', '15'),
('sig_perpage', '0'),
('sig_images_max_width', '400'),
('sig_images_max_height', '300'),
('sig_images_max_limit', '1'),
('move_when_locked_stat', '-1'),
('move_when_locked_id', '1'),
('leave_special_topic_stat', '-1'),
('who_is_online_time', '30'),
('sig_line', '____________'),
('allow_quickreply', '1'),
('kicker_setting', '0'),
('kicker_view_setting', '2'),
('ropm_quick_reply', '1'),
('ropm_quick_reply_bbc', '1'),
('ropm_quick_reply_smilies', '32'),
('guests_need_name', '1'),
('max_img_width', '500'),
('smilie_columns', '4'),
('smilie_rows', '5'),
('smilie_window_columns', '8'),
('cash_disable', '0'),
('cash_display_after_posts', '1'),
('cash_post_message', 'You earned %s for that post'),
('cash_disable_spam_num', '10'),
('cash_disable_spam_time', '24'),
('cash_disable_spam_message', 'You have exceeded the allotted amount of posts and will not earn anything for your post'),
('cash_installed', 'yes'),
('cash_version', '2.2.3'),
('points_name', 'PlatinumBux'),
('cash_adminnavbar', '1'),
('cash_adminbig', '0'),
('multibuys', 'on'),
('restocks', 'off'),
('sellrate', '75'),
('viewtopic', 'images'),
('viewprofile', 'images'),
('viewinventory', 'grouped'),
('viewtopiclimit', '5'),
('shop_orderby', 'name'),
('shop_give', 'on'),
('shop_trade', 'on'),
('shop_invlimit', '0'),
('allow_autologin', '1'),
('max_autologin_time', '0'),
('max_login_attempts', '5'),
('search_flood_interval', '15'),
('rand_seed', '257b52727386744e0cfe00b5ba281207'),
('login_reset_time', '30'),
('search_min_chars', '3'),
('apmr_deny_msg', 'Sorry %U%, The Admin You Are Trying To Private Message Currently Is Not Accepting Private Messages.'),
('apmr_redirect_msg', 'The admin you have private messaged, has redirected your PM to another member for a faster response time.'),
('initial_group_id', '3'),
('report_color_not_cleared', '#A8371D'),
('report_color_in_process', '#1B75BE'),
('report_color_cleared', '#297F3F'),
('report_list', '0'),
('report_notify', '2'),
('admin_user_mode', 'username'),
('admin_user_order', '0'),
('proxy_enable', '1'),
('proxy_ban', '1'),
('proxy_delay', '1'),
('proxy_ports', '005008fd0c3819bc1f401f90'),
('proxy_cache_time', '0'),
('proxy_block', '1'),
('proxy_sort', 'last_checked,DESC'),
('proxy_user_agent', 'Genesis Open Proxy Detector'),
('birthday_required', '1'),
('birthday_greeting', '1'),
('max_user_age', '100'),
('min_user_age', '5'),
('birthday_check_day', '7'),
('active_wpm', '1'),
('wpm_username', 'admin'),
('wpm_userid', '2'),
('qte_version', '1.6.1');

DROP TABLE IF EXISTS `nuke_bbthread_kicker`;
CREATE TABLE IF NOT EXISTS `nuke_bbthread_kicker` (
  `kick_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `kicker` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `kick_time` int(11) NOT NULL DEFAULT '0',
  `kicker_status` int(2) NOT NULL DEFAULT '0',
  `kicker_username` varchar(30) NOT NULL,
  `kicked_username` varchar(30) NOT NULL,
  `topic_title` varchar(60) NOT NULL,
  PRIMARY KEY (`kick_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_bbacronyms`;
CREATE TABLE IF NOT EXISTS `nuke_bbacronyms` (
  `acronym_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acronym_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- Update default bbgroups

DROP TABLE IF EXISTS `nuke_bbgroups`;
CREATE TABLE IF NOT EXISTS `nuke_bbgroups` (
  `group_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_name` varchar(40) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `group_moderator` mediumint(8) NOT NULL DEFAULT '0',
  `group_single_user` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `group_single_user` (`group_single_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `nuke_bbgroups` (`group_id`, `group_type`, `group_name`, `group_description`, `group_moderator`, `group_single_user`, `user_id`) VALUES
(1, 1, 'Anonymous', 'Personal User', 0, 1, NULL),
(2, 2, 'Moderators', 'Moderators of this Forum', 2, 0, NULL),
(3, 0, 'Guest', 'DEFAULT users group', 2, 0, NULL),
(4, 1, '', 'Personal User', 2, 1, '1'),
(5, 1, '', 'Personal User', 2, 1, '2');

-- Update module tables

DROP TABLE IF EXISTS `nuke_modules`;
CREATE TABLE IF NOT EXISTS `nuke_modules` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `custom_title` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `view` int(1) NOT NULL DEFAULT '0',
  `groups` text NOT NULL,
  `inmenu` tinyint(1) NOT NULL DEFAULT '1',
  `mod_group` int(10) DEFAULT '0',
  `mcid` int(11) NOT NULL DEFAULT '1',
  `admins` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `mid` (`mid`),
  KEY `title` (`title`),
  KEY `custom_title` (`custom_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

INSERT INTO `nuke_modules` (`mid`, `title`, `custom_title`, `active`, `view`, `groups`, `inmenu`, `mod_group`, `mcid`, `admins`) VALUES
(1, 'AvantGo', 'AvantGo', 1, 0, '', 1, 0, 1, ''),
(2, 'Ban_Request', 'Request Ban', 1, 0, '', 1, 0, 1, ''),
(3, 'Banner_Ads', 'Banner Ads', 1, 0, '', 1, 0, 3, ''),
(4, 'Calendar', 'Calendar', 1, 0, '', 1, 0, 2, ''),
(5, 'NukeC30', 'Classifieds', 1, 0, '', 1, 0, 4, ''),
(6, 'Contact', 'Contact', 1, 0, '', 1, 0, 2, ''),
(7, 'Content', 'Content', 1, 0, '', 1, 0, 4, ''),
(8, 'Donations', 'Donations', 1, 0, '', 1, 0, 1, ''),
(9, 'Downloads', 'Downloads', 1, 0, '', 1, 0, 2, ''),
(10, 'Forums', 'Forums', 1, 0, '', 1, 0, 2, ''),
(11, 'Groups', 'Groups', 1, 0, '', 1, 0, 3, ''),
(12, 'Members_List', 'Members List', 1, 0, '', 1, 0, 2, ''),
(13, 'News', 'News', 1, 0, '', 1, 0, 1, ''),
(14, 'PHP-Nuke_Tools', 'Tools', 1, 0, '', 1, 0, 4, ''),
(15, 'Private_Messages', 'My Messages', 1, 0, '', 1, 0, 3, ''),
(16, 'NukeSentinel', 'NukeSentinel', 1, 0, '', 0, 0, 1, ''),
(17, 'Recommend_Us', 'Refer Us', 1, 0, '', 1, 0, 1, ''),
(18, 'Search', 'Search', 1, 0, '', 1, 0, 1, ''),
(19, 'Shout_Box', 'Shout Box', 1, 0, '', 1, 0, 2, ''),
(20, 'Staff', 'Staff', 1, 0, '', 1, 0, 2, ''),
(21, 'Statistics', 'Statistics', 1, 0, '', 1, 0, 1, ''),
(22, 'Stories_Archive', 'News Archive', 1, 0, '', 1, 0, 1, ''),
(23, 'Submit_News', 'Submit News', 1, 0, '', 1, 0, 1, ''),
(24, 'Top', 'Top 10', 1, 0, '', 1, 0, 1, ''),
(25, 'Top_Sites', 'Top Sites', 1, 0, '', 1, 0, 2, 'Jimmy,'),
(26, 'Topics', 'News Topics', 1, 0, '', 1, 0, 1, ''),
(27, 'Web_Links', 'Web Links', 1, 0, '', 1, 0, 2, ''),
(28, 'Your_Account', 'Account', 1, 0, '', 1, 0, 3, ''),
(29, 'Mailing_List', 'Mailing List', 1, 0, '', 1, 0, 2, ''),
(30, 'coppermine', 'Photo Gallery', 1, 1, '', 1, 0, 2, ''),
(31, 'Cancel', 'Cancel', 1, 0, '', 0, 0, 2, ''),
(32, 'Thanks', 'Thanks', 1, 0, '', 0, 0, 2, ''),
(33, 'Shopping_Cart', 'Store', 1, 0, '', 1, 0, 1, ''),
(34, 'Who-is-Where', 'Who is Where', 1, 1, '', 0, 0, 3, ''),
(35, 'Sitemap', 'Sitemap', 1, 0, '', 1, 0, 1, ''),
(36, 'Amazon', 'Amazon', 1, 0, '', 1, 0, 1, ''),
(37, 'Arcade_Tweaks', 'Arcade_Tweaks', 1, 2, '', 0, 0, 1, ''),
(38, 'CZNews', 'CZNews', 1, 0, '', 1, 0, 1, ''),
(40, 'Whats_New', 'Whats_New', 1, 0, '', 1, 0, 1, ''),
(41, 'Resend_Email', 'Resend_Email', 1, 2, '', 1, 0, 1, ''),
(42, 'Credits', 'Credits', 1, 0, '', 1, 0, 1, ''),
(43, 'HTML_Newsletter', 'Newsletter', 1, 0, '', 1, 0, 1, ''),
(44, 'MetAuthors', 'MetAuthors', 1, 0, '', 1, 0, 1, ''),
(45, 'SimpleCart', 'SimpleCart', 1, 0, '', 1, 0, 1, ''),
(46, 'PrivateDownloads', 'Private Downloads', 1, 1, '', 1, 0, 1, ''),
(47, 'Submit_Downloads', 'Submit_Downloads', 1, 0, '', 1, 0, 1, ''),
(48, 'Advertising', 'Advertising', 1, 0, '', 1, 0, 1, ''),
(49, 'FAQ', 'FAQ', 1, 0, '', 1, 0, 1, ''),
(50, 'Journal', 'Journal', 1, 0, '', 1, 0, 1, ''),
(51, 'Link_Us', 'Link_Us', 1, 0, '', 1, 0, 1, ''),
(52, 'Member_Application', 'Member_Application', 1, 0, '', 1, 0, 1, ''),
(53, 'NukeBlog', 'NukeBlog', 1, 0, '', 1, 0, 1, ''),
(54, 'Reviews', 'Reviews', 1, 0, '', 1, 0, 1, ''),
(55, 'Supporters', 'Supporters', 1, 0, '', 1, 0, 1, ''),
(56, 'Supporters_2', 'Supporters_2', 1, 0, '', 1, 0, 1, ''),
(57, 'Tutorials', 'Tutorials', 1, 0, '', 1, 0, 1, ''),
(58, 'Universal', 'Universal', 1, 0, '', 1, 0, 1, ''),
(59, 'Video_Stream', 'Video_Stream', 1, 0, '', 1, 0, 1, ''),
(60, 'Work_Board', 'Work_Board', 1, 0, '', 1, 0, 1, ''),
(61, 'Work_Probe', 'Work_Probe', 1, 0, '', 1, 0, 1, ''),
(62, 'Work_Request', 'Work_Request', 1, 0, '', 1, 0, 1, ''),
(63, 'Advanced_Admin', 'Advanced_Admin', 1, 0, '', 0, 0, 1, ''),
(64, 'Change_Log', 'Change_Log', 1, 0, '', 1, 0, 1, ''),
(65, 'Snavi', 'Snavi', 1, 0, '', 1, 0, 1, ''),
(66, 'Tags', 'Tags', 1, 0, '', 1, 0, 4, ''),
(67, 'Surveys', 'Surveys', 0, 0, '', 1, 0, 1, ''),
(68, 'Legal', 'Legal', 0, 0, '', 1, 0, 1, ''),
(69, 'Forums_Glance_Admin', 'Forums_Glance_Admin', 0, 0, '', 1, 0, 1, '');

DROP TABLE IF EXISTS `nuke_modules_categories`;
CREATE TABLE IF NOT EXISTS `nuke_modules_categories` (
  `mcid` int(11) NOT NULL AUTO_INCREMENT,
  `mcname` varchar(60) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mcid`),
  KEY `mcid` (`mcid`),
  KEY `mcname` (`mcname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `nuke_modules_categories` (`mcid`, `mcname`, `visible`) VALUES
(1, 'General', 1),
(2, 'Community', 1),
(3, 'Members', 1),
(4, 'Information', 1);

-- Add default tables for modules not in EvoX

DROP TABLE IF EXISTS `nuke_themeconsole`;
CREATE TABLE IF NOT EXISTS `nuke_themeconsole` (
  `marq1` varchar(255) NOT NULL DEFAULT 'This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.',
  `marq2` varchar(255) NOT NULL DEFAULT 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.',
  `marq3` varchar(255) NOT NULL DEFAULT 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.',
  `marq4` varchar(255) NOT NULL DEFAULT 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.',
  `marq5` varchar(255) NOT NULL DEFAULT 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.',
  `marqstyle` int(2) NOT NULL DEFAULT '99',
  `link1text` varchar(255) NOT NULL DEFAULT 'Home',
  `link1` varchar(255) NOT NULL DEFAULT 'index.php',
  `link2text` varchar(255) NOT NULL DEFAULT 'Forums',
  `link2` varchar(255) NOT NULL DEFAULT 'modules.php?name=Forums',
  `link3text` varchar(255) NOT NULL DEFAULT 'Downloads',
  `link3` varchar(255) NOT NULL DEFAULT 'modules.php?name=PrivateDownloads',
  `link4text` varchar(255) NOT NULL DEFAULT 'Gallery',
  `link4` varchar(255) NOT NULL DEFAULT 'modules.php?name=coppermine',
  `link5text` varchar(255) NOT NULL DEFAULT 'Credits',
  `link5` varchar(255) NOT NULL DEFAULT 'modules.php?name=Credits',
  `link6text` varchar(255) NOT NULL,
  `link6` varchar(255) NOT NULL,
  `link7text` varchar(255) NOT NULL,
  `link7` varchar(255) NOT NULL,
  `sitewidth` varchar(255) NOT NULL DEFAULT '100%',
  `searchbox` int(1) NOT NULL DEFAULT '0',
  `flashswitch` int(1) NOT NULL DEFAULT '1',
  `disrightclick` int(1) NOT NULL DEFAULT '0',
  `adminright` int(1) NOT NULL DEFAULT '0',
  `disselectall` int(1) NOT NULL DEFAULT '0',
  `adminselect` int(1) NOT NULL DEFAULT '0',
  `themename` varchar(255) NOT NULL,
  `encrypt` int(1) NOT NULL DEFAULT '0',
  `pubbox` varchar(10) NOT NULL DEFAULT '#1C1E2C',
  `pubboxtext` varchar(7) NOT NULL,
  KEY `themename` (`themename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_themeconsole` (`marq1`, `marq2`, `marq3`, `marq4`, `marq5`, `marqstyle`, `link1text`, `link1`, `link2text`, `link2`, `link3text`, `link3`, `link4text`, `link4`, `link5text`, `link5`, `link6text`, `link6`, `link7text`, `link7`, `sitewidth`, `searchbox`, `flashswitch`, `disrightclick`, `adminright`, `disselectall`, `adminselect`, `themename`, `encrypt`, `pubbox`, `pubboxtext`) VALUES
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 3 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'BB_CFiber', 0, '0', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 3 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'PNP_WB', 0, '0', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 1, 1, 0, 0, 0, 0, 'Impressed_II', 0, '1', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'Impressed', 0, '0', '');

DROP TABLE IF EXISTS `nuke_nsnst_admins`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_admins` (
  `aid` varchar(25) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password_md5` varchar(60) NOT NULL,
  `password_crypt` varchar(60) NOT NULL,
  `protected` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_nsnst_blocked_ips`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_blocked_ips` (
  `ip_addr` varchar(15) NOT NULL,
  `ip_long` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `username` varchar(60) NOT NULL,
  `user_agent` text NOT NULL,
  `date` int(20) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL DEFAULT '0',
  `query_string` text NOT NULL,
  `get_string` text NOT NULL,
  `post_string` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `remote_addr` varchar(32) NOT NULL,
  `remote_port` varchar(11) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `expires` int(20) NOT NULL DEFAULT '0',
  `c2c` char(2) NOT NULL DEFAULT '00',
  PRIMARY KEY (`ip_addr`),
  KEY `ip_long` (`ip_long`),
  KEY `c2c` (`c2c`),
  KEY `date` (`date`),
  KEY `expires` (`expires`),
  KEY `reason` (`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_nsnst_blocked_ranges`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_blocked_ranges` (
  `ip_lo` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_hi` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(20) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `c2c` char(2) NOT NULL DEFAULT '00',
  PRIMARY KEY (`ip_lo`,`ip_hi`),
  KEY `c2c` (`c2c`),
  KEY `date` (`date`),
  KEY `expires` (`expires`),
  KEY `reason` (`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_nsnst_blockers`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_blockers` (
  `blocker` int(4) NOT NULL DEFAULT '0',
  `block_name` varchar(20) NOT NULL,
  `activate` int(4) NOT NULL DEFAULT '0',
  `block_type` int(4) NOT NULL DEFAULT '0',
  `email_lookup` int(4) NOT NULL DEFAULT '0',
  `forward` varchar(255) NOT NULL,
  `reason` varchar(20) NOT NULL,
  `template` varchar(255) NOT NULL,
  `duration` int(20) NOT NULL DEFAULT '0',
  `htaccess` int(4) NOT NULL DEFAULT '0',
  `list` longtext NOT NULL,
  PRIMARY KEY (`blocker`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnst_blockers` (`blocker`, `block_name`, `activate`, `block_type`, `email_lookup`, `forward`, `reason`, `template`, `duration`, `htaccess`, `list`) VALUES
(0, 'other', 0, 0, 0, '', 'Abuse-Other', 'abuse_default.tpl', 0, 0, ''),
(1, 'union', 9, 0, 0, '', 'Abuse-Union', 'abuse_union.tpl', 0, 0, ''),
(2, 'clike', 9, 0, 0, '', 'Abuse-CLike', 'abuse_clike.tpl', 0, 0, ''),
(3, 'harvester', 9, 0, 0, '', 'Abuse-Harvest', 'abuse_harvester.tpl', 0, 0, ''),
(4, 'script', 9, 0, 0, '', 'Abuse-Script', 'abuse_script.tpl', 0, 0, ''),
(5, 'author', 9, 0, 0, '', 'Abuse-Author', 'abuse_author.tpl', 0, 0, ''),
(6, 'referer', 9, 0, 0, '', 'Abuse-Referer', 'abuse_referer.tpl', 0, 0, ''),
(7, 'filter', 9, 0, 0, '', 'Abuse-Filter', 'abuse_filter.tpl', 0, 0, ''),
(8, 'request', 9, 0, 0, '', 'Abuse-Request', 'abuse_request.tpl', 0, 0, ''),
(9, 'string', 9, 0, 0, '', 'Abuse-String', 'abuse_string.tpl', 0, 0, ''),
(10, 'admin', 9, 0, 0, '', 'Abuse-Admin', 'abuse_admin.tpl', 0, 0, ''),
(11, 'flood', 0, 0, 0, '', 'Abuse-Flood', 'abuse_flood.tpl', 0, 0, '');

DROP TABLE IF EXISTS `nuke_nsnst_cidrs`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_cidrs` (
  `cidr` int(2) NOT NULL DEFAULT '0',
  `hosts` int(10) NOT NULL DEFAULT '0',
  `mask` varchar(15) NOT NULL,
  PRIMARY KEY (`cidr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnst_cidrs` (`cidr`, `hosts`, `mask`) VALUES
(1, 2147483647, '127.255.255.255'),
(2, 1073741824, '63.255.255.255'),
(3, 536870912, '31.255.255.255'),
(4, 268435456, '15.255.255.255'),
(5, 134217728, '7.255.255.255'),
(6, 67108864, '3.255.255.255'),
(7, 33554432, '1.255.255.255'),
(8, 16777216, '0.255.255.255'),
(9, 8388608, '0.127.255.255'),
(10, 4194304, '0.63.255.255'),
(11, 2097152, '0.31.255.255'),
(12, 1048576, '0.15.255.255'),
(13, 524288, '0.7.255.255'),
(14, 262144, '0.3.255.255'),
(15, 131072, '0.1.255.255'),
(16, 65536, '0.0.255.255'),
(17, 32768, '0.0.127.255'),
(18, 16384, '0.0.63.255'),
(19, 8192, '0.0.31.255'),
(20, 4096, '0.0.15.255'),
(21, 2048, '0.0.7.255'),
(22, 1024, '0.0.3.255'),
(23, 512, '0.0.1.255'),
(24, 256, '0.0.0.255'),
(25, 128, '0.0.0.127'),
(26, 64, '0.0.0.63'),
(27, 32, '0.0.0.31'),
(28, 16, '0.0.0.15'),
(29, 8, '0.0.0.7'),
(30, 4, '0.0.0.3'),
(31, 2, '0.0.0.1'),
(32, 1, '0.0.0.0');

DROP TABLE IF EXISTS `nuke_nsnst_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` longtext NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnst_config` (`config_name`, `config_value`) VALUES
('admin_contact', 'you@yoursite.com'),
('block_perpage', '50'),
('block_sort_column', 'date'),
('block_sort_direction', 'desc'),
('crypt_salt', 'N$'),
('disable_switch', '0'),
('display_link', '3'),
('display_reason', '3'),
('dump_directory', 'cache/'),
('flood_delay', '2'),
('force_nukeurl', '0'),
('ftaccess_path', ''),
('help_switch', '1'),
('htaccess_path', ''),
('http_auth', '0'),
('ip2c_version', '1217739600'),
('list_harvester', '@yahoo.com\r\nalexibot\r\nalligator\r\nanonymiz\r\nasterias\r\nbackdoorbot\r\nblack hole\r\nblackwidow\r\nblowfish\r\nbotalot\r\nbuiltbottough\r\nbullseye\r\nbunnyslippers\r\ncatch\r\ncegbfeieh\r\ncharon\r\ncheesebot\r\ncherrypicker\r\nchinaclaw\r\ncombine\r\ncopyrightcheck\r\ncosmos\r\ncrescent\r\ncurl\r\ndbrowse\r\ndisco\r\ndittospyder\r\ndlman\r\ndnloadmage\r\ndownload\r\ndreampassport\r\ndts agent\r\necatch\r\neirgrabber\r\nerocrawler\r\nexpress webpictures\r\nextractorpro\r\neyenetie\r\nfantombrowser\r\nfantomcrew browser\r\nfileheap\r\nfilehound\r\nflashget\r\nfoobot\r\nfranklin locator\r\nfreshdownload\r\nfscrawler\r\ngamespy_arcade\r\ngetbot\r\ngetright\r\ngetweb\r\ngo!zilla\r\ngo-ahead-got-it\r\ngrab\r\ngrafula\r\ngsa-crawler\r\nharvest\r\nhloader\r\nhmview\r\nhttplib\r\nhttpresume\r\nhttrack\r\nhumanlinks\r\nigetter\r\nimage stripper\r\nimage sucker\r\nindustry program\r\nindy library\r\ninfonavirobot\r\ninstallshield digitalwizard\r\ninterget\r\niria\r\nirvine\r\niupui research bot\r\njbh agent\r\njennybot\r\njetcar\r\njobo\r\njoc\r\nkapere\r\nkenjin spider\r\nkeyword density\r\nlarbin\r\nleechftp\r\nleechget\r\nlexibot\r\nlibweb/clshttp\r\nlibwww-perl\r\nlightningdownload\r\nlincoln state web browser\r\nlinkextractorpro\r\nlinkscan/8.1a.unix\r\nlinkwalker\r\nlwp-trivial\r\nlwp::simple\r\nmac finder\r\nmata hari\r\nmediasearch\r\nmetaproducts\r\nmicrosoft url control\r\nmidown tool\r\nmiixpc\r\nmissauga locate\r\nmissouri college browse\r\nmister pix\r\nmoget\r\nmozilla.*newt\r\nmozilla/3.0 (compatible)\r\nmozilla/3.mozilla/2.01\r\nmsie 4.0 (win95)\r\nmultiblocker browser\r\nmydaemon\r\nmygetright\r\nnabot\r\nnavroad\r\nnearsite\r\nnet vampire\r\nnetants\r\nnetmechanic\r\nnetpumper\r\nnetspider\r\nnewsearchengine\r\nnicerspro\r\nninja\r\nnitro downloader\r\nnpbot\r\noctopus\r\noffline explorer\r\noffline navigator\r\nopenfind\r\npagegrabber\r\npapa foto\r\npavuk\r\npbrowse\r\npcbrowser\r\npeval\r\npompos/\r\nprogram shareware\r\npropowerbot\r\nprowebwalker\r\npsurf\r\npuf\r\npuxarapido\r\nqueryn metasearch\r\nrealdownload\r\nreget\r\nrepomonkey\r\nrsurf\r\nrumours-agent\r\nsakura\r\nscan4mail\r\nsemanticdiscovery\r\nsitesnagger\r\nslysearch\r\nspankbot\r\nspanner \r\nspiderzilla\r\nsq webscanner\r\nstamina\r\nstar downloader\r\nsteeler\r\nstrip\r\nsuperbot\r\nsuperhttp\r\nsurfbot\r\nsuzuran\r\nswbot\r\nszukacz\r\ntakeout\r\nteleport\r\ntelesoft\r\ntest spider\r\nthe intraformant\r\nthenomad\r\ntighttwatbot\r\ntitan\r\ntocrawl/urldispatcher\r\ntrue_robot\r\ntsurf\r\nturing machine\r\nturingos\r\nurlblaze\r\nurlgetfile\r\nurly warning\r\nutilmind\r\nvci\r\nvoideye\r\nweb image collector\r\nweb sucker\r\nwebauto\r\nwebbandit\r\nwebcapture\r\nwebcollage\r\nwebcopier\r\nwebenhancer\r\nwebfetch\r\nwebgo\r\nwebleacher\r\nwebmasterworldforumbot\r\nwebql\r\nwebreaper\r\nwebsite extractor\r\nwebsite quester\r\nwebster\r\nwebstripper\r\nwebwhacker\r\nwep search\r\nwget\r\nwhizbang\r\nwidow\r\nwildsoft surfer\r\nwww-collector-e\r\nwww.netwu.com\r\nwwwoffle\r\nxaldon\r\nxenu\r\nzeus\r\nziggy\r\nzippy'),
('list_referer', '121hr.com\r\n1st-call.net\r\n1stcool.com\r\n5000n.com\r\n69-xxx.com\r\n9irl.com\r\n9uy.com\r\na-day-at-the-party.com\r\naccessthepeace.com\r\nadult-model-nude-pictures.com\r\nadult-sex-toys-free-porn.com\r\nagnitum.com\r\nalfonssackpfeiffe.com\r\nalongwayfrommars.com\r\nanime-sex-1.com\r\nanorex-sf-stimulant-free.com\r\nantibot.net\r\nantique-tokiwa.com\r\napotheke-heute.com\r\narmada31.com\r\nartark.com\r\nartlilei.com\r\nascendbtg.com\r\naschalaecheck.com\r\nasian-sex-free-sex.com\r\naslowspeeker.com\r\nassasinatedfrogs.com\r\nathirst-for-tranquillity.net\r\naubonpanier.com\r\navalonumc.com\r\nayingba.com\r\nbayofnoreturn.com\r\nbbw4phonesex.com\r\nbeersarenotfree.com\r\nbierikiuetsch.com\r\nbilingualannouncements.com\r\nblack-pussy-toon-clip-anal-lover-single.com\r\nblownapart.com\r\nblueroutes.com\r\nboasex.com\r\nbooksandpages.com\r\nbootyquake.com\r\nbossyhunter.com\r\nboyz-sex.com\r\nbrokersaandpokers.com\r\nbrowserwindowcleaner.com\r\nbudobytes.com\r\nbusiness2fun.com\r\nbuymyshitz.com\r\nbyuntaesex.com\r\ncaniputsomeloveintoyou.com\r\ncartoons.net.ru\r\ncaverunsailing.com\r\ncertainhealth.com\r\nclantea.com\r\nclose-protection-services.com\r\nclubcanino.com\r\nclubstic.com\r\ncobrakai-skf.com\r\ncollegefucktour.co.uk\r\ncommanderspank.com\r\ncoolenabled.com\r\ncrusecountryart.com\r\ncrusingforsex.co.uk\r\ncunt-twat-pussy-juice-clit-licking.com\r\ncustomerhandshaker.com\r\ncyborgrama.com\r\ndarkprofits.co.uk\r\ndatingforme.co.uk\r\ndatingmind.com\r\ndegree.org.ru\r\ndelorentos.com\r\ndiggydigger.com\r\ndinkydonkyaussie.com\r\ndjpritchard.com\r\ndjtop.com\r\ndraufgeschissen.com\r\ndreamerteens.co.uk\r\nebonyarchives.co.uk\r\nebonyplaya.co.uk\r\necobuilder2000.com\r\nemailandemail.com\r\nemedici.net\r\nengine-on-fire.com\r\nerocity.co.uk\r\nesport3.com\r\neteenbabes.com\r\neurofreepages.com\r\neurotexans.com\r\nevolucionweb.com\r\nfakoli.com\r\nfe4ba.com\r\nferienschweden.com\r\nfindly.com\r\nfirsttimeteadrinker.com\r\nfishing.net.ru\r\nflatwonkers.com\r\nflowershopentertainment.com\r\nflymario.com\r\nfree-xxx-pictures-porno-gallery.com\r\nfreebestporn.com\r\nfreefuckingmovies.co.uk\r\nfreexxxstuff.co.uk\r\nfruitologist.net\r\nfruitsandbolts.com\r\nfuck-cumshots-free-midget-movie-clips.com\r\nfuck-michaelmoore.com\r\nfundacep.com\r\ngadless.com\r\ngallapagosrangers.com\r\ngalleries4free.co.uk\r\ngalofu.com\r\ngaypixpost.co.uk\r\ngeomasti.com\r\ngirltime.co.uk\r\nglassrope.com\r\ngodjustblessyouall.com\r\ngoldenageresort.com\r\ngonnabedaddies.com\r\ngranadasexi.com\r\nguardingtheangels.com\r\nguyprofiles.co.uk\r\nhappy1225.com\r\nhappychappywacky.com\r\nhealth.org.ru\r\nhexplas.com\r\nhighheelsmodels4fun.com\r\nhillsweb.com\r\nhiptuner.com\r\nhistoryintospace.com\r\nhoa-tuoi.com\r\nhomebuyinginatlanta.com\r\nhorizonultra.com\r\nhorseminiature.net\r\nhotkiss.co.uk\r\nhotlivegirls.co.uk\r\nhotmatchup.co.uk\r\nhusler.co.uk\r\niaentertainment.com\r\niamnotsomeone.com\r\niconsofcorruption.com\r\nihavenotrustinyou.com\r\ninformat-systems.com\r\ninteriorproshop.com\r\nintersoftnetworks.com\r\ninthecrib.com\r\ninvestment4cashiers.com\r\niti-trailers.com\r\njackpot-hacker.com\r\njacks-world.com\r\njamesthesailorbasher.com\r\njesuislemonds.com\r\njustanotherdomainname.com\r\nkampelicka.com\r\nkanalrattenarsch.com\r\nkatzasher.com\r\nkerosinjunkie.com\r\nkillasvideo.com\r\nkoenigspisser.com\r\nkontorpara.com\r\nl8t.com\r\nlaestacion101.com\r\nlambuschlamppen.com\r\nlankasex.co.uk\r\nlaser-creations.com\r\nle-tour-du-monde.com\r\nlecraft.com\r\nledo-design.com\r\nleftregistration.com\r\nlekkikoomastas.com\r\nlepommeau.com\r\nlibr-animal.com\r\nlibraries.org.ru\r\nlikewaterlikewind.com\r\nlimbojumpers.com\r\nlink.ru\r\nlockportlinks.com\r\nloiproject.com\r\nlongtermalternatives.com\r\nlottoeco.com\r\nlucalozzi.com\r\nmaki-e-pens.com\r\nmalepayperview.co.uk\r\nmangaxoxo.com\r\nmaps.org.ru\r\nmarcofields.com\r\nmasterofcheese.com\r\nmasteroftheblasterhill.com\r\nmastheadwankers.com\r\nmegafrontier.com\r\nmeinschuppen.com\r\nmercurybar.com\r\nmetapannas.com\r\nmicelebre.com\r\nmidnightlaundries.com\r\nmikeapartment.co.uk\r\nmillenniumchorus.com\r\nmimundial2002.com\r\nminiaturegallerymm.com\r\nmixtaperadio.com\r\nmondialcoral.com\r\nmonja-wakamatsu.com\r\nmonstermonkey.net\r\nmouthfreshners.com\r\nmullensholiday.com\r\nmusilo.com\r\nmyhollowlog.com\r\nmyhomephonenumber.com\r\nmykeyboardisbroken.com\r\nmysofia.net\r\nnaked-cheaters.com\r\nnaked-old-women.com\r\nnastygirls.co.uk\r\nnationclan.net\r\nnatterratter.com\r\nnaughtyadam.com\r\nnestbeschmutzer.com\r\nnetwu.com\r\nnewrealeaseonline.com\r\nnewrealeasesonline.com\r\nnextfrontiersonline.com\r\nnikostaxi.com\r\nnotorious7.com\r\nnrecruiter.com\r\nnursingdepot.com\r\nnustramosse.com\r\nnuturalhicks.com\r\noccaz-auto49.com\r\nocean-db.net\r\noilburnerservice.net\r\nomburo.com\r\noneoz.com\r\nonepageahead.net\r\nonlinewithaline.com\r\norganizate.net\r\nourownweddingsong.com\r\nowen-music.com\r\np-partners.com\r\npaginadeautor.com\r\npakistandutyfree.com\r\npamanderson.co.uk\r\nparentsense.net\r\nparticlewave.net\r\npay-clic.com\r\npay4link.net\r\npcisp.com\r\npersist-pharma.com\r\npeteband.com\r\npetplusindia.com\r\npickabbw.co.uk\r\npicture-oral-position-lesbian.com\r\npl8again.com\r\nplaneting.net\r\npopusky.com\r\nporn-expert.com\r\npromoblitza.com\r\nproproducts-usa.com\r\nptcgzone.com\r\nptporn.com\r\npublishmybong.com\r\nputtingtogether.com\r\nqualifiedcancelations.com\r\nrahost.com\r\nrainbow21.com\r\nrakkashakka.com\r\nrandomfeeding.com\r\nrape-art.com\r\nrd-brains.com\r\nrealestateonthehill.net\r\nrebuscadobot\r\nrequested-stuff.com\r\nretrotrasher.com\r\nricopositive.com\r\nrisorseinrete.com\r\nrotatingcunts.com\r\nrunawayclicks.com\r\nrutalibre.com\r\ns-marche.com\r\nsabrosojazz.com\r\nsamuraidojo.com\r\nsanaldarbe.com\r\nsasseminars.com\r\nschlampenbruzzler.com\r\nsearchmybong.com\r\nseckur.com\r\nsex-asian-porn-interracial-photo.com\r\nsex-porn-fuck-hardcore-movie.com\r\nsexa3.net\r\nsexer.com\r\nsexintention.com\r\nsexnet24.tv\r\nsexomundo.com\r\nsharks.com.ru\r\nshells.com.ru\r\nshop-ecosafe.com\r\nshop-toon-hardcore-fuck-cum-pics.com\r\nsilverfussions.com\r\nsin-city-sex.net\r\nsluisvan.com\r\nsmutshots.com\r\nsnagglersmaggler.com\r\nsomethingtoforgetit.com\r\nsophiesplace.net\r\nsoursushi.com\r\nsouthernxstables.com\r\nspeed467.com\r\nspeedpal4you.com\r\nsporty.org.ru\r\nstopdriving.net\r\nstw.org.ru\r\nsufficientlife.com\r\nsussexboats.net\r\nswinger-party-free-dating-porn-sluts.com\r\nsydneyhay.com\r\nszmjht.com\r\nteninchtrout.com\r\nthebalancedfruits.com\r\ntheendofthesummit.com\r\nthiswillbeit.com\r\nthosethosethose.com\r\nticyclesofindia.com\r\ntits-gay-fagot-black-tits-bigtits-amateur.com\r\ntonius.com\r\ntoohsoft.com\r\ntoolvalley.com\r\ntooporno.net\r\ntoosexual.com\r\ntorngat.com\r\ntour.org.ru\r\ntowneluxury.com\r\ntrafficmogger.com\r\ntriacoach.net\r\ntrottinbob.com\r\ntttframes.com\r\ntvjukebox.net\r\nundercvr.com\r\nunfinished-desires.com\r\nunicornonero.com\r\nunionvillefire.com\r\nupsandowns.com\r\nupthehillanddown.com\r\nvallartavideo.com\r\nvietnamdatingservices.com\r\nvinegarlemonshots.com\r\nvizy.net.ru\r\nvnladiesdatingservices.com\r\nvomitandbusted.com\r\nwalkingthewalking.com\r\nwell-I-am-the-type-of-boy.com\r\nwhales.com.ru\r\nwhincer.net\r\nwhitpagesrippers.com\r\nwhois.sc\r\nwipperrippers.com\r\nwordfilebooklets.com\r\nworld-sexs.com\r\nxsay.com\r\nxxxchyangel.com\r\nxxxx:\r\nxxxzips.com\r\nyouarelostintransit.com\r\nyuppieslovestocks.com\r\nyuzhouhuagong.com\r\nzhaori-food.com\r\nzwiebelbacke.com'),
('list_string', ''),
('lookup_link', 'http://www.DNSstuff.com/tools/whois.ch?ip='),
('page_delay', '5'),
('prevent_dos', '1'),
('proxy_reason', 'abuse_admin.tpl'),
('proxy_switch', '3'),
('santy_protection', '1'),
('self_expire', '0'),
('show_right', '1'),
('site_reason', 'admin_site_reason.tpl'),
('site_switch', '0'),
('staccess_path', ''),
('test_switch', '1'),
('track_active', '1'),
('track_clear', '1330992000'),
('track_max', '604800'),
('track_perpage', '50'),
('track_sort_column', 'ip_long'),
('track_sort_direction', 'desc'),
('version_number', '2.6.01');

DROP TABLE IF EXISTS `nuke_nsnst_countries`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_countries` (
  `c2c` char(2) NOT NULL,
  `country` varchar(60) NOT NULL,
  PRIMARY KEY (`c2c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnst_countries` (`c2c`, `country`) VALUES
('00', 'Unknown'),
('01', 'IANA Reserved'),
('02', 'UnAllocated'),
('ac', 'Ascension Island'),
('ad', 'Andorra'),
('ae', 'United Arab Emirates'),
('af', 'Afghanistan'),
('ag', 'Antigua And Barbuda'),
('ai', 'Anguilla'),
('al', 'Albania'),
('am', 'Armenia'),
('an', 'Netherlands Antilles'),
('ao', 'Angola'),
('ap', 'Aripo'),
('aq', 'Antartica'),
('ar', 'Argentina'),
('as', 'Samoa, American'),
('at', 'Austria'),
('au', 'Australia'),
('aw', 'Aruba'),
('ax', 'Aaland Islands'),
('az', 'Azerbaijan'),
('ba', 'Bosnia And Herzegovina'),
('bb', 'Barbados'),
('bd', 'Bangladesh'),
('be', 'Belgium'),
('bf', 'Burkina Faso'),
('bg', 'Bulgaria'),
('bh', 'Bahrain'),
('bi', 'Burundi'),
('bj', 'Benin'),
('bm', 'Bermuda'),
('bn', 'Brunei'),
('bo', 'Bolivia'),
('br', 'Brazil'),
('bs', 'Bahamas'),
('bt', 'Bhutan'),
('bv', 'Bouvet Island'),
('bw', 'Botswana'),
('by', 'Belarus'),
('bz', 'Belize'),
('ca', 'Canada'),
('cc', 'Cocos (Keeling) Islands'),
('cd', 'Congo, Democratic Republic Of The'),
('cf', 'Central African Republic'),
('cg', 'Congo, Republic Of The'),
('ch', 'Switzerland'),
('ci', 'Cote D''''ivoire'),
('ck', 'Cook Islands'),
('cl', 'Chile'),
('cm', 'Cameroon'),
('cn', 'China'),
('co', 'Colombia'),
('cr', 'Costa Rica'),
('cs', 'Czechoslovakia (Former)'),
('cu', 'Cuba'),
('cv', 'Cape Verde'),
('cx', 'Christmas Island'),
('cy', 'Cyprus'),
('cz', 'Czech Republic'),
('de', 'Germany'),
('dj', 'Djibouti'),
('dk', 'Denmark'),
('dm', 'Dominica'),
('do', 'Dominican Republic'),
('dz', 'Algeria'),
('ec', 'Ecuador'),
('ee', 'Estonia'),
('eg', 'Egypt'),
('eh', 'Western Sahara'),
('er', 'Eritrea'),
('es', 'Spain'),
('et', 'Ethiopia'),
('eu', 'European Union'),
('fi', 'Finland'),
('fj', 'Fiji'),
('fk', 'Falkland Islands'),
('fm', 'Micronesia, Federated States Of'),
('fo', 'Faroe Islands'),
('fr', 'France'),
('fx', 'France, Metropolitan'),
('ga', 'Gabon'),
('gb', 'United Kingdom'),
('gd', 'Grenada'),
('ge', 'Georgia'),
('gf', 'French Guiana'),
('gg', 'Guernsey'),
('gh', 'Ghana'),
('gi', 'Gibraltar'),
('gl', 'Greenland'),
('gm', 'Gambia, The'),
('gn', 'Guinea'),
('gp', 'Guadeloupe'),
('gq', 'Equatorial Guinea'),
('gr', 'Greece'),
('gs', 'South Georgia and The Islands'),
('gt', 'Guatemala'),
('gu', 'Guam'),
('gw', 'Guinea-Bissau'),
('gy', 'Guyana'),
('hk', 'Hong Kong'),
('hm', 'Heard and Mc Donald Islands'),
('hn', 'Honduras'),
('hr', 'Croatia'),
('ht', 'Haiti'),
('hu', 'Hungary'),
('id', 'Indonesia'),
('ie', 'Ireland'),
('il', 'Israel'),
('im', 'Isle Of Man'),
('in', 'India'),
('io', 'British Indian Ocean Territory'),
('iq', 'Iraq'),
('ir', 'Iran'),
('is', 'Iceland'),
('it', 'Italy'),
('je', 'Jersey'),
('jm', 'Jamaica'),
('jo', 'Jordan'),
('jp', 'Japan'),
('ke', 'Kenya'),
('kg', 'Kyrgyzstan'),
('kh', 'Cambodia'),
('ki', 'Kiribati'),
('km', 'Comoros'),
('kn', 'Saint Kitts And Nevis'),
('kp', 'Korea, North'),
('kr', 'Korea, South'),
('kw', 'Kuwait'),
('ky', 'Cayman Islands'),
('kz', 'Kazakhstan'),
('la', 'Laos'),
('lb', 'Lebanon'),
('lc', 'Saint Lucia'),
('li', 'Liechtenstein'),
('lk', 'Sri Lanka'),
('lr', 'Liberia'),
('ls', 'Lesotho'),
('lt', 'Lithuania'),
('lu', 'Luxembourg'),
('lv', 'Latvia'),
('ly', 'Libya'),
('ma', 'Morocco'),
('mc', 'Monaco'),
('md', 'Moldova'),
('me', 'Montenegro'),
('mg', 'Madagascar'),
('mh', 'Marshall Islands'),
('mk', 'Macedonia'),
('ml', 'Mali'),
('mm', 'Burma'),
('mn', 'Mongolia'),
('mo', 'Macau'),
('mp', 'Northern Mariana Islands'),
('mq', 'Martinique'),
('mr', 'Mauritania'),
('ms', 'Montserrat'),
('mt', 'Malta'),
('mu', 'Mauritius'),
('mv', 'Maldives'),
('mw', 'Malawi'),
('mx', 'Mexico'),
('my', 'Malaysia'),
('mz', 'Mozambique'),
('na', 'Namibia'),
('nc', 'New Caledonia'),
('ne', 'Niger'),
('nf', 'Norfork Island'),
('ng', 'Nigeria'),
('ni', 'Nicaragua'),
('nl', 'Netherlands'),
('no', 'Norway'),
('np', 'Nepal'),
('nr', 'Nauru'),
('nu', 'Niue'),
('nz', 'New Zealand'),
('om', 'Oman'),
('pa', 'Panama'),
('pe', 'Peru'),
('pf', 'French Polynesia'),
('pg', 'Papua New Guinea'),
('ph', 'Philippines'),
('pk', 'Pakistan'),
('pl', 'Poland'),
('pm', 'Saint Pierre and Miquelon'),
('pn', 'Pitcairn Islands'),
('pr', 'Puerto Rico'),
('ps', 'Palestine'),
('pt', 'Portugal'),
('pw', 'Palau'),
('py', 'Paraguay'),
('qa', 'Qatar'),
('re', 'Reunion'),
('ro', 'Romania'),
('rs', 'Serbia'),
('ru', 'Russia'),
('rw', 'Rwanda'),
('sa', 'Saudi Arabia'),
('sb', 'Solomon Islands'),
('sc', 'Seychelles'),
('sd', 'Sudan'),
('se', 'Sweden'),
('sg', 'Singapore'),
('sh', 'Saint Helena'),
('si', 'Slovenia'),
('sj', 'Svalbard'),
('sk', 'Slovakia'),
('sl', 'Sierra Leone'),
('sm', 'San Marino'),
('sn', 'Senegal'),
('so', 'Somalia'),
('sr', 'Suriname'),
('st', 'Sao Tome And Principe'),
('su', 'Soviet Union'),
('sv', 'El Salvador'),
('sy', 'Syria'),
('sz', 'Swaziland'),
('tc', 'Turks And Caicos Islands'),
('td', 'Chad'),
('tf', 'French Southern Territories'),
('tg', 'Togo'),
('th', 'Thailand'),
('tj', 'Tajikistan'),
('tk', 'Tokelau'),
('tl', 'Timor-Leste'),
('tm', 'Turkmenistan'),
('tn', 'Tunisia'),
('to', 'Tonga'),
('tp', 'East Timor'),
('tr', 'Turkey'),
('tt', 'Trinidad And Tobago'),
('tv', 'Tuvalu'),
('tw', 'Taiwan'),
('tz', 'Tanzania'),
('ua', 'Ukraine'),
('ug', 'Uganda'),
('um', 'United States Minor Outlying Islands'),
('un', 'United Nations'),
('us', 'United States'),
('uy', 'Uruguay'),
('uz', 'Uzbekistan'),
('va', 'Vatican City State'),
('vc', 'Saint Vincent And The Grenadines'),
('ve', 'Venezuela'),
('vg', 'Virgin Islands, British'),
('vi', 'Virgin Islands, American'),
('vn', 'Viet Nam'),
('vu', 'Vanuatu'),
('wf', 'Wallis and Futuna Islands'),
('ws', 'Samoa'),
('ye', 'Yemen'),
('yt', 'Mayotte'),
('yu', 'Yugoslavia'),
('za', 'South Africa'),
('zm', 'Zambia'),
('zw', 'Zimbabwe');

DROP TABLE IF EXISTS `nuke_nsnst_excluded_ranges`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_excluded_ranges` (
  `ip_lo` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_hi` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(20) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL DEFAULT '00',
  PRIMARY KEY (`ip_lo`,`ip_hi`),
  KEY `c2c` (`c2c`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnst_excluded_ranges` (`ip_lo`, `ip_hi`, `date`, `notes`, `c2c`) VALUES
(1659187506, 1659187506, 1256367568, 'Admin''s personal ip', '00');

DROP TABLE IF EXISTS `nuke_nsnst_flood`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_flood` (
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `lastpost` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_nsnst_harvesters`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_harvesters` (
  `hid` int(2) NOT NULL AUTO_INCREMENT,
  `harvester` varchar(255) NOT NULL,
  PRIMARY KEY (`harvester`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

INSERT INTO `nuke_nsnst_harvesters` (`hid`, `harvester`) VALUES
(1, '@yahoo.com'),
(2, 'alexibot'),
(3, 'alligator'),
(4, 'anonymiz'),
(5, 'asterias'),
(6, 'backdoorbot'),
(7, 'black hole'),
(8, 'blackwidow'),
(9, 'blowfish'),
(10, 'botalot'),
(11, 'builtbottough'),
(12, 'bullseye'),
(13, 'bunnyslippers'),
(14, 'catch'),
(15, 'cegbfeieh'),
(16, 'charon'),
(17, 'cheesebot'),
(18, 'cherrypicker'),
(19, 'chinaclaw'),
(20, 'combine'),
(21, 'copyrightcheck'),
(22, 'cosmos'),
(23, 'crescent'),
(24, 'curl'),
(25, 'dbrowse'),
(26, 'disco'),
(27, 'dittospyder'),
(28, 'dlman'),
(29, 'dnloadmage'),
(30, 'download'),
(31, 'dreampassport'),
(32, 'dts agent'),
(33, 'ecatch'),
(34, 'eirgrabber'),
(35, 'erocrawler'),
(36, 'express webpictures'),
(37, 'extractorpro'),
(38, 'eyenetie'),
(39, 'fantombrowser'),
(40, 'fantomcrew browser'),
(41, 'fileheap'),
(42, 'filehound'),
(43, 'flashget'),
(44, 'foobot'),
(45, 'franklin locator'),
(46, 'freshdownload'),
(47, 'fscrawler'),
(48, 'gamespy_arcade'),
(49, 'getbot'),
(50, 'getright'),
(51, 'getweb'),
(52, 'go!zilla'),
(53, 'go-ahead-got-it'),
(54, 'grab'),
(55, 'grafula'),
(56, 'gsa-crawler'),
(57, 'harvest'),
(58, 'hloader'),
(59, 'hmview'),
(60, 'httplib'),
(61, 'httpresume'),
(62, 'httrack'),
(63, 'humanlinks'),
(64, 'igetter'),
(65, 'image stripper'),
(66, 'image sucker'),
(67, 'industry program'),
(68, 'indy library'),
(69, 'infonavirobot'),
(70, 'installshield digitalwizard'),
(71, 'interget'),
(72, 'iria'),
(73, 'irvine'),
(74, 'iupui research bot'),
(75, 'jbh agent'),
(76, 'jennybot'),
(77, 'jetcar'),
(78, 'jobo'),
(79, 'joc'),
(80, 'kapere'),
(81, 'kenjin spider'),
(82, 'keyword density'),
(83, 'larbin'),
(84, 'leechftp'),
(85, 'leechget'),
(86, 'lexibot'),
(87, 'libweb/clshttp'),
(88, 'libwww-perl'),
(89, 'lightningdownload'),
(90, 'lincoln state web browser'),
(91, 'linkextractorpro'),
(92, 'linkscan/8.1a.unix'),
(93, 'linkwalker'),
(94, 'lwp-trivial'),
(95, 'lwp::simple'),
(96, 'mac finder'),
(97, 'mata hari'),
(98, 'mediasearch'),
(99, 'metaproducts'),
(100, 'microsoft url control'),
(101, 'midown tool'),
(102, 'miixpc'),
(103, 'missauga locate'),
(104, 'missouri college browse'),
(105, 'mister pix'),
(106, 'moget'),
(107, 'mozilla.*newt'),
(108, 'mozilla/3.0 (compatible)'),
(109, 'mozilla/3.mozilla/2.01'),
(110, 'msie 4.0 (win95)'),
(111, 'multiblocker browser'),
(112, 'mydaemon'),
(113, 'mygetright'),
(114, 'nabot'),
(115, 'navroad'),
(116, 'nearsite'),
(117, 'net vampire'),
(118, 'netants'),
(119, 'netmechanic'),
(120, 'netpumper'),
(121, 'netspider'),
(122, 'newsearchengine'),
(123, 'nicerspro'),
(124, 'ninja'),
(125, 'nitro downloader'),
(126, 'npbot'),
(127, 'octopus'),
(128, 'offline explorer'),
(129, 'offline navigator'),
(130, 'openfind'),
(131, 'pagegrabber'),
(132, 'papa foto'),
(133, 'pavuk'),
(134, 'pbrowse'),
(135, 'pcbrowser'),
(136, 'peval'),
(137, 'pompos/'),
(138, 'program shareware'),
(139, 'propowerbot'),
(140, 'prowebwalker'),
(141, 'psurf'),
(142, 'puf'),
(143, 'puxarapido'),
(144, 'queryn metasearch'),
(145, 'realdownload'),
(146, 'reget'),
(147, 'repomonkey'),
(148, 'rsurf'),
(149, 'rumours-agent'),
(150, 'sakura'),
(151, 'scan4mail'),
(152, 'semanticdiscovery'),
(153, 'sitesnagger'),
(154, 'slysearch'),
(155, 'spankbot'),
(156, 'spanner '),
(157, 'spiderzilla'),
(158, 'sq webscanner'),
(159, 'stamina'),
(160, 'star downloader'),
(161, 'steeler'),
(162, 'strip'),
(163, 'superbot'),
(164, 'superhttp'),
(165, 'surfbot'),
(166, 'suzuran'),
(167, 'swbot'),
(168, 'szukacz'),
(169, 'takeout'),
(170, 'teleport'),
(171, 'telesoft'),
(172, 'test spider'),
(173, 'the intraformant'),
(174, 'thenomad'),
(175, 'tighttwatbot'),
(176, 'titan'),
(177, 'tocrawl/urldispatcher'),
(178, 'true_robot'),
(179, 'tsurf'),
(180, 'turing machine'),
(181, 'turingos'),
(182, 'urlblaze'),
(183, 'urlgetfile'),
(184, 'urly warning'),
(185, 'utilmind'),
(186, 'vci'),
(187, 'voideye'),
(188, 'web image collector'),
(189, 'web sucker'),
(190, 'webauto'),
(191, 'webbandit'),
(192, 'webcapture'),
(193, 'webcollage'),
(194, 'webcopier'),
(195, 'webenhancer'),
(196, 'webfetch'),
(197, 'webgo'),
(198, 'webleacher'),
(199, 'webmasterworldforumbot'),
(200, 'webql'),
(201, 'webreaper'),
(202, 'website extractor'),
(203, 'website quester'),
(204, 'webster'),
(205, 'webstripper'),
(206, 'webwhacker'),
(207, 'wep search'),
(208, 'wget'),
(209, 'whizbang'),
(210, 'widow'),
(211, 'wildsoft surfer'),
(212, 'www-collector-e'),
(213, 'www.netwu.com'),
(214, 'wwwoffle'),
(215, 'xaldon'),
(216, 'xenu'),
(217, 'zeus'),
(218, 'ziggy'),
(219, 'zippy');

DROP TABLE IF EXISTS `nuke_nsnst_ip2country`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_ip2country` (
  `ip_lo` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_hi` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(20) NOT NULL DEFAULT '0',
  `c2c` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ip_lo`,`ip_hi`),
  KEY `c2c` (`c2c`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `nuke_nsnst_protected_ranges`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_protected_ranges` (
  `ip_lo` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_hi` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(20) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL DEFAULT '00',
  PRIMARY KEY (`ip_lo`,`ip_hi`),
  KEY `c2c` (`c2c`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_nsnst_referers`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_referers` (
  `rid` int(2) NOT NULL AUTO_INCREMENT,
  `referer` varchar(255) NOT NULL,
  PRIMARY KEY (`referer`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=366 ;

INSERT INTO `nuke_nsnst_referers` (`rid`, `referer`) VALUES
(1, '121hr.com'),
(2, '1st-call.net'),
(3, '1stcool.com'),
(4, '5000n.com'),
(5, '69-xxx.com'),
(6, '9irl.com'),
(7, '9uy.com'),
(8, 'a-day-at-the-party.com'),
(9, 'accessthepeace.com'),
(10, 'adult-model-nude-pictures.com'),
(11, 'adult-sex-toys-free-porn.com'),
(12, 'agnitum.com'),
(13, 'alfonssackpfeiffe.com'),
(14, 'alongwayfrommars.com'),
(15, 'anime-sex-1.com'),
(16, 'anorex-sf-stimulant-free.com'),
(17, 'antibot.net'),
(18, 'antique-tokiwa.com'),
(19, 'apotheke-heute.com'),
(20, 'armada31.com'),
(21, 'artark.com'),
(22, 'artlilei.com'),
(23, 'ascendbtg.com'),
(24, 'aschalaecheck.com'),
(25, 'asian-sex-free-sex.com'),
(26, 'aslowspeeker.com'),
(27, 'assasinatedfrogs.com'),
(28, 'athirst-for-tranquillity.net'),
(29, 'aubonpanier.com'),
(30, 'avalonumc.com'),
(31, 'ayingba.com'),
(32, 'bayofnoreturn.com'),
(33, 'bbw4phonesex.com'),
(34, 'beersarenotfree.com'),
(35, 'bierikiuetsch.com'),
(36, 'bilingualannouncements.com'),
(37, 'black-pussy-toon-clip-anal-lover-single.com'),
(38, 'blownapart.com'),
(39, 'blueroutes.com'),
(40, 'boasex.com'),
(41, 'booksandpages.com'),
(42, 'bootyquake.com'),
(43, 'bossyhunter.com'),
(44, 'boyz-sex.com'),
(45, 'brokersaandpokers.com'),
(46, 'browserwindowcleaner.com'),
(47, 'budobytes.com'),
(48, 'business2fun.com'),
(49, 'buymyshitz.com'),
(50, 'byuntaesex.com'),
(51, 'caniputsomeloveintoyou.com'),
(52, 'cartoons.net.ru'),
(53, 'caverunsailing.com'),
(54, 'certainhealth.com'),
(55, 'clantea.com'),
(56, 'close-protection-services.com'),
(57, 'clubcanino.com'),
(58, 'clubstic.com'),
(59, 'cobrakai-skf.com'),
(60, 'collegefucktour.co.uk'),
(61, 'commanderspank.com'),
(62, 'coolenabled.com'),
(63, 'crusecountryart.com'),
(64, 'crusingforsex.co.uk'),
(65, 'cunt-twat-pussy-juice-clit-licking.com'),
(66, 'customerhandshaker.com'),
(67, 'cyborgrama.com'),
(68, 'darkprofits.co.uk'),
(69, 'datingforme.co.uk'),
(70, 'datingmind.com'),
(71, 'degree.org.ru'),
(72, 'delorentos.com'),
(73, 'diggydigger.com'),
(74, 'dinkydonkyaussie.com'),
(75, 'djpritchard.com'),
(76, 'djtop.com'),
(77, 'draufgeschissen.com'),
(78, 'dreamerteens.co.uk'),
(79, 'ebonyarchives.co.uk'),
(80, 'ebonyplaya.co.uk'),
(81, 'ecobuilder2000.com'),
(82, 'emailandemail.com'),
(83, 'emedici.net'),
(84, 'engine-on-fire.com'),
(85, 'erocity.co.uk'),
(86, 'esport3.com'),
(87, 'eteenbabes.com'),
(88, 'eurofreepages.com'),
(89, 'eurotexans.com'),
(90, 'evolucionweb.com'),
(91, 'fakoli.com'),
(92, 'fe4ba.com'),
(93, 'ferienschweden.com'),
(94, 'findly.com'),
(95, 'firsttimeteadrinker.com'),
(96, 'fishing.net.ru'),
(97, 'flatwonkers.com'),
(98, 'flowershopentertainment.com'),
(99, 'flymario.com'),
(100, 'free-xxx-pictures-porno-gallery.com'),
(101, 'freebestporn.com'),
(102, 'freefuckingmovies.co.uk'),
(103, 'freexxxstuff.co.uk'),
(104, 'fruitologist.net'),
(105, 'fruitsandbolts.com'),
(106, 'fuck-cumshots-free-midget-movie-clips.com'),
(107, 'fuck-michaelmoore.com'),
(108, 'fundacep.com'),
(109, 'gadless.com'),
(110, 'gallapagosrangers.com'),
(111, 'galleries4free.co.uk'),
(112, 'galofu.com'),
(113, 'gaypixpost.co.uk'),
(114, 'geomasti.com'),
(115, 'girltime.co.uk'),
(116, 'glassrope.com'),
(117, 'godjustblessyouall.com'),
(118, 'goldenageresort.com'),
(119, 'gonnabedaddies.com'),
(120, 'granadasexi.com'),
(121, 'guardingtheangels.com'),
(122, 'guyprofiles.co.uk'),
(123, 'happy1225.com'),
(124, 'happychappywacky.com'),
(125, 'health.org.ru'),
(126, 'hexplas.com'),
(127, 'highheelsmodels4fun.com'),
(128, 'hillsweb.com'),
(129, 'hiptuner.com'),
(130, 'historyintospace.com'),
(131, 'hoa-tuoi.com'),
(132, 'homebuyinginatlanta.com'),
(133, 'horizonultra.com'),
(134, 'horseminiature.net'),
(135, 'hotkiss.co.uk'),
(136, 'hotlivegirls.co.uk'),
(137, 'hotmatchup.co.uk'),
(138, 'husler.co.uk'),
(139, 'iaentertainment.com'),
(140, 'iamnotsomeone.com'),
(141, 'iconsofcorruption.com'),
(142, 'ihavenotrustinyou.com'),
(143, 'informat-systems.com'),
(144, 'interiorproshop.com'),
(145, 'intersoftnetworks.com'),
(146, 'inthecrib.com'),
(147, 'investment4cashiers.com'),
(148, 'iti-trailers.com'),
(149, 'jackpot-hacker.com'),
(150, 'jacks-world.com'),
(151, 'jamesthesailorbasher.com'),
(152, 'jesuislemonds.com'),
(153, 'justanotherdomainname.com'),
(154, 'kampelicka.com'),
(155, 'kanalrattenarsch.com'),
(156, 'katzasher.com'),
(157, 'kerosinjunkie.com'),
(158, 'killasvideo.com'),
(159, 'koenigspisser.com'),
(160, 'kontorpara.com'),
(161, 'l8t.com'),
(162, 'laestacion101.com'),
(163, 'lambuschlamppen.com'),
(164, 'lankasex.co.uk'),
(165, 'laser-creations.com'),
(166, 'le-tour-du-monde.com'),
(167, 'lecraft.com'),
(168, 'ledo-design.com'),
(169, 'leftregistration.com'),
(170, 'lekkikoomastas.com'),
(171, 'lepommeau.com'),
(172, 'libr-animal.com'),
(173, 'libraries.org.ru'),
(174, 'likewaterlikewind.com'),
(175, 'limbojumpers.com'),
(176, 'link.ru'),
(177, 'lockportlinks.com'),
(178, 'loiproject.com'),
(179, 'longtermalternatives.com'),
(180, 'lottoeco.com'),
(181, 'lucalozzi.com'),
(182, 'maki-e-pens.com'),
(183, 'malepayperview.co.uk'),
(184, 'mangaxoxo.com'),
(185, 'maps.org.ru'),
(186, 'marcofields.com'),
(187, 'masterofcheese.com'),
(188, 'masteroftheblasterhill.com'),
(189, 'mastheadwankers.com'),
(190, 'megafrontier.com'),
(191, 'meinschuppen.com'),
(192, 'mercurybar.com'),
(193, 'metapannas.com'),
(194, 'micelebre.com'),
(195, 'midnightlaundries.com'),
(196, 'mikeapartment.co.uk'),
(197, 'millenniumchorus.com'),
(198, 'mimundial2002.com'),
(199, 'miniaturegallerymm.com'),
(200, 'mixtaperadio.com'),
(201, 'mondialcoral.com'),
(202, 'monja-wakamatsu.com'),
(203, 'monstermonkey.net'),
(204, 'mouthfreshners.com'),
(205, 'mullensholiday.com'),
(206, 'musilo.com'),
(207, 'myhollowlog.com'),
(208, 'myhomephonenumber.com'),
(209, 'mykeyboardisbroken.com'),
(210, 'mysofia.net'),
(211, 'naked-cheaters.com'),
(212, 'naked-old-women.com'),
(213, 'nastygirls.co.uk'),
(214, 'nationclan.net'),
(215, 'natterratter.com'),
(216, 'naughtyadam.com'),
(217, 'nestbeschmutzer.com'),
(218, 'netwu.com'),
(219, 'newrealeaseonline.com'),
(220, 'newrealeasesonline.com'),
(221, 'nextfrontiersonline.com'),
(222, 'nikostaxi.com'),
(223, 'notorious7.com'),
(224, 'nrecruiter.com'),
(225, 'nursingdepot.com'),
(226, 'nustramosse.com'),
(227, 'nuturalhicks.com'),
(228, 'occaz-auto49.com'),
(229, 'ocean-db.net'),
(230, 'oilburnerservice.net'),
(231, 'omburo.com'),
(232, 'oneoz.com'),
(233, 'onepageahead.net'),
(234, 'onlinewithaline.com'),
(235, 'organizate.net'),
(236, 'ourownweddingsong.com'),
(237, 'owen-music.com'),
(238, 'p-partners.com'),
(239, 'paginadeautor.com'),
(240, 'pakistandutyfree.com'),
(241, 'pamanderson.co.uk'),
(242, 'parentsense.net'),
(243, 'particlewave.net'),
(244, 'pay-clic.com'),
(245, 'pay4link.net'),
(246, 'pcisp.com'),
(247, 'persist-pharma.com'),
(248, 'peteband.com'),
(249, 'petplusindia.com'),
(250, 'pickabbw.co.uk'),
(251, 'picture-oral-position-lesbian.com'),
(252, 'pl8again.com'),
(253, 'planeting.net'),
(254, 'popusky.com'),
(255, 'porn-expert.com'),
(256, 'promoblitza.com'),
(257, 'proproducts-usa.com'),
(258, 'ptcgzone.com'),
(259, 'ptporn.com'),
(260, 'publishmybong.com'),
(261, 'puttingtogether.com'),
(262, 'qualifiedcancelations.com'),
(263, 'rahost.com'),
(264, 'rainbow21.com'),
(265, 'rakkashakka.com'),
(266, 'randomfeeding.com'),
(267, 'rape-art.com'),
(268, 'rd-brains.com'),
(269, 'realestateonthehill.net'),
(270, 'rebuscadobot'),
(271, 'requested-stuff.com'),
(272, 'retrotrasher.com'),
(273, 'ricopositive.com'),
(274, 'risorseinrete.com'),
(275, 'rotatingcunts.com'),
(276, 'runawayclicks.com'),
(277, 'rutalibre.com'),
(278, 's-marche.com'),
(279, 'sabrosojazz.com'),
(280, 'samuraidojo.com'),
(281, 'sanaldarbe.com'),
(282, 'sasseminars.com'),
(283, 'schlampenbruzzler.com'),
(284, 'searchmybong.com'),
(285, 'seckur.com'),
(286, 'sex-asian-porn-interracial-photo.com'),
(287, 'sex-porn-fuck-hardcore-movie.com'),
(288, 'sexa3.net'),
(289, 'sexer.com'),
(290, 'sexintention.com'),
(291, 'sexnet24.tv'),
(292, 'sexomundo.com'),
(293, 'sharks.com.ru'),
(294, 'shells.com.ru'),
(295, 'shop-ecosafe.com'),
(296, 'shop-toon-hardcore-fuck-cum-pics.com'),
(297, 'silverfussions.com'),
(298, 'sin-city-sex.net'),
(299, 'sluisvan.com'),
(300, 'smutshots.com'),
(301, 'snagglersmaggler.com'),
(302, 'somethingtoforgetit.com'),
(303, 'sophiesplace.net'),
(304, 'soursushi.com'),
(305, 'southernxstables.com'),
(306, 'speed467.com'),
(307, 'speedpal4you.com'),
(308, 'sporty.org.ru'),
(309, 'stopdriving.net'),
(310, 'stw.org.ru'),
(311, 'sufficientlife.com'),
(312, 'sussexboats.net'),
(313, 'swinger-party-free-dating-porn-sluts.com'),
(314, 'sydneyhay.com'),
(315, 'szmjht.com'),
(316, 'teninchtrout.com'),
(317, 'thebalancedfruits.com'),
(318, 'theendofthesummit.com'),
(319, 'thiswillbeit.com'),
(320, 'thosethosethose.com'),
(321, 'ticyclesofindia.com'),
(322, 'tits-gay-fagot-black-tits-bigtits-amateur.com'),
(323, 'tonius.com'),
(324, 'toohsoft.com'),
(325, 'toolvalley.com'),
(326, 'tooporno.net'),
(327, 'toosexual.com'),
(328, 'torngat.com'),
(329, 'tour.org.ru'),
(330, 'towneluxury.com'),
(331, 'trafficmogger.com'),
(332, 'triacoach.net'),
(333, 'trottinbob.com'),
(334, 'tttframes.com'),
(335, 'tvjukebox.net'),
(336, 'undercvr.com'),
(337, 'unfinished-desires.com'),
(338, 'unicornonero.com'),
(339, 'unionvillefire.com'),
(340, 'upsandowns.com'),
(341, 'upthehillanddown.com'),
(342, 'vallartavideo.com'),
(343, 'vietnamdatingservices.com'),
(344, 'vinegarlemonshots.com'),
(345, 'vizy.net.ru'),
(346, 'vnladiesdatingservices.com'),
(347, 'vomitandbusted.com'),
(348, 'walkingthewalking.com'),
(349, 'well-I-am-the-type-of-boy.com'),
(350, 'whales.com.ru'),
(351, 'whincer.net'),
(352, 'whitpagesrippers.com'),
(353, 'whois.sc'),
(354, 'wipperrippers.com'),
(355, 'wordfilebooklets.com'),
(356, 'world-sexs.com'),
(357, 'xsay.com'),
(358, 'xxxchyangel.com'),
(359, 'xxxx:'),
(360, 'xxxzips.com'),
(361, 'youarelostintransit.com'),
(362, 'yuppieslovestocks.com'),
(363, 'yuzhouhuagong.com'),
(364, 'zhaori-food.com'),
(365, 'zwiebelbacke.com');

DROP TABLE IF EXISTS `nuke_nsnst_strings`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_strings` (
  `sid` int(2) NOT NULL AUTO_INCREMENT,
  `string` varchar(255) NOT NULL,
  PRIMARY KEY (`string`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_nsnst_tracked_ips`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_tracked_ips` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(15) NOT NULL DEFAULT '',
  `ip_long` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `username` varchar(60) NOT NULL DEFAULT '',
  `user_agent` text NOT NULL,
  `refered_from` text NOT NULL,
  `date` int(20) NOT NULL DEFAULT '0',
  `page` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL DEFAULT '',
  `client_ip` varchar(32) NOT NULL DEFAULT '',
  `remote_addr` varchar(32) NOT NULL DEFAULT '',
  `remote_port` varchar(11) NOT NULL DEFAULT '',
  `request_method` varchar(10) NOT NULL DEFAULT '',
  `c2c` char(2) NOT NULL DEFAULT '00',
  PRIMARY KEY (`tid`),
  KEY `ip_addr` (`ip_addr`),
  KEY `ip_long` (`ip_long`),
  KEY `user_id` (`user_id`),
  KEY `username` (`username`),
  KEY `user_agent` (`user_agent`(255)),
  KEY `refered_from` (`refered_from`(255)),
  KEY `date` (`date`),
  KEY `page` (`page`(255)),
  KEY `c2c` (`c2c`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
DROP TABLE IF EXISTS `nuke_dfw_block_img`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_block_img` (
  `welc_note` varchar(255) NOT NULL DEFAULT '',
  `your_ip` varchar(255) NOT NULL DEFAULT '',
  `posts` varchar(255) NOT NULL DEFAULT '',
  `logout` varchar(255) NOT NULL DEFAULT '',
  `pm_img` varchar(255) NOT NULL DEFAULT '',
  `pm_unread` varchar(255) NOT NULL DEFAULT '',
  `pm_read` varchar(255) NOT NULL DEFAULT '',
  `mbr_stats` varchar(255) NOT NULL DEFAULT '',
  `mbr_latest` varchar(255) NOT NULL DEFAULT '',
  `mbr_today` varchar(255) NOT NULL DEFAULT '',
  `mbr_yesterday` varchar(255) NOT NULL DEFAULT '',
  `mbr_waiting` varchar(255) NOT NULL DEFAULT '',
  `mbr_overall` varchar(255) NOT NULL DEFAULT '',
  `bbgroups` varchar(255) NOT NULL DEFAULT '',
  `nsngroups` varchar(255) NOT NULL DEFAULT '',
  `online_member` varchar(255) NOT NULL DEFAULT '',
  `online_guest` varchar(255) NOT NULL DEFAULT '',
  `sub_img` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_dfw_block_img` (`welc_note`, `your_ip`, `posts`, `logout`, `pm_img`, `pm_unread`, `pm_read`, `mbr_stats`, `mbr_latest`, `mbr_today`, `mbr_yesterday`, `mbr_waiting`, `mbr_overall`, `bbgroups`, `nsngroups`, `online_member`, `online_guest`, `sub_img`) VALUES
('images/DFW/user.png', 'images/DFW/your_ip.png', 'images/DFW/your_posts.png', 'images/DFW/logout.png', 'images/DFW/pms.png', 'images/DFW/new_pms.png', 'images/DFW/old_pms.png', 'images/DFW/members.png', 'images/DFW/new_users.png', 'images/DFW/group-2.png', 'images/DFW/yesterday.png', 'images/DFW/waiting.png', 'images/DFW/total_users.png', 'images/DFW/group-2.png', 'images/DFW/group-2.png', 'images/DFW/online.png', 'images/DFW/online.png', 'images/DFW/dot.gif');

DROP TABLE IF EXISTS `nuke_dfw_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_cfg` (
  `cfg_nm` varchar(255) NOT NULL DEFAULT '',
  `cfg_val` longtext NOT NULL,
  PRIMARY KEY (`cfg_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_dfw_cfg` (`cfg_nm`, `cfg_val`) VALUES
('user_ip', '1'),
('prvt_msgs', '1'),
('site_points', '1'),
('user_posts', '1'),
('avatars', '1'),
('show_ranks', '1'),
('online_users', '1'),
('online_guests', '1'),
('version', '0.0.1'),
('show_hits', '1'),
('show_most', '1'),
('nsn_groups', '1'),
('memberships', '1'),
('username_length', '10'),
('online_image', '1'),
('admin_tooltips', '1'),
('live_online', '1'),
('tooltip', '1'),
('tooltip_avatar', '1'),
('tooltip_username', '1'),
('tooltip_email', '1'),
('tooltip_regdate', '1'),
('tooltip_posts', '1'),
('tooltip_theme', '1'),
('server_datetime', '1'),
('server_datetime_admin', '1'),
('prvt_msgs_voice', '1'),
('order_mode', '0'),
('bbgroups', '1'),
('bbranks', '0'),
('member_flags', '0'),
('guest_flags', '0'),
('auc_colors', '0'),
('tooltip_bgcolor', '#2C2953'),
('tooltip_txtcolor', '#000000'),
('tooltip_bordersize', '2'),
('tooltip_bordertype', 'solid'),
('tooltip_bordercolor', '#F00000'),
('tooltip_padding', '20'),
('tooltip_opacity', '9'),
('tipimage_username ', ''),
('fotodimensions', '60');

DROP TABLE IF EXISTS `nuke_dfw_code`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_code` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` char(20) NOT NULL,
  `code` text,
  `desc` varchar(100) DEFAULT '',
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_dfw_img`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_img` (
  `pic` varchar(40) NOT NULL DEFAULT '',
  `view` varchar(40) NOT NULL DEFAULT '',
  `king` tinyint(2) NOT NULL DEFAULT '0',
  `gname` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_dfw_tooltip_img`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_tooltip_img` (
  `tipimage_username` varchar(255) NOT NULL DEFAULT '',
  `tipimage_email` varchar(255) NOT NULL DEFAULT '',
  `tipimage_regdate` varchar(255) NOT NULL DEFAULT '',
  `tipimage_group` varchar(255) NOT NULL DEFAULT '',
  `tipimage_posts` varchar(255) NOT NULL DEFAULT '',
  `tipimage_theme` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_dfw_tooltip_img` (`tipimage_username`, `tipimage_email`, `tipimage_regdate`, `tipimage_group`, `tipimage_posts`, `tipimage_theme`) VALUES
('images/DFW/tooltip/memberusr.gif', 'images/DFW/tooltip/messages.gif', 'images/DFW/tooltip/regdate.gif', 'images/DFW/tooltip/membership.gif', 'images/DFW/tooltip/posts.gif', 'images/DFW/tooltip/theme.gif');

DROP TABLE IF EXISTS `nuke_legal_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_legal_cfg` (
  `contact_email` varchar(255) NOT NULL DEFAULT 'legal@MySite.com',
  `contact_subject` varchar(255) NOT NULL DEFAULT 'Legal Notice Inquiry',
  `country` varchar(255) NOT NULL DEFAULT 'United States of America'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `nuke_legal_cfg` (`contact_email`, `contact_subject`, `country`) VALUES
('legal@MySite.com', 'Legal Notice Inquiry', 'United States of America');

DROP TABLE IF EXISTS `nuke_legal_docs`;
CREATE TABLE IF NOT EXISTS `nuke_legal_docs` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(32) NOT NULL,
  `doc_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `nuke_legal_docs` (`did`, `doc_name`, `doc_status`) VALUES
(1, 'notice', 1),
(2, 'privacy', 1),
(3, 'terms', 1);

DROP TABLE IF EXISTS `nuke_legal_text`;
CREATE TABLE IF NOT EXISTS `nuke_legal_text` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `doc_text` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO `nuke_legal_text` (`tid`, `doc_text`) VALUES
(1, '<p>[sitename] authorizes you to view, download, and interact with materials, services, and forums on this website. Unless otherwise specified, the services and downloads provided by [sitename] are for your personal and or commercial use, provided that you retain all copyright and other proprietary notices contained in the original materials.</p>\r\n<p>The materials at [sitename] are copyrighted and any unauthorized use of these materials may violate copyrights and or trademarks of [country], headquarters of the owner of [sitename].</p>\r\n<p>These legal notices are for our protection and yours as well. Please read them carefully.</p>\r\n<p align="right">[date]</p>'),
(2, 'Legal Notice'),
(3, '<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">Introduction<br />\r\n<br />\r\n</span>The site editor takes your right to privacy seriously, and wants you to feel comfortable using [sitename]. This privacy policy deals with personally-identifiable information (referred to as &quot;data&quot; below) that may be collected by this site. This policy does not apply to other entities that are not owned or controlled by the site editor, nor to persons that are not employees or agents of the site editor, or that are not under the site editor''s control. Please take time to read this site''s <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">1. Collection of data<br />\r\n<br />\r\n</span>Registration of a user account on this site requires only a valid e-mail address and a user name that has not been used already. You are not required to provide any other information if do not want to. Please be aware that the user name you choose, the e-mail address you provide and other information you provide may render you personally identifiable, and may possibly be displayed on [sitename] intentionally (depending on choices you make during the registration process, or on the way in which the site is configured) or unintentionally (such as, but not limited to, subsequent to a successful act of intrusion by a third party). As on many web sites, the site editor may also automatically receive general information that is contained in server log files, such as your IP address, and cookie information. Information about how advertising may be served on this site (if it is the site editor''s policy to display advertising) is set forth below.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">2. Use of data<br />\r\n<br />\r\n</span>Data may be used to customize and improve your user experience on this site. Efforts will be made to prevent your data being made available to third parties unless (ID 1033 0 1) provided for otherwise in this Privacy Policy; (ii) your consent is obtained, such as when you choose to opt-in or opt-out for the sharing of data; (iii) a service provided on our site requires interaction a third party with or is provided by a third party, such as an application service provider; (iv) pursuant to legal action or law enforcement; (v) it is found that your use of this site violates this policy, terms of service, or other usage guidelines, or if it is deemed reasonably necessary by the site editor to protect the site editor''s legal rights and or property; or (vi) this site is purchased by a third party, in which case that third party will be able to use the data in the same manner as set forth in this Policy. In the event you choose to use links that appear on [sitename] to visit other web sites, you are advised to read the privacy policies that appear on those sites.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">3. Cookies<br />\r\n<br />\r\n</span>Like many web sites, [sitename] sets and uses cookies to enhance your user experience, such as retaining your personal settings. Advertisements may appear on [sitename] and, if so, may set and access cookies on your computer; such cookies are subject to the privacy policy of the parties providing the advertisement. However, the parties serving the advertising do not have access to this site''s cookies. These parties usually use non-personally-identifiable or anonymous codes to obtain information about your visits to this site. You can visit the <a href="http://www.networkadvertising.org/optout_nonppii.asp">Network Advertising Initiative</a> if you want to find out more information about this practice, and to learn about your options, including your options with regard to the following companies that may serve advertising on this site:<br />\r\n<br />\r\n[<a href="http://www.associateprograms.com/"> AssociatePrograms.com</a> ] [<a title="AdBrite" target="_blank" href="http://www.adbrite.com"> AdBrite</a> ] [ <a href="http://www.cj.com/">Commission Junction</a> ] [ <a href="http://www.doubleclick.net/">DoubleClick</a> ] [ <a href="http://www.linkshare.com/">Linkshare</a> ]<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">4. Minors<br />\r\n<br />\r\n</span>People aged thirteen or younger are not allowed to become registered users of this site. For more information, please contact <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">5. Editing or deleting your account information<br />\r\n<br />\r\n</span>This site provides you with the ability to edit the information in your user account that you provided to during the registration process, by visiting <a href="modules.php?name=Your_Account">your personal home page configuration page</a>. You may request deletion of your user account by contacting <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>. Content or other information that you may have provided, and that is not contained within your user account, such as posts that may appear within site forums, may continue to remain on the site at the site editor''s discretion, even though your user account is deleted. Please see the site''s <a href="modules.php?name=Legal&amp;op=terms">Terms of Use</a> for more information.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">6. Changes to this privacy policy<br />\r\n<br />\r\n</span>Changes may be made to this policy from time to time. You will be notified of substantial changes to this policy either by through the posting of a prominent announcement on the site, and or by a message being sent to the e-mail address you have provided, which is contained in your user settings.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">7. NO GUARANTEES<br />\r\n<br />\r\n</span>While this privacy policy states standards for maintenance of data, and while efforts will be made to meet the said standards, the site editor is not in a position to guarantee compliance with these standards. There may be factors beyond the site editor''s control that may result in disclosure of data. Consequently, the site editor offers no warranties or representations as regards maintenance or nondisclosure of data.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">8. Contact information<br />\r\n<br />\r\n</span>If you have any questions about this policy or [sitename], please feel free to contact <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>.</p>\r\n<p align="right">[date]</p>'),
(4, 'Privacy Policy'),
(5, '<p style="text-align: left;"><span style="font-weight: bold;">1. Acceptance of terms of use and amendments<br />\r\n<br />\r\n</span>Each time you use or cause access to [sitename], you agree to be bound by these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, as amended from time to time with or without notice to you. In addition, if you are using a particular service hosted on or accessed via [sitename], you will be subject to any rules or guidelines applicable to the said services, and they will be incorporated by reference within these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>. Please refer to this site''s <a href="modules.php?name=Legal&amp;op=privacy">privacy policy</a>, which is incorporated within these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> by reference.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">2. The site editor''s service<br />\r\n<br />\r\n</span>This web site and services provided to you on and through [sitename] are provided on an &quot;AS IS&quot; basis.You agree that the site editor exclusively reserves the right to modify or discontinue provision of [sitename] and its services, and to delete the data you provide, either temporarily or permanently; the site and may, at any time and without notice and any liability to you, The site editor shall have no responsibility or liability for the timeliness, deletion, failure to store, inaccuracy, or improper delivery of any data or information.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">3. Your responsibilities and registration obligations<br />\r\n<br />\r\n</span>In order to use [sitename] or certain parts of it, you may be required to <a href="modules.php?name=Your_Account&amp;op=new_user">register a user account</a> on this web site; in this case, you agree to provide truthful information when requested, and undertake that you are aged at least the thirteen (13) or more.&nbsp;&nbsp; In addition, you are required to register a unique user account to you and that is not shared.&nbsp; <font color="#ff0000">Sharing of user accounts is expressly prohibited</font>.<br />\r\n</p>\r\n<p style="text-align: left;">By registering, you explicitly agree to this site''s <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, including any amendments made by the site editor from time to time and available here.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">4. Privacy policy</span>.<br />\r\n</p>\r\n<p style="text-align: left;">Registration data and other personally-identifiable information that may be collected on this site is subject to the terms of the site''s <a href="modules.php?name=Legal&amp;op=privacy">privacy policy</a>.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">5. Registration and password<br />\r\n<br />\r\n</span>You are responsible for maintaining the confidentiality of your password, and shall be responsible for all usage of your user account and or user name, whether authorized or unauthorized by you. You agree to immediately notify the site editor of any unauthorized use or your user account, user name or password.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">6. Your conduct.<br />\r\n<br />\r\n</span>You agree that all information or data of any kind, whether text, software, code, music or sound, photographs or graphics, video or other materials (&quot;content&quot;), made available publicly or privately, shall be under the sole responsibility of the person providing the content or the person whose user account is used. You agree that [sitename] may expose you to content that may be objectionable or offensive. The site editor shall not be responsible to you in any way for the content that appears on [sitename], nor for any error or omission.</p>\r\n<p style="text-align: left;">By using [sitename] or any service provided, you explicitly agree that you shall not:<br />\r\n(a) provide any content or conduct yourself in any way that may be construed as: unlawful; illegal; threatening; harmful; abusive; harassing; stalking; tortuous; defamatory; libelous; vulgar; obscene; offensive; objectionable; pornographic; designed to interfere or interrupt [sitename] or any service provided, infected with a virus or other destructive or deleterious programming routine; giving rise to civil or criminal liability; or in violation of [country], applicable local, national or international law;<br />\r\n(b) impersonate or misrepresent your association with any person or entity; forge or otherwise seek to conceal or misrepresent the origin of any content provided by you;<br />\r\n(c) collect or harvest any data about other users;<br />\r\n(d) provide or use [sitename] for the provision of any content or service in any commercial manner, or in any manner that would involve junk mail, spam, chain letters, pyramid schemes, or any other form of unauthorized advertising, without the site editor''s prior written consent; <br />\r\n(e) provide any content that may give rise to civil or criminal liability of the site editor, or that may constitute or be considered a violation of [country], any local, national or international law, including -- but not limited to -- laws relating to copyright, trademark, patent, or trade secrets.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">7. Submission of content on [sitename]<br />\r\n<br />\r\n</span>By providing any content to [sitename]:<br />\r\n(a) you agree to grant the site editor a worldwide, royalty-free, perpetual, non-exclusive right and license (including any moral rights or other necessary rights.) to use, display, reproduce, modify, adapt, publish, distribute, perform, promote, archive, translate, and to create derivative works and compilations, in whole or in part. Such license will apply with respect to any form, media, technology already known or developed subsequently;<br />\r\n(b) you warrant and represent that you have all legal, moral, and other rights that may be necessary to grant us the license specified in this section 7;<br />\r\n(c) you acknowledge and agree that the site editor shall have the right (but not obligation), at the site editor''s entire discretion, to refuse to publish, or to remove, or to block access to any content you provide, at any time and for any reason, with or without notice.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">8. Third-party services<br />\r\n<br />\r\n</span>Goods and services of third parties may be advertised and or made available on or through [sitename]. Representations made regarding products and services provided by third parties are governed by the policies and representations made by these third parties. The site editor shall not be liable for or responsible in any manner for any of your dealings or interaction with third parties.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">9. Indemnification<br />\r\n<br />\r\n</span>You agree to indemnify and hold harmless the site editor and the site editor''s subsidiaries, affiliates, related parties, officers, directors, employees, agents, independent contractors, advertisers, partners, and co-branders, from any claim or demand, including reasonable attorney''s fees, that may be made by any third party, due to or arising out of your conduct or connection with [sitename] or service, your provision of content, your violation of these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, or any other violation of the rights of another person or party.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">10. DISCLAIMER OF WARRANTIES<br />\r\n<br />\r\n</span>YOU UNDERSTAND AND AGREE THAT YOUR USE OF THIS WEB SITE AND ANY SERVICES OR CONTENT PROVIDED (THE &quot;SERVICE&quot;) IS MADE AVAILABLE AND PROVIDED TO YOU AT YOUR OWN RISK. IT IS PROVIDED TO YOU &quot;AS IS&quot; AND THE SITE EDITOR EXPRESSLY DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER IMPLIED OR EXPRESS, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.&nbsp;</p>\r\n<p style="text-align: left;">THE SITE EDITOR MAKES NO WARRANTY, IMPLIED OR EXPRESS, THAT ANY PART OF THE SERVICE WILL BE UNINTERRUPTED, ERROR-FREE, VIRUS-FREE, TIMELY, SECURE, ACCURATE, RELIABLE, OR OF ANY QUALITY, NOR IS IT WARRANTED EITHER IMPLICITLY OR EXPRESSLY THAT ANY CONTENT IS SAFE IN ANY MANNER FOR DOWNLOAD. YOU UNDERSTAND AND AGREE THAT NEITHER THE SITE EDITOR NOR ANY PARTICIPANT IN THE SERVICE PROVIDES PROFESSIONAL ADVICE OF ANY KIND AND THAT USE OF ANY ADVICE OR ANY OTHER INFORMATION OBTAINED VIA THIS WEB SITE IS SOLELY AT YOUR OWN RISK, AND THAT THE SITE EDITOR MAY NOT BE HELD LIABLE IN ANY WAY. <br />\r\n</p>\r\n<p style="text-align: left;">Some jurisdictions may not allow disclaimers of implied warranties, and certain statements in the above disclaimer may not apply to you as regards implied warranties; the other terms and conditions remain enforceable notwithstanding.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">11. LIMITATION OF LIABILITY<br />\r\n<br />\r\n</span>YOU EXPRESSLY UNDERSTAND AND AGREE THAT THE SITE EDTIOR SHALL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INDICENTAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES; THIS INCLUDES, BUT IS NOT LIMITED TO, DAMAGES FOR LOSS OF PROFITS, GOODWILL, USE, DATA OR OTHER INTANGIBLE LOSS (EVEN IF THE SITE EDITOR HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), RESULTING FROM OR ARISING OUT OF (I) THE USE OF OR THE INABILITY TO USE THE SERVICE, (II) THE COST OF OBTAINING SUBSTITUTE GOODS AND OR SERVICES RESULTING FROM ANY TRANSACTION ENTERED INTO ON THROUGH THE SERVICE, (III) UNAUTHORIZED ACCESS TO OR ALTERATION OF YOUR DATA TRANSMISSIONS, (IV) STATEMENTS BY ANY THIRD PARTY OR CONDUCT OF ANY THIRD PARTY USING THE SERVICE, OR (V) ANY OTHER MATTER RELATING TO THE SERVICE.</p>\r\n<p style="text-align: left;">In some jurisdictions, it is not permitted to limit liability and, therefore, such limitations may not apply to you.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">12. Reservation of rights<br />\r\n<br />\r\n</span>The site editor reserves all of the site editor''s rights, including but not limited to any and all copyrights, trademarks, patents, trade secrets, and any other proprietary right that the site editor may have for [sitename], its content, and the goods and services that may be provided. The use of the site editor''s rights. and property requires the site editor''s prior written consent. By making services available to you, the site editor is not providing you with any implied or express licenses or rights, and you will have no rights. to make any commercial uses of [sitename] or service without the site editor''s prior written consent.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">13. Notification of copyright infringement<br />\r\n<br />\r\n</span>If you believe that your property has been used in any way that would be considered a copyright infringement or a violation of your intellectual property rights, the site editor''s copyright agent may be contacted at the following address:<br />\r\n<br />\r\n<a href="modules.php?name=Legal&amp;op=contact">Click here to contact the webmaster</a><br />\r\n<br />\r\n<span style="font-weight: bold;">14. Applicable law<br />\r\n<br />\r\n</span>You agree that these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> and any dispute arising out of your use of [sitename] or the site editor''s products or services shall be governed by and construed in accordance with local laws in force of [country], headquarters of the owner of [sitename], without regard to its conflict of law provisions. By registering or using this web site and service, you consent and submit to the exclusive jurisdiction and venue of [country], headquarters of the owner of [sitename].&nbsp;</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">15. Miscellaneous information<br />\r\n<br />\r\n</span>(ID 1033 0 1) In the event that these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> conflict with any law under which any provision may be held invalid by a court with jurisdiction over the parties, such provision will be interpreted to reflect the original intentions of the parties in accordance with applicable law, and the remainder of these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> will remain valid and intact; (ii) The failure of either party to assert any right under these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> shall not be considered a waiver of that party''s right, and that right will remain in full force and effect; (iii) You agree that, without regard to any statute or contrary law, that any claim or cause arising out of [sitename] or its services must be filed within one (1) year after such claim or cause arose, or else the claim shall be forever barred; (iv) The site editor may assign the site editor''s rights and obligations under these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>; in this case, the site editor shall be relieved of any further obligation.</p>\r\n<p align="right">[country], [date]</p>'),
(6, 'Terms of Use');

DROP TABLE IF EXISTS `nuke_legal_text_map`;
CREATE TABLE IF NOT EXISTS `nuke_legal_text_map` (
  `mid` mediumint(9) NOT NULL,
  `did` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `language` varchar(32) NOT NULL DEFAULT 'english',
  UNIQUE KEY `mid` (`mid`,`did`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `nuke_legal_text_map` (`mid`, `did`, `tid`, `language`) VALUES
(1, 1, 1, 'english'),
(2, 1, 2, 'english'),
(1, 2, 3, 'english'),
(2, 2, 4, 'english'),
(1, 3, 5, 'english'),
(2, 3, 6, 'english');

DROP TABLE IF EXISTS `nuke_menu`;
CREATE TABLE IF NOT EXISTS `nuke_menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

INSERT INTO `nuke_menu` (`mid`, `cid`, `title`, `weight`) VALUES
(1, 1, 'Forums', 2),
(2, 3, 'Content', 13),
(3, 3, 'Reviews', 12),
(4, 3, 'Stories_Archive', 11),
(5, 2, 'Submit_News', 9),
(6, 2, 'Groups', 10),
(7, 1, 'Downloads', 3),
(8, 1, 'AvantGo', 4),
(9, 4, 'Statistics', 6),
(10, 4, 'Your_Account', 5),
(11, 4, 'Journal', 8),
(12, 4, 'Search', 7),
(13, 5, 'NukeBlog', 1);

DROP TABLE IF EXISTS `nuke_menu_cat`;
CREATE TABLE IF NOT EXISTS `nuke_menu_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `nuke_menu_cat` (`cid`, `cat`, `weight`) VALUES
(1, 'General', 2),
(2, 'Community', 4),
(3, 'Content', 5),
(4, 'Info', 3),
(5, 'Members', 1);

DROP TABLE IF EXISTS `nuke_news_config`;
CREATE TABLE IF NOT EXISTS `nuke_news_config` (
  `newsrows` int(1) NOT NULL DEFAULT '1',
  `bookmark` int(1) NOT NULL DEFAULT '0',
  `rblocks` int(1) NOT NULL DEFAULT '0',
  `showtags` int(1) NOT NULL DEFAULT '0',
  KEY `newsrows` (`newsrows`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `nuke_news_config` (`newsrows`, `bookmark`, `rblocks`, `showtags`) VALUES
(2, 1, 0, 1);

DROP TABLE IF EXISTS `nuke_bbflags`;
CREATE TABLE IF NOT EXISTS `nuke_bbflags` (
  `flag_id` int(10) NOT NULL auto_increment,
  `flag_name` varchar(50) default NULL,
  `flag_image` varchar(25) default NULL,
  PRIMARY KEY  (`flag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=262 ;

REPLACE INTO `nuke_bbflags` (`flag_id`, `flag_name`, `flag_image`) VALUES
(1, 'Afghanistan', 'AF.gif'),
(2, 'ÅLAND ISLANDS', 'AX.gif'),
(3, 'Albania', 'AL.gif'),
(4, 'Algeria', 'DZ.gif'),
(5, 'American Samoa', 'AS.gif'),
(6, 'Andorra', 'AD.gif'),
(7, 'Angola', 'AO.gif'),
(8, 'Anguilla', 'AI.gif'),
(9, 'Antigua and Barbuda', 'AG.gif'),
(10, 'Argentina', 'AR.gif'),
(11, 'Armenia', 'AM.gif'),
(12, 'Aruba', 'AW.gif'),
(13, 'Ashmore and Cartier Islands', 'AC.gif'),
(14, 'Australia', 'AU.gif'),
(15, 'Austria', 'AT.gif'),
(16, 'Azerbaijan', 'AZ.gif'),
(17, 'Bahamas, The', 'BS.gif'),
(18, 'Bahrain', 'BH.gif'),
(19, 'Baker Island', 'USBI.gif'),
(20, 'Bangladesh', 'BD.gif'),
(21, 'Barbados', 'BB.gif'),
(22, 'Bassas da India', 'BSI.gif'),
(23, 'Belarus', 'BY.gif'),
(24, 'Belgium', 'BE.gif'),
(25, 'Belize', 'BZ.gif'),
(26, 'Benin', 'BJ.gif'),
(27, 'Bermuda', 'BM.gif'),
(28, 'Bhutan', 'BT.gif'),
(29, 'Bolivia', 'BO.gif'),
(30, 'Bosnia and Herzegovina', 'BA.gif'),
(31, 'Botswana', 'BW.gif'),
(32, 'Bouvet Island', 'NO.gif'),
(33, 'Brazil', 'BR.gif'),
(34, 'British Indian Ocean Territory', 'IO.gif'),
(35, 'British Virgin Islands', 'VI.gif'),
(36, 'Brunei', 'BI.gif'),
(37, 'Bulgaria', 'BG.gif'),
(38, 'Burkina Faso', 'BF.gif'),
(39, 'Burma', 'MM.gif'),
(40, 'Burundi', 'BI.gif'),
(41, 'Cambodia', 'KH.gif'),
(42, 'Cameroon', 'CM.gif'),
(43, 'Canada', 'CA.gif'),
(44, 'Cape Verde', 'CV.gif'),
(45, 'Cayman Islands', 'KY.gif'),
(46, 'Central African Republic', 'CF.gif'),
(47, 'Chad', 'TD.gif'),
(48, 'Chile', 'CL.gif'),
(49, 'China', 'CN.gif'),
(50, 'Christmas Island', 'CX.gif'),
(51, 'Clipperton Island', 'FR.gif'),
(52, 'Cocos (Keeling) Islands', 'CC.gif'),
(53, 'Colombia', 'CO.gif'),
(54, 'Comoros', 'KM.gif'),
(55, 'Congo, Democratic Republic of the', 'CD.gif'),
(56, 'Congo', 'CG.gif'),
(57, 'Cook Islands', 'CK.gif'),
(58, 'Coral Sea Islands', 'CC.gif'),
(59, 'Costa Rica', 'CR.gif'),
(60, 'Cote d''Ivoire', 'CI.gif'),
(61, 'Croatia', 'HR.gif'),
(62, 'Cuba', 'CU.gif'),
(63, 'Cyprus', 'CY.gif'),
(64, 'Czech Republic', 'CZ.gif'),
(65, 'Denmark', 'DK.gif'),
(66, 'Dhekelia', 'DX.gif'),
(67, 'Djibouti', 'DJ.gif'),
(68, 'Dominica', 'DM.gif'),
(69, 'Dominican Republic', 'DO.gif'),
(70, 'Timor-Leste', 'TL.gif'),
(71, 'Ecuador', 'EC.gif'),
(72, 'Egypt', 'EG.gif'),
(73, 'El Salvador', 'SV.gif'),
(74, 'Equatorial Guinea', 'GQ.gif'),
(75, 'Eritrea', 'ER.gif'),
(76, 'Estonia', 'EE.gif'),
(77, 'Ethiopia', 'ET.gif'),
(78, 'Europa Island', 'EI.gif'),
(79, 'Falkland Islands (Islas Malvinas)', 'FK.gif'),
(80, 'Faroe Islands', 'FO.gif'),
(81, 'Fiji', 'FJ.gif'),
(82, 'Finland', 'FI.gif'),
(83, 'France', 'FR.gif'),
(84, 'French Guiana', 'GF.gif'),
(85, 'French Polynesia', 'PF.gif'),
(86, 'French Southern and Antarctic Lands', 'TF.gif'),
(87, 'Gabon', 'GA.gif'),
(88, 'Gambia, The', 'GM.gif'),
(89, 'Georgia', 'GE.gif'),
(90, 'Germany', 'DE.gif'),
(91, 'Ghana', 'GH.gif'),
(92, 'Gibraltar', 'GI.gif'),
(93, 'Glorioso Islands', 'GO.gif'),
(94, 'Greece', 'GR.gif'),
(95, 'Greenland', 'GL.gif'),
(96, 'Grenada', 'GD.gif'),
(97, 'Guadeloupe', 'GP.gif'),
(98, 'Guam', 'GU.gif'),
(99, 'Guatemala', 'GT.gif'),
(100, 'Guernsey', 'GG.gif'),
(101, 'Guinea', 'GN.gif'),
(102, 'Guinea-Bissau', 'GW.gif'),
(103, 'Guyana', 'GY.gif'),
(104, 'Haiti', 'HT.gif'),
(105, 'Heard Island and McDonald Islands', 'AU.gif'),
(106, 'Holy See (Vatican City)', 'VA.gif'),
(107, 'Honduras', 'HN.gif'),
(108, 'Hong Kong', 'HK.gif'),
(109, 'Howland Island', 'HI.gif'),
(110, 'Hungary', 'HU.gif'),
(111, 'Iceland', 'IS.gif'),
(112, 'India', 'IN.gif'),
(113, 'Indonesia', 'ID.gif'),
(114, 'Iran, Islamic Republic of', 'IR.gif'),
(115, 'Iraq', 'IQ.gif'),
(116, 'Ireland', 'IE.gif'),
(117, 'Isle of Man', 'IM.gif'),
(118, 'Israel', 'IL.gif'),
(119, 'Italy', 'IT.gif'),
(120, 'Jamaica', 'JM.gif'),
(121, 'Jan Mayen', 'JN.gif'),
(122, 'Japan', 'JP.gif'),
(123, 'Jarvis Island', 'JI.gif'),
(124, 'Jersey', 'JE.gif'),
(125, 'Johnston Atoll', 'JA.gif'),
(126, 'Jordan', 'JO.gif'),
(127, 'Juan de Nova Island', 'JU.gif'),
(128, 'Kazakhstan', 'KZ.gif'),
(129, 'Kenya', 'KE.gif'),
(130, 'Kingman Reef', 'KMR.gif'),
(131, 'Kiribati', 'KI.gif'),
(132, 'Korea, North', 'KR.gif'),
(133, 'Korea, South', 'KP.gif'),
(134, 'Kuwait', 'KW.gif'),
(135, 'Kyrgyzstan', 'KG.gif'),
(136, 'Lao, People''s Democratic Republic', 'LA.gif'),
(137, 'Latvia', 'LV.gif'),
(138, 'Lebanon', 'LB.gif'),
(139, 'Lesotho', 'LS.gif'),
(140, 'Liberia', 'LR.gif'),
(141, 'Libya', 'LY.gif'),
(142, 'Liechtenstein', 'LI.gif'),
(143, 'Lithuania', 'LT.gif'),
(144, 'Luxembourg', 'LU.gif'),
(145, 'Macao', 'MO.gif'),
(146, 'Macedonia', 'MK.gif'),
(147, 'Madagascar', 'MG.gif'),
(148, 'Malawi', 'MW.gif'),
(149, 'Malaysia', 'MY.gif'),
(150, 'Maldives', 'MV.gif'),
(151, 'Mali', 'ML.gif'),
(152, 'Malta', 'MT.gif'),
(153, 'Marshall Islands', 'MH.gif'),
(154, 'Martinique', 'MQ.gif'),
(155, 'Mauritania', 'MR.gif'),
(156, 'Mauritius', 'MU.gif'),
(157, 'Mayotte', 'YT.gif'),
(158, 'Mexico', 'MX.gif'),
(159, 'Micronesia, Federated States of', 'FM.gif'),
(160, 'Midway Islands', 'MI.gif'),
(161, 'Moldova', 'MD.gif'),
(162, 'Monaco', 'MC.gif'),
(163, 'Mongolia', 'MN.gif'),
(164, 'Montserrat', 'MS.gif'),
(165, 'Morocco', 'MA.gif'),
(166, 'Mozambique', 'MZ.gif'),
(167, 'Namibia', 'NA.gif'),
(168, 'Nauru', 'NR.gif'),
(169, 'Navassa Island', 'NVI.gif'),
(170, 'Nepal', 'NP.gif'),
(171, 'Netherlands', 'NL.gif'),
(172, 'Netherlands Antilles', 'AN.gif'),
(173, 'New Caledonia', 'NC.gif'),
(174, 'New Zealand', 'NZ.gif'),
(175, 'Nicaragua', 'NI.gif'),
(176, 'Niger', 'NE.gif'),
(177, 'Nigeria', 'NG.gif'),
(178, 'Niue', 'NU.gif'),
(179, 'Norfolk Island', 'NF.gif'),
(180, 'Northern Mariana Islands', 'MP.gif'),
(181, 'Norway', 'NO.gif'),
(182, 'Oman', 'OM.gif'),
(183, 'Pakistan', 'PK.gif'),
(184, 'Palau', 'PW.gif'),
(185, 'Palmyra Atoll', 'PAI.gif'),
(186, 'Panama', 'PA.gif'),
(187, 'Papua New Guinea', 'PG.gif'),
(188, 'Paraguay', 'PY.gif'),
(189, 'Peru', 'PE.gif'),
(190, 'Philippines', 'PH.gif'),
(191, 'Pitcairn Islands', 'PN.gif'),
(192, 'Poland', 'PL.gif'),
(193, 'Portugal', 'PT.gif'),
(194, 'Puerto Rico', 'PR.gif'),
(195, 'Qatar', 'QA.gif'),
(196, 'Reunion', 'RE.gif'),
(197, 'Romania', 'RO.gif'),
(198, 'Russia', 'RU.gif'),
(199, 'Rwanda', 'RW.gif'),
(200, 'Saint Helena', 'SH.gif'),
(201, 'Saint Kitts and Nevis', 'KN.gif'),
(202, 'Saint Lucia', 'LC.gif'),
(203, 'Saint Pierre and Miquelon', 'PM.gif'),
(204, 'Saint Vincent and the Grenadines', 'VC.gif'),
(205, 'Samoa', 'WS.gif'),
(206, 'San Marino', 'SM.gif'),
(207, 'Sao Tome and Principe', 'ST.gif'),
(208, 'Saudi Arabia', 'SA.gif'),
(209, 'Senegal', 'SN.gif'),
(210, 'Serbia', 'RS.gif'),
(211, 'Seychelles', 'SC.gif'),
(212, 'Sierra Leone', 'SL.gif'),
(213, 'Singapore', 'SG.gif'),
(214, 'Slovakia', 'SK.gif'),
(215, 'Slovenia', 'SI.gif'),
(216, 'Solomon Islands', 'SB.gif'),
(217, 'Somalia', 'SO.gif'),
(218, 'South Africa', 'ZA.gif'),
(219, 'South Georgia and the South Sandwich Islands', 'GS.gif'),
(220, 'Spain', 'ES.gif'),
(221, 'Sri Lanka', 'LK.gif'),
(222, 'Sudan', 'SD.gif'),
(223, 'Suriname', 'SR.gif'),
(224, 'Svalbard and Jan Mayen', 'SJ.gif'),
(225, 'Swaziland', 'SZ.gif'),
(226, 'Sweden', 'SE.gif'),
(227, 'Switzerland', 'CH.gif'),
(228, 'Syria Arab Republic', 'SY.gif'),
(229, 'Tajikistan', 'TJ.gif'),
(230, 'Tanzania, United Republic of', 'TZ.gif'),
(231, 'Thailand', 'TH.gif'),
(232, 'Togo', 'TG.gif'),
(233, 'Tokelau', 'TK.gif'),
(234, 'Tonga', 'TO.gif'),
(235, 'Trinidad and Tobago', 'TT.gif'),
(236, 'Tromelin Island', 'FR.gif'),
(237, 'Tunisia', 'TN.gif'),
(238, 'Turkey', 'TR.gif'),
(239, 'Turkmenistan', 'TM.gif'),
(240, 'Turks and Caicos Islands', 'TC.gif'),
(241, 'Tuvalu', 'TV.gif'),
(242, 'Uganda', 'UG.gif'),
(243, 'Ukraine', 'UA.gif'),
(244, 'United Arab Emirates', 'AE.gif'),
(245, 'United Kingdom', 'UK.gif'),
(246, 'United States', 'US.gif'),
(247, 'United States Pacific Island Wildlife Refuges', 'PIWR.gif'),
(248, 'Uruguay', 'UY.gif'),
(249, 'Uzbekistan', 'UZ.gif'),
(250, 'Vanuatu', 'VU.gif'),
(251, 'Venezuela', 'VE.gif'),
(252, 'Vietnam', 'VN.gif'),
(253, 'Virgin Islands, British', 'VG.gif'),
(254, 'Wake Island', 'WK.gif'),
(255, 'Wallis and Futuna', 'WF.gif'),
(256, 'Yemen', 'YE.gif'),
(257, 'Zambia', 'ZM.gif'),
(258, 'Zimbabwe', 'ZW.gif'),
(259, 'Taiwan', 'TW.gif'),
(260, 'European Union', 'XD.gif'),
(261, 'Virgin Islands, US', 'VI.gif'),
(262, 'Pirate', 'PIR.gif'),
(263, 'Checker', 'CKR.gif'),
(264, 'Disqualified', 'DIS.gif');

DROP TABLE IF EXISTS `nuke_bbgroups`;
CREATE TABLE IF NOT EXISTS `nuke_bbgroups` (
  `group_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_name` varchar(40) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `group_moderator` mediumint(8) NOT NULL DEFAULT '0',
  `group_single_user` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `group_single_user` (`group_single_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `nuke_bbgroups` (`group_id`, `group_type`, `group_name`, `group_description`, `group_moderator`, `group_single_user`, `user_id`) VALUES
(1, 1, 'Anonymous', 'Personal User', 0, 1, NULL),
(2, 2, 'Moderators', 'Moderators of this Forum', 2, 0, NULL),
(3, 0, 'Guest', 'DEFAULT users group', 2, 0, NULL),
(4, 1, '', 'Personal User', 2, 1, '1'),
(5, 1, '', 'Personal User', 2, 1, '2');

DROP TABLE IF EXISTS `nuke_fga_config`;
CREATE TABLE IF NOT EXISTS `nuke_fga_config` (
  `glance_news_forum_id` varchar(255) NOT NULL,
  `glance_num_news` varchar(255) NOT NULL,
  `glance_num_recent` varchar(255) NOT NULL,
  `glance_recent_ignore` varchar(255) NOT NULL,
  `glance_news_heading` varchar(255) NOT NULL,
  `glance_recent_heading` varchar(255) NOT NULL,
  `glance_show_new_bullets` varchar(10) NOT NULL,
  `glance_track` varchar(255) NOT NULL,
  `glance_auth_read` varchar(255) NOT NULL,
  `glance_topic_length` varchar(255) NOT NULL,
  `glance_direct_latest` varchar(255) NOT NULL,
  `glance_version` varchar(255) NOT NULL,
  PRIMARY KEY (`glance_news_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_fga_config` (`glance_news_forum_id`, `glance_num_news`, `glance_num_recent`, `glance_recent_ignore`, `glance_news_heading`, `glance_recent_heading`, `glance_show_new_bullets`, `glance_track`, `glance_auth_read`, `glance_topic_length`, `glance_direct_latest`, `glance_version`) VALUES
('3', '5', '5', '3', 'Latest Site News', 'Recent Topics', 'true', 'true', 'false', '0', '0', '1.0.0');

DROP TABLE IF EXISTS `nuke_bblogs`;
CREATE TABLE IF NOT EXISTS `nuke_bblogs` (
  `id_log` mediumint(10) NOT NULL AUTO_INCREMENT,
  `mode` varchar(50) DEFAULT NULL,
  `topic_id` mediumint(10) DEFAULT '0',
  `user_id` mediumint(8) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `user_ip` varchar(8) NOT NULL DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_bblogs_config`;
CREATE TABLE IF NOT EXISTS `nuke_bblogs_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_bblogs_config` (`config_name`, `config_value`) VALUES
('all_admin', '1');

DROP TABLE IF EXISTS `nuke_platinum_technology`;
CREATE TABLE IF NOT EXISTS `nuke_platinum_technology` (
  `name` varchar(20) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_platinum_technology` (`name`, `value`) VALUES
('versioncheck', 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPV1.0.1</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke</a></strong><br>'),
('lastupdatecheck', '1116781443');

DROP TABLE IF EXISTS `nuke_shopitems`;
CREATE TABLE IF NOT EXISTS `nuke_shopitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `shop` varchar(32) NOT NULL,
  `sdesc` varchar(80) NOT NULL,
  `ldesc` text NOT NULL,
  `cost` int(20) unsigned DEFAULT '100',
  `stock` tinyint(3) unsigned DEFAULT '10',
  `maxstock` tinyint(3) unsigned DEFAULT '100',
  `sold` int(5) unsigned NOT NULL DEFAULT '0',
  `accessforum` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_shops`;
CREATE TABLE IF NOT EXISTS `nuke_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shopname` char(32) NOT NULL,
  `shoptype` char(32) NOT NULL,
  `type` char(32) NOT NULL,
  `restocktime` int(20) unsigned DEFAULT '86400',
  `restockedtime` int(20) unsigned DEFAULT '0',
  `restockamount` int(4) unsigned DEFAULT '5',
  `amountearnt` int(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shopname` (`shopname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `nuke_shops` (`id`, `shopname`, `shoptype`, `type`, `restocktime`, `restockedtime`, `restockamount`, `amountearnt`) VALUES
(1, 'Platinum', 'Test', '', 0, 0, 0, 0);

DROP TABLE IF EXISTS `nuke_nsnsp_2_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnsp_2_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_nsnsp_2_config` (`config_name`, `config_value`) VALUES
('require_user', '1'),
('image_type', '1'),
('max_width', '88'),
('max_height', '31'),
('version_number', '2.0');

DROP TABLE IF EXISTS `nuke_nsnsp_2_sites`;
CREATE TABLE IF NOT EXISTS `nuke_nsnsp_2_sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(60) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `site_image` varchar(255) NOT NULL,
  `site_status` int(1) NOT NULL DEFAULT '0',
  `site_hits` int(10) NOT NULL DEFAULT '0',
  `site_date` date NOT NULL DEFAULT '0000-00-00',
  `site_description` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `nuke_nsnsp_2_sites` (`site_id`, `site_name`, `site_url`, `site_image`, `site_status`, `site_hits`, `site_date`, `site_description`, `user_id`, `user_name`, `user_email`, `user_ip`) VALUES
(1, 'Platinum Nuke', 'http://platinumnukepro.com', 'modules/Supporters_2/images/Supporters_2/000001.gif', 1, 9, '2006-08-21', 'Home of Platinum Nuke!', 0, 'Admin', 'webmaster@platinumnukepro.com', ''),
(2, 'Mach-Hosting', 'http://nach-hosting.com', 'modules/Supporters_2/images/banners/machhosting.png', 1, 11, '2006-08-21', 'Web hosting, installs, and teamspeak servers.', 156, 'sales', 'sales@mach-hosting.com', ''),
(3, 'HaVoc SoulTaker', 'http://www.havocst.net', 'http://www.havocst.net/images/hst_bbw_linkus150.jpg', 1, 30, '2011-01-22', 'clan gaming ', 10, 'dochavoc', 'dochavoc@havocst.net', '74.129.33.93'),
(4, 'Mach-hosting.com', 'http://mach-network.com/partners/index.php?linkoutid=1280163765', 'http://mach-hosting.com/themes/RD-WebHost/images/hd/logo.png', 1, 0, '2011-10-16', 'Free and paid-for web hosting and email services. Site installs and repairs, forums and blogs, etc.', 0, 'TGates', 'tgates@mach-hosting.com', '71.233.168.221');

DROP TABLE IF EXISTS `nuke_bbreport`;
CREATE TABLE IF NOT EXISTS `nuke_bbreport` (
  `report_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cat_id` mediumint(8) NOT NULL DEFAULT '0',
  `report_status` tinyint(1) NOT NULL DEFAULT '0',
  `report_date` int(11) NOT NULL DEFAULT '0',
  `report_user_id` mediumint(8) NOT NULL DEFAULT '0',
  `report_update_user` mediumint(8) DEFAULT NULL,
  `report_update_time` int(11) DEFAULT NULL,
  `report_info` varchar(100) NOT NULL,
  `report_text` text NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `cat_id` (`cat_id`),
  KEY `report_update_user` (`report_update_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_bbreport_cat`;
CREATE TABLE IF NOT EXISTS `nuke_bbreport_cat` (
  `cat_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_type` tinyint(1) NOT NULL DEFAULT '0',
  `cat_auth` tinyint(1) NOT NULL DEFAULT '0',
  `cat_explain` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `nuke_bbreport_cat` (`cat_id`, `cat_name`, `cat_type`, `cat_auth`, `cat_explain`) VALUES
(1, 'Report Post', 1, 0, ''),
(2, 'Report Topic', 1, 0, ''),
(3, 'Report User', 1, 0, ''),
(4, 'Test Category', 0, 0, 'This is a test of the category creation.');

DROP TABLE IF EXISTS `nuke_bbforums_watch`;
CREATE TABLE IF NOT EXISTS `nuke_bbforums_watch` (
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_users_config`;
CREATE TABLE `nuke_users_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM;

INSERT INTO `nuke_users_config` VALUES('allowmailchange', '0');
INSERT INTO `nuke_users_config` VALUES('allowuserdelete', '0');
INSERT INTO `nuke_users_config` VALUES('allowuserreg', '1');
INSERT INTO `nuke_users_config` VALUES('allowusertheme', '1');
INSERT INTO `nuke_users_config` VALUES('autosuspend', '0');
INSERT INTO `nuke_users_config` VALUES('autosuspendmain', '0');
INSERT INTO `nuke_users_config` VALUES('bad_mail', 'mail.ru\r\nmysite.com\r\nyoursite.com');
INSERT INTO `nuke_users_config` VALUES('bad_nick', 'adm\r\nadmin\r\nan=nimo\r\nanonimo\r\nanonymous\r\ngod\r\nlinux\r\nnobody\r\noperator\r\nroot\r\nstaff\r\nwebmaster');
INSERT INTO `nuke_users_config` VALUES('codesize', '0');
INSERT INTO `nuke_users_config` VALUES('cookiecheck', '0');
INSERT INTO `nuke_users_config` VALUES('cookiecleaner', '1');
INSERT INTO `nuke_users_config` VALUES('cookieinactivity', '-');
INSERT INTO `nuke_users_config` VALUES('cookiepath', '');
INSERT INTO `nuke_users_config` VALUES('cookietimelife', '2592000');
INSERT INTO `nuke_users_config` VALUES('coppa', '0');
INSERT INTO `nuke_users_config` VALUES('doublecheckemail', '1');
INSERT INTO `nuke_users_config` VALUES('emailvalidate', '1');
INSERT INTO `nuke_users_config` VALUES('expiring', '86400');
INSERT INTO `nuke_users_config` VALUES('legal_did_TOS', '3');
INSERT INTO `nuke_users_config` VALUES('nick_max', '25');
INSERT INTO `nuke_users_config` VALUES('nick_min', '4');
INSERT INTO `nuke_users_config` VALUES('pass_max', '20');
INSERT INTO `nuke_users_config` VALUES('pass_min', '4');
INSERT INTO `nuke_users_config` VALUES('perpage', '100');
INSERT INTO `nuke_users_config` VALUES('requireadmin', '0');
INSERT INTO `nuke_users_config` VALUES('sendaddmail', '0');
INSERT INTO `nuke_users_config` VALUES('senddeletemail', '0');
INSERT INTO `nuke_users_config` VALUES('servermail', '1');
INSERT INTO `nuke_users_config` VALUES('tos', '0');
INSERT INTO `nuke_users_config` VALUES('tosall', '1');
INSERT INTO `nuke_users_config` VALUES('useactivate', '1');
INSERT INTO `nuke_users_config` VALUES('useasreguser', '1');
INSERT INTO `nuke_users_config` VALUES('usebirthdate', '0');
INSERT INTO `nuke_users_config` VALUES('useextrainfo', '1');
INSERT INTO `nuke_users_config` VALUES('usefakeemail', '1');
INSERT INTO `nuke_users_config` VALUES('useforumnotifyoptions', '1');
INSERT INTO `nuke_users_config` VALUES('usegender', '0');
INSERT INTO `nuke_users_config` VALUES('usegfxcheck', '0');
INSERT INTO `nuke_users_config` VALUES('usehideonline', '1');
INSERT INTO `nuke_users_config` VALUES('useinstantmessaim', '1');
INSERT INTO `nuke_users_config` VALUES('useinstantmessicq', '1');
INSERT INTO `nuke_users_config` VALUES('useinstantmessmsn', '1');
INSERT INTO `nuke_users_config` VALUES('useinstantmessyim', '1');
INSERT INTO `nuke_users_config` VALUES('useinterests', '1');
INSERT INTO `nuke_users_config` VALUES('uselocation', '1');
INSERT INTO `nuke_users_config` VALUES('usenewsletter', '1');
INSERT INTO `nuke_users_config` VALUES('useoccupation', '1');
INSERT INTO `nuke_users_config` VALUES('usepoints', '1');
INSERT INTO `nuke_users_config` VALUES('userealname', '3');
INSERT INTO `nuke_users_config` VALUES('usesignature', '1');
INSERT INTO `nuke_users_config` VALUES('useviewemail', '1');
INSERT INTO `nuke_users_config` VALUES('usewebsite', '1');
INSERT INTO `nuke_users_config` VALUES('version', '5.0.0');

DROP TABLE IF EXISTS `nuke_blocks`;
CREATE TABLE IF NOT EXISTS `nuke_blocks` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bkey` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `bposition` char(1) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '1',
  `refresh` int(10) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `blanguage` varchar(30) NOT NULL,
  `blockfile` varchar(255) NOT NULL,
  `view` int(1) NOT NULL DEFAULT '0',
  `groups` text NOT NULL,
  `expire` varchar(14) NOT NULL DEFAULT '0',
  `action` char(1) NOT NULL,
  `subscription` int(1) NOT NULL DEFAULT '0',
  `display` varchar(255) NOT NULL DEFAULT 'All',
  PRIMARY KEY (`bid`),
  KEY `bid` (`bid`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

INSERT INTO `nuke_blocks` (`bid`, `bkey`, `title`, `content`, `url`, `bposition`, `weight`, `active`, `refresh`, `time`, `blanguage`, `blockfile`, `view`, `groups`, `expire`, `action`, `subscription`, `display`) VALUES
(2, '', 'Support Platinum', '', '', 'r', 1, 1, 1800, '', '', 'block-Platinum_Support.php', 0, '', '0', 'd', 0, 'All'),
(3, '', 'Shout Box', '', '', 'l', 3, 1, 3600, '', 'english', 'block-Shout_Box.php', 0, '', '0', 'd', 0, 'All'),
(4, '', 'Platinum Nuke Pro v1 Installed!', '', '', 'c', 1, 1, 0, '', '', 'block-Install.php', 0, '', '0', 'd', 0, 'All'),
(5, '', 'Forum Recent Posts', '', '', 'c', 2, 1, 0, '', 'english', 'block-ForumsCollapsing.php', 0, '', '0', 'd', 0, 'All'),
(6, 'userbox', 'User''s Custom Box', '', '', 'r', 2, 1, 0, '', '', '', 1, '', '0', 'd', 0, 'All'),
(7, '', 'Visitor''s Location', '', '', 'r', 4, 1, 1800, '', 'english', 'block-Who-is-Where.php', 1, '', '0', 'd', 0, 'All'),
(8, '', 'Hacker Beware', '', '', 'd', 1, 1, 3600, '', 'english', 'block-Hacker_Beware.php', 0, '', '0', 'd', 0, 'All'),
(9, '', 'Tutorials', '', '', 'l', 5, 1, 3600, '', '', 'block-SimpleTutorials.php', 0, '', '0', 'd', 0, 'All'),
(11, '', 'Link Us', '', '', 'r', 5, 1, 3600, '', 'english', 'block-Link-us.php', 0, '', '0', 'd', 0, 'All'),
(22, '', 'Advanced PNPro Administration', '', '', 'l', 1, 1, 3600, '', 'english', 'block-Advanced_PNPro_Administration.php', 0, '', '0', 'd', 0, 'All'),
(14, '', 'Navigation', '', '', 'l', 4, 1, 3600, '', 'english', 'block-Navigation.php', 0, '', '0', 'd', 0, 'All'),
(15, '', 'Tag Cloud', '', '', 'r', 6, 1, 3600, '', 'english', 'block-Tag_Cloud.php', 0, '', '0', 'd', 0, 'All'),
(16, '', 'Tag This', '', '', 'c', 3, 1, 3600, '', 'english', 'block-Tag_This.php', 0, '', '0', 'd', 0, 'All'),
(19, '', 'Supporters 2 Dn', '', '', 'r', 7, 1, 3600, '', 'english', 'block-Supporters_2_Dn.php', 0, '', '0', 'd', 0, 'All'),
(20, '', 'DFWSiteInfo', '', '', 'r', 3, 1, 3600, '', 'english', 'block-DFWSiteInfo.php', 0, '', '0', 'd', 0, 'All'),
(21, '', 'JQMenu', '', '', 'l', 2, 1, 3600, '', 'english', 'block-JQMenu.php', 0, '', '0', 'd', 0, 'All');

DROP TABLE IF EXISTS `nuke_credits`;
CREATE TABLE IF NOT EXISTS `nuke_credits` (
  `credit_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_name` varchar(60) DEFAULT NULL,
  `credit_author` varchar(20) DEFAULT NULL,
  `credit_link` varchar(30) DEFAULT NULL,
  `credit_description` text,
  PRIMARY KEY (`credit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nuke_credits`
--

INSERT INTO `nuke_credits` (`credit_id`, `credit_name`, `credit_author`, `credit_link`, `credit_description`) VALUES
(1, 'Original Platinum 7.6 Core', 'TechGFX-Graeme Allen', 'No Longer Available', 'The PHP-Nuke Platinum project is a package of PHP-Nuke default  with over 100 preinstalled mods and security fixes all in one  free package.'),
(2, 'Platinum 7.6.b +', 'Loki-Scott Partee', 'http://www.futurenuke.com', 'Heavily updated version of Platinum with added security and  several updated Mods.'),
(3, 'Beta Testers', 'SgtMudd', 'http://www.platinumnukepro.com', 'Thanks to our group of beta testers, TexasDad-55, nextgen and ttruan for playing with the new code and posting all the bugs.'),
(4, 'New Security Code', 'Raven & Technocrat.', 'http://ravenphpscripts.com/', 'Thanks to Raven and Technocrat for creating a new security code system that actually works on newer version of PHP .  '),
(5, 'Snavi & More', 'SgtMudd', 'http://www.platinumnukepro.com', 'Snavi & More Thanks to Killigan for his porting of Site Navigation Bar, Advanced Admin block and Theme Console to PlatinumNuke and other work during the Platinum Nuke 7.6.v502 development.'),
(6, 'Platinum 76b5', 'SgtMudd', 'http://www.platinumnukepro.com', 'I want to thank all the coders and support from the previous Nuke Platinum team. Thank you Killigan, Gazzasan, Lonestar, F13Eagle, R3viv0r, sdmeir, djantty, jtf, Keith, S4pp3r, Dauthus, SnowSFO, Bayler and Bort. '),
(7, 'Platinum Nuke 7.6.Pro.v1', 'SgtMudd', 'http://www.platinumnukepro.com', 'Completely revised version of PlatinumNuke76v502.\r\nPHP 5.3+ Compatable. Many module and block updates, security and bug fixes.<br/>\r\nSpecial thanks go out to DocHavoc for all his work on the project.<br/>Thanks to nextgen for his extensive work on the documentation and work on new themes.<br/>Special shout out to Nuken for all his input and help!<br/>And of course Pedro for keeping our sites and other server-side stuff up and running!');

DROP TABLE IF EXISTS `nuke_bbcash`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash` (
  `cash_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cash_order` smallint(6) NOT NULL DEFAULT '0',
  `cash_settings` smallint(4) NOT NULL DEFAULT '3313',
  `cash_dbfield` varchar(64) NOT NULL DEFAULT 'user_cash',
  `cash_name` varchar(64) NOT NULL DEFAULT 'cash',
  `cash_default` int(11) NOT NULL DEFAULT '0',
  `cash_decimals` tinyint(2) NOT NULL DEFAULT '0',
  `cash_imageurl` varchar(255) NOT NULL,
  `cash_exchange` int(11) NOT NULL DEFAULT '1',
  `cash_perpost` int(11) NOT NULL DEFAULT '25',
  `cash_postbonus` int(11) NOT NULL DEFAULT '2',
  `cash_perreply` int(11) NOT NULL DEFAULT '25',
  `cash_maxearn` int(11) NOT NULL DEFAULT '75',
  `cash_perpm` int(11) NOT NULL DEFAULT '0',
  `cash_perchar` int(11) NOT NULL DEFAULT '20',
  `cash_allowance` tinyint(1) NOT NULL DEFAULT '0',
  `cash_allowanceamount` int(11) NOT NULL DEFAULT '0',
  `cash_allowancetime` tinyint(2) NOT NULL DEFAULT '2',
  `cash_allowancenext` int(11) NOT NULL DEFAULT '0',
  `cash_forumlist` varchar(255) NOT NULL,
  PRIMARY KEY (`cash_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `nuke_bbcash` (`cash_id`, `cash_order`, `cash_settings`, `cash_dbfield`, `cash_name`, `cash_default`, `cash_decimals`, `cash_imageurl`, `cash_exchange`, `cash_perpost`, `cash_postbonus`, `cash_perreply`, `cash_maxearn`, `cash_perpm`, `cash_perchar`, `cash_allowance`, `cash_allowanceamount`, `cash_allowancetime`, `cash_allowancenext`, `cash_forumlist`) VALUES
(6, 1, 3569, 'user_cash', 'PlatinumBux', 0, 2, '', 1, 25, 0, 25, 7500, 0, 0, 0, 0, 2, 0, '');

DROP TABLE IF EXISTS `nuke_bbcash_events`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_events` (
  `event_name` varchar(32) NOT NULL,
  `event_data` varchar(255) NOT NULL,
  PRIMARY KEY (`event_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_bbcash_exchange`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_exchange` (
  `ex_cash_id1` int(11) NOT NULL DEFAULT '0',
  `ex_cash_id2` int(11) NOT NULL DEFAULT '0',
  `ex_cash_enabled` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ex_cash_id1`,`ex_cash_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_bbcash_groups`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_groups` (
  `group_id` mediumint(6) NOT NULL DEFAULT '0',
  `group_type` tinyint(2) NOT NULL DEFAULT '0',
  `cash_id` smallint(6) NOT NULL DEFAULT '0',
  `cash_perpost` int(11) NOT NULL DEFAULT '0',
  `cash_postbonus` int(11) NOT NULL DEFAULT '0',
  `cash_perreply` int(11) NOT NULL DEFAULT '0',
  `cash_perchar` int(11) NOT NULL DEFAULT '0',
  `cash_maxearn` int(11) NOT NULL DEFAULT '0',
  `cash_perpm` int(11) NOT NULL DEFAULT '0',
  `cash_allowance` tinyint(1) NOT NULL DEFAULT '0',
  `cash_allowanceamount` int(11) NOT NULL DEFAULT '0',
  `cash_allowancetime` tinyint(2) NOT NULL DEFAULT '2',
  `cash_allowancenext` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`group_type`,`cash_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nuke_bbcash_log`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_time` int(11) NOT NULL DEFAULT '0',
  `log_type` smallint(6) NOT NULL DEFAULT '0',
  `log_action` varchar(255) NOT NULL,
  `log_text` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_bbbuddies`;
CREATE TABLE IF NOT EXISTS `nuke_bbbuddies` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `buddy_id` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `name` varchar(25) NOT NULL DEFAULT '',
  `subtype` varchar(20) NOT NULL DEFAULT '',
  `value` varchar(200) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `config` (`name`, `subtype`, `value`, `text`) VALUES
('receiver_email', '', 'donations@mysite.com', '!!!!!!VERY IMPORTANT!!!!!!!\r\nThis is the email address registered\r\nin your PayPal account that you receive\r\nmoney on.  NOTE: Create an email address\r\nspecifically and only for receiving\r\ndonations, i.e. donations@yoursite.com.\r\nThe Donatometer will list any payments\r\nto the email you list here, whether they\r\ncome from this module or not.\r\n'),
('goal', 'Jan', '100', 'Enter the dollar amounts for each month''s\r\ndonation goal.'),
('goal', 'Feb', '100', ''),
('goal', 'Mar', '100', ''),
('goal', 'Apr', '100', ''),
('goal', 'May', '100', ''),
('goal', 'Jun', '100', ''),
('goal', 'Jul', '100', ''),
('goal', 'Aug', '100', ''),
('goal', 'Sep', '100', ''),
('goal', 'Oct', '100', ''),
('goal', 'Nov', '100', ''),
('goal', 'Dec', '100', ''),
('swing_day', '', '6', 'The Swing Day determines when the\r\nDonatometer will switch to show the\r\nnext month.  The previous month''s\r\nstats will no longer be displayed.'),
('dm_title', '', '<strong>HELP KEEP OUR SERVERS ONLINE!</strong>', 'Enter a customized title for your\r\nDonatometer.  NOTE: This is not the\r\nNuke Block title.  You can change that\r\nin the Nuke Blocks Admin.'),
('ty_url', '', '', 'You can enter a URL here for a web page\r\nthat users will be taken to when they\r\ncomplete a donation.  This is useful for\r\ntaking the user back to your site and\r\ndisplaying a "Thank You".  NOTE: PayPal\r\nwill use this link for cancelled payments\r\nas well. If you use the feature, also\r\ncreate a second web page with appropriate\r\ntext for a cancelled payment.  TIP: Use\r\nNukeWrap to bring your users back into the\r\nNuke site.'),
('pp_itemname', '', 'Donation', 'Enter the IPN item name used for your\r\ndonations. This feature is currently\r\nnot used.'),
('dm_num_don', '', '10', 'Enter the number of donators that\r\nshould be listed in the Donatometer.\r\n-1 = Don''t list any\r\n 0 = Unlimited\r\n # = The max number to list\r\nDonators are always listed from newest\r\nto oldest from the top down.\r\n'),
('dm_show_amt', '', '1', 'Should the Donatometer display the\r\nAmount of each donation?'),
('dm_show_date', '', '1', 'Should the Donatometer display the\r\ndate that each donation was made?'),
('dm_button', '', 'https://www.paypal.com/en_US/i/btn/x-click-but21.gif', 'Enter a complete URL for the image used\r\nin the Donatometer block'),
('don_button_submit', '', 'https://www.paypal.com/en_US/i/btn/x-click-but04.gif', 'Enter a complete URL for the image to use\r\nfor at the bottom of the Donations module\r\nto submit a donation.'),
('don_button_top', '', 'https://www.paypal.com/en_US/i/btn/x-click-but21.gif', 'Enter a complete URL for the image to use\r\nfor at the top of the Donations module.'),
('pp_image_url', '', '', 'You can have a custom image displayed at\r\nthe top of the PayPal screen when your\r\nusers are donating.  Enter the URL for\r\nthe image to display here.  NOTE: You\r\nshould not enter a non HTTPS:// URL. If\r\nyou enter a URL from a non-secure server\r\nyour users will continually be warned that\r\nthey are about to display secure and\r\nnon-secure information.'),
('pp_cancel_url', '', '', 'Enter a URL here for a web page that users\r\nwill be taken to when they cancel their\r\npayment.  You should use this feature if\r\nyou have filled in a "Thank You" URL.\r\nTIP: Use NukeWrap to bring your users back\r\ninto the Nuke site.'),
('pp_get_addr', '', '0', 'Would you like PayPal to gather the user''s\r\nshipping address?  Users can opt out of\r\nthis.  This could be useful if you wanted\r\nto send them holiday cards or something.'),
('don_amount', '1', '5', 'The Donations module provides a list\r\nof suggested donations amounts.  You\r\ncan customize this list below.  '),
('don_amount', '2', '10', ''),
('don_amount', '3', '15', ''),
('don_amount', '5', '25', ''),
('don_amount', '4', '20', ''),
('don_amount', '6', '30', ''),
('don_amount', '8', '35', ''),
('don_amt_checked', '', '1', 'The Donations module provides a list\r\nof suggested donations amounts.  You\r\ncan customize this list below.  In this\r\nbox, specify which of the amounts listed\r\nbelow should be checked by default.'),
('pp_item_num', '', '110', 'Enter the IPN item number used for your\r\ndonations. This feature is currently\r\nnot used.'),
('dm_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.'),
('dm_img_height', '', '', ''),
('don_top_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.'),
('don_top_img_height', '', '', ''),
('don_sub_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.'),
('don_sub_img_height', '', '', ''),
('don_text', 'rawtext', '0', 'We are a non-profit organization completely supported by you, the members.  Many organizations have web sites, servers and Internet bandwidth donated by it''s members.  We pride ourselves on being run and owned as a community, and not by a few power-hungry members.  This means that we need you to be a part of that community.  We encourage every member to contribute to the community in any way that they can.  Since we do not have our servers or bandwidth donated, we have pay our bills every month to keep things going.  For those of you who can, we ask that you make a monetary contribution in whatever denomination you''d like.  Every little bit counts.<br>'),
('don_show_amt', '', '1', 'Should the Donations module reveal the\r\namount of each donation?'),
('don_show_date', '', '1', 'Should the Donations module reveal the\r\ndate of each donation?'),
('don_name_prompt', '', 'Do you want your username revealed with your donation?', 'Enter the text for the prompt asking a\r\nuser if they want their name revealed.'),
('don_name_yes', '', 'Yes! - Tell the world I gave my hard-earned cash!', 'Enter the text for a "YES" selection'),
('don_name_no', '', 'No - List my donation as Anonymous', 'Enter the text for a "NO" selection'),
('ipn_dbg_lvl', '', '2', 'There is an IPN logging feature which has\r\nthree log levels:\r\n1) OFF\r\n2) Log only Errors\r\n3) Log everything\r\nThis log is stored in the "translog" table.'),
('ipn_log_entries', '', '20', '\r\nEnter the maximum number of log entries to\r\nkeep in the log table.');

DROP TABLE IF EXISTS `financial`;
CREATE TABLE IF NOT EXISTS `financial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `descr` varchar(128) NOT NULL DEFAULT '',
  `amount` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `business` varchar(50) NOT NULL DEFAULT '',
  `txn_id` varchar(20) NOT NULL DEFAULT '',
  `item_name` varchar(60) NOT NULL DEFAULT '',
  `item_number` varchar(40) NOT NULL DEFAULT '',
  `quantity` varchar(6) NOT NULL DEFAULT '',
  `invoice` varchar(40) NOT NULL DEFAULT '',
  `custom` varchar(127) NOT NULL DEFAULT '',
  `tax` varchar(10) NOT NULL DEFAULT '',
  `option_name1` varchar(60) NOT NULL DEFAULT '',
  `option_selection1` varchar(127) NOT NULL DEFAULT '',
  `option_name2` varchar(60) NOT NULL DEFAULT '',
  `option_selection2` varchar(127) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_type` varchar(15) NOT NULL DEFAULT '',
  `mc_gross` varchar(10) NOT NULL DEFAULT '',
  `mc_fee` varchar(10) NOT NULL DEFAULT '',
  `mc_currency` varchar(5) NOT NULL DEFAULT '',
  `settle_amount` varchar(12) NOT NULL DEFAULT '',
  `exchange_rate` varchar(10) NOT NULL DEFAULT '',
  `first_name` varchar(127) NOT NULL DEFAULT '',
  `last_name` varchar(127) NOT NULL DEFAULT '',
  `address_street` varchar(127) NOT NULL DEFAULT '',
  `address_city` varchar(127) NOT NULL DEFAULT '',
  `address_state` varchar(127) NOT NULL DEFAULT '',
  `address_zip` varchar(20) NOT NULL DEFAULT '',
  `address_country` varchar(127) NOT NULL DEFAULT '',
  `address_status` varchar(15) NOT NULL DEFAULT '',
  `payer_email` varchar(127) NOT NULL DEFAULT '',
  `payer_status` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `translog`;
CREATE TABLE IF NOT EXISTS `translog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logentry` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_sommaire`;
CREATE TABLE IF NOT EXISTS `nuke_sommaire` (
  `groupmenu` int(2) NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(99) DEFAULT NULL,
  `lien` text,
  `hr` char(2) DEFAULT NULL,
  `center` char(2) DEFAULT NULL,
  `bgcolor` tinytext,
  `invisible` int(1) DEFAULT NULL,
  `class` tinytext,
  `bold` char(2) DEFAULT NULL,
  `new` char(2) DEFAULT NULL,
  `listbox` char(2) DEFAULT NULL,
  `dynamic` char(2) DEFAULT NULL,
  `date_debut` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_fin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `days` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`groupmenu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_sommaire` (`groupmenu`, `name`, `image`, `lien`, `hr`, `center`, `bgcolor`, `invisible`, `class`, `bold`, `new`, `listbox`, `dynamic`, `date_debut`, `date_fin`, `days`) VALUES
(0, 'Home', 'icon_home.gif', 'index.php', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(1, 'General', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(2, 'Community', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(3, 'Content', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(4, 'Information', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(5, 'Tools', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(6, 'Resources', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(99, '', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'on', 0, 0, NULL);

DROP TABLE IF EXISTS `nuke_sommaire_categories`;
CREATE TABLE IF NOT EXISTS `nuke_sommaire_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupmenu` int(2) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `url_text` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `new` char(2) DEFAULT NULL,
  `new_days` tinyint(4) NOT NULL DEFAULT '-1',
  `class` varchar(20) DEFAULT NULL,
  `bold` char(2) DEFAULT NULL,
  `sublevel` tinyint(3) NOT NULL DEFAULT '0',
  `date_debut` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_fin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `days` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nuke_about_us`;
CREATE TABLE IF NOT EXISTS `nuke_about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `nuke_about_us` (`id`, `about_data`) VALUES
(1, '<p>\r\n	Some Info about your site.</p>\r\n');

DROP TABLE IF EXISTS `nuke_fga_config`;
CREATE TABLE IF NOT EXISTS `nuke_fga_config` (
  `glance_enable` varchar(1) NOT NULL,
  `glance_news_forum_id` varchar(255) NOT NULL,
  `glance_num_news` varchar(255) NOT NULL,
  `glance_num_recent` varchar(255) NOT NULL,
  `glance_recent_ignore` varchar(255) NOT NULL,
  `glance_news_heading` varchar(255) NOT NULL,
  `glance_recent_heading` varchar(255) NOT NULL,
  `glance_show_new_bullets` varchar(10) NOT NULL,
  `glance_track` varchar(255) NOT NULL,
  `glance_auth_read` varchar(255) NOT NULL,
  `glance_topic_length` varchar(255) NOT NULL,
  `glance_direct_latest` varchar(255) NOT NULL,
  `glance_version` varchar(255) NOT NULL,
  PRIMARY KEY (`glance_news_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nuke_fga_config` (`glance_enable`, `glance_news_forum_id`, `glance_num_news`, `glance_num_recent`, `glance_recent_ignore`, `glance_news_heading`, `glance_recent_heading`, `glance_show_new_bullets`, `glance_track`, `glance_auth_read`, `glance_topic_length`, `glance_direct_latest`, `glance_version`) VALUES
('1', '3', '5', '5', '3', 'Latest Site News', 'Recent Topics', 'true', 'true', 'false', '0', '0', '1.1');

CREATE TABLE IF NOT EXISTS `nuke_honeypot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `realname` varchar(75) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(60) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `potnum` varchar(1) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;
