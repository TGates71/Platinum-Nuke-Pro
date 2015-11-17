--
-- PNPv1 Config update
--

ALTER TABLE `nuke_config` ADD `adb_chk` INT(1) DEFAULT '0' AFTER `banners`;
ALTER TABLE `nuke_config` ADD `login_bar` INT(1) DEFAULT '1';
UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPv1.0.1 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.PNPv1.0.1';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPv1.0.1</strong></font></a><br>';
UPDATE `nuke_config` SET `Default_Theme` = 'PNP_WB';
UPDATE `nuke_config` SET `foot3` = '<p style="text-align: center;">\r\n	<span style="font-size:10px;"><font class="footmsg">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />All the rest &copy; 2013 by this site.<br />\r\n	PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="&quot;footmsg_l&quot;">GPL</font></a>.</font></span></p>\r\n<p style="text-align: center;">\r\n	<font class="footmsg"><span style="font-size:10px;">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="width: 80px; height: 15px;" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="width: 80px; height: 15px;" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="width: 80px; height: 15px;" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="width: 80px; height: 15px;" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" border="0" height="15" src="http://tool.motoricerca.info/pic/valid-robots-small.png" width="80" /></a><br />\r\n	Site Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPv1.0.1&nbsp;</strong></font></a><font class="footmsg"> and is maintained by the Platinum Pro Team.</font></span></font></p>\r\n';

-- --------------------------------------------------------

--
-- Table structure for table `nuke_platinum_technology`
--

UPDATE `nuke_platinum_technology` SET `value` = 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPv1.0.1</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke Pro</a></strong><br>'  LIMIT 1 ;

-- --------------------------------------------------------

--
-- Update for At-A-Glance MOD
--

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

--
-- Dumping data for table `nuke_fga_config`
--

