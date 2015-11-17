-- Platinum Nuke 7.6.v502 - 7.6.PNPV1.0.1 Upgrade SQL File
-- --------------------------------------------------------

--
-- Remove FUSION tables
--

DROP TABLE IF EXISTS `nuke_blocked`;
DROP TABLE IF EXISTS `nuke_blocked_agent`;
DROP TABLE IF EXISTS `nuke_blocked_config`;
DROP TABLE IF EXISTS `nuke_blocked_denymod`;
DROP TABLE IF EXISTS `nuke_blocked_files`;
DROP TABLE IF EXISTS `nuke_blocked_free`;
DROP TABLE IF EXISTS `nuke_blocked_hammer`;
DROP TABLE IF EXISTS `nuke_blocked_help`;
DROP TABLE IF EXISTS `nuke_blocked_iplist`;
DROP TABLE IF EXISTS `nuke_blocked_iptoc`;
DROP TABLE IF EXISTS `nuke_blocked_isp`;
DROP TABLE IF EXISTS `nuke_blocked_isp_ban`;
DROP TABLE IF EXISTS `nuke_blocked_notes`;
DROP TABLE IF EXISTS `nuke_blocked_pagetracker`;
DROP TABLE IF EXISTS `nuke_blocked_promod`;
DROP TABLE IF EXISTS `nuke_blocked_promodip`;
DROP TABLE IF EXISTS `nuke_blocked_protected`;
DROP TABLE IF EXISTS `nuke_blocked_ref`;
DROP TABLE IF EXISTS `nuke_blocked_reflist`;
DROP TABLE IF EXISTS `nuke_blocked_robot`;
DROP TABLE IF EXISTS `nuke_blocked_settings`;
DROP TABLE IF EXISTS `nuke_blocked_ums`;
DROP TABLE IF EXISTS `nuke_blocked_ums_page`;

-- --------------------------------------------------------

--
-- Remove CNBYA tables
--

DROP TABLE IF EXISTS `nuke_cnbya_config`, `nuke_cnbya_field`, `nuke_cnbya_tos`, `nuke_cnbya_value`, `nuke_cnbya_value_temp`;

--
-- PNPv1 Config update
--

UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPV1.0.1 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.PNPV1.0.1';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1</strong></font></a><br>';
UPDATE `nuke_config` SET `Default_Theme` = 'PNP_WB';
UPDATE `nuke_config` SET `foot3` = '<p style="text-align: center;">\r\n	<span style="font-size:10px;"><font class="footmsg">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />All the rest &copy; 2013 by this site.<br />\r\n	PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="&quot;footmsg_l&quot;">GPL</font></a>.</font></span></p>\r\n<p style="text-align: center;">\r\n	<font class="footmsg"><span style="font-size:10px;">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="width: 80px; height: 15px;" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="width: 80px; height: 15px;" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="width: 80px; height: 15px;" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="width: 80px; height: 15px;" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" border="0" height="15" src="http://tool.motoricerca.info/pic/valid-robots-small.png" width="80" /></a><br />\r\n	Site Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1&nbsp;</strong></font></a><font class="footmsg"> and is maintained by the Platinum Pro Team.</font></span></font></p>\r\n';

-- --------------------------------------------------------

--
-- Table structure for table `nuke_platinum_technology`
--

UPDATE `nuke_platinum_technology` SET `value` = 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPV1.0.1</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke Pro</a></strong><br>'  LIMIT 1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattributes`
--

DROP TABLE IF EXISTS `nuke_bbattributes`;
CREATE TABLE IF NOT EXISTS `nuke_bbattributes` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_type` smallint(1) NOT NULL DEFAULT '0',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `attribute_image` varchar(255) NOT NULL DEFAULT '',
  `attribute_color` varchar(6) NOT NULL DEFAULT '',
  `attribute_date_format` varchar(25) DEFAULT NULL,
  `attribute_position` tinyint(1) NOT NULL DEFAULT '0',
  `attribute_administrator` tinyint(1) DEFAULT '0',
  `attribute_moderator` tinyint(1) DEFAULT '0',
  `attribute_author` tinyint(1) DEFAULT '0',
  `attribute_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Update/Add Rank Tables/update user tables
--

ALTER TABLE nuke_users ADD user_rank2 INT(11) DEFAULT '-1' AFTER `user_rank` ,
ADD user_rank3 INT(11) DEFAULT '-2',
ADD user_rank4 INT(11) DEFAULT '-2',
ADD user_rank5 INT(11) DEFAULT '-2';

ALTER TABLE `nuke_users` ADD `user_time_mode` TINYINT( 4 ) NOT NULL DEFAULT '6' AFTER `user_rank5` ,
ADD `user_dst_time_lag` TINYINT( 4 ) NOT NULL DEFAULT '60' AFTER `user_time_mode` ,
ADD `user_pc_timeOffsets` VARCHAR( 11 ) NOT NULL DEFAULT '0' AFTER `user_dst_time_lag` ,
ADD `user_quickreply_mode` TINYINT( 1 ) NOT NULL DEFAULT '1' AFTER `user_pc_timeOffsets` ,
ADD `user_open_quickreply` TINYINT( 1 ) NOT NULL DEFAULT '1' AFTER `user_quickreply_mode` ,
ADD `user_avatar_dimensions` varchar(255) DEFAULT NULL AFTER `user_open_quickreply` ,
ADD `user_birthday2` int(8) DEFAULT NULL AFTER `user_avatar_dimensions` ,
ADD `birthday_display` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `user_birthday2` ,
ADD `birthday_greeting` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `birthday_display` ,
ADD `user_topics` MEDIUMINT( 8 ) NOT NULL DEFAULT '0' AFTER `birthday_greeting` ,
ADD `user_regip` CHAR( 8 ) NOT NULL DEFAULT '0' AFTER `user_topics` ,
ADD `lastsitevisit` INT( 11 ) NOT NULL DEFAULT '0' AFTER `user_regip`;

--
-- Table structure for table `nuke_users_config`
--

DROP TABLE IF EXISTS `nuke_users_config`;
CREATE TABLE `nuke_users_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_users_config`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_fields`
--

DROP TABLE IF EXISTS `nuke_users_fields`;
CREATE TABLE `nuke_users_fields` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'field',
  `value` varchar(255) DEFAULT NULL,
  `size` int(3) DEFAULT NULL,
  `need` int(1) NOT NULL DEFAULT '1',
  `pos` int(3) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_users_fields`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_field_values`
--

DROP TABLE IF EXISTS `nuke_users_field_values`;
CREATE TABLE IF NOT EXISTS `nuke_users_field_values` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_users_field_values`
--

-- --------------------------------

--
-- Table structure for table `nuke_users_temp`
--

DROP TABLE IF EXISTS `nuke_users_temp`;
CREATE TABLE `nuke_users_temp` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `user_regdate` varchar(20) NOT NULL DEFAULT '',
  `check_num` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `requestor` varchar(25) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_users_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_temp_field_values`
--

DROP TABLE IF EXISTS `nuke_users_temp_field_values`;
CREATE TABLE `nuke_users_temp_field_values` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY  (`vid`)
) ENGINE=MyISAM;

--
-- Table structure for table `nuke_dfw_block_img`
--

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_dfw_block_img`
--

INSERT INTO `nuke_dfw_block_img` (`welc_note`, `your_ip`, `posts`, `logout`, `pm_img`, `pm_unread`, `pm_read`, `mbr_stats`, `mbr_latest`, `mbr_today`, `mbr_yesterday`, `mbr_waiting`, `mbr_overall`, `bbgroups`, `nsngroups`, `online_member`, `online_guest`, `sub_img`) VALUES
('images/DFW/user.png', 'images/DFW/your_ip.png', 'images/DFW/your_posts.png', 'images/DFW/logout.png', 'images/DFW/pms.png', 'images/DFW/new_pms.png', 'images/DFW/old_pms.png', 'images/DFW/members.png', 'images/DFW/new_users.png', 'images/DFW/group-2.png', 'images/DFW/yesterday.png', 'images/DFW/waiting.png', 'images/DFW/total_users.png', 'images/DFW/group-2.png', 'images/DFW/group-2.png', 'images/DFW/online.png', 'images/DFW/online.png', 'images/DFW/dot.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_dfw_cfg`
--

DROP TABLE IF EXISTS `nuke_dfw_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_cfg` (
  `cfg_nm` varchar(255) NOT NULL DEFAULT '',
  `cfg_val` longtext NOT NULL,
  PRIMARY KEY (`cfg_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_dfw_cfg`
--

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
('username_length', '8'),
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
('prvt_msgs_voice', '0'),
('order_mode', '1'),
('bbgroups', '1'),
('bbranks', '0'),
('member_flags', '1'),
('guest_flags', '1'),
('auc_colors', '0'),
('tooltip_bgcolor', '#d9d9d9'),
('tooltip_txtcolor', '#000000'),
('tooltip_bordersize', '2'),
('tooltip_bordertype', 'groove'),
('tooltip_bordercolor', '#F00000'),
('tooltip_padding', '20'),
('tooltip_opacity', '9'),
('tipimage_username ', ''),
('fotodimensions', '60');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_dfw_code`
--

CREATE TABLE IF NOT EXISTS `nuke_dfw_code` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` char(20) NOT NULL,
  `code` text,
  `desc` varchar(100) DEFAULT '',
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_dfw_code`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_dfw_img`
--

DROP TABLE IF EXISTS `nuke_dfw_img`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_img` (
  `pic` varchar(40) NOT NULL DEFAULT '',
  `view` varchar(40) NOT NULL DEFAULT '',
  `king` tinyint(2) NOT NULL DEFAULT '0',
  `gname` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_dfw_img`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_dfw_tooltip_img`
--

DROP TABLE IF EXISTS `nuke_dfw_tooltip_img`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_tooltip_img` (
  `tipimage_username` varchar(255) NOT NULL DEFAULT '',
  `tipimage_email` varchar(255) NOT NULL DEFAULT '',
  `tipimage_regdate` varchar(255) NOT NULL DEFAULT '',
  `tipimage_group` varchar(255) NOT NULL DEFAULT '',
  `tipimage_posts` varchar(255) NOT NULL DEFAULT '',
  `tipimage_theme` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_dfw_tooltip_img`
--

INSERT INTO `nuke_dfw_tooltip_img` (`tipimage_username`, `tipimage_email`, `tipimage_regdate`, `tipimage_group`, `tipimage_posts`, `tipimage_theme`) VALUES
('images/DFW/tooltip/memberusr.gif', 'images/DFW/tooltip/messages.gif', 'images/DFW/tooltip/regdate.gif', 'images/DFW/tooltip/membership.gif', 'images/DFW/tooltip/posts.gif', 'images/DFW/tooltip/theme.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_cfg`
--

CREATE TABLE IF NOT EXISTS `nuke_legal_cfg` (
  `contact_email` varchar(255) NOT NULL DEFAULT 'legal@MySite.com',
  `contact_subject` varchar(255) NOT NULL DEFAULT 'Legal Notice Inquiry',
  `country` varchar(255) NOT NULL DEFAULT 'United States of America'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_legal_cfg`
--

INSERT INTO `nuke_legal_cfg` (`contact_email`, `contact_subject`, `country`) VALUES
('legal@MySite.com', 'Legal Notice Inquiry', 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_docs`
--

CREATE TABLE IF NOT EXISTS `nuke_legal_docs` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(32) NOT NULL,
  `doc_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_legal_docs`
--

INSERT INTO `nuke_legal_docs` (`did`, `doc_name`, `doc_status`) VALUES
(1, 'notice', 1),
(2, 'privacy', 1),
(3, 'terms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_text`
--

CREATE TABLE IF NOT EXISTS `nuke_legal_text` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `doc_text` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_legal_text`
--

INSERT INTO `nuke_legal_text` (`tid`, `doc_text`) VALUES
(1, '<p>[sitename] authorizes you to view, download, and interact with materials, services, and forums on this website. Unless otherwise specified, the services and downloads provided by [sitename] are for your personal and or commercial use, provided that you retain all copyright and other proprietary notices contained in the original materials.</p>\r\n<p>The materials at [sitename] are copyrighted and any unauthorized use of these materials may violate copyrights and or trademarks of [country], headquarters of the owner of [sitename].</p>\r\n<p>These legal notices are for our protection and yours as well. Please read them carefully.</p>\r\n<p align="right">[date]</p>'),
(2, 'Legal Notice'),
(3, '<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">Introduction<br />\r\n<br />\r\n</span>The site editor takes your right to privacy seriously, and wants you to feel comfortable using [sitename]. This privacy policy deals with personally-identifiable information (referred to as &quot;data&quot; below) that may be collected by this site. This policy does not apply to other entities that are not owned or controlled by the site editor, nor to persons that are not employees or agents of the site editor, or that are not under the site editor''s control. Please take time to read this site''s <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">1. Collection of data<br />\r\n<br />\r\n</span>Registration of a user account on this site requires only a valid e-mail address and a user name that has not been used already. You are not required to provide any other information if do not want to. Please be aware that the user name you choose, the e-mail address you provide and other information you provide may render you personally identifiable, and may possibly be displayed on [sitename] intentionally (depending on choices you make during the registration process, or on the way in which the site is configured) or unintentionally (such as, but not limited to, subsequent to a successful act of intrusion by a third party). As on many web sites, the site editor may also automatically receive general information that is contained in server log files, such as your IP address, and cookie information. Information about how advertising may be served on this site (if it is the site editor''s policy to display advertising) is set forth below.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">2. Use of data<br />\r\n<br />\r\n</span>Data may be used to customize and improve your user experience on this site. Efforts will be made to prevent your data being made available to third parties unless (ID 1033 0 1) provided for otherwise in this Privacy Policy; (ii) your consent is obtained, such as when you choose to opt-in or opt-out for the sharing of data; (iii) a service provided on our site requires interaction a third party with or is provided by a third party, such as an application service provider; (iv) pursuant to legal action or law enforcement; (v) it is found that your use of this site violates this policy, terms of service, or other usage guidelines, or if it is deemed reasonably necessary by the site editor to protect the site editor''s legal rights and or property; or (vi) this site is purchased by a third party, in which case that third party will be able to use the data in the same manner as set forth in this Policy. In the event you choose to use links that appear on [sitename] to visit other web sites, you are advised to read the privacy policies that appear on those sites.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">3. Cookies<br />\r\n<br />\r\n</span>Like many web sites, [sitename] sets and uses cookies to enhance your user experience, such as retaining your personal settings. Advertisements may appear on [sitename] and, if so, may set and access cookies on your computer; such cookies are subject to the privacy policy of the parties providing the advertisement. However, the parties serving the advertising do not have access to this site''s cookies. These parties usually use non-personally-identifiable or anonymous codes to obtain information about your visits to this site. You can visit the <a href="http://www.networkadvertising.org/optout_nonppii.asp">Network Advertising Initiative</a> if you want to find out more information about this practice, and to learn about your options, including your options with regard to the following companies that may serve advertising on this site:<br />\r\n<br />\r\n[<a href="http://www.associateprograms.com/"> AssociatePrograms.com</a> ] [<a title="AdBrite" target="_blank" href="http://www.adbrite.com"> AdBrite</a> ] [ <a href="http://www.cj.com/">Commission Junction</a> ] [ <a href="http://www.doubleclick.net/">DoubleClick</a> ] [ <a href="http://www.linkshare.com/">Linkshare</a> ]<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">4. Minors<br />\r\n<br />\r\n</span>People aged thirteen or younger are not allowed to become registered users of this site. For more information, please contact <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">5. Editing or deleting your account information<br />\r\n<br />\r\n</span>This site provides you with the ability to edit the information in your user account that you provided to during the registration process, by visiting <a href="modules.php?name=Your_Account">your personal home page configuration page</a>. You may request deletion of your user account by contacting <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>. Content or other information that you may have provided, and that is not contained within your user account, such as posts that may appear within site forums, may continue to remain on the site at the site editor''s discretion, even though your user account is deleted. Please see the site''s <a href="modules.php?name=Legal&amp;op=terms">Terms of Use</a> for more information.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">6. Changes to this privacy policy<br />\r\n<br />\r\n</span>Changes may be made to this policy from time to time. You will be notified of substantial changes to this policy either by through the posting of a prominent announcement on the site, and or by a message being sent to the e-mail address you have provided, which is contained in your user settings.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">7. NO GUARANTEES<br />\r\n<br />\r\n</span>While this privacy policy states standards for maintenance of data, and while efforts will be made to meet the said standards, the site editor is not in a position to guarantee compliance with these standards. There may be factors beyond the site editor''s control that may result in disclosure of data. Consequently, the site editor offers no warranties or representations as regards maintenance or nondisclosure of data.<br />\r\n<br />\r\n</p>\r\n<div align="left"></div>\r\n<p style="TEXT-ALIGN: left" align="left"><span style="FONT-WEIGHT: bold">8. Contact information<br />\r\n<br />\r\n</span>If you have any questions about this policy or [sitename], please feel free to contact <a href="modules.php?name=Legal&amp;op=contact">the webmaster</a>.</p>\r\n<p align="right">[date]</p>'),
(4, 'Privacy Policy'),
(5, '<p style="text-align: left;"><span style="font-weight: bold;">1. Acceptance of terms of use and amendments<br />\r\n<br />\r\n</span>Each time you use or cause access to [sitename], you agree to be bound by these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, as amended from time to time with or without notice to you. In addition, if you are using a particular service hosted on or accessed via [sitename], you will be subject to any rules or guidelines applicable to the said services, and they will be incorporated by reference within these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>. Please refer to this site''s <a href="modules.php?name=Legal&amp;op=privacy">privacy policy</a>, which is incorporated within these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> by reference.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">2. The site editor''s service<br />\r\n<br />\r\n</span>This web site and services provided to you on and through [sitename] are provided on an &quot;AS IS&quot; basis.You agree that the site editor exclusively reserves the right to modify or discontinue provision of [sitename] and its services, and to delete the data you provide, either temporarily or permanently; the site and may, at any time and without notice and any liability to you, The site editor shall have no responsibility or liability for the timeliness, deletion, failure to store, inaccuracy, or improper delivery of any data or information.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">3. Your responsibilities and registration obligations<br />\r\n<br />\r\n</span>In order to use [sitename] or certain parts of it, you may be required to <a href="modules.php?name=Your_Account&amp;op=new_user">register a user account</a> on this web site; in this case, you agree to provide truthful information when requested, and undertake that you are aged at least the thirteen (13) or more.&nbsp;&nbsp; In addition, you are required to register a unique user account to you and that is not shared.&nbsp; <font color="#ff0000">Sharing of user accounts is expressly prohibited</font>.<br />\r\n</p>\r\n<p style="text-align: left;">By registering, you explicitly agree to this site''s <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, including any amendments made by the site editor from time to time and available here.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">4. Privacy policy</span>.<br />\r\n</p>\r\n<p style="text-align: left;">Registration data and other personally-identifiable information that may be collected on this site is subject to the terms of the site''s <a href="modules.php?name=Legal&amp;op=privacy">privacy policy</a>.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">5. Registration and password<br />\r\n<br />\r\n</span>You are responsible for maintaining the confidentiality of your password, and shall be responsible for all usage of your user account and or user name, whether authorized or unauthorized by you. You agree to immediately notify the site editor of any unauthorized use or your user account, user name or password.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">6. Your conduct.<br />\r\n<br />\r\n</span>You agree that all information or data of any kind, whether text, software, code, music or sound, photographs or graphics, video or other materials (&quot;content&quot;), made available publicly or privately, shall be under the sole responsibility of the person providing the content or the person whose user account is used. You agree that [sitename] may expose you to content that may be objectionable or offensive. The site editor shall not be responsible to you in any way for the content that appears on [sitename], nor for any error or omission.</p>\r\n<p style="text-align: left;">By using [sitename] or any service provided, you explicitly agree that you shall not:<br />\r\n(a) provide any content or conduct yourself in any way that may be construed as: unlawful; illegal; threatening; harmful; abusive; harassing; stalking; tortuous; defamatory; libelous; vulgar; obscene; offensive; objectionable; pornographic; designed to interfere or interrupt [sitename] or any service provided, infected with a virus or other destructive or deleterious programming routine; giving rise to civil or criminal liability; or in violation of [country], applicable local, national or international law;<br />\r\n(b) impersonate or misrepresent your association with any person or entity; forge or otherwise seek to conceal or misrepresent the origin of any content provided by you;<br />\r\n(c) collect or harvest any data about other users;<br />\r\n(d) provide or use [sitename] for the provision of any content or service in any commercial manner, or in any manner that would involve junk mail, spam, chain letters, pyramid schemes, or any other form of unauthorized advertising, without the site editor''s prior written consent; <br />\r\n(e) provide any content that may give rise to civil or criminal liability of the site editor, or that may constitute or be considered a violation of [country], any local, national or international law, including -- but not limited to -- laws relating to copyright, trademark, patent, or trade secrets.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">7. Submission of content on [sitename]<br />\r\n<br />\r\n</span>By providing any content to [sitename]:<br />\r\n(a) you agree to grant the site editor a worldwide, royalty-free, perpetual, non-exclusive right and license (including any moral rights or other necessary rights.) to use, display, reproduce, modify, adapt, publish, distribute, perform, promote, archive, translate, and to create derivative works and compilations, in whole or in part. Such license will apply with respect to any form, media, technology already known or developed subsequently;<br />\r\n(b) you warrant and represent that you have all legal, moral, and other rights that may be necessary to grant us the license specified in this section 7;<br />\r\n(c) you acknowledge and agree that the site editor shall have the right (but not obligation), at the site editor''s entire discretion, to refuse to publish, or to remove, or to block access to any content you provide, at any time and for any reason, with or without notice.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">8. Third-party services<br />\r\n<br />\r\n</span>Goods and services of third parties may be advertised and or made available on or through [sitename]. Representations made regarding products and services provided by third parties are governed by the policies and representations made by these third parties. The site editor shall not be liable for or responsible in any manner for any of your dealings or interaction with third parties.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">9. Indemnification<br />\r\n<br />\r\n</span>You agree to indemnify and hold harmless the site editor and the site editor''s subsidiaries, affiliates, related parties, officers, directors, employees, agents, independent contractors, advertisers, partners, and co-branders, from any claim or demand, including reasonable attorney''s fees, that may be made by any third party, due to or arising out of your conduct or connection with [sitename] or service, your provision of content, your violation of these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>, or any other violation of the rights of another person or party.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">10. DISCLAIMER OF WARRANTIES<br />\r\n<br />\r\n</span>YOU UNDERSTAND AND AGREE THAT YOUR USE OF THIS WEB SITE AND ANY SERVICES OR CONTENT PROVIDED (THE &quot;SERVICE&quot;) IS MADE AVAILABLE AND PROVIDED TO YOU AT YOUR OWN RISK. IT IS PROVIDED TO YOU &quot;AS IS&quot; AND THE SITE EDITOR EXPRESSLY DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER IMPLIED OR EXPRESS, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.&nbsp;</p>\r\n<p style="text-align: left;">THE SITE EDITOR MAKES NO WARRANTY, IMPLIED OR EXPRESS, THAT ANY PART OF THE SERVICE WILL BE UNINTERRUPTED, ERROR-FREE, VIRUS-FREE, TIMELY, SECURE, ACCURATE, RELIABLE, OR OF ANY QUALITY, NOR IS IT WARRANTED EITHER IMPLICITLY OR EXPRESSLY THAT ANY CONTENT IS SAFE IN ANY MANNER FOR DOWNLOAD. YOU UNDERSTAND AND AGREE THAT NEITHER THE SITE EDITOR NOR ANY PARTICIPANT IN THE SERVICE PROVIDES PROFESSIONAL ADVICE OF ANY KIND AND THAT USE OF ANY ADVICE OR ANY OTHER INFORMATION OBTAINED VIA THIS WEB SITE IS SOLELY AT YOUR OWN RISK, AND THAT THE SITE EDITOR MAY NOT BE HELD LIABLE IN ANY WAY. <br />\r\n</p>\r\n<p style="text-align: left;">Some jurisdictions may not allow disclaimers of implied warranties, and certain statements in the above disclaimer may not apply to you as regards implied warranties; the other terms and conditions remain enforceable notwithstanding.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">11. LIMITATION OF LIABILITY<br />\r\n<br />\r\n</span>YOU EXPRESSLY UNDERSTAND AND AGREE THAT THE SITE EDTIOR SHALL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INDICENTAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES; THIS INCLUDES, BUT IS NOT LIMITED TO, DAMAGES FOR LOSS OF PROFITS, GOODWILL, USE, DATA OR OTHER INTANGIBLE LOSS (EVEN IF THE SITE EDITOR HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), RESULTING FROM OR ARISING OUT OF (I) THE USE OF OR THE INABILITY TO USE THE SERVICE, (II) THE COST OF OBTAINING SUBSTITUTE GOODS AND OR SERVICES RESULTING FROM ANY TRANSACTION ENTERED INTO ON THROUGH THE SERVICE, (III) UNAUTHORIZED ACCESS TO OR ALTERATION OF YOUR DATA TRANSMISSIONS, (IV) STATEMENTS BY ANY THIRD PARTY OR CONDUCT OF ANY THIRD PARTY USING THE SERVICE, OR (V) ANY OTHER MATTER RELATING TO THE SERVICE.</p>\r\n<p style="text-align: left;">In some jurisdictions, it is not permitted to limit liability and, therefore, such limitations may not apply to you.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">12. Reservation of rights<br />\r\n<br />\r\n</span>The site editor reserves all of the site editor''s rights, including but not limited to any and all copyrights, trademarks, patents, trade secrets, and any other proprietary right that the site editor may have for [sitename], its content, and the goods and services that may be provided. The use of the site editor''s rights. and property requires the site editor''s prior written consent. By making services available to you, the site editor is not providing you with any implied or express licenses or rights, and you will have no rights. to make any commercial uses of [sitename] or service without the site editor''s prior written consent.</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">13. Notification of copyright infringement<br />\r\n<br />\r\n</span>If you believe that your property has been used in any way that would be considered a copyright infringement or a violation of your intellectual property rights, the site editor''s copyright agent may be contacted at the following address:<br />\r\n<br />\r\n<a href="modules.php?name=Legal&amp;op=contact">Click here to contact the webmaster</a><br />\r\n<br />\r\n<span style="font-weight: bold;">14. Applicable law<br />\r\n<br />\r\n</span>You agree that these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> and any dispute arising out of your use of [sitename] or the site editor''s products or services shall be governed by and construed in accordance with local laws in force of [country], headquarters of the owner of [sitename], without regard to its conflict of law provisions. By registering or using this web site and service, you consent and submit to the exclusive jurisdiction and venue of [country], headquarters of the owner of [sitename].&nbsp;</p>\r\n<p style="text-align: left;"><span style="font-weight: bold;">15. Miscellaneous information<br />\r\n<br />\r\n</span>(ID 1033 0 1) In the event that these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> conflict with any law under which any provision may be held invalid by a court with jurisdiction over the parties, such provision will be interpreted to reflect the original intentions of the parties in accordance with applicable law, and the remainder of these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> will remain valid and intact; (ii) The failure of either party to assert any right under these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a> shall not be considered a waiver of that party''s right, and that right will remain in full force and effect; (iii) You agree that, without regard to any statute or contrary law, that any claim or cause arising out of [sitename] or its services must be filed within one (1) year after such claim or cause arose, or else the claim shall be forever barred; (iv) The site editor may assign the site editor''s rights and obligations under these <a href="modules.php?name=Legal&amp;op=terms">terms of use</a>; in this case, the site editor shall be relieved of any further obligation.</p>\r\n<p align="right">[country], [date]</p>'),
(6, 'Terms of Use');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_text_map`
--

CREATE TABLE IF NOT EXISTS `nuke_legal_text_map` (
  `mid` mediumint(9) NOT NULL,
  `did` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `language` varchar(32) NOT NULL DEFAULT 'english',
  UNIQUE KEY `mid` (`mid`,`did`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_legal_text_map`
--

INSERT INTO `nuke_legal_text_map` (`mid`, `did`, `tid`, `language`) VALUES
(1, 1, 1, 'english'),
(2, 1, 2, 'english'),
(1, 2, 3, 'english'),
(2, 2, 4, 'english'),
(1, 3, 5, 'english'),
(2, 3, 6, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu`
--

CREATE TABLE IF NOT EXISTS `nuke_menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `nuke_menu`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu_cat`
--

CREATE TABLE IF NOT EXISTS `nuke_menu_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nuke_menu_cat`
--

INSERT INTO `nuke_menu_cat` (`cid`, `cat`, `weight`) VALUES
(1, 'General', 2),
(2, 'Community', 4),
(3, 'Content', 5),
(4, 'Info', 3),
(5, 'Members', 1);


--
-- Table structure for table `nuke_news_config`
--

CREATE TABLE IF NOT EXISTS `nuke_news_config` (
  `newsrows` int(1) NOT NULL DEFAULT '1',
  `bookmark` int(1) NOT NULL DEFAULT '0',
  `rblocks` int(1) NOT NULL DEFAULT '0',
  `showtags` int(1) NOT NULL DEFAULT '0',
  KEY `newsrows` (`newsrows`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nuke_news_config`
--

INSERT INTO `nuke_news_config` (`newsrows`, `bookmark`, `rblocks`, `showtags`) VALUES
(2, 1, 0, 1);

--
-- Table structure for table `nuke_bbflags`
--

DROP TABLE IF EXISTS `nuke_bbflags`;
CREATE TABLE IF NOT EXISTS `nuke_bbflags` (
  `flag_id` int(10) NOT NULL auto_increment,
  `flag_name` varchar(50) default NULL,
  `flag_image` varchar(25) default NULL,
  PRIMARY KEY  (`flag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `nuke_bbflags`
--

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

-- --------------------------------------------------------

--
-- Reset bbgroups tables to default
--
-- Table structure for table `nuke_bbgroups`
--

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

--
-- Dumping data for table `nuke_bbgroups`
--

INSERT INTO `nuke_bbgroups` (`group_id`, `group_type`, `group_name`, `group_description`, `group_moderator`, `group_single_user`, `user_id`) VALUES
(1, 1, 'Anonymous', 'Personal User', 0, 1, NULL),
(2, 2, 'Moderators', 'Moderators of this Forum', 2, 0, NULL),
(3, 0, 'Guest', 'DEFAULT users group', 2, 0, NULL),
(4, 1, '', 'Personal User', 2, 1, '1'),
(5, 1, '', 'Personal User', 2, 1, '2');

--
-- Reset all users to default groups
--

UPDATE.`nuke_bbconfig` SET `config_value` = '3' WHERE `nuke_bbconfig`.`config_name` = 'initial_group_id';
UPDATE `nuke_bbuser_group` SET `group_id`=3;
UPDATE `nuke_bbuser_group` SET `group_id`=1 WHERE `user_id`=-1;
UPDATE `nuke_bbuser_group` SET `group_id`=2 WHERE `user_id`=2;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_fga_config`
--

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

--
-- Dumping data for table `nuke_fga_config`
--

INSERT INTO `nuke_fga_config` (`glance_news_forum_id`, `glance_num_news`, `glance_num_recent`, `glance_recent_ignore`, `glance_news_heading`, `glance_recent_heading`, `glance_show_new_bullets`, `glance_track`, `glance_auth_read`, `glance_topic_length`, `glance_direct_latest`, `glance_version`) VALUES
('3', '5', '5', '3', 'Latest Site News', 'Recent Topics', 'true', 'true', 'false', '0', '0', '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnba_banners`
--

DROP TABLE IF EXISTS `nuke_nsnba_banners`;
CREATE TABLE IF NOT EXISTS `nuke_nsnba_banners` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` tinyint(1) NOT NULL DEFAULT '0',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(200) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `alttext` varchar(255) NOT NULL DEFAULT '',
  `code` tinyint(1) NOT NULL DEFAULT '0',
  `flash` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(4) NOT NULL DEFAULT '60',
  `width` int(4) NOT NULL DEFAULT '468',
  `datestr` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnba_clients`
--

DROP TABLE IF EXISTS `nuke_nsnba_clients`;
CREATE TABLE IF NOT EXISTS `nuke_nsnba_clients` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `login` varchar(25) NOT NULL DEFAULT '',
  `passwd` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnba_config`
--

DROP TABLE IF EXISTS `nuke_nsnba_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnba_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnba_config`
--

INSERT INTO `nuke_nsnba_config` (`config_name`, `config_value`) VALUES
('impamnt', '1000'),
('ipp', '20'),
('usegfxcheck', '3'),
('version_number', '1.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnba_placements`
--

DROP TABLE IF EXISTS `nuke_nsnba_placements`;
CREATE TABLE IF NOT EXISTS `nuke_nsnba_placements` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `plcdesc` text NOT NULL,
  `imgdis` varchar(200) NOT NULL DEFAULT 'plc-banner.png',
  `max_height` int(4) NOT NULL DEFAULT '60',
  `max_width` int(4) NOT NULL DEFAULT '468',
  `max_size` int(6) NOT NULL DEFAULT '30720',
  `imgban` varchar(200) NOT NULL DEFAULT 'ban-banner.png',
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_nsnba_placements`
--

INSERT INTO `nuke_nsnba_placements` (`pid`, `title`, `plcdesc`, `imgdis`, `max_height`, `max_width`, `max_size`, `imgban`) VALUES
(1, 'Header', '', 'plc-banner-1.png', 60, 468, 20480, 'ban-banner-1.png'),
(2, 'Footer', '', 'plc-banner-6.png', 60, 468, 20480, 'ban-banner-2.png'),
(3, 'Block Left', '', 'plc-banner-3.png', 300, 140, 40960, 'ban-banner-3.png'),
(4, 'Block Right', '', 'plc-banner-4.png', 300, 140, 40960, 'ban-banner-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_themeconsole`
--

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
  `link6text` varchar(255) NOT NULL DEFAULT '',
  `link6` varchar(255) NOT NULL DEFAULT '',
  `link7text` varchar(255) NOT NULL DEFAULT '',
  `link7` varchar(255) NOT NULL DEFAULT '',
  `sitewidth` varchar(255) NOT NULL DEFAULT '100%',
  `searchbox` int(1) NOT NULL DEFAULT '0',
  `flashswitch` int(1) NOT NULL DEFAULT '1',
  `disrightclick` int(1) NOT NULL DEFAULT '0',
  `adminright` int(1) NOT NULL DEFAULT '0',
  `disselectall` int(1) NOT NULL DEFAULT '0',
  `adminselect` int(1) NOT NULL DEFAULT '0',
  `themename` varchar(255) NOT NULL DEFAULT '',
  `encrypt` int(1) NOT NULL DEFAULT '0',
  `pubbox` varchar(10) NOT NULL DEFAULT '#1C1E2C',
  `pubboxtext` varchar(7) NOT NULL DEFAULT '',
  KEY `themename` (`themename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_themeconsole`
--

INSERT INTO `nuke_themeconsole` (`marq1`, `marq2`, `marq3`, `marq4`, `marq5`, `marqstyle`, `link1text`, `link1`, `link2text`, `link2`, `link3text`, `link3`, `link4text`, `link4`, `link5text`, `link5`, `link6text`, `link6`, `link7text`, `link7`, `sitewidth`, `searchbox`, `flashswitch`, `disrightclick`, `adminright`, `disselectall`, `adminselect`, `themename`, `encrypt`, `pubbox`, `pubboxtext`) VALUES
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', 'Credits', 'modules.php?name=Credits', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'PNP_WB', 0, '0', '');