INSERT INTO `nuke_fga_config` (`glance_enable`, `glance_news_forum_id`, `glance_num_news`, `glance_num_recent`, `glance_recent_ignore`, `glance_news_heading`, `glance_recent_heading`, `glance_show_new_bullets`, `glance_track`, `glance_auth_read`, `glance_topic_length`, `glance_direct_latest`, `glance_version`) VALUES
('1', '3', '5', '5', '3', 'Latest Site News', 'Recent Topics', 'true', 'true', 'false', '0', '0', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_about_us`
--

DROP TABLE IF EXISTS `nuke_about_us`;
CREATE TABLE IF NOT EXISTS `nuke_about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_about_us`
--

INSERT INTO `nuke_about_us` (`id`, `about_data`) VALUES
(1, '<p>\r\n	Some Info about your site.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_category`
--

DROP TABLE IF EXISTS `nuke_gcal_category`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_gcal_category`
--

INSERT INTO `nuke_gcal_category` (`id`, `name`) VALUES
(1, 'Unfiled'),
(2, 'Show'),
(3, 'Birthday'),
(4, 'Release Date'),
(5, 'Anniversary'),
(6, 'Site Event');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_cat_group`
--

DROP TABLE IF EXISTS `nuke_gcal_cat_group`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_cat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_gcal_cat_group`
--

INSERT INTO `nuke_gcal_cat_group` (`id`, `cat_id`, `group_id`) VALUES
(1, 1, -1),
(2, 2, -1),
(3, 3, -1),
(4, 4, -1),
(5, 5, -1),
(6, 6, -1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_config`
--

DROP TABLE IF EXISTS `nuke_gcal_config`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT 'Calendar of Events',
  `image` varchar(255) NOT NULL,
  `min_year` int(10) unsigned NOT NULL DEFAULT '2006',
  `max_year` int(10) unsigned NOT NULL DEFAULT '2037',
  `user_submit` enum('off','members','anyone','groups') NOT NULL DEFAULT 'off',
  `req_approval` tinyint(1) NOT NULL DEFAULT '1',
  `allowed_tags` text NOT NULL,
  `allowed_attrs` text NOT NULL,
  `version` varchar(16) NOT NULL,
  `time_in_24` tinyint(1) NOT NULL DEFAULT '0',
  `short_date_format` varchar(16) NOT NULL,
  `reg_date_format` varchar(16) NOT NULL,
  `long_date_format` varchar(16) NOT NULL,
  `first_day_of_week` tinyint(1) NOT NULL DEFAULT '0',
  `auto_link` tinyint(1) NOT NULL DEFAULT '0',
  `location_required` tinyint(1) NOT NULL DEFAULT '0',
  `details_required` tinyint(1) NOT NULL DEFAULT '0',
  `email_notify` tinyint(1) NOT NULL DEFAULT '0',
  `email_to` varchar(255) NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_msg` varchar(255) NOT NULL,
  `email_from` varchar(255) NOT NULL,
  `show_cat_legend` tinyint(1) NOT NULL DEFAULT '1',
  `wysiwyg` tinyint(1) NOT NULL DEFAULT '0',
  `user_update` tinyint(1) NOT NULL DEFAULT '0',
  `weekends` set('0','1','2','3','4','5','6') NOT NULL DEFAULT '0,6',
  `rsvp` enum('off','on','email') NOT NULL DEFAULT 'off',
  `rsvp_email_subject` varchar(255) NOT NULL DEFAULT 'Event RSVP Notification',
  `groups_submit` text NOT NULL,
  `groups_no_approval` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_gcal_config`
--

INSERT INTO `nuke_gcal_config` (`id`, `title`, `image`, `min_year`, `max_year`, `user_submit`, `req_approval`, `allowed_tags`, `allowed_attrs`, `version`, `time_in_24`, `short_date_format`, `reg_date_format`, `long_date_format`, `first_day_of_week`, `auto_link`, `location_required`, `details_required`, `email_notify`, `email_to`, `email_subject`, `email_msg`, `email_from`, `show_cat_legend`, `wysiwyg`, `user_update`, `weekends`, `rsvp`, `rsvp_email_subject`, `groups_submit`, `groups_no_approval`) VALUES
(1, 'Calendar of Events', 'images/admin/gcalendar.gif', 2006, 2037, 'members', 1, 'a,b,i,img', 'href,src,border,alt,title', '1.7.1', 0, '%m/%d', '%B %d, %Y', '%A, %B %d, %Y', 0, 0, 0, 0, 0, 'webmaster@strikeforceops.com', 'New GCalender Event', 'A new GCalendar event was submitted.', 'webmaster@strikeforceops.com', 1, 0, 0, '0,6', 'off', 'Event RSVP Notification', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_event`
--

DROP TABLE IF EXISTS `nuke_gcal_event`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `no_time` tinyint(1) NOT NULL DEFAULT '1',
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `location` text NOT NULL,
  `category` int(11) NOT NULL,
  `repeat_type` enum('none','daily','weekly','monthly','yearly') NOT NULL DEFAULT 'none',
  `details` text NOT NULL,
  `interval_val` int(11) NOT NULL,
  `no_end_date` tinyint(1) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `weekly_days` set('0','1','2','3','4','5','6') NOT NULL,
  `monthly_by_day` tinyint(1) NOT NULL,
  `submitted_by` varchar(25) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `rsvp` enum('off','on','email') NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`),
  KEY `approved` (`approved`),
  KEY `start_date` (`start_date`),
  KEY `repeat_type` (`repeat_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_exception`
--

DROP TABLE IF EXISTS `nuke_gcal_exception`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_exception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_rsvp`
--

DROP TABLE IF EXISTS `nuke_gcal_rsvp`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_rsvp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_honeypot`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbacronyms`
--

DROP TABLE IF EXISTS `nuke_bbacronyms`;
CREATE TABLE IF NOT EXISTS `nuke_bbacronyms` (
  `acronym_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `acronym` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acronym_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nuke_bbacronyms`
--

INSERT INTO `nuke_bbacronyms` (`acronym_id`, `acronym`, `description`) VALUES
(1, 'plat', 'Platinum'),
(2, 'pnp', 'Platinum Nuke Pro');

-- --------------------------------------------------------