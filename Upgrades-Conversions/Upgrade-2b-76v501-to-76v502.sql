DROP TABLE IF EXISTS `nuke_themecp`;
UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPV1.0.1 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.PNPV1.0.1';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1</strong></font></a><br>' WHERE CONVERT( `nuke_config`.`sitename` USING utf8 ) = 'Platinum Nuke' LIMIT 1 ;
UPDATE `nuke_config` SET `Default_Theme` = 'Impressed';
ALTER TABLE `nuke_themeconsole` CHANGE `hlink1` `link1text` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlinkurl1` `link1` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlink2` `link2text` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlinkurl2` `link2` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlink3` `link3text` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlinkurl3` `link3` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlink4` `link4text` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlinkurl4` `link4` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlink5` `link5text` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` CHANGE `hlinkurl5` `link5` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `nuke_themeconsole` ADD `link6text` VARCHAR(255) NOT NULL DEFAULT '' AFTER `link5`;
ALTER TABLE `nuke_themeconsole` ADD `link6` VARCHAR(255) NOT NULL DEFAULT '' AFTER `link6text`;
ALTER TABLE `nuke_themeconsole` ADD `link7text` VARCHAR(255) NOT NULL DEFAULT '' AFTER `link6`;
ALTER TABLE `nuke_themeconsole` ADD `link7` VARCHAR(255) NOT NULL DEFAULT '' AFTER `link7text`;
ALTER TABLE `nuke_themeconsole` ADD `sitewidth` varchar(255) NOT NULL default '100%' AFTER `link7`;
ALTER TABLE `nuke_themeconsole` CHANGE `searchbox` `searchbox` INT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `nuke_themeconsole` CHANGE `disrightclick` `disrightclick` INT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `nuke_themeconsole` CHANGE `disselectall` `disselectall` INT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `nuke_themeconsole` CHANGE `encrypt` `encrypt` INT( 1 ) NOT NULL DEFAULT '0';

ALTER TABLE nuke_users ADD user_group_cp int(11) NOT NULL DEFAULT 2;
ALTER TABLE nuke_users ADD user_group_list_cp varchar(100) NOT NULL default 2;
ALTER TABLE nuke_users ADD user_active_cp enum('YES','NO') NOT NULL DEFAULT 'YES';

--
-- Table structure for table `nuke_platinum_technology`
--

DROP TABLE IF EXISTS `nuke_platinum_technology`;
CREATE TABLE `nuke_platinum_technology` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_platinum_technology`
--

INSERT INTO `nuke_platinum_technology` VALUES('versioncheck', 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPV1.0.1</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke Pro</a></strong><br>');
INSERT INTO `nuke_platinum_technology` VALUES('lastupdatecheck', '1116781443');

CREATE TABLE IF NOT EXISTS `nuke_aab_config` (
  `phpmyadmin_url` varchar(255) NOT NULL default '',
  `cpanel_url` varchar(255) NOT NULL default '',
  `mainadmin_button` smallint(1) NOT NULL default '0',
  `forumadmin_button` smallint(1) NOT NULL default '0',
  `phpmyadmin_button` smallint(1) NOT NULL default '0',
  `cpanel_button` smallint(1) NOT NULL default '0',
  `admin_logout` smallint(1) NOT NULL default '0',
  `show_warning_image` smallint(1) NOT NULL default '0',
  `show_warning` smallint(1) NOT NULL default '0',
  `button_text` varchar(7) NOT NULL,
  `warning_text` varchar(255) NOT NULL default '',
  `fusion_menu` smallint(1) NOT NULL default '0',
  `sentinel_menu` smallint(1) NOT NULL default '0',
  `show_modules` smallint(1) NOT NULL default '0',
  `show_forum` smallint(1) NOT NULL default '0',
  `submissions` smallint(1) NOT NULL default '0',
  `block_width` int(3) NOT NULL default '150'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_aab_config`
--

INSERT INTO nuke_aab_config VALUES('', '', 1, 1, 1, 1, 1, 1, 1, '#000000', '', 1, 1, 1, 1, 1, 195);

--
-- Table structure for table `nukec30_ads_ads`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_ads` (
  `id_ads` int(11) NOT NULL auto_increment,
  `id_catg` mediumint(9) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `ads_desc` text NOT NULL,
  `imageads` varchar(50) NOT NULL default '',
  `curr` tinyint(4) NOT NULL default '0',
  `price` decimal(11,2) NOT NULL default '0.00',
  `submitter` mediumint(9) NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `website` varchar(50) NOT NULL default '',
  `city` varchar(50) NOT NULL default '',
  `state` varchar(50) NOT NULL default '',
  `country` varchar(50) NOT NULL default '',
  `dateposted` int(11) NOT NULL default '0',
  `validuntil` int(11) NOT NULL default '0',
  `hits` mediumint(9) NOT NULL default '0',
  `language` varchar(50) NOT NULL default '',
  `active` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id_ads`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_ads`
--

INSERT INTO `nukec30_ads_ads` VALUES(1, 131, 'Delgado Computers Hosting Linux Box', 'Everything you need to host your business online. domain not included.  5.00 per month hosting. Linux Box  Control Panel ISPConfig-2.2.35.', '1.jpeg', 1, 60.00, 3, 'pedro@dcomputers.net', 'www.dcomputers.net', 'Lebanon', 'PA', 'USA', 1264744328, 1296280328, 8, 'english', 1);
INSERT INTO `nukec30_ads_ads` VALUES(2, 131, 'Windows Hosting Box', 'Everything  you need to host you business or any other site Zpanel or other Control Panel.', '2.jpeg', 1, 60.00, 3, 'info@dcomputers.net', 'www.dcomputers.net', 'Lebanon', 'PA', 'USA', 1264857217, 1296393217, 0, 'english', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_box`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_box` (
  `id_save` int(11) NOT NULL auto_increment,
  `id_ads` int(10) unsigned default NULL,
  `owner` int(11) NOT NULL default '0',
  `id_catg` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `ads_desc` text NOT NULL,
  `imageads` varchar(80) NOT NULL default '',
  `curr` varchar(25) NOT NULL default '',
  `price` int(11) NOT NULL default '0',
  `submiter` int(11) NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `url` varchar(50) NOT NULL default '',
  `city` varchar(50) NOT NULL default '',
  `state` varchar(50) NOT NULL default '',
  `country` varchar(50) NOT NULL default '',
  `dateposted` int(11) NOT NULL default '0',
  `validuntil` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_save`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_box`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_catg`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_catg` (
  `id_catg` mediumint(9) NOT NULL auto_increment,
  `catg` varchar(50) default NULL,
  `catg_desc` text,
  `parentid` smallint(6) NOT NULL default '0',
  `image` varchar(50) NOT NULL default '',
  `language` varchar(50) NOT NULL default 'english',
  `hits` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id_catg`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_catg`
--

INSERT INTO `nukec30_ads_catg` VALUES(1, 'Financial and Money', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(2, 'Credit Cards', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(3, 'Credit Services', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(4, 'Money to Lend', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(5, 'Mortgage Brokers', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(6, 'Mortgage Services', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(7, 'Venture Capital', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(8, 'Real Estate', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(9, 'Acreages', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(10, 'Agents', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(11, 'Apartments', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(12, 'Business&Commercial Sites', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(13, 'Farms', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(14, 'For Rent', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(15, 'For Sale', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(16, 'House Exchanges', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(17, 'Houses', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(18, 'Land For Sale', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(19, 'Rooms', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(20, 'Services', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(21, 'Steel Framing Homes', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(22, 'Time Share', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(23, 'Vacation Properties', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(24, 'Wanted', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(25, 'Business Opportunities', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(26, 'Agents Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(27, 'Business Opportunities', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(28, 'Business for Sale', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(29, 'Distributors Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(30, 'Home Business Opps', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(31, 'Investors Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(32, 'Marketing / Sales', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(33, 'MLM', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(34, 'Money-Making Opportunities', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(35, 'Representatives Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(36, 'Work At Home', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(37, 'Partnerships & Investments', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(38, 'Automotive', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(39, 'Antique', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(40, 'Auto Accessories', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(41, 'Auto Parts', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(42, 'Auto Repairing', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(43, 'Auto Service', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(44, 'Auto Supplies', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(45, 'Autos For Sale', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(46, 'Autos Wanted', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(47, 'Boats', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(48, 'Classic', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(49, 'Motor Homes & Travel Trailers', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(50, 'Motorcycle', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(51, 'Pickups and Vans', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(52, 'Antique', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(53, 'Recreational Vehicles', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(54, 'Sports Cars', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(55, 'Trailers and Buses', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(56, 'Trucks', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(57, 'Animals and Pets', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(58, 'Birds', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(59, 'Breeders', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(60, 'Cats & Kittens', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(61, 'Chinchillas', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(62, 'Dogs & Puppies', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(63, 'Ducks & Geese', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(64, 'Exotic', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(65, 'Fish', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(66, 'Free Adoptions', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(67, 'Guinnea Pigs', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(68, 'Hamsters & Gerbils', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(69, 'Horse & Livestock', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(70, 'Pet & Animal Foods', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(71, 'Pet Accessories', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(72, 'Pet Cages & Houses', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(73, 'Pet Gifts', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(74, 'Pets For Sale', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(75, 'Rabbits & Bunnies', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(76, 'Rats & Rodents', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(77, 'Reptiles & Amphibians', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(78, 'Sugar Gliders', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(79, 'Other Pets Related', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(80, 'Business Services', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(81, 'Advertising', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(82, 'Business & Professional Services', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(83, 'Marketings', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(84, 'Medical Equipment & Supplies', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(85, 'Merchant Accounts', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(86, 'Business Equipments', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(87, 'Office Equipment', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(88, 'Office Supplies', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(89, 'Promotion', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(90, 'Vending Machines', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(91, 'Personals', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(92, 'Books/CDs/Videos', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(93, 'Chat', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(94, 'Dating Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(95, 'Miscellaneous Personal Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(96, 'Personal Growth & Help', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(97, 'Personal Products', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(98, 'Personal Ads', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(99, 'Personal Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(100, 'Computers', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(101, 'Accessories', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(102, 'Consultants', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(103, 'Hardware', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(104, 'Software', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(105, 'For Sale', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(106, 'Wanted', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(107, 'Everything Else', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(108, 'Auctions', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(109, 'Bulletin Boards', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(110, 'Education', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(111, 'Free Stuff', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(112, 'Furniture', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(113, 'Gambling', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(114, 'Gifts', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(115, 'Home Improvement', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(116, 'Jewelry', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(117, 'Manufacturers', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(118, 'Miscellaneous For Sale', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(119, 'Package Vacations', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(120, 'Music', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(121, 'Other', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(122, 'Internet & Web Services', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(123, 'Affiliate Programs', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(124, 'Free Traffic Programs', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(125, 'Consulting', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(126, 'Internet & Web Services', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(127, 'Misc. Internet Resources', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(128, 'I.S.P.', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(129, 'Training', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(130, 'Web Design', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(131, 'Web Hosting', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(132, 'Web Promotion', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(133, 'Health and Fitness', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(134, 'Age Related', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(135, 'Beauty Products', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(136, 'Dental Care', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(137, 'Exercise Equipment', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(138, 'Fitness', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(139, 'Hair Loss', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(140, 'Health & Wellness', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(141, 'Health Services', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(142, 'Miscellaneous Health Related', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(143, 'Sexual Health', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(144, 'Skin Care', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES(145, 'Weight Loss/Diet', NULL, 133, '', 'english', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_comments`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_comments` (
  `no_comment` int(11) NOT NULL auto_increment,
  `id_ads` int(11) NOT NULL default '0',
  `commentby` mediumint(9) NOT NULL default '0',
  `subject` varchar(200) NOT NULL default '',
  `comment` text NOT NULL,
  `hostname` varchar(50) NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`no_comment`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_config`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_config` (
  `nukecprefix` varchar(30) default NULL,
  `folder_name` varchar(30) NOT NULL default '',
  `ModuleTitle` varchar(150) NOT NULL default '',
  `AdsTitleLength` varchar(5) NOT NULL default '',
  `AdsContentLength` varchar(6) NOT NULL default '',
  `Waiting` tinyint(4) NOT NULL default '0',
  `PerPage` tinyint(4) NOT NULL default '0',
  `UseImgCatg` tinyint(4) NOT NULL default '0',
  `PostInMainCatg` tinyint(4) NOT NULL default '0',
  `MemberRequired` tinyint(4) NOT NULL default '0',
  `AdsComment` tinyint(4) NOT NULL default '0',
  `PopAds` tinyint(4) NOT NULL default '0',
  `UploadImg` tinyint(4) NOT NULL default '0',
  `MaxImgSize` varchar(5) NOT NULL default '',
  `MaxImgHeight` varchar(5) NOT NULL default '',
  `MaxImgWidth` varchar(5) NOT NULL default '',
  `ThumbToHeight` tinyint(4) NOT NULL default '0',
  `ThumbToWidth` tinyint(4) NOT NULL default '0',
  `ThumbHeight` varchar(5) NOT NULL default '',
  `ThumbWidth` varchar(5) NOT NULL default '',
  `UploadPath` varchar(150) NOT NULL default '',
  `UploadPathRev` varchar(100) NOT NULL default '',
  `CatgPath` varchar(150) NOT NULL default '',
  `CatgPathRev` varchar(100) NOT NULL default '',
  `MaxAllowedAds` smallint(6) NOT NULL default '0',
  `adsbgcolor1` varchar(10) NOT NULL default '',
  `adsbgcolor2` varchar(10) NOT NULL default '',
  `adsbgcolor3` varchar(10) NOT NULL default '',
  `adsbgcolor4` varchar(10) NOT NULL default '',
  `adsbgcolor5` varchar(10) NOT NULL default ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_config`
--

INSERT INTO `nukec30_ads_config` VALUES('nukec30', 'NukeC30', 'Delgado Computers Advanced Classifieds ', '250', '100000', 1, 10, 0, 0, 1, 1, 10, 1, '9999', '999', '999', 0, 1, '450', '150', 'modules/NukeC30/imageads/', 'modules/NukeC30/imageads/', 'modules/NukeC30/imagecatg/', 'modules/NukeC30/imagecatg/', 100, '#008080', '#008080', '#008080', '#008080', '#008080');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_currency`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_currency` (
  `no` tinyint(4) NOT NULL auto_increment,
  `curr` varchar(10) NOT NULL default '',
  `country` varchar(60) NOT NULL default '0000',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_currency`
--

INSERT INTO `nukec30_ads_currency` VALUES(1, 'US$', 'USA');
INSERT INTO `nukec30_ads_currency` VALUES(2, 'Euro', 'European');
INSERT INTO `nukec30_ads_currency` VALUES(3, 'GBP', 'British');
INSERT INTO `nukec30_ads_currency` VALUES(4, 'AUD', 'Australian');
INSERT INTO `nukec30_ads_currency` VALUES(5, 'CAD', 'Canadian');
INSERT INTO `nukec30_ads_currency` VALUES(6, 'Peso', 'Mexican');
INSERT INTO `nukec30_ads_currency` VALUES(7, 'Yen', 'Japanese');
INSERT INTO `nukec30_ads_currency` VALUES(8, 'Franc', 'Swiss');
INSERT INTO `nukec30_ads_currency` VALUES(9, 'Rp', 'Indonesia');
INSERT INTO `nukec30_ads_currency` VALUES(10, 'DN', 'Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_custom`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_custom` (
  `custom_id` smallint(6) NOT NULL auto_increment,
  `custom_title` varchar(150) NOT NULL default '',
  `content` text NOT NULL,
  `weight` tinyint(4) NOT NULL default '0',
  `active` tinyint(4) NOT NULL default '0',
  `language` varchar(50) NOT NULL default '',
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`custom_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_custom`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_disclaimer`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_disclaimer` (
  `no` tinyint(3) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `language` varchar(60) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_disclaimer`
--

INSERT INTO `nukec30_ads_disclaimer` VALUES(1, 'NukeC Disclaimer', 'This site area acts as a venue to allow anyone to offer, sell, and buy  just about anything, at any time, from anywhere, in a variety of pricing formats and currencies. \r\n<BR><BR>\r\nWe are not involved in the actual transaction between buyers and sellers. As a result, we have no control over the quality, safety or legality of the items advertised, the truth or accuracy of the listings, the ability of sellers to sell items or the ability of buyers to buy items. We cannot ensure that a buyer or seller will actually complete a transaction.', '');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_duration`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_duration` (
  `id_duration` tinyint(4) NOT NULL auto_increment,
  `duration_value` smallint(6) NOT NULL default '0',
  `duration_alias` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id_duration`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_duration`
--

INSERT INTO `nukec30_ads_duration` VALUES(1, 7, '1 week');
INSERT INTO `nukec30_ads_duration` VALUES(2, 3, '3 days');
INSERT INTO `nukec30_ads_duration` VALUES(3, 1, '1 day');
INSERT INTO `nukec30_ads_duration` VALUES(4, 30, '1 month');
INSERT INTO `nukec30_ads_duration` VALUES(6, 21, '3 weeks');
INSERT INTO `nukec30_ads_duration` VALUES(10, 14, '2 weeks');
INSERT INTO `nukec30_ads_duration` VALUES(11, 60, '2 months');
INSERT INTO `nukec30_ads_duration` VALUES(12, 365, '1 year');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_filter`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_filter` (
  `word_id` smallint(6) NOT NULL auto_increment,
  `bad_word` varchar(50) NOT NULL default '',
  `rep_word` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_filter`
--

INSERT INTO `nukec30_ads_filter` VALUES(3, 'shit', 's**t');
INSERT INTO `nukec30_ads_filter` VALUES(4, 'motherfucker', '*****');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_imgtype`
--

CREATE TABLE IF NOT EXISTS `nukec30_ads_imgtype` (
  `id_typeimg` tinyint(4) NOT NULL default '0',
  `typeimg` varchar(20) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nukec30_ads_imgtype`
--

INSERT INTO `nukec30_ads_imgtype` VALUES(1, 'gif', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES(2, 'jpeg', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES(3, 'jpg', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES(4, 'x-png', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES(5, 'pjpeg', 1);


--
-- Table structure for table `nuke_amazon_cache`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_cache` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(60) NOT NULL DEFAULT '',
  `xml` longtext NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `date_time` (`time`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_cache`
--

INSERT INTO `nuke_amazon_cache` VALUES(170, '2007-08-13 00:17:38', '1545563e7acf899244cb0749d12a9aff', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0CAEQRKAJWTGNXBZCF8F" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0002UE1X0" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0002UE1X0%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0002UE1X0</Asin>\n      <ProductName>Seinfeld: Seasons 1, 2 and 3</ProductName>\n      <Catalog>DVD</Catalog>\n      <ReleaseDate>23 November, 2004</ReleaseDate>\n      <Manufacturer>Sony Pictures</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/11RKHQVK6NL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/21CMWEQ3HQL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/51J49CZ5A8L.jpg</ImageUrlLarge>\n      <ListPrice>$119.95</ListPrice>\n      <OurPrice>$75.99</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$37.21</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES(171, '2007-08-13 00:17:39', 'b3c68949ebec2d282f8eea60c642b0dc', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0NCA5W942BWXGD051PZZ" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0007QKN22" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0007QKN22%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0007QKN22</Asin>\n      <ProductName>Canon Digital Rebel XT 8MP Digital SLR Camera with EF-S 18-55mm f3.5-5.6 Lens (Black)</ProductName>\n      <Catalog>Electronics</Catalog>\n      <Manufacturer>Canon</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/1167E9P8AVL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/31RH275ZQ1L.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/512YXSJWB5L.jpg</ImageUrlLarge>\n      <ListPrice>$1,200.00</ListPrice>\n      <OurPrice>$577.60</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$700.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES(172, '2007-08-13 00:17:40', '4cf7736a63c43617c6f5b32c0bace291', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0XHEQA8BKEVXKPR711XX" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0006399FS" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0006399FS%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0006399FS</Asin>\n      <ProductName>How to Dismantle an Atomic Bomb</ProductName>\n      <Catalog>Music</Catalog>\n      <Artists>\n         <Artist>U2</Artist>\n      </Artists>\n      <ReleaseDate>23 November, 2004</ReleaseDate>\n      <Manufacturer>Interscope Records</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/11M8Z9HAJYL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/31MW5NQYYAL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/51W2D12JV7L.jpg</ImageUrlLarge>\n      <ListPrice>$13.98</ListPrice>\n      <OurPrice>$13.98</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$0.98</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES(173, '2007-08-13 00:17:41', '2db99951286bc8192e375a12fb025f92', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="080VC2Q27H0F627HP7HS" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B00022PTT8" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B00022PTT8%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B00022PTT8</Asin>\n      <ProductName>Microsoft Windows XP Professional UPGRADE with SP2</ProductName>\n      <Catalog>Software</Catalog>\n      <ReleaseDate>28 September, 2004</ReleaseDate>\n      <Manufacturer>Microsoft Software</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/0189289X0ZL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/21JJYYQYCHL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/41ENE7QMHGL.jpg</ImageUrlLarge>\n      <ListPrice>$199.99</ListPrice>\n      <OurPrice>$197.99</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$180.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES(174, '2007-08-13 00:17:42', '892f22f8ec8223e3611d9b9f247780f4', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="1R78118YF82DKJ82B9VY" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0007TFLLC" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0007TFLLC%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0007TFLLC</Asin>\n      <ProductName>Sony PlayStation Portable (PSP) Value Pack</ProductName>\n      <Catalog>Video Games</Catalog>\n      <ReleaseDate>08 September, 2006</ReleaseDate>\n      <Manufacturer>Sony Computer Entertainment</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/013ZVWFA1PL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/216W0WDE57L.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/41J70RTZHXL.jpg</ImageUrlLarge>\n      <ListPrice>$249.99</ListPrice>\n      <Availability>This item is currently not available.</Availability>\n      <UsedPrice>$146.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');



--
-- Table structure for table `nuke_amazon_cart`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` tinytext NOT NULL,
  `asin` varchar(10) NOT NULL DEFAULT '',
  `quantity` int(5) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_cart`
--




--
-- Table structure for table `nuke_amazon_catalog`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_catalog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `catalog` varchar(30) NOT NULL DEFAULT '',
  `r_catalog` varchar(30) NOT NULL DEFAULT '',
  `l_catalog` text NOT NULL,
  `mode` varchar(20) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `no_image` varchar(255) NOT NULL DEFAULT '',
  `locale` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `catalog` (`catalog`),
  KEY `r_catalog` (`r_catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_catalog`
--

INSERT INTO `nuke_amazon_catalog` VALUES(1, 'Apparel', 'apparel', '_AMZAPPAREL', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/apparel-icon.gif', 'http://g-images.amazon.com/images/G/01/apparel/general/apparel-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(2, 'Baby', 'baby product', '_AMZBABY', 'baby', 'http://g-images.amazon.com/images/G/01/icons/icon-baby.gif', 'http://g-images.amazon.com/images/G/01/baby/no-photo-baby.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(3, 'Books', 'book', '_AMZBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/icons/icon-books.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(4, 'Camera & Photo', 'photo', '_AMZCAMERAPHOTO', 'photo', 'http://g-images.amazon.com/images/G/01/icons/icon-photo.gif', 'http://g-images.amazon.com/images/G/01/photo/placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(5, 'Video Games', 'video games', '_AMZCOMPVIDGAMES', 'videogames', 'http://g-images.amazon.com/images/G/01/icons/vg-icon.gif', 'http://g-images.amazon.com/images/G/01/videogames/icons/vg-not-available.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(6, 'Computers', 'personal computer', '_AMZCOMPUTERS', 'pc-hardware', 'http://g-images.amazon.com/images/G/01/icons/icon-computers.gif', 'http://g-images.amazon.com/images/G/01/computer/no-photo-computer.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(7, 'DVD', 'dvd', '_AMZDVD', 'dvd', 'http://g-images.amazon.com/images/G/01/icons/icon-dvd.gif', 'http://g-images.amazon.com/images/G/01/dvd/icons/dvd-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(8, 'Electronics', 'electronics', '_AMZELECTRONICS', 'electronics', 'http://g-images.amazon.com/images/G/01/icons/icon-ce.gif', 'http://g-images.amazon.com/images/G/01/electronics/no-photo-ce.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(9, 'Kitchen & Housewares', 'kitchen', '_AMZKITCHENHOUSEWARES', 'kitchen', 'http://g-images.amazon.com/images/G/01/icons/icon-kitchen.gif', 'http://g-images.amazon.com/images/G/01/kitchen/placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(10, 'Magazines', 'magazine', '_AMZMAGAZINES', 'magazines', 'http://g-images.amazon.com/images/G/01/icons/icon-magazines.gif', 'http://g-images.amazon.com/images/G/01/stores/magazines/no_cover_image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(11, 'Music', 'music', '_AMZMUSIC', 'music', 'http://g-images.amazon.com/images/G/01/icons/icon-music.gif', 'http://g-images.amazon.com/images/G/01/music/icons/music-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(12, 'Outdoor Living', 'lawn & patio', '_AMZOUTLIVING', 'garden', 'http://g-images.amazon.com/images/G/01/icons/icon-garden.gif', 'http://g-images.amazon.com/images/G/01/stores/garden/no-photo-lawn.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(13, 'Software', 'software', '_AMZSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-software.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(14, 'Toys & Games', 'toy', '_AMZTOYSGAMES', 'toys', 'http://g-images.amazon.com/images/G/01/icons/icon-toys.gif', 'http://g-images.amazon.com/images/G/01/v9/icons/no-picture-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(15, 'Tools & Hardware', 'home improvement', '_AMZTOOLS', 'universal', 'http://g-images.amazon.com/images/G/01/icons/home-improvement-icon.gif', 'http://g-images.amazon.com/images/G/01/stores/hi/no-photo-tools.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(16, 'Video', 'video', '_AMZVIDEO', 'vhs', 'http://g-images.amazon.com/images/G/01/icons/icon-vhs.gif', 'http://g-images.amazon.com/images/G/01/video/icons/video-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(17, 'Furniture', 'furniture', '_AMZFURNITURE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(18, 'Downloadable Software', 'downloadable software', '_AMZDSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-sw-downloads.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(19, 'Office Product', 'office product', '_AMZOFFICE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(20, 'Home & Garden', 'home', '_AMZHOMEGARDE', 'home-garden', 'http://g-images.amazon.com/images/G/01/icons/target-home-icon.gif', 'http://g-images.amazon.com/images/G/01/icons/product-image-placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(21, 'Jewelry', 'jewelry', '_AMZJEWELRY', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/small-blue-target-jewelry-icon.gif', 'http://g-images.amazon.com/images/G/01/jewelry/nav/jewelry-icon-no-image-avail.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES(22, 'E-Books', 'ebook', '_AMZEBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/v6/gifts/ebook-icon.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us');



--
-- Table structure for table `nuke_amazon_cfg`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_cfg` (
  `AMZVer` varchar(7) NOT NULL DEFAULT '',
  `AMZModule_Name` varchar(255) NOT NULL DEFAULT '',
  `AMZ_id` varchar(30) NOT NULL DEFAULT 'httpwwwnukepc-20',
  `cache_maxtime` int(6) NOT NULL DEFAULT '14400',
  `AMZMore` tinyint(1) NOT NULL DEFAULT '0',
  `AMZSingle` tinyint(1) NOT NULL DEFAULT '0',
  `AMZQuickAdd` tinyint(1) NOT NULL DEFAULT '0',
  `AMZShowReview` tinyint(1) NOT NULL DEFAULT '0',
  `AMZShowSimilar` tinyint(1) NOT NULL DEFAULT '0',
  `AMZLocale` char(2) NOT NULL DEFAULT 'us',
  `AMZReviewMod` tinyint(1) NOT NULL DEFAULT '0',
  `ImageType` char(2) NOT NULL DEFAULT 'NO',
  `default_asin` varchar(10) NOT NULL DEFAULT 'B00009TB5G',
  `AMZ_Popular` tinyint(3) NOT NULL DEFAULT '25',
  `AMZBuyBox` tinyint(1) NOT NULL DEFAULT '1',
  `AMZShowXML` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_cfg`
--

INSERT INTO `nuke_amazon_cfg` VALUES('2.7.2', 'Amazon', 'httpwwwnukepc-20', 14400, 1, 1, 1, 1, 1, 'us', 1, 'NO', 'B00009TB5G', 25, 1, 0);



--
-- Table structure for table `nuke_amazon_department`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_department` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `r_catalog` varchar(30) NOT NULL DEFAULT '',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_department`
--

INSERT INTO `nuke_amazon_department` VALUES(1, 'apparel', 0);
INSERT INTO `nuke_amazon_department` VALUES(2, 'book', 0);
INSERT INTO `nuke_amazon_department` VALUES(3, 'dvd', 1);
INSERT INTO `nuke_amazon_department` VALUES(4, 'electronics', 7);
INSERT INTO `nuke_amazon_department` VALUES(5, 'lawn & patio', 0);
INSERT INTO `nuke_amazon_department` VALUES(6, 'kitchen', 0);
INSERT INTO `nuke_amazon_department` VALUES(7, 'magazine', 0);
INSERT INTO `nuke_amazon_department` VALUES(8, 'music', 1);
INSERT INTO `nuke_amazon_department` VALUES(9, 'personal computer', 0);
INSERT INTO `nuke_amazon_department` VALUES(10, 'photo', 0);
INSERT INTO `nuke_amazon_department` VALUES(11, 'software', 2);
INSERT INTO `nuke_amazon_department` VALUES(12, 'toy', 0);
INSERT INTO `nuke_amazon_department` VALUES(13, 'home improvement', 0);
INSERT INTO `nuke_amazon_department` VALUES(14, 'video', 0);
INSERT INTO `nuke_amazon_department` VALUES(15, 'video games', 1);
INSERT INTO `nuke_amazon_department` VALUES(16, 'baby', 0);



--
-- Table structure for table `nuke_amazon_items`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_items` (
  `iid` int(8) NOT NULL AUTO_INCREMENT,
  `asin` varchar(10) DEFAULT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `category` varchar(50) NOT NULL DEFAULT '',
  `clicks` mediumint(9) NOT NULL DEFAULT '0',
  `imp` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iid`),
  KEY `asin` (`asin`),
  KEY `category` (`category`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_items`
--

INSERT INTO `nuke_amazon_items` VALUES(2, 'B0002XQJFA', 0, 'electronics', 0, 61);
INSERT INTO `nuke_amazon_items` VALUES(3, 'B0007QKN22', 0, 'electronics', 0, 51);
INSERT INTO `nuke_amazon_items` VALUES(4, 'B0007QKMQY', 0, 'electronics', 0, 52);
INSERT INTO `nuke_amazon_items` VALUES(5, 'B0002UM0JW', 0, 'electronics', 0, 39);
INSERT INTO `nuke_amazon_items` VALUES(6, 'B0002WPSBC', 0, 'electronics', 0, 47);
INSERT INTO `nuke_amazon_items` VALUES(7, 'B0007TFLLC', 0, 'video games', 0, 49);
INSERT INTO `nuke_amazon_items` VALUES(8, 'B0007KX4TC', 0, 'electronics', 0, 52);
INSERT INTO `nuke_amazon_items` VALUES(9, 'B0000AKVJC', 0, 'electronics', 0, 49);
INSERT INTO `nuke_amazon_items` VALUES(10, 'B0002UE1X0', 0, 'dvd', 0, 38);
INSERT INTO `nuke_amazon_items` VALUES(11, 'B0006399FS', 0, 'music', 0, 56);
INSERT INTO `nuke_amazon_items` VALUES(12, 'B00006I02Z', 0, 'software', 0, 34);
INSERT INTO `nuke_amazon_items` VALUES(13, 'B00022PTT8', 0, 'software', 0, 45);



--
-- Table structure for table `nuke_amazon_nodes`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_nodes` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `catalog` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `node` int(10) NOT NULL DEFAULT '0',
  `pnode` int(10) DEFAULT NULL,
  `locale` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`nid`),
  KEY `catalog` (`catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_nodes`
--

INSERT INTO `nuke_amazon_nodes` VALUES(1, 'book', 'Top Selling', 504358, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(2, 'book', 'Bargain', 45, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(3, 'book', 'Audiocassettes', 44, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(4, 'book', 'Audio CDs', 69724, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(5, 'book', 'Business', 3, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(6, 'book', 'Cooking', 6, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(7, 'book', 'Home/Garden', 48, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(8, 'book', 'Literature/Fiction', 17, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(9, 'book', 'Nonfiction', 53, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(10, 'book', 'Technical', 173507, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(11, 'book', 'Romance', 23, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(12, 'book', 'Sports', 26, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(13, 'book', 'Childrens', 4, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(14, 'book', 'Engineering', 13643, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(15, 'book', 'Health', 10, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(16, 'book', 'Reference', 21, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(17, 'book', 'Science', 75, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(18, 'book', 'Biographies', 2, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(19, 'book', 'Computers/Internet', 5, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(20, 'book', 'Entertainment', 86, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(21, 'book', 'History', 9, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(22, 'book', 'Law', 10777, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(23, 'book', 'Mystery', 18, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(24, 'book', 'Religion', 22, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(25, 'book', 'SciFi/Fantasy', 25, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(26, 'book', 'Travel', 27, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(27, 'book', 'Arts & Photography', 1, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(28, 'book', 'e-books', 551440, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(29, 'book', 'Women''s Fiction', 542654, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(30, 'magazine', 'Top Selling', 599872, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(31, 'magazine', 'Computer/Internet', 602324, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(32, 'magazine', 'Family', 602330, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(33, 'magazine', 'Games', 602336, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(34, 'magazine', 'History', 602342, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(35, 'magazine', 'Lifestyle', 602348, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(36, 'magazine', 'Music', 602354, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(37, 'magazine', 'Pets', 602360, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(38, 'magazine', 'Espanol', 1040158, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(39, 'magazine', 'Travel', 602370, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(40, 'magazine', 'Arts', 602314, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(41, 'magazine', 'Business', 602320, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(42, 'magazine', 'Electronics', 602326, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(43, 'magazine', 'Fashion', 602332, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(44, 'magazine', 'Home/Garden', 602344, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(45, 'magazine', 'Literary', 602350, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(46, 'magazine', 'Newspapers', 1040160, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(47, 'magazine', 'Religion', 602362, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(48, 'magazine', 'Sport', 602366, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(49, 'magazine', 'Womens', 602372, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(50, 'magazine', 'Automotive', 602316, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(51, 'magazine', 'Childrens', 602322, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(52, 'magazine', 'Entertainment', 602328, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(53, 'magazine', 'Food', 602334, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(54, 'magazine', 'Health', 602340, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(55, 'magazine', 'International', 602346, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(56, 'magazine', 'Mens', 602352, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(57, 'magazine', 'News/Politics', 602358, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(58, 'magazine', 'Science/Nature', 602364, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(59, 'magazine', 'Teen', 602368, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(60, 'dvd', 'Top Selling', 130, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(61, 'dvd', 'New & Future Releases', 404332, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(62, 'dvd', 'Animation', 712256, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(63, 'dvd', 'Classic', 163345, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(64, 'dvd', 'Documentary', 508532, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(65, 'dvd', 'Horror', 163396, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(66, 'dvd', 'SciFi/Fantasy', 163431, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(67, 'dvd', 'Television', 163450, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(68, 'dvd', 'Action/Adventure', 163296, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(69, 'dvd', 'Anime/Manga', 517956, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(70, 'dvd', 'Comedy', 163357, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(71, 'dvd', 'Drama', 163379, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(72, 'dvd', 'Kids/Family', 163414, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(73, 'dvd', 'Music Video', 163420, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(74, 'dvd', 'Special Interest', 163448, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(75, 'dvd', 'Military/War', 586156, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(76, 'dvd', 'Mystery/Suspense', 512030, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(77, 'dvd', 'Sports', 467970, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(78, 'dvd', 'African-American Cinema', 538708, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(79, 'dvd', 'International', 163313, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(80, 'dvd', 'Boxed Sets', 501230, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(81, 'dvd', 'Cult', 466674, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(82, 'dvd', 'Gay & Lesbian', 301667, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(83, 'dvd', 'Hong Kong Action', 464426, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(84, 'dvd', 'Independents', 901596, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(85, 'dvd', 'Musicals', 508528, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(86, 'dvd', 'Westerns', 163312, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(87, 'music', 'Top Selling', 301668, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(88, 'music', 'Classical', 85, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(89, 'music', 'Dance/DJ', 7, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(90, 'music', 'Pop', 37, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(91, 'music', 'Rock', 40, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(92, 'music', 'Alternative', 30, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(93, 'music', 'Classic Rock', 67204, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(94, 'music', 'Jazz', 34, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(95, 'music', 'Rap', 38, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(96, 'music', 'Soundtracks', 42, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(97, 'music', 'Blues', 31, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(98, 'music', 'Christian', 173429, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(99, 'music', 'Country', 16, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(100, 'music', 'Latin', 289122, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(101, 'music', 'R/B', 39, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(102, 'software', 'Top Selling', 491286, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(103, 'software', 'Communication', 229636, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(104, 'software', 'Graphics', 229614, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(105, 'software', 'Linux', 290562, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(106, 'software', 'Operating Sys', 229653, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(107, 'software', 'Downloadable', 531448, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(108, 'software', 'Utilities', 229672, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(109, 'software', 'Business', 229535, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(110, 'software', 'Education', 229563, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(111, 'software', 'Home/Hobby', 229624, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(112, 'software', 'Mac', 229643, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(113, 'software', 'Finance', 229540, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(114, 'software', 'Handhelds', 229663, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(115, 'software', 'Video', 497022, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(116, 'software', 'Childrens', 229548, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(117, 'software', 'Games', 229575, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(118, 'software', 'Language/Travel', 497026, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(119, 'software', 'Networking', 229637, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(120, 'software', 'Programming', 229667, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(121, 'software', 'Web Dev', 497024, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(122, 'video', 'Top Selling', 404272, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(123, 'video', 'New & Future Releases', 286747, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(124, 'video', 'Animation', 712260, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(125, 'video', 'Classic', 127, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(126, 'video', 'Documentary', 508530, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(127, 'video', 'Horror', 131, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(128, 'video', 'SciFi/Fantasy', 144, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(129, 'video', 'Television', 136, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(130, 'video', 'Action/Adventure', 141, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(131, 'video', 'Anime/Manga', 281300, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(132, 'video', 'Comedy', 128, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(133, 'video', 'Drama', 129, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(134, 'video', 'Kids/Family', 132, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(135, 'video', 'Music Video', 133, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(136, 'video', 'Special Interest', 135, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(137, 'video', 'Military/War', 586154, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(138, 'video', 'Mystery/Suspense', 512026, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(139, 'video', 'Sports', 169798, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(140, 'video games', 'Top Selling', 471280, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(141, 'video games', 'Game Cube', 541022, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(142, 'video games', 'Play Station 2', 301712, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(143, 'video games', 'Game Boy', 229783, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(144, 'video games', 'Mac', 229647, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(145, 'video games', 'PC', 229575, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(146, 'video games', 'Game Boy Advance', 541020, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(147, 'video games', 'Xbox', 537504, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(148, 'kitchen', 'Top Selling', 491864, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(149, 'kitchen', 'Outlet', 526844, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(150, 'kitchen', 'Coffee/Tea', 289742, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(151, 'kitchen', 'Cookware', 289814, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(152, 'kitchen', 'Appliances', 289913, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(153, 'kitchen', 'Baking', 289668, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(154, 'kitchen', 'Housewares', 510080, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(155, 'kitchen', 'Tableware', 289891, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(156, 'kitchen', 'Bar Tools', 289728, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(157, 'kitchen', 'Gadgets', 289754, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(158, 'kitchen', 'Knives', 289851, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(159, 'toy', 'Top Selling', 491290, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(160, 'toy', 'Crafts', 171859, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(161, 'toy', 'Dolls', 171569, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(162, 'toy', 'Games', 171689, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(163, 'toy', 'Outdoor', 171960, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(164, 'toy', 'Action Figures', 171662, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(165, 'toy', 'Bikes', 569472, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(166, 'toy', 'Electronics', 720366, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(167, 'toy', 'Stuffed Animals', 171992, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(168, 'toy', 'Learning', 171911, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(169, 'toy', 'Building', 171814, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(170, 'toy', 'Furniture', 172790, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(171, 'toy', 'Puzzles', 171744, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(172, 'toy', 'Vehicles', 171600, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(173, 'lawn & patio', 'Top Selling', 468250, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(174, 'lawn & patio', 'Outlet', 526814, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(175, 'lawn & patio', 'Gifts', 553648, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(176, 'lawn & patio', 'Lawn/Garden Tools', 915484, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(177, 'lawn & patio', 'Pest Control', 553844, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(178, 'lawn & patio', 'Birding', 553632, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(179, 'lawn & patio', 'Grills', 553760, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(180, 'lawn & patio', 'Camping', 892986, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(181, 'lawn & patio', 'D?cor', 553788, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(182, 'lawn & patio', 'Heating & Lighting', 553778, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(183, 'lawn & patio', 'Furniture', 553824, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(184, 'photo', 'Top Selling', 502394, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(185, 'photo', 'Accessories', 172435, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(186, 'photo', 'Binoculars', 297842, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(187, 'photo', 'Camcorders', 172421, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(188, 'photo', 'Digital Cameras', 281052, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(189, 'photo', 'Film Cameras', 499106, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(190, 'photo', 'Frames & Albums', 499176, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(191, 'photo', 'Printers & Scanners', 499328, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(192, 'photo', 'Projectors', 525462, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(193, 'photo', 'Telescopes & Microscopes', 660408, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(194, 'personal computer', 'Top Selling', 565118, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(195, 'personal computer', 'AMD', 602286, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(196, 'personal computer', 'Apple', 565124, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(197, 'personal computer', 'HP', 565120, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(198, 'personal computer', 'IBM', 603128, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(199, 'personal computer', 'Intel', 565122, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(200, 'personal computer', 'Sony', 565126, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(201, 'personal computer', 'Toshiba', 598398, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(202, 'home improvement', 'Top Selling', 468240, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(203, 'home improvement', 'Outlet', 527694, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(204, 'home improvement', 'Electrical', 495266, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(205, 'home improvement', 'Heating & Cooling', 495346, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(206, 'home improvement', 'Lighting', 495224, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(207, 'home improvement', 'Automotive', 553294, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(208, 'home improvement', 'Hand Tools', 551238, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(209, 'home improvement', 'Equipment', 551240, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(210, 'home improvement', 'Power Tools', 551236, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(211, 'home improvement', 'Models', 923468, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(212, 'home improvement', 'Hardware', 511228, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(213, 'home improvement', 'Lawn/Garden', 551242, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(214, 'home improvement', 'Accessories', 552262, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(215, 'home improvement', 'Air Tools', 552684, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(216, 'home improvement', 'Cordless Tools', 552738, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(217, 'home improvement', 'Sanders', 552876, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(218, 'home improvement', 'Saws', 552894, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(219, 'home improvement', 'Painting', 228899, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(220, 'electronics', 'Top Selling', 172282, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(221, 'electronics', 'Outlet', 301793, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(222, 'electronics', 'Accessories & Supplies', 281407, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(223, 'electronics', 'Car Accessories', 226184, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(224, 'electronics', 'Clocks & Clock Radios', 509280, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(225, 'electronics', 'Computer Add-Ons', 172455, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(226, 'electronics', 'DVD Players', 172514, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(227, 'electronics', 'Gadgets', 172517, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(228, 'electronics', 'GPS & Navigation', 172526, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(229, 'electronics', 'Handhelds & PDAs', 172594, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(230, 'electronics', 'Home Audio', 172531, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(231, 'electronics', 'Home Office', 172574, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(232, 'electronics', 'Home Video', 172592, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(233, 'electronics', 'Phones', 172606, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(234, 'electronics', 'Portable Audio & Video', 172623, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(235, 'electronics', 'Printers', 172635, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(236, 'electronics', 'TVs', 172659, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(237, 'electronics', 'VCRs & DVRs', 172669, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(238, 'baby product', 'Top Selling', 540744, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(239, 'baby product', 'Backpacks & Carriers', 542456, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(240, 'baby product', 'Car Seats', 541560, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(241, 'baby product', 'Strollers', 541562, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(242, 'baby product', 'Travel Systems', 542442, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(243, 'baby product', 'Playards', 542468, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(244, 'baby product', 'Bedding', 541574, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(245, 'baby product', 'Furniture', 541576, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(246, 'baby product', 'Breast-feeding', 541568, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(247, 'baby product', 'Bottle Feeding', 541566, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(248, 'baby product', 'Solid Feeding', 541570, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(249, 'baby product', 'Highchairs', 542302, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(250, 'baby product', 'Play Centers', 548050, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(251, 'baby product', 'Swings & Bouncers', 542470, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(252, 'baby product', 'Toys: Birth - 12 months', 731816, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(253, 'baby product', 'Toys: 12 - 24 months', 731876, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(254, 'baby product', 'Toys: 2 years', 731924, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(255, 'office product', 'Office Products', 1064954, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(256, 'apparel', 'Apparel', 1036592, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(257, 'office product', 'Office Supplies', 1069242, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(258, 'office product', 'Office Electronics', 172574, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(259, 'office product', 'Cleaning & Maintenance', 1068798, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(260, 'office product', 'Business Presentation Supplies', 1069254, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(261, 'furniture', 'Furniture & Accessories', 1069102, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(262, 'furniture', 'Bookcases & Shelving', 1069108, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(263, 'furniture', 'Carts & Stands', 1069114, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(264, 'furniture', 'Chair Arms, Casters & Chair Mats', 1069144, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(265, 'furniture', 'Chairs & Stools', 1069122, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(266, 'furniture', 'Computer Desks & Hutches', 1069106, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(267, 'furniture', 'Desk Collections (Furniture Systems)', 1069160, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(268, 'furniture', 'Dollies, Caddies & Gliders', 1069184, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(269, 'furniture', 'File Cabinets & Storage', 1069166, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(270, 'furniture', 'Floor Mats', 1069158, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(271, 'furniture', 'Office Accessories & D?cor', 1069190, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(272, 'furniture', 'Panel Systems', 1085666, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(273, 'furniture', 'Computer Armoires', 1069104, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(274, 'furniture', 'Tables', 1069222, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(275, 'furniture', 'Workstations', 1069234, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(276, 'apparel', 'Women', 1040660, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(277, 'apparel', 'Men', 1040658, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(278, 'apparel', 'Kids & Baby', 1040662, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(279, 'apparel', 'Shoes', 1040668, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(280, 'apparel', 'Accessories', 1036700, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(281, 'jewelry', 'Jewelry', 1046274, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(282, 'jewelry', 'Rings', 1046334, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(283, 'jewelry', 'Earrings', 1046336, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(284, 'jewelry', 'Pendants & Charms', 1046344, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(285, 'jewelry', 'Bracelets', 1046338, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(286, 'jewelry', 'Necklaces', 1046340, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(287, 'jewelry', 'Pins', 1046342, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(288, 'jewelry', 'Anklets', 1077030, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(289, 'ebook', 'Top Selling', 551440, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(290, 'ebook', 'Biographies & Memoirs', 509380, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(291, 'ebook', 'Business & Investing', 509382, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(292, 'ebook', 'Children''s Books', 509384, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(293, 'ebook', 'Comics', 638668, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(294, 'ebook', 'Computers & Internet', 551438, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(295, 'ebook', 'Cooking, Food & Wine', 556952, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(296, 'ebook', 'Health, Mind & Body', 510778, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(297, 'ebook', 'History', 509392, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(298, 'ebook', 'Home & Garden', 556956, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(299, 'ebook', 'Literature & Fiction', 509386, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(300, 'ebook', 'Mystery & Thrillers', 509394, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(301, 'ebook', 'Nonfiction', 518304, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(302, 'ebook', 'Reference', 556958, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(303, 'ebook', 'Religion & Spirituality', 509396, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(304, 'ebook', 'Romance', 509398, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(305, 'ebook', 'Science Fiction & Fantasy', 509406, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(306, 'ebook', 'Science & Technology', 556954, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(307, 'ebook', 'Sports', 518302, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES(308, 'ebook', 'Travel', 551436, 551440, 'us');



--
-- Table structure for table `nuke_amazon_not_item`
--

CREATE TABLE IF NOT EXISTS `nuke_amazon_not_item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(10) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iid`),
  KEY `asin` (`asin`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_amazon_not_item`
--



--
-- Table structure for table `nuke_blog_alerts`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_alerts` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` mediumint(13) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(25) NOT NULL DEFAULT '',
  `alert_date` date NOT NULL DEFAULT '0000-00-00',
  `alert_body` text NOT NULL,
  PRIMARY KEY (`alert_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_alerts`
--




--
-- Table structure for table `nuke_blog_badwords`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_badwords` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `word_bad` varchar(48) NOT NULL DEFAULT '',
  `word_good` varchar(48) NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_badwords`
--

INSERT INTO `nuke_blog_badwords` VALUES(1, 'fuck', 'happy');
INSERT INTO `nuke_blog_badwords` VALUES(2, 'cunt', 'sunshine');
INSERT INTO `nuke_blog_badwords` VALUES(3, 'fucker', 'friend');
INSERT INTO `nuke_blog_badwords` VALUES(4, 'fucking', 'playing');
INSERT INTO `nuke_blog_badwords` VALUES(5, 'pussy', 'kitty');
INSERT INTO `nuke_blog_badwords` VALUES(6, 'cock', 'rooster');
INSERT INTO `nuke_blog_badwords` VALUES(7, 'c0ck', 'chicken');
INSERT INTO `nuke_blog_badwords` VALUES(8, 'cum', 'laugh');
INSERT INTO `nuke_blog_badwords` VALUES(9, 'twat', 'puppy');
INSERT INTO `nuke_blog_badwords` VALUES(10, 'clit', 'dove');
INSERT INTO `nuke_blog_badwords` VALUES(11, 'bitch', 'gripe');
INSERT INTO `nuke_blog_badwords` VALUES(12, 'fuk', 'gerbil');
INSERT INTO `nuke_blog_badwords` VALUES(13, 'fuking', 'jumping');
INSERT INTO `nuke_blog_badwords` VALUES(14, 'motherfucker', 'good budy');



--
-- Table structure for table `nuke_blog_blogs`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_blogs` (
  `blog_id` mediumint(13) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_title` varchar(255) NOT NULL DEFAULT '',
  `blog_body` text NOT NULL,
  `blog_mood` int(11) NOT NULL DEFAULT '0',
  `blog_date` date NOT NULL DEFAULT '0000-00-00',
  `blog_update` date NOT NULL DEFAULT '0000-00-00',
  `blog_status` tinyint(1) NOT NULL DEFAULT '1',
  `blog_comments` tinyint(1) NOT NULL DEFAULT '1',
  `blog_views` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_blogs`
--




--
-- Table structure for table `nuke_blog_comments`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_comments` (
  `comm_id` mediumint(13) NOT NULL AUTO_INCREMENT,
  `blog_id` mediumint(13) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comm_body` text NOT NULL,
  `comm_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`comm_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_comments`
--




--
-- Table structure for table `nuke_blog_config`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_config` (
  `config_key` varchar(24) NOT NULL DEFAULT '',
  `config_value` text NOT NULL,
  `config_desc` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_config`
--

INSERT INTO `nuke_blog_config` VALUES('show_sql', '0', 'Display SQL statements for debugging purposes.');
INSERT INTO `nuke_blog_config` VALUES('bad_words', '1', 'Turn bad word filtering on or off.');
INSERT INTO `nuke_blog_config` VALUES('blog_page', '20', 'The number of blogs per page in list view.');
INSERT INTO `nuke_blog_config` VALUES('blog_wrap', '5', 'The number of pages per line in foot navigation.');
INSERT INTO `nuke_blog_config` VALUES('blog_admin', 'Nobody', 'Admin name of primary blog administrator.');
INSERT INTO `nuke_blog_config` VALUES('right_blocks', '1', 'Turn right side blocks on and off.');
INSERT INTO `nuke_blog_config` VALUES('points_blog', '3', 'Points awarded to blog poster.');
INSERT INTO `nuke_blog_config` VALUES('points_comment', '1', 'Points awarded to comment poster.');
INSERT INTO `nuke_blog_config` VALUES('mass_remove', '0', 'Reduce the points of all commenting users if blog author removes a blog and associated comments?');



--
-- Table structure for table `nuke_blog_friends`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_friends` (
  `friend_id` mediumint(14) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `friend_uid` int(11) NOT NULL DEFAULT '0',
  `friend_username` varchar(25) NOT NULL DEFAULT '',
  `friend_added` date NOT NULL DEFAULT '0000-00-00',
  `friend_visit` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_friends`
--




--
-- Table structure for table `nuke_blog_messages`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_messages` (
  `mess_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` mediumint(14) NOT NULL DEFAULT '0',
  `blog_title` varchar(255) NOT NULL DEFAULT '',
  `blog_date` date NOT NULL DEFAULT '0000-00-00',
  `aid` varchar(48) NOT NULL DEFAULT '',
  `mess_date` date NOT NULL DEFAULT '0000-00-00',
  `mess_body` text NOT NULL,
  `mess_read` tinyint(1) NOT NULL DEFAULT '0',
  `mess_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mess_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_messages`
--




--
-- Table structure for table `nuke_blog_moods`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_moods` (
  `mood_id` int(11) NOT NULL AUTO_INCREMENT,
  `mood_title` varchar(128) NOT NULL DEFAULT '',
  `mood_image` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`mood_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_moods`
--

INSERT INTO `nuke_blog_moods` VALUES(1, 'Calm', 'calm.gif');
INSERT INTO `nuke_blog_moods` VALUES(2, 'Angry', 'angry.gif');
INSERT INTO `nuke_blog_moods` VALUES(3, 'Rejuvenated', 'rejuvenated.gif');
INSERT INTO `nuke_blog_moods` VALUES(4, 'Aggravated', 'aggravated.gif');
INSERT INTO `nuke_blog_moods` VALUES(5, 'Mellow', 'mellow.gif');
INSERT INTO `nuke_blog_moods` VALUES(6, 'Annoyed', 'annoyed.gif');
INSERT INTO `nuke_blog_moods` VALUES(7, 'Peaceful', 'peaceful.gif');
INSERT INTO `nuke_blog_moods` VALUES(8, 'Bitchy', 'bitchy.gif');
INSERT INTO `nuke_blog_moods` VALUES(9, 'Content', 'content.gif');
INSERT INTO `nuke_blog_moods` VALUES(10, 'Cranky', 'cranky.gif');
INSERT INTO `nuke_blog_moods` VALUES(11, 'Full', 'full.gif');
INSERT INTO `nuke_blog_moods` VALUES(12, 'Cynical', 'cynical.gif');
INSERT INTO `nuke_blog_moods` VALUES(13, 'Relieved', 'relieved.gif');
INSERT INTO `nuke_blog_moods` VALUES(14, 'Enraged', 'enraged.gif');
INSERT INTO `nuke_blog_moods` VALUES(15, 'Recumbent', 'recumbent.gif');
INSERT INTO `nuke_blog_moods` VALUES(16, 'Silly', 'silly.gif');
INSERT INTO `nuke_blog_moods` VALUES(17, 'Frustrated', 'frustrated.gif');
INSERT INTO `nuke_blog_moods` VALUES(18, 'Crazy', 'crazy.gif');
INSERT INTO `nuke_blog_moods` VALUES(19, 'Grumpy', 'grumpy.gif');
INSERT INTO `nuke_blog_moods` VALUES(20, 'Satisfied', 'satisfied.gif');
INSERT INTO `nuke_blog_moods` VALUES(21, 'Ditzy', 'ditzy.gif');
INSERT INTO `nuke_blog_moods` VALUES(22, 'Infuriated', 'infuriated.gif');
INSERT INTO `nuke_blog_moods` VALUES(23, 'Flirty', 'flirty.gif');
INSERT INTO `nuke_blog_moods` VALUES(24, 'Irate', 'irate.gif');
INSERT INTO `nuke_blog_moods` VALUES(25, 'Giddy', 'giddy.gif');
INSERT INTO `nuke_blog_moods` VALUES(26, 'Giggly', 'giggly.gif');
INSERT INTO `nuke_blog_moods` VALUES(27, 'Irritated', 'irritated.gif');
INSERT INTO `nuke_blog_moods` VALUES(28, 'Naughty', 'naughty.gif');
INSERT INTO `nuke_blog_moods` VALUES(29, 'Moody', 'moody.gif');
INSERT INTO `nuke_blog_moods` VALUES(30, 'Complacent', 'complacent.gif');
INSERT INTO `nuke_blog_moods` VALUES(31, 'Pissed_off', 'pissed_off.gif');
INSERT INTO `nuke_blog_moods` VALUES(32, 'Quixotic', 'quixotic.gif');
INSERT INTO `nuke_blog_moods` VALUES(33, 'Stressed', 'stressed.gif');
INSERT INTO `nuke_blog_moods` VALUES(34, 'Weird', 'weird.gif');
INSERT INTO `nuke_blog_moods` VALUES(35, 'Rushed', 'rushed.gif');
INSERT INTO `nuke_blog_moods` VALUES(36, 'Suprised', 'suprised.gif');
INSERT INTO `nuke_blog_moods` VALUES(37, 'Awake', 'awake.gif');
INSERT INTO `nuke_blog_moods` VALUES(38, 'Shocked', 'shocked.gif');
INSERT INTO `nuke_blog_moods` VALUES(39, 'Confused', 'confused.gif');
INSERT INTO `nuke_blog_moods` VALUES(40, 'Thankful', 'thankful.gif');
INSERT INTO `nuke_blog_moods` VALUES(41, 'Curious', 'curious.gif');
INSERT INTO `nuke_blog_moods` VALUES(42, 'Indifferent', 'indifferent.gif');
INSERT INTO `nuke_blog_moods` VALUES(43, 'Determined', 'determined.gif');
INSERT INTO `nuke_blog_moods` VALUES(44, 'Touched', 'touched.gif');
INSERT INTO `nuke_blog_moods` VALUES(45, 'Nerdy', 'nerdy.gif');
INSERT INTO `nuke_blog_moods` VALUES(46, 'Predatory', 'predatory.gif');
INSERT INTO `nuke_blog_moods` VALUES(47, 'Dorky', 'drunk.gif');
INSERT INTO `nuke_blog_moods` VALUES(48, 'Devious', 'devious.gif');
INSERT INTO `nuke_blog_moods` VALUES(49, 'Geeky', 'geeky.gif');
INSERT INTO `nuke_blog_moods` VALUES(50, 'Okay', 'okay.gif');
INSERT INTO `nuke_blog_moods` VALUES(51, 'Energetic', 'energetic.gif');
INSERT INTO `nuke_blog_moods` VALUES(52, 'Blah', 'blah.gif');
INSERT INTO `nuke_blog_moods` VALUES(53, 'Bouncy', 'bouncy.gif');
INSERT INTO `nuke_blog_moods` VALUES(54, 'Lazy', 'lazy.gif');
INSERT INTO `nuke_blog_moods` VALUES(55, 'Hyper', 'hyper.gif');
INSERT INTO `nuke_blog_moods` VALUES(56, 'Mischievous', 'mischievous.gif');
INSERT INTO `nuke_blog_moods` VALUES(57, 'Enthralled', 'enthralled.gif');
INSERT INTO `nuke_blog_moods` VALUES(58, 'Blank', 'blank.gif');
INSERT INTO `nuke_blog_moods` VALUES(59, 'Happy', 'happy.gif');
INSERT INTO `nuke_blog_moods` VALUES(60, 'Nervous', 'nervous.gif');
INSERT INTO `nuke_blog_moods` VALUES(61, 'Amused', 'amused.gif');
INSERT INTO `nuke_blog_moods` VALUES(62, 'Pensive', 'pensive.gif');
INSERT INTO `nuke_blog_moods` VALUES(63, 'Cheerful', 'cheerful.gif');
INSERT INTO `nuke_blog_moods` VALUES(64, 'Working', 'working.gif');
INSERT INTO `nuke_blog_moods` VALUES(65, 'Chipper', 'chipper.gif');
INSERT INTO `nuke_blog_moods` VALUES(66, 'Artistic', 'artistic.gif');
INSERT INTO `nuke_blog_moods` VALUES(67, 'Ecstatic', 'ecstatic.gif');
INSERT INTO `nuke_blog_moods` VALUES(68, 'Busy', 'busy.gif');
INSERT INTO `nuke_blog_moods` VALUES(69, 'Excited', 'excited.gif');
INSERT INTO `nuke_blog_moods` VALUES(71, 'High', 'high.gif');
INSERT INTO `nuke_blog_moods` VALUES(72, 'Horny', 'horny.gif');
INSERT INTO `nuke_blog_moods` VALUES(73, 'Good', 'good.gif');
INSERT INTO `nuke_blog_moods` VALUES(74, 'Grateful', 'grateful.gif');
INSERT INTO `nuke_blog_moods` VALUES(75, 'Exanimate', 'exanimate.gif');
INSERT INTO `nuke_blog_moods` VALUES(76, 'Impressed', 'impressed.gif');
INSERT INTO `nuke_blog_moods` VALUES(77, 'Jubilant', 'jubilant.gif');
INSERT INTO `nuke_blog_moods` VALUES(78, 'Loved', 'loved.gif');
INSERT INTO `nuke_blog_moods` VALUES(79, 'Indescribable', 'indescribable.gif');
INSERT INTO `nuke_blog_moods` VALUES(80, 'Optimistic', 'optimistic.gif');
INSERT INTO `nuke_blog_moods` VALUES(81, 'Hopeful', 'hopeful.gif');
INSERT INTO `nuke_blog_moods` VALUES(82, 'Pleased', 'pleased.gif');
INSERT INTO `nuke_blog_moods` VALUES(83, 'Apathetic', 'apathetic.gif');
INSERT INTO `nuke_blog_moods` VALUES(84, 'Refreshed', 'refreshed.gif');
INSERT INTO `nuke_blog_moods` VALUES(85, 'Relaxed', 'relaxed.gif');
INSERT INTO `nuke_blog_moods` VALUES(86, 'Nostalgic', 'nostalgic.gif');
INSERT INTO `nuke_blog_moods` VALUES(87, 'Lethargic', 'lethargic.gif');
INSERT INTO `nuke_blog_moods` VALUES(88, 'Listless', 'listless.gif');
INSERT INTO `nuke_blog_moods` VALUES(89, 'Sad', 'sad.gif');
INSERT INTO `nuke_blog_moods` VALUES(90, 'Bored', 'bored.gif');
INSERT INTO `nuke_blog_moods` VALUES(91, 'Crappy', 'crappy.gif');
INSERT INTO `nuke_blog_moods` VALUES(92, 'Crushed', 'crushed.gif');
INSERT INTO `nuke_blog_moods` VALUES(93, 'Depressed', 'depressed.gif');
INSERT INTO `nuke_blog_moods` VALUES(94, 'Thoughtful', 'thoughtful.gif');
INSERT INTO `nuke_blog_moods` VALUES(95, 'Disappointed', 'disappointed.gif');
INSERT INTO `nuke_blog_moods` VALUES(96, 'Contemplative', 'contemplative.gif');
INSERT INTO `nuke_blog_moods` VALUES(97, 'Discontent', 'discontent.gif');
INSERT INTO `nuke_blog_moods` VALUES(98, 'Envious', 'envious.gif');
INSERT INTO `nuke_blog_moods` VALUES(99, 'Gloomy', 'gloomy.gif');
INSERT INTO `nuke_blog_moods` VALUES(100, 'Accomplished', 'accomplished.gif');
INSERT INTO `nuke_blog_moods` VALUES(101, 'Pessimistic', 'pessimistic.gif');
INSERT INTO `nuke_blog_moods` VALUES(102, 'Jealous', 'jealous.gif');
INSERT INTO `nuke_blog_moods` VALUES(103, 'Lonely', 'lonely.gif');
INSERT INTO `nuke_blog_moods` VALUES(104, 'Productive', 'productive.gif');
INSERT INTO `nuke_blog_moods` VALUES(105, 'Melancholy', 'melancholy.gif');
INSERT INTO `nuke_blog_moods` VALUES(106, 'Morose', 'morose.gif');
INSERT INTO `nuke_blog_moods` VALUES(107, 'Numb', 'numb.gif');
INSERT INTO `nuke_blog_moods` VALUES(108, 'Rejected', 'rejected.gif');
INSERT INTO `nuke_blog_moods` VALUES(109, 'Sympathetic', 'sympathetic.gif');
INSERT INTO `nuke_blog_moods` VALUES(110, 'Uncomfortable', 'uncomfortable.gif');
INSERT INTO `nuke_blog_moods` VALUES(111, 'Cold', 'cold.gif');
INSERT INTO `nuke_blog_moods` VALUES(112, 'Dirty', 'dirty.gif');
INSERT INTO `nuke_blog_moods` VALUES(113, 'Drunk', 'drunk.gif');
INSERT INTO `nuke_blog_moods` VALUES(114, 'Exhausted', 'exhausted.gif');
INSERT INTO `nuke_blog_moods` VALUES(115, 'Drained', 'drained.gif');
INSERT INTO `nuke_blog_moods` VALUES(116, 'Tired', 'tired.gif');
INSERT INTO `nuke_blog_moods` VALUES(117, 'Groggy', 'groggy.gif');
INSERT INTO `nuke_blog_moods` VALUES(118, 'Sleepy', 'sleepy.gif');
INSERT INTO `nuke_blog_moods` VALUES(119, 'Guilty', 'guilty.gif');
INSERT INTO `nuke_blog_moods` VALUES(120, 'Hot', 'hot.gif');
INSERT INTO `nuke_blog_moods` VALUES(121, 'Hungry', 'hungry.gif');
INSERT INTO `nuke_blog_moods` VALUES(122, 'Restless', 'restless.gif');
INSERT INTO `nuke_blog_moods` VALUES(123, 'Sick', 'sick.gif');
INSERT INTO `nuke_blog_moods` VALUES(124, 'Nauseated', 'nauseated.gif');
INSERT INTO `nuke_blog_moods` VALUES(125, 'Sore', 'sore.gif');
INSERT INTO `nuke_blog_moods` VALUES(126, 'Thirsty', 'thirsty.gif');
INSERT INTO `nuke_blog_moods` VALUES(127, 'Worried', 'worried.gif');
INSERT INTO `nuke_blog_moods` VALUES(128, 'Scared', 'scared.gif');
INSERT INTO `nuke_blog_moods` VALUES(129, 'Anxious', 'anxious.gif');
INSERT INTO `nuke_blog_moods` VALUES(130, 'Distressed', 'distressed.gif');
INSERT INTO `nuke_blog_moods` VALUES(131, 'Embarrassed', 'embarrassed.gif');
INSERT INTO `nuke_blog_moods` VALUES(132, 'Intimidated', 'intimidated.gif');



--
-- Table structure for table `nuke_blog_users`
--

CREATE TABLE IF NOT EXISTS `nuke_blog_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `user_last` date NOT NULL DEFAULT '0000-00-00',
  `user_blogs` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_blog_users`
--


--
-- Table structure for table `nuke_cart_brands`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` text NOT NULL,
  `brand_url` text NOT NULL,
  `brand_info` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`brand_id`),
  KEY `brandID` (`brand_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_brands`
--




--
-- Table structure for table `nuke_cart_cartitems`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_cartitems` (
  `userID` varchar(32) NOT NULL DEFAULT '0',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `itemID` bigint(20) NOT NULL AUTO_INCREMENT,
  `prodID` int(11) NOT NULL DEFAULT '0',
  `optID` text,
  `qty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_cartitems`
--




--
-- Table structure for table `nuke_cart_categories`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `cdescription` text NOT NULL,
  `ldescription` text NOT NULL,
  `keywords` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `categoryTemplate` varchar(255) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`),
  KEY `cid` (`category_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_categories`
--




--
-- Table structure for table `nuke_cart_config`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_config`
--

INSERT INTO `nuke_cart_config` VALUES('companyName', 'Your Company Name');
INSERT INTO `nuke_cart_config` VALUES('companyInfo', 'Your Store Description');
INSERT INTO `nuke_cart_config` VALUES('companyLogo', '');
INSERT INTO `nuke_cart_config` VALUES('companyAddress1', '1234 Alfalfa Ct.');
INSERT INTO `nuke_cart_config` VALUES('companyAddress2', '');
INSERT INTO `nuke_cart_config` VALUES('companyCity', 'Nuketown');
INSERT INTO `nuke_cart_config` VALUES('companyState', 'Nukeland');
INSERT INTO `nuke_cart_config` VALUES('companyCountry', 'United States');
INSERT INTO `nuke_cart_config` VALUES('companyZip', '12345');
INSERT INTO `nuke_cart_config` VALUES('companyPhone', '(123) 456-7890');
INSERT INTO `nuke_cart_config` VALUES('companyFax', '(123) 456-7891');
INSERT INTO `nuke_cart_config` VALUES('cartdomainProtocol', 'http://');
INSERT INTO `nuke_cart_config` VALUES('cartdomainURL', 'yourdomain.com/');
INSERT INTO `nuke_cart_config` VALUES('cartadminmail', 'admin@yoursite.com');
INSERT INTO `nuke_cart_config` VALUES('pagetitle', 'Online Catalogue');
INSERT INTO `nuke_cart_config` VALUES('promoTemplate', 'emporiumbasic');
INSERT INTO `nuke_cart_config` VALUES('categoryTemplate', 'amazon');
INSERT INTO `nuke_cart_config` VALUES('productTemplate', 'emporiumbasic');
INSERT INTO `nuke_cart_config` VALUES('viewrightblocks', '1');
INSERT INTO `nuke_cart_config` VALUES('userereceipt', '1');
INSERT INTO `nuke_cart_config` VALUES('adminereceipt', '1');
INSERT INTO `nuke_cart_config` VALUES('sessionfile', 'cookie');
INSERT INTO `nuke_cart_config` VALUES('guestCart', '1');
INSERT INTO `nuke_cart_config` VALUES('guestCheckout', '1');
INSERT INTO `nuke_cart_config` VALUES('thumbFolder', 'images/emporium/products/thumbnails/');
INSERT INTO `nuke_cart_config` VALUES('mediaFolder', 'images/emporium/products/media/');
INSERT INTO `nuke_cart_config` VALUES('thumbWidth', '80');
INSERT INTO `nuke_cart_config` VALUES('imageSoftware', 'gd');
INSERT INTO `nuke_cart_config` VALUES('imageSoftwarePath', '');
INSERT INTO `nuke_cart_config` VALUES('autoStockRemove', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_firstname', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_lastname', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_address1', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_address2', '');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_city', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_state', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_zip', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_shipping_country', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_firstname', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_lastname', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_address1', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_address2', '');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_city', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_state', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_zip', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_country', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_email', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_dayphone', '1');
INSERT INTO `nuke_cart_config` VALUES('co_req_billing_evephone', '1');



--
-- Table structure for table `nuke_cart_countries`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_countries` (
  `countryID` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(50) NOT NULL DEFAULT '',
  `countryCode` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`countryID`),
  KEY `countryID` (`countryID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_countries`
--

INSERT INTO `nuke_cart_countries` VALUES(1, 'Afghanistan', 'AF');
INSERT INTO `nuke_cart_countries` VALUES(2, 'Albania', 'AL');
INSERT INTO `nuke_cart_countries` VALUES(3, 'Algeria', 'DZ');
INSERT INTO `nuke_cart_countries` VALUES(4, 'American Samoa', 'AS');
INSERT INTO `nuke_cart_countries` VALUES(5, 'Andorra', 'AD');
INSERT INTO `nuke_cart_countries` VALUES(6, 'Angola', 'AO');
INSERT INTO `nuke_cart_countries` VALUES(7, 'Anguilla', 'AI');
INSERT INTO `nuke_cart_countries` VALUES(8, 'Antarctica', 'AQ');
INSERT INTO `nuke_cart_countries` VALUES(9, 'Antigua and Barbuda', 'AG');
INSERT INTO `nuke_cart_countries` VALUES(10, 'Argentina', 'AR');
INSERT INTO `nuke_cart_countries` VALUES(11, 'Armenia', 'AM');
INSERT INTO `nuke_cart_countries` VALUES(12, 'Aruba', 'AW');
INSERT INTO `nuke_cart_countries` VALUES(13, 'Australia', 'AU');
INSERT INTO `nuke_cart_countries` VALUES(14, 'Austria', 'AT');
INSERT INTO `nuke_cart_countries` VALUES(15, 'Azerbaijan', 'AZ');
INSERT INTO `nuke_cart_countries` VALUES(16, 'Bahamas', 'BS');
INSERT INTO `nuke_cart_countries` VALUES(17, 'Bahrain', 'BH');
INSERT INTO `nuke_cart_countries` VALUES(18, 'Bangladesh', 'BD');
INSERT INTO `nuke_cart_countries` VALUES(19, 'Barbados', 'BB');
INSERT INTO `nuke_cart_countries` VALUES(20, 'Belarus', 'BY');
INSERT INTO `nuke_cart_countries` VALUES(21, 'Belgium', 'BE');
INSERT INTO `nuke_cart_countries` VALUES(22, 'Belize', 'BZ');
INSERT INTO `nuke_cart_countries` VALUES(23, 'Benin', 'BJ');
INSERT INTO `nuke_cart_countries` VALUES(24, 'Bermuda', 'BM');
INSERT INTO `nuke_cart_countries` VALUES(25, 'Bhutan', 'BT');
INSERT INTO `nuke_cart_countries` VALUES(26, 'Bolivia', 'BO');
INSERT INTO `nuke_cart_countries` VALUES(27, 'Bosnia and Herzegowina', 'BA');
INSERT INTO `nuke_cart_countries` VALUES(28, 'Botswana', 'BW');
INSERT INTO `nuke_cart_countries` VALUES(29, 'Bouvet Island', 'BV');
INSERT INTO `nuke_cart_countries` VALUES(30, 'Brazil', 'BR');
INSERT INTO `nuke_cart_countries` VALUES(31, 'British Indian Ocean Territory', 'IO');
INSERT INTO `nuke_cart_countries` VALUES(32, 'British Virgin Islands', 'VG');
INSERT INTO `nuke_cart_countries` VALUES(33, 'Brunei Darussalam', 'BN');
INSERT INTO `nuke_cart_countries` VALUES(34, 'Bulgaria', 'BG');
INSERT INTO `nuke_cart_countries` VALUES(35, 'Burkina Faso', 'BF');
INSERT INTO `nuke_cart_countries` VALUES(36, 'Burundi', 'BI');
INSERT INTO `nuke_cart_countries` VALUES(37, 'Cambodia', 'KH');
INSERT INTO `nuke_cart_countries` VALUES(38, 'Cameroon', 'CM');
INSERT INTO `nuke_cart_countries` VALUES(39, 'Canada', 'CA');
INSERT INTO `nuke_cart_countries` VALUES(40, 'Cape Verde', 'CV');
INSERT INTO `nuke_cart_countries` VALUES(41, 'Cayman Islands', 'KY');
INSERT INTO `nuke_cart_countries` VALUES(42, 'Central African Republic', 'CF');
INSERT INTO `nuke_cart_countries` VALUES(43, 'Chad', 'TD');
INSERT INTO `nuke_cart_countries` VALUES(44, 'Chile', 'CL');
INSERT INTO `nuke_cart_countries` VALUES(45, 'China', 'CN');
INSERT INTO `nuke_cart_countries` VALUES(46, 'Christmas Island', 'CX');
INSERT INTO `nuke_cart_countries` VALUES(47, 'Cocos (Keeling) Islands', 'CC');
INSERT INTO `nuke_cart_countries` VALUES(48, 'Colombia', 'CO');
INSERT INTO `nuke_cart_countries` VALUES(49, 'Comoros', 'KM');
INSERT INTO `nuke_cart_countries` VALUES(50, 'Congo', 'CG');
INSERT INTO `nuke_cart_countries` VALUES(51, 'Cook Islands', 'CK');
INSERT INTO `nuke_cart_countries` VALUES(52, 'Costa Rica', 'CR');
INSERT INTO `nuke_cart_countries` VALUES(53, 'Cote D''ivoire', 'CI');
INSERT INTO `nuke_cart_countries` VALUES(54, 'Croatia', 'HR');
INSERT INTO `nuke_cart_countries` VALUES(55, 'Cuba', 'CU');
INSERT INTO `nuke_cart_countries` VALUES(56, 'Cyprus', 'CY');
INSERT INTO `nuke_cart_countries` VALUES(57, 'Czech Republic', 'CZ');
INSERT INTO `nuke_cart_countries` VALUES(58, 'Czechoslovakia', 'CS');
INSERT INTO `nuke_cart_countries` VALUES(59, 'Denmark', 'DK');
INSERT INTO `nuke_cart_countries` VALUES(60, 'Djibouti', 'DJ');
INSERT INTO `nuke_cart_countries` VALUES(61, 'Dominica', 'DM');
INSERT INTO `nuke_cart_countries` VALUES(62, 'Dominican Republic', 'DO');
INSERT INTO `nuke_cart_countries` VALUES(63, 'East Timor', 'TP');
INSERT INTO `nuke_cart_countries` VALUES(64, 'Ecuador', 'EC');
INSERT INTO `nuke_cart_countries` VALUES(65, 'Egypt', 'EG');
INSERT INTO `nuke_cart_countries` VALUES(66, 'El Salvador', 'SV');
INSERT INTO `nuke_cart_countries` VALUES(67, 'Equatorial Guinea', 'GQ');
INSERT INTO `nuke_cart_countries` VALUES(68, 'Eritrea', 'ER');
INSERT INTO `nuke_cart_countries` VALUES(69, 'Estonia', 'EE');
INSERT INTO `nuke_cart_countries` VALUES(70, 'Ethiopia', 'ET');
INSERT INTO `nuke_cart_countries` VALUES(71, 'Falkland Islands (Malvinas)', 'FK');
INSERT INTO `nuke_cart_countries` VALUES(72, 'Faroe Islands', 'FO');
INSERT INTO `nuke_cart_countries` VALUES(73, 'Fiji', 'FJ');
INSERT INTO `nuke_cart_countries` VALUES(74, 'Finland', 'FI');
INSERT INTO `nuke_cart_countries` VALUES(75, 'France', 'FR');
INSERT INTO `nuke_cart_countries` VALUES(76, 'France, Metropolitan', 'FX');
INSERT INTO `nuke_cart_countries` VALUES(77, 'French Guiana', 'GF');
INSERT INTO `nuke_cart_countries` VALUES(78, 'French Polynesia', 'PF');
INSERT INTO `nuke_cart_countries` VALUES(79, 'French Southern Territories', 'TF');
INSERT INTO `nuke_cart_countries` VALUES(80, 'Gabon', 'GA');
INSERT INTO `nuke_cart_countries` VALUES(81, 'Gambia', 'GM');
INSERT INTO `nuke_cart_countries` VALUES(82, 'Georgia', 'GE');
INSERT INTO `nuke_cart_countries` VALUES(83, 'Germany', 'DE');
INSERT INTO `nuke_cart_countries` VALUES(84, 'Ghana', 'GH');
INSERT INTO `nuke_cart_countries` VALUES(85, 'Gibraltar', 'GI');
INSERT INTO `nuke_cart_countries` VALUES(86, 'Greece', 'GR');
INSERT INTO `nuke_cart_countries` VALUES(87, 'Greenland', 'GL');
INSERT INTO `nuke_cart_countries` VALUES(88, 'Grenada', 'GD');
INSERT INTO `nuke_cart_countries` VALUES(89, 'Guadeloupe', 'GP');
INSERT INTO `nuke_cart_countries` VALUES(90, 'Guam', 'GU');
INSERT INTO `nuke_cart_countries` VALUES(91, 'Guatemala', 'GT');
INSERT INTO `nuke_cart_countries` VALUES(92, 'Guinea', 'GN');
INSERT INTO `nuke_cart_countries` VALUES(93, 'Guinea-Bissau', 'GW');
INSERT INTO `nuke_cart_countries` VALUES(94, 'Guyana', 'GY');
INSERT INTO `nuke_cart_countries` VALUES(95, 'Haiti', 'HT');
INSERT INTO `nuke_cart_countries` VALUES(96, 'Heard and McDonald Islands', 'HM');
INSERT INTO `nuke_cart_countries` VALUES(97, 'Honduras', 'HN');
INSERT INTO `nuke_cart_countries` VALUES(98, 'Hong Kong', 'HK');
INSERT INTO `nuke_cart_countries` VALUES(99, 'Hungary', 'HU');
INSERT INTO `nuke_cart_countries` VALUES(100, 'Iceland', 'IS');
INSERT INTO `nuke_cart_countries` VALUES(101, 'India', 'IN');
INSERT INTO `nuke_cart_countries` VALUES(102, 'Indonesia', 'ID');
INSERT INTO `nuke_cart_countries` VALUES(103, 'Iraq', 'IQ');
INSERT INTO `nuke_cart_countries` VALUES(104, 'Ireland', 'IE');
INSERT INTO `nuke_cart_countries` VALUES(105, 'Islamic Republic of Iran', 'IR');
INSERT INTO `nuke_cart_countries` VALUES(106, 'Israel', 'IL');
INSERT INTO `nuke_cart_countries` VALUES(107, 'Italy', 'IT');
INSERT INTO `nuke_cart_countries` VALUES(108, 'Jamaica', 'JM');
INSERT INTO `nuke_cart_countries` VALUES(109, 'Japan', 'JP');
INSERT INTO `nuke_cart_countries` VALUES(110, 'Jordan', 'JO');
INSERT INTO `nuke_cart_countries` VALUES(111, 'Kazakhstan', 'KZ');
INSERT INTO `nuke_cart_countries` VALUES(112, 'Kenya', 'KE');
INSERT INTO `nuke_cart_countries` VALUES(113, 'Kiribati', 'KI');
INSERT INTO `nuke_cart_countries` VALUES(114, 'Korea', 'KP');
INSERT INTO `nuke_cart_countries` VALUES(115, 'Korea, Republic of', 'KR');
INSERT INTO `nuke_cart_countries` VALUES(116, 'Kuwait', 'KW');
INSERT INTO `nuke_cart_countries` VALUES(117, 'Kyrgyzstan', 'KG');
INSERT INTO `nuke_cart_countries` VALUES(118, 'Laos', 'LA');
INSERT INTO `nuke_cart_countries` VALUES(119, 'Latvia', 'LV');
INSERT INTO `nuke_cart_countries` VALUES(120, 'Lebanon', 'LB');
INSERT INTO `nuke_cart_countries` VALUES(121, 'Lesotho', 'LS');
INSERT INTO `nuke_cart_countries` VALUES(122, 'Liberia', 'LR');
INSERT INTO `nuke_cart_countries` VALUES(123, 'Libyan Arab Jamahiriya', 'LY');
INSERT INTO `nuke_cart_countries` VALUES(124, 'Liechtenstein', 'LI');
INSERT INTO `nuke_cart_countries` VALUES(125, 'Lithuania', 'LT');
INSERT INTO `nuke_cart_countries` VALUES(126, 'Luxembourg', 'LU');
INSERT INTO `nuke_cart_countries` VALUES(127, 'Macau', 'MO');
INSERT INTO `nuke_cart_countries` VALUES(128, 'Macedonia', 'MK');
INSERT INTO `nuke_cart_countries` VALUES(129, 'Madagascar', 'MG');
INSERT INTO `nuke_cart_countries` VALUES(130, 'Malawi', 'MW');
INSERT INTO `nuke_cart_countries` VALUES(131, 'Malaysia', 'MY');
INSERT INTO `nuke_cart_countries` VALUES(132, 'Maldives', 'MV');
INSERT INTO `nuke_cart_countries` VALUES(133, 'Mali', 'ML');
INSERT INTO `nuke_cart_countries` VALUES(134, 'Malta', 'MT');
INSERT INTO `nuke_cart_countries` VALUES(135, 'Marshall Islands', 'MH');
INSERT INTO `nuke_cart_countries` VALUES(136, 'Martinique', 'MQ');
INSERT INTO `nuke_cart_countries` VALUES(137, 'Mauritania', 'MR');
INSERT INTO `nuke_cart_countries` VALUES(138, 'Mauritius', 'MU');
INSERT INTO `nuke_cart_countries` VALUES(139, 'Mayotte', 'YT');
INSERT INTO `nuke_cart_countries` VALUES(140, 'Mexico', 'MX');
INSERT INTO `nuke_cart_countries` VALUES(141, 'Micronesia', 'FM');
INSERT INTO `nuke_cart_countries` VALUES(142, 'Moldova, Republic of', 'MD');
INSERT INTO `nuke_cart_countries` VALUES(143, 'Monaco', 'MC');
INSERT INTO `nuke_cart_countries` VALUES(144, 'Mongolia', 'MN');
INSERT INTO `nuke_cart_countries` VALUES(145, 'Montserrat', 'MS');
INSERT INTO `nuke_cart_countries` VALUES(146, 'Morocco', 'MA');
INSERT INTO `nuke_cart_countries` VALUES(147, 'Mozambique', 'MZ');
INSERT INTO `nuke_cart_countries` VALUES(148, 'Myanmar', 'MM');
INSERT INTO `nuke_cart_countries` VALUES(149, 'Namibia', 'NA');
INSERT INTO `nuke_cart_countries` VALUES(150, 'Nauru', 'NR');
INSERT INTO `nuke_cart_countries` VALUES(151, 'Nepal', 'NP');
INSERT INTO `nuke_cart_countries` VALUES(152, 'Netherlands', 'NL');
INSERT INTO `nuke_cart_countries` VALUES(153, 'Netherlands Antilles', 'AN');
INSERT INTO `nuke_cart_countries` VALUES(154, 'New Caledonia', 'NC');
INSERT INTO `nuke_cart_countries` VALUES(155, 'New Zealand', 'NZ');
INSERT INTO `nuke_cart_countries` VALUES(156, 'Nicaragua', 'NI');
INSERT INTO `nuke_cart_countries` VALUES(157, 'Niger', 'NE');
INSERT INTO `nuke_cart_countries` VALUES(158, 'Nigeria', 'NG');
INSERT INTO `nuke_cart_countries` VALUES(159, 'Niue', 'NU');
INSERT INTO `nuke_cart_countries` VALUES(160, 'Norfolk Island', 'NF');
INSERT INTO `nuke_cart_countries` VALUES(161, 'Northern Mariana Islands', 'MP');
INSERT INTO `nuke_cart_countries` VALUES(162, 'Norway', 'NO');
INSERT INTO `nuke_cart_countries` VALUES(163, 'Oman', 'OM');
INSERT INTO `nuke_cart_countries` VALUES(164, 'Pakistan', 'PK');
INSERT INTO `nuke_cart_countries` VALUES(165, 'Palau', 'PW');
INSERT INTO `nuke_cart_countries` VALUES(166, 'Panama', 'PA');
INSERT INTO `nuke_cart_countries` VALUES(167, 'Papua New Guinea', 'PG');
INSERT INTO `nuke_cart_countries` VALUES(168, 'Paraguay', 'PY');
INSERT INTO `nuke_cart_countries` VALUES(169, 'Peru', 'PE');
INSERT INTO `nuke_cart_countries` VALUES(170, 'Philippines', 'PH');
INSERT INTO `nuke_cart_countries` VALUES(171, 'Pitcairn', 'PN');
INSERT INTO `nuke_cart_countries` VALUES(172, 'Poland', 'PL');
INSERT INTO `nuke_cart_countries` VALUES(173, 'Portugal', 'PT');
INSERT INTO `nuke_cart_countries` VALUES(174, 'Puerto Rico', 'PR');
INSERT INTO `nuke_cart_countries` VALUES(175, 'Qatar', 'QA');
INSERT INTO `nuke_cart_countries` VALUES(176, 'Reunion', 'RE');
INSERT INTO `nuke_cart_countries` VALUES(177, 'Romania', 'RO');
INSERT INTO `nuke_cart_countries` VALUES(178, 'Russian Federation', 'RU');
INSERT INTO `nuke_cart_countries` VALUES(179, 'Rwanda', 'RW');
INSERT INTO `nuke_cart_countries` VALUES(180, 'Saint Lucia', 'LC');
INSERT INTO `nuke_cart_countries` VALUES(181, 'Samoa', 'WS');
INSERT INTO `nuke_cart_countries` VALUES(182, 'San Marino', 'SM');
INSERT INTO `nuke_cart_countries` VALUES(183, 'Sao Tome and Principe', 'ST');
INSERT INTO `nuke_cart_countries` VALUES(184, 'Saudi Arabia', 'SA');
INSERT INTO `nuke_cart_countries` VALUES(185, 'Senegal', 'SN');
INSERT INTO `nuke_cart_countries` VALUES(186, 'Seychelles', 'SC');
INSERT INTO `nuke_cart_countries` VALUES(187, 'Sierra Leone', 'SL');
INSERT INTO `nuke_cart_countries` VALUES(188, 'Singapore', 'SG');
INSERT INTO `nuke_cart_countries` VALUES(189, 'Slovakia', 'SK');
INSERT INTO `nuke_cart_countries` VALUES(190, 'Slovenia', 'SI');
INSERT INTO `nuke_cart_countries` VALUES(191, 'Solomon Islands', 'SB');
INSERT INTO `nuke_cart_countries` VALUES(192, 'Somalia', 'SO');
INSERT INTO `nuke_cart_countries` VALUES(193, 'South Africa', 'ZA');
INSERT INTO `nuke_cart_countries` VALUES(194, 'Spain', 'ES');
INSERT INTO `nuke_cart_countries` VALUES(195, 'Sri Lanka', 'LK');
INSERT INTO `nuke_cart_countries` VALUES(196, 'St. Helena', 'SH');
INSERT INTO `nuke_cart_countries` VALUES(197, 'St. Kitts And Nevis', 'KN');
INSERT INTO `nuke_cart_countries` VALUES(198, 'St. Pierre and Miquelon', 'PM');
INSERT INTO `nuke_cart_countries` VALUES(199, 'St. Vincent And The Greadines', 'VC');
INSERT INTO `nuke_cart_countries` VALUES(200, 'Sudan', 'SD');
INSERT INTO `nuke_cart_countries` VALUES(201, 'Suriname', 'SR');
INSERT INTO `nuke_cart_countries` VALUES(202, 'Svalbard and Jan Mayen Islands', 'SJ');
INSERT INTO `nuke_cart_countries` VALUES(203, 'Swaziland', 'SZ');
INSERT INTO `nuke_cart_countries` VALUES(204, 'Sweden', 'SE');
INSERT INTO `nuke_cart_countries` VALUES(205, 'Switzerland', 'CH');
INSERT INTO `nuke_cart_countries` VALUES(206, 'Syrian Arab Republic', 'SY');
INSERT INTO `nuke_cart_countries` VALUES(207, 'Taiwan', 'TW');
INSERT INTO `nuke_cart_countries` VALUES(208, 'Tajikistan', 'TJ');
INSERT INTO `nuke_cart_countries` VALUES(209, 'Tanzania, United Republic of', 'TZ');
INSERT INTO `nuke_cart_countries` VALUES(210, 'Thailand', 'TH');
INSERT INTO `nuke_cart_countries` VALUES(211, 'Togo', 'TG');
INSERT INTO `nuke_cart_countries` VALUES(212, 'Tokelau', 'TK');
INSERT INTO `nuke_cart_countries` VALUES(213, 'Tonga', 'TO');
INSERT INTO `nuke_cart_countries` VALUES(214, 'Trinidad and Tobago', 'TT');
INSERT INTO `nuke_cart_countries` VALUES(215, 'Tunisia', 'TN');
INSERT INTO `nuke_cart_countries` VALUES(216, 'Turkey', 'TR');
INSERT INTO `nuke_cart_countries` VALUES(217, 'Turkmenistan', 'TM');
INSERT INTO `nuke_cart_countries` VALUES(218, 'Turks and Caicos Islands', 'TC');
INSERT INTO `nuke_cart_countries` VALUES(219, 'Tuvalu', 'TV');
INSERT INTO `nuke_cart_countries` VALUES(220, 'Uganda', 'UG');
INSERT INTO `nuke_cart_countries` VALUES(221, 'Ukraine', 'UA');
INSERT INTO `nuke_cart_countries` VALUES(222, 'United Arab Emirates', 'AE');
INSERT INTO `nuke_cart_countries` VALUES(223, 'United Kingdom (Great Britain)', 'GB');
INSERT INTO `nuke_cart_countries` VALUES(224, 'United States', 'US');
INSERT INTO `nuke_cart_countries` VALUES(225, 'United States Virgin Islands', 'VI');
INSERT INTO `nuke_cart_countries` VALUES(226, 'Uruguay', 'UY');
INSERT INTO `nuke_cart_countries` VALUES(227, 'Uzbekistan', 'UZ');
INSERT INTO `nuke_cart_countries` VALUES(228, 'Vanuatu', 'VU');
INSERT INTO `nuke_cart_countries` VALUES(229, 'Vatican City State', 'VA');
INSERT INTO `nuke_cart_countries` VALUES(230, 'Venezuela', 'VE');
INSERT INTO `nuke_cart_countries` VALUES(231, 'Viet Nam', 'VN');
INSERT INTO `nuke_cart_countries` VALUES(232, 'Wallis And Futuna Islands', 'WF');
INSERT INTO `nuke_cart_countries` VALUES(233, 'Western Sahara', 'EH');
INSERT INTO `nuke_cart_countries` VALUES(234, 'Yemen', 'YE');
INSERT INTO `nuke_cart_countries` VALUES(235, 'Yugoslavia', 'YU');
INSERT INTO `nuke_cart_countries` VALUES(236, 'Zaire', 'ZR');
INSERT INTO `nuke_cart_countries` VALUES(237, 'Zambia', 'ZM');
INSERT INTO `nuke_cart_countries` VALUES(238, 'Zimbabwe', 'ZW');



--
-- Table structure for table `nuke_cart_currencies`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_currencies` (
  `currID` int(11) NOT NULL AUTO_INCREMENT,
  `currency` char(3) NOT NULL DEFAULT '',
  `rvalue` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `curradj` decimal(4,2) NOT NULL DEFAULT '0.00',
  `active` int(1) NOT NULL DEFAULT '0',
  `defcurr` int(1) NOT NULL DEFAULT '0',
  `currname` varchar(32) NOT NULL DEFAULT '',
  `currdesc` varchar(250) DEFAULT NULL,
  `dpoint` char(3) NOT NULL DEFAULT '',
  `dplaces` int(2) NOT NULL DEFAULT '0',
  `tpoint` char(3) NOT NULL DEFAULT '',
  `symbol_left` text NOT NULL,
  `symbol_right` text NOT NULL,
  PRIMARY KEY (`currID`),
  KEY `currID` (`currID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_currencies`
--

INSERT INTO `nuke_cart_currencies` VALUES(1, 'USD', 1.000000, 0.00, 1, 1, 'US Dollar', '', '.', 2, ',', '$', '');
INSERT INTO `nuke_cart_currencies` VALUES(2, 'JPY', 109.450000, 0.00, 1, 0, 'Japanese Yen', '', '', 0, ',', '?', '');
INSERT INTO `nuke_cart_currencies` VALUES(3, 'EUR', 0.841396, 0.00, 1, 0, 'Euro', '', ',', 2, '.', 'EUR', '');
INSERT INTO `nuke_cart_currencies` VALUES(4, 'CAD', 1.360600, 0.00, 1, 0, 'Canadian Dollar', '', '.', 2, ',', '$', '');
INSERT INTO `nuke_cart_currencies` VALUES(5, 'GBP', 0.562653, 0.00, 1, 0, 'Sterling', '', ',', 2, '.', '?', '');
INSERT INTO `nuke_cart_currencies` VALUES(6, 'AUD', 1.361280, 0.00, 1, 0, 'Australian Dollar', '', '.', 2, ',', '$', '');
INSERT INTO `nuke_cart_currencies` VALUES(7, 'CHF', 1.311700, 0.00, 1, 0, 'Swiss Franc', '', '.', 2, '''', 'SFr. ', '');
INSERT INTO `nuke_cart_currencies` VALUES(8, 'COP', 2680.000000, 0.00, 1, 0, 'Colombian Peso', '', ',', 2, '.', '$', '');



--
-- Table structure for table `nuke_cart_guests`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_guests` (
  `sessionID` varchar(32) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `myCurr` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_guests`
--




--
-- Table structure for table `nuke_cart_media`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_media` (
  `mediaID` int(11) NOT NULL AUTO_INCREMENT,
  `mediaName` text NOT NULL,
  `mediaInfo` text NOT NULL,
  `mediaType` varchar(255) NOT NULL DEFAULT '',
  `mediaGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `urlLocal` varchar(255) NOT NULL DEFAULT '',
  `urlRemote` varchar(255) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`mediaID`),
  KEY `mediaID` (`mediaID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_media`
--




--
-- Table structure for table `nuke_cart_options`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_options` (
  `optionID` int(11) NOT NULL AUTO_INCREMENT,
  `optionType` varchar(255) NOT NULL DEFAULT '',
  `optionName` varchar(255) NOT NULL DEFAULT '',
  `optionInfo` text NOT NULL,
  `optionGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`optionID`),
  KEY `optionID` (`optionID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_options`
--




--
-- Table structure for table `nuke_cart_options_selections`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_options_selections` (
  `selectionID` int(11) NOT NULL AUTO_INCREMENT,
  `optionID` int(11) NOT NULL DEFAULT '0',
  `selectionName` varchar(255) NOT NULL DEFAULT '',
  `selectionInfo` text NOT NULL,
  `selectionAction` char(1) NOT NULL DEFAULT '',
  `selectionValue` double(10,2) NOT NULL DEFAULT '0.00',
  `selectionDefault` text NOT NULL,
  PRIMARY KEY (`selectionID`),
  KEY `selectionID` (`selectionID`),
  KEY `optionID` (`optionID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_options_selections`
--




--
-- Table structure for table `nuke_cart_orders`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `shipFirstName` varchar(64) NOT NULL DEFAULT '',
  `shipLastName` varchar(64) NOT NULL DEFAULT '',
  `shipAddress1` varchar(64) NOT NULL DEFAULT '',
  `shipAddress2` varchar(64) NOT NULL DEFAULT '',
  `shipCity` varchar(64) NOT NULL DEFAULT '',
  `shipState` varchar(32) NOT NULL DEFAULT '',
  `shipZip` varchar(16) NOT NULL DEFAULT '',
  `shipCountry` varchar(64) NOT NULL DEFAULT '',
  `shipMethod` int(11) NOT NULL DEFAULT '0',
  `shipMethodName` varchar(255) NOT NULL DEFAULT '',
  `shipMethodData` text NOT NULL,
  `billEmail` varchar(255) NOT NULL DEFAULT '',
  `billFirstName` varchar(64) NOT NULL DEFAULT '',
  `billLastName` varchar(64) NOT NULL DEFAULT '',
  `billAddress1` varchar(64) NOT NULL DEFAULT '',
  `billAddress2` varchar(64) NOT NULL DEFAULT '',
  `billCity` varchar(64) NOT NULL DEFAULT '',
  `billState` varchar(32) NOT NULL DEFAULT '',
  `billZip` varchar(16) NOT NULL DEFAULT '',
  `billCountry` varchar(64) NOT NULL DEFAULT '',
  `billDayPhone` varchar(20) NOT NULL DEFAULT '',
  `billEvePhone` varchar(20) NOT NULL DEFAULT '',
  `payMethod` int(11) NOT NULL DEFAULT '0',
  `payMethodName` varchar(255) NOT NULL DEFAULT '',
  `payMethodData` text NOT NULL,
  `productTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `shipTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `handlingTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `taxTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `orderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statusDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` int(11) NOT NULL DEFAULT '0',
  `orderSubStatus` int(11) NOT NULL DEFAULT '0',
  `orderNotes` text NOT NULL,
  `flagOrder` tinyint(1) NOT NULL DEFAULT '0',
  `fileOrder` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`orderID`),
  KEY `orderID` (`orderID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_orders`
--




--
-- Table structure for table `nuke_cart_orders_cartitems`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_orders_cartitems` (
  `orderID` int(11) NOT NULL DEFAULT '0',
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `itemID` bigint(20) NOT NULL DEFAULT '0',
  `prodID` int(11) NOT NULL DEFAULT '0',
  `prodCode` text NOT NULL,
  `prodName` text NOT NULL,
  `prodBrand` text NOT NULL,
  `prodModel` text NOT NULL,
  `itemCost` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0',
  `qtyRemain` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_orders_cartitems`
--




--
-- Table structure for table `nuke_cart_orders_cartitems_options`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_orders_cartitems_options` (
  `orderID` int(11) NOT NULL DEFAULT '0',
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `itemID` bigint(20) NOT NULL DEFAULT '0',
  `optionID` int(11) NOT NULL DEFAULT '0',
  `optionName` varchar(255) NOT NULL DEFAULT '',
  `selectionID` int(11) NOT NULL DEFAULT '0',
  `selectionName` varchar(255) NOT NULL DEFAULT '',
  `selectionAction` char(1) NOT NULL DEFAULT '',
  `selectionValue` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_orders_cartitems_options`
--




--
-- Table structure for table `nuke_cart_orders_status`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_orders_status` (
  `statusID` int(2) NOT NULL AUTO_INCREMENT,
  `statusType` tinyint(4) NOT NULL DEFAULT '0',
  `statusLabel` varchar(30) NOT NULL DEFAULT '',
  `statusInfo` text,
  `status_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`statusID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_orders_status`
--

INSERT INTO `nuke_cart_orders_status` VALUES(1, 1, 'Pending', 'Order has not yet been processed.', 1);
INSERT INTO `nuke_cart_orders_status` VALUES(2, 1, 'Processing', 'Order is being processed.', 0);
INSERT INTO `nuke_cart_orders_status` VALUES(3, 1, 'Complete', 'Order has been completed.', 0);
INSERT INTO `nuke_cart_orders_status` VALUES(4, 1, 'Declined', 'Order has been declined.', 0);
INSERT INTO `nuke_cart_orders_status` VALUES(5, 2, 'Payment Recieved', 'Payment for order has been recieved.', 1);
INSERT INTO `nuke_cart_orders_status` VALUES(6, 2, 'Canceled', 'Order has been canceled.', 0);
INSERT INTO `nuke_cart_orders_status` VALUES(7, 2, 'Shipped', 'Order has been shipped.', 0);



--
-- Table structure for table `nuke_cart_payments`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments` (
  `payment_id` int(3) NOT NULL AUTO_INCREMENT,
  `payment_label` varchar(255) NOT NULL DEFAULT '',
  `payment_description` text NOT NULL,
  `payment_active` tinyint(1) NOT NULL DEFAULT '0',
  `payment_default` tinyint(1) NOT NULL DEFAULT '0',
  `payment_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments`
--

INSERT INTO `nuke_cart_payments` VALUES(1, '2Checkout', '', 1, 0, '2checkout');
INSERT INTO `nuke_cart_payments` VALUES(2, 'Authorize', '', 1, 0, 'authorize');
INSERT INTO `nuke_cart_payments` VALUES(3, 'Bank of America', '', 1, 0, 'bankofamerica');
INSERT INTO `nuke_cart_payments` VALUES(4, 'Check', '', 1, 0, 'check');
INSERT INTO `nuke_cart_payments` VALUES(5, 'Credit Card', '', 1, 0, 'creditcard');
INSERT INTO `nuke_cart_payments` VALUES(6, 'Direct Deposit', '', 1, 0, 'directdeposit');
INSERT INTO `nuke_cart_payments` VALUES(7, 'Money Order', '', 1, 0, 'moneyorder');
INSERT INTO `nuke_cart_payments` VALUES(8, 'NOCHEX', '', 1, 0, 'nochex');
INSERT INTO `nuke_cart_payments` VALUES(9, 'PayMate', '', 1, 0, 'paymate');
INSERT INTO `nuke_cart_payments` VALUES(10, 'PayPal', '', 1, 1, 'paypal');
INSERT INTO `nuke_cart_payments` VALUES(11, 'PaySystems', '', 1, 0, 'paysystems');
INSERT INTO `nuke_cart_payments` VALUES(12, 'PSiGate', '', 1, 0, 'psigate');
INSERT INTO `nuke_cart_payments` VALUES(13, 'SECPay', '', 1, 0, 'secpay');
INSERT INTO `nuke_cart_payments` VALUES(14, 'StormPay', '', 1, 0, 'stormpay');
INSERT INTO `nuke_cart_payments` VALUES(15, 'Verisign', '', 1, 0, 'verisign');
INSERT INTO `nuke_cart_payments` VALUES(16, 'VirtualTiendas', '', 1, 0, 'virtualtiendas');
INSERT INTO `nuke_cart_payments` VALUES(17, 'WorldPay', '', 1, 0, 'worldpay');
INSERT INTO `nuke_cart_payments` VALUES(18, 'COD', '', 1, 0, 'cod');
INSERT INTO `nuke_cart_payments` VALUES(19, 'Net / Terms', '', 1, 0, 'netterms');
INSERT INTO `nuke_cart_payments` VALUES(20, 'Pickup', '', 1, 0, 'pickup');



--
-- Table structure for table `nuke_cart_payments_options_2checkout`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_2checkout` (
  `sellerID` int(11) NOT NULL DEFAULT '0',
  `tmode` varchar(255) NOT NULL DEFAULT '',
  `ereceipt` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_2checkout`
--

INSERT INTO `nuke_cart_payments_options_2checkout` VALUES(12345, 'Y', 'FALSE');



--
-- Table structure for table `nuke_cart_payments_options_authorize`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_authorize` (
  `loginID` varchar(255) NOT NULL DEFAULT '',
  `txnMode` varchar(255) NOT NULL DEFAULT '0',
  `txnKey` varchar(255) NOT NULL DEFAULT '',
  `txnMethod` varchar(255) NOT NULL DEFAULT '',
  `emCustomer` varchar(5) NOT NULL DEFAULT '',
  `emMerchant` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_authorize`
--

INSERT INTO `nuke_cart_payments_options_authorize` VALUES('authnetID', 'test', 'testkey', 'sim', 'TRUE', 'TRUE');



--
-- Table structure for table `nuke_cart_payments_options_bankofamerica`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_bankofamerica` (
  `merchantID` varchar(255) NOT NULL DEFAULT '',
  `cvvIndicator` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_bankofamerica`
--

INSERT INTO `nuke_cart_payments_options_bankofamerica` VALUES('merchantID', 'PRESENT');



--
-- Table structure for table `nuke_cart_payments_options_creditcard`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_creditcard` (
  `typeID` int(2) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_creditcard`
--

INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(1, 'Visa', 1);
INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(2, 'MasterCard', 1);
INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(3, 'Bankcard', 0);
INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(4, 'American Express', 0);
INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(5, 'Diners', 0);
INSERT INTO `nuke_cart_payments_options_creditcard` VALUES(6, 'Discover', 0);



--
-- Table structure for table `nuke_cart_payments_options_directdeposit`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_directdeposit` (
  `bankName` varchar(255) NOT NULL DEFAULT '',
  `routeNum` bigint(20) NOT NULL DEFAULT '0',
  `branchNum` bigint(20) NOT NULL DEFAULT '0',
  `bacctNum` bigint(20) NOT NULL DEFAULT '0',
  `bacctName` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_directdeposit`
--

INSERT INTO `nuke_cart_payments_options_directdeposit` VALUES('Your Bank Name', 123456789, 123456789, 123456789, 'Your Name || Business');



--
-- Table structure for table `nuke_cart_payments_options_nochex`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_nochex` (
  `nochex_email` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_nochex`
--

INSERT INTO `nuke_cart_payments_options_nochex` VALUES('nochex@email.com');



--
-- Table structure for table `nuke_cart_payments_options_paymate`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_paymate` (
  `paymate_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_paymate`
--

INSERT INTO `nuke_cart_payments_options_paymate` VALUES('demonstration');



--
-- Table structure for table `nuke_cart_payments_options_paypal`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_paypal` (
  `ppemail` varchar(255) NOT NULL DEFAULT '',
  `ipn` tinyint(1) NOT NULL DEFAULT '0',
  `currency` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_paypal`
--

INSERT INTO `nuke_cart_payments_options_paypal` VALUES('email@address.com', 1, 'USD');



--
-- Table structure for table `nuke_cart_payments_options_paysystems`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_paysystems` (
  `company_id` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_paysystems`
--

INSERT INTO `nuke_cart_payments_options_paysystems` VALUES('123456');



--
-- Table structure for table `nuke_cart_payments_options_psigate`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_psigate` (
  `merchant_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_psigate`
--

INSERT INTO `nuke_cart_payments_options_psigate` VALUES('teststore');



--
-- Table structure for table `nuke_cart_payments_options_secpay`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_secpay` (
  `merchantID` varchar(255) NOT NULL DEFAULT '',
  `teststatus` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_secpay`
--

INSERT INTO `nuke_cart_payments_options_secpay` VALUES('secpay', 'true');



--
-- Table structure for table `nuke_cart_payments_options_stormpay`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_stormpay` (
  `spemail` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_stormpay`
--

INSERT INTO `nuke_cart_payments_options_stormpay` VALUES('email@yoursite.com');



--
-- Table structure for table `nuke_cart_payments_options_verisign`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_verisign` (
  `loginID` varchar(255) NOT NULL DEFAULT '',
  `partnerID` varchar(255) NOT NULL DEFAULT '',
  `emCustomer` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_verisign`
--

INSERT INTO `nuke_cart_payments_options_verisign` VALUES('loginID', 'partnerID', 'TRUE');



--
-- Table structure for table `nuke_cart_payments_options_virtualtiendas`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_virtualtiendas` (
  `storedomain` varchar(255) NOT NULL DEFAULT '',
  `storeroute` varchar(255) NOT NULL DEFAULT '',
  `storecurrency` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_virtualtiendas`
--

INSERT INTO `nuke_cart_payments_options_virtualtiendas` VALUES('', '', 0);



--
-- Table structure for table `nuke_cart_payments_options_worldpay`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_payments_options_worldpay` (
  `vendorID` varchar(255) NOT NULL DEFAULT '',
  `pmode` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_payments_options_worldpay`
--

INSERT INTO `nuke_cart_payments_options_worldpay` VALUES('vendorID', '0');



--
-- Table structure for table `nuke_cart_preorders`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_preorders` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `shipFirstName` varchar(64) NOT NULL DEFAULT '',
  `shipLastName` varchar(64) NOT NULL DEFAULT '',
  `shipAddress1` varchar(64) NOT NULL DEFAULT '',
  `shipAddress2` varchar(64) NOT NULL DEFAULT '',
  `shipCity` varchar(64) NOT NULL DEFAULT '',
  `shipState` varchar(32) NOT NULL DEFAULT '',
  `shipZip` varchar(16) NOT NULL DEFAULT '',
  `shipCountry` varchar(64) NOT NULL DEFAULT '',
  `shipMethod` int(11) NOT NULL DEFAULT '0',
  `shipMethodName` varchar(255) NOT NULL DEFAULT '',
  `shipMethodData` text NOT NULL,
  `billEmail` varchar(255) NOT NULL DEFAULT '',
  `billFirstName` varchar(64) NOT NULL DEFAULT '',
  `billLastName` varchar(64) NOT NULL DEFAULT '',
  `billAddress1` varchar(64) NOT NULL DEFAULT '',
  `billAddress2` varchar(64) NOT NULL DEFAULT '',
  `billCity` varchar(64) NOT NULL DEFAULT '',
  `billState` varchar(32) NOT NULL DEFAULT '',
  `billZip` varchar(16) NOT NULL DEFAULT '',
  `billCountry` varchar(64) NOT NULL DEFAULT '',
  `billDayPhone` varchar(20) NOT NULL DEFAULT '',
  `billEvePhone` varchar(20) NOT NULL DEFAULT '',
  `payMethod` int(11) NOT NULL DEFAULT '0',
  `payMethodName` varchar(255) NOT NULL DEFAULT '',
  `payMethodData` text NOT NULL,
  `productTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `shipTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `handlingTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `taxTotal` double(10,2) NOT NULL DEFAULT '0.00',
  `step` int(2) NOT NULL DEFAULT '0',
  `expires` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_preorders`
--




--
-- Table structure for table `nuke_cart_preorders_cartitems`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_preorders_cartitems` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `itemID` bigint(20) NOT NULL DEFAULT '0',
  `prodID` int(11) NOT NULL DEFAULT '0',
  `prodCode` text NOT NULL,
  `prodName` text NOT NULL,
  `prodBrand` text NOT NULL,
  `prodModel` text NOT NULL,
  `itemCost` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_preorders_cartitems`
--




--
-- Table structure for table `nuke_cart_preorders_cartitems_options`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_preorders_cartitems_options` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `userType` varchar(10) NOT NULL DEFAULT '',
  `itemID` bigint(20) NOT NULL DEFAULT '0',
  `optionID` int(11) NOT NULL DEFAULT '0',
  `optionName` varchar(255) NOT NULL DEFAULT '',
  `selectionID` int(11) NOT NULL DEFAULT '0',
  `selectionName` varchar(255) NOT NULL DEFAULT '',
  `selectionAction` char(1) NOT NULL DEFAULT '',
  `selectionValue` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_preorders_cartitems_options`
--




--
-- Table structure for table `nuke_cart_products`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_products` (
  `prodID` int(11) NOT NULL AUTO_INCREMENT,
  `prodCode` varchar(25) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `prodName` text NOT NULL,
  `prodSInfo` text NOT NULL,
  `prodInfo` text NOT NULL,
  `prodXInfo` text NOT NULL,
  `keywords` text NOT NULL,
  `prodModel` text NOT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `prodCounter` int(11) NOT NULL DEFAULT '0',
  `prodCost` double(10,2) NOT NULL DEFAULT '0.00',
  `msrp_price` double(12,2) NOT NULL DEFAULT '0.00',
  `wholesale_price` double(12,2) NOT NULL DEFAULT '0.00',
  `shipcost` double(10,2) NOT NULL DEFAULT '0.00',
  `shipweight` double(10,4) NOT NULL DEFAULT '0.0000',
  `shipping_ets` int(11) NOT NULL DEFAULT '0',
  `handlingcost` double(10,2) NOT NULL DEFAULT '0.00',
  `tax_class_id` int(11) NOT NULL DEFAULT '0',
  `promoActive` tinyint(1) NOT NULL DEFAULT '0',
  `promoTitle` text NOT NULL,
  `promoInfo` text NOT NULL,
  `promoCost` double(10,2) NOT NULL DEFAULT '0.00',
  `promoStartDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promoExpireDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stockActive` tinyint(1) NOT NULL DEFAULT '0',
  `stockQuantity` int(11) NOT NULL DEFAULT '0',
  `productTemplate` varchar(255) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `pthumb` varchar(255) NOT NULL DEFAULT '',
  `product_availability` int(11) NOT NULL DEFAULT '0',
  `prodActive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prodID`),
  KEY `prodID` (`prodID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_products`
--




--
-- Table structure for table `nuke_cart_products_availability`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_products_availability` (
  `avail_id` int(11) NOT NULL AUTO_INCREMENT,
  `avail_name` varchar(255) NOT NULL DEFAULT '',
  `avail_label` varchar(255) NOT NULL DEFAULT '',
  `avail_description` text NOT NULL,
  `avail_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avail_id`),
  KEY `avail_id` (`avail_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_products_availability`
--

INSERT INTO `nuke_cart_products_availability` VALUES(1, 'In Stock', 'In Stock', 'This product is in stock.', 1);



--
-- Table structure for table `nuke_cart_products_media`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_products_media` (
  `prodMediaID` int(11) NOT NULL AUTO_INCREMENT,
  `prodID` int(11) NOT NULL DEFAULT '0',
  `mediaID` int(11) NOT NULL DEFAULT '0',
  `mediaPos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prodMediaID`),
  KEY `prodMediaID` (`prodMediaID`),
  KEY `prodID` (`prodID`),
  KEY `mediaID` (`mediaID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_products_media`
--




--
-- Table structure for table `nuke_cart_products_options`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_products_options` (
  `prodOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `prodID` int(11) NOT NULL DEFAULT '0',
  `optionID` int(11) NOT NULL DEFAULT '0',
  `optionPos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prodOptionID`),
  KEY `prodOptionID` (`prodOptionID`),
  KEY `prodID` (`prodID`),
  KEY `optionID` (`optionID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_products_options`
--




--
-- Table structure for table `nuke_cart_products_reviews`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_products_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `user_type` varchar(10) NOT NULL DEFAULT '',
  `review_title` varchar(255) NOT NULL DEFAULT '',
  `review_rating` tinyint(1) NOT NULL DEFAULT '0',
  `review_content` text NOT NULL,
  `date_submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_published` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`),
  KEY `review_id` (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_products_reviews`
--




--
-- Table structure for table `nuke_cart_shipping`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping` (
  `shipping_id` int(3) NOT NULL AUTO_INCREMENT,
  `shipping_label` varchar(255) NOT NULL DEFAULT '',
  `shipping_description` text NOT NULL,
  `include_handling` tinyint(1) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL DEFAULT '0',
  `shipping_active` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_default` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping`
--

INSERT INTO `nuke_cart_shipping` VALUES(1, 'Base Cost', '', 1, 0, 1, 1, 'basecost');
INSERT INTO `nuke_cart_shipping` VALUES(3, 'Flat Rate', '', 1, 0, 1, 0, 'flatrate');
INSERT INTO `nuke_cart_shipping` VALUES(4, 'Per Item', '', 1, 0, 1, 0, 'peritem');
INSERT INTO `nuke_cart_shipping` VALUES(5, 'Pick Up', '', 0, 0, 1, 0, 'pickup');
INSERT INTO `nuke_cart_shipping` VALUES(9, 'Product Total', '', 1, 0, 1, 0, 'producttotal');
INSERT INTO `nuke_cart_shipping` VALUES(11, 'Product Weight', '', 1, 0, 1, 0, 'productweight');
INSERT INTO `nuke_cart_shipping` VALUES(13, 'United Parcel Service', '', 1, 0, 1, 0, 'ups');



--
-- Table structure for table `nuke_cart_shipping_ets`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_ets` (
  `ets_id` int(11) NOT NULL AUTO_INCREMENT,
  `ets_name` varchar(255) NOT NULL DEFAULT '',
  `ets_label` varchar(255) NOT NULL DEFAULT '',
  `ets_description` text NOT NULL,
  `ets_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ets_id`),
  KEY `ets_id` (`ets_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_ets`
--

INSERT INTO `nuke_cart_shipping_ets` VALUES(1, '2-3 days', '2-3 business days', 'This product will be shipped within 2-3 business days.', 0);
INSERT INTO `nuke_cart_shipping_ets` VALUES(3, '1-2 days', '1-2 business days', 'This product will be shipping within 1-2 business days', 0);
INSERT INTO `nuke_cart_shipping_ets` VALUES(4, 'Email Delivery', 'Instant Delivery', 'This product will be emailed to you.', 0);
INSERT INTO `nuke_cart_shipping_ets` VALUES(5, '3-5 days', '3-5 business days.', 'This product will be shipped within 3-5 business days.', 1);
INSERT INTO `nuke_cart_shipping_ets` VALUES(6, '5-13 days', '5-13 business days.', 'This product will be shipped within 5-13 business days.', 0);



--
-- Table structure for table `nuke_cart_shipping_options_flatrate`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_options_flatrate` (
  `flatratecost` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`flatratecost`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_options_flatrate`
--

INSERT INTO `nuke_cart_shipping_options_flatrate` VALUES(10.00);



--
-- Table structure for table `nuke_cart_shipping_options_peritem`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_options_peritem` (
  `peritemcost` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`peritemcost`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_options_peritem`
--

INSERT INTO `nuke_cart_shipping_options_peritem` VALUES(2.00);



--
-- Table structure for table `nuke_cart_shipping_options_producttotal`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_options_producttotal` (
  `percentage` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_options_producttotal`
--

INSERT INTO `nuke_cart_shipping_options_producttotal` VALUES(10);
INSERT INTO `nuke_cart_shipping_options_producttotal` VALUES(0);



--
-- Table structure for table `nuke_cart_shipping_options_productweight`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_options_productweight` (
  `cost` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_options_productweight`
--

INSERT INTO `nuke_cart_shipping_options_productweight` VALUES(2.00);



--
-- Table structure for table `nuke_cart_shipping_options_ups`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_shipping_options_ups` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_shipping_options_ups`
--

INSERT INTO `nuke_cart_shipping_options_ups` VALUES('origin_country_code', 'US');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('origin_postal_code', '21532');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('service_types', '1DM,1DA,1DAPI,1DP,2DM,2DA,3DS,GND,GNDRES,GNDCOM,STD,XPR,XDM,XPD');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('user_id', 'emporiumdev');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('user_password', 'empdev');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('license_number', '7BB0DE52C40237F0');
INSERT INTO `nuke_cart_shipping_options_ups` VALUES('service_default', 'GNDRES');



--
-- Table structure for table `nuke_cart_states`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_states` (
  `stateID` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(32) DEFAULT NULL,
  `stateCode` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`stateID`),
  KEY `stateID` (`stateID`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_states`
--

INSERT INTO `nuke_cart_states` VALUES(1, 'Alabama', 'AL');
INSERT INTO `nuke_cart_states` VALUES(2, 'Alaska', 'AK');
INSERT INTO `nuke_cart_states` VALUES(3, 'Arizona', 'AZ');
INSERT INTO `nuke_cart_states` VALUES(4, 'Arkansas', 'AR');
INSERT INTO `nuke_cart_states` VALUES(5, 'California', 'CA');
INSERT INTO `nuke_cart_states` VALUES(6, 'Colorado', 'CO');
INSERT INTO `nuke_cart_states` VALUES(7, 'Connecticut', 'CT');
INSERT INTO `nuke_cart_states` VALUES(8, 'Delaware', 'DE');
INSERT INTO `nuke_cart_states` VALUES(9, 'District of Columbia', 'DC');
INSERT INTO `nuke_cart_states` VALUES(10, 'Florida', 'FL');
INSERT INTO `nuke_cart_states` VALUES(11, 'Georgia', 'GA');
INSERT INTO `nuke_cart_states` VALUES(12, 'Guam', 'GU');
INSERT INTO `nuke_cart_states` VALUES(13, 'Hawaii', 'HI');
INSERT INTO `nuke_cart_states` VALUES(14, 'Idaho', 'ID');
INSERT INTO `nuke_cart_states` VALUES(15, 'Illinois', 'IL');
INSERT INTO `nuke_cart_states` VALUES(16, 'Indiana', 'IN');
INSERT INTO `nuke_cart_states` VALUES(17, 'Iowa', 'IA');
INSERT INTO `nuke_cart_states` VALUES(18, 'Kansas', 'KS');
INSERT INTO `nuke_cart_states` VALUES(19, 'Kentucky', 'KY');
INSERT INTO `nuke_cart_states` VALUES(20, 'Louisiana', 'LA');
INSERT INTO `nuke_cart_states` VALUES(21, 'Maine', 'ME');
INSERT INTO `nuke_cart_states` VALUES(22, 'Maryland', 'MD');
INSERT INTO `nuke_cart_states` VALUES(23, 'Massachusetts', 'MA');
INSERT INTO `nuke_cart_states` VALUES(24, 'Michigan', 'MI');
INSERT INTO `nuke_cart_states` VALUES(25, 'Minnesota', 'MN');
INSERT INTO `nuke_cart_states` VALUES(26, 'Mississippi', 'MS');
INSERT INTO `nuke_cart_states` VALUES(27, 'Missouri', 'MO');
INSERT INTO `nuke_cart_states` VALUES(28, 'Montana', 'MT');
INSERT INTO `nuke_cart_states` VALUES(29, 'Nebraska', 'NE');
INSERT INTO `nuke_cart_states` VALUES(30, 'Nevada', 'NV');
INSERT INTO `nuke_cart_states` VALUES(31, 'New Hampshire', 'NH');
INSERT INTO `nuke_cart_states` VALUES(32, 'New Jersey', 'NJ');
INSERT INTO `nuke_cart_states` VALUES(33, 'New Mexico', 'NM');
INSERT INTO `nuke_cart_states` VALUES(34, 'New York', 'NY');
INSERT INTO `nuke_cart_states` VALUES(35, 'North Carolina', 'NC');
INSERT INTO `nuke_cart_states` VALUES(36, 'North Dakota', 'ND');
INSERT INTO `nuke_cart_states` VALUES(37, 'Ohio', 'OH');
INSERT INTO `nuke_cart_states` VALUES(38, 'Oklahoma', 'OK');
INSERT INTO `nuke_cart_states` VALUES(39, 'Oregon', 'OR');
INSERT INTO `nuke_cart_states` VALUES(40, 'Pennsylvania', 'PA');
INSERT INTO `nuke_cart_states` VALUES(41, 'Puerto Rico', 'PR');
INSERT INTO `nuke_cart_states` VALUES(42, 'Rhode Island', 'RI');
INSERT INTO `nuke_cart_states` VALUES(43, 'South Carolina', 'SC');
INSERT INTO `nuke_cart_states` VALUES(44, 'South Dakota', 'SD');
INSERT INTO `nuke_cart_states` VALUES(45, 'Tennessee', 'TN');
INSERT INTO `nuke_cart_states` VALUES(46, 'Texas', 'TX');
INSERT INTO `nuke_cart_states` VALUES(47, 'Utah', 'UT');
INSERT INTO `nuke_cart_states` VALUES(48, 'Vermont', 'VT');
INSERT INTO `nuke_cart_states` VALUES(49, 'Virgin Islands', 'VI');
INSERT INTO `nuke_cart_states` VALUES(50, 'Virginia', 'VA');
INSERT INTO `nuke_cart_states` VALUES(51, 'Washington', 'WA');
INSERT INTO `nuke_cart_states` VALUES(52, 'West Virginia', 'WV');
INSERT INTO `nuke_cart_states` VALUES(53, 'Wisconsin', 'WI');
INSERT INTO `nuke_cart_states` VALUES(54, 'Wyoming', 'WY');
INSERT INTO `nuke_cart_states` VALUES(55, '-Outside the US-', 'N/A');



--
-- Table structure for table `nuke_cart_taxes_classes`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_taxes_classes` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_name` varchar(255) NOT NULL DEFAULT '',
  `tax_class_description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`),
  KEY `tax_class_id` (`tax_class_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_taxes_classes`
--




--
-- Table structure for table `nuke_cart_taxes_classes_locations`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_taxes_classes_locations` (
  `tax_class_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `location_type` varchar(255) NOT NULL DEFAULT '',
  `tax_value_percent` double(10,2) NOT NULL DEFAULT '0.00',
  `tax_value_flat` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_taxes_classes_locations`
--




--
-- Table structure for table `nuke_cart_users`
--

CREATE TABLE IF NOT EXISTS `nuke_cart_users` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `address1` varchar(64) DEFAULT NULL,
  `address2` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `postcode` varchar(16) DEFAULT NULL,
  `dayPhone` varchar(64) DEFAULT NULL,
  `evePhone` varchar(64) DEFAULT NULL,
  `myCurr` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cart_users`
--



--
-- Table structure for table `nuke_simplecart`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart` (
  `main` text NOT NULL,
  `referrals` text NOT NULL,
  `policies` text NOT NULL,
  `terms` text NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart`
--

INSERT INTO `nuke_simplecart` VALUES('<P ALIGN=LEFT>\r\n</P>\r\n<TABLE WIDTH=550 BORDER=0 CELLPADDING=5 CELLSPACING=0>\r\n	<COL WIDTH=0>\r\n	<COL WIDTH=130>\r\n	<COL WIDTH=540>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Online Store 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=specials"><IMG SRC="images/simplecart/GraphicImage1.jpg" NAME="Graphic1" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><FONT SIZE=2><FONT FACE="Arial, sans-serif">We are\r\n			constantly striving to make [sitename] &quot;America''s Best Online\r\n			Store&quot; for certain products <I>and</I> the best deal for your\r\n			advertising dollar should your site presently be buried in search\r\n			engine hell. We appreciate your business by advertising with us.\r\n			Whether your interests run from the sublime to the bizarre,\r\n			[sitename] will compliment your needs. Low wholesale prices\r\n			everyday on every item or service is the [sitename]\r\n			standard.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic3" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=specials"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Specials</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD WIDTH=540 VALIGN=TOP></TD>\r\n	</TR>\r\n	<TR>\r\n		<TD COLSPAN=3 WIDTH=690>\r\n			<P ALIGN=LEFT>\r\n			</P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Products 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=featured"><IMG SRC="images/simplecart/GraphicImage2.jpg" NAME="Graphic2" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><BR><FONT SIZE=2><FONT FACE="Arial, sans-serif">Shop\r\n			online. The new, modern way to shop. Save time, money, gas and\r\n			energy. Avoid traffic and crowds. Shop at your own pace any hour\r\n			of the day. Super fast delivery to your door with no hassle\r\n			involved. Full product views and complete descriptions. Order for\r\n			friends, relatives and yourself the easy way. Take advantage of\r\n			all the free shipping, discounts and gifts available from our new\r\n			online merchants. Also order great, free catalogs by clicking\r\n			<A HREF="modules.php?name=SimpleCart&op=contact">here</A>.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic6" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=featured"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Featured Products</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n</TABLE>', '<P ALIGN=LEFT>Signing up for a PayPal account is free and there&#039;s no\r\ncharge to send money. PayPal&#039;s low transaction fees are applied when\r\nPremier and Business Account holders receive money. <BR><BR><BR>Choose\r\nthe Right PayPal Account for You \r\n</P>\r\n<UL>\r\n	<LI><P ALIGN=LEFT>Personal Account<BR>Ideal if you shop online. Make\r\n	secure payments on eBay and merchant websites using your credit\r\n	card, debit card, or bank account.</P>\r\n	<LI><P ALIGN=LEFT>Premier Account<BR>Perfect for both buying and\r\n	selling. Make secure payments on eBay and merchant websites. Plus,\r\n	accept credit card, debit card, and bank account payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>.</P>\r\n	<LI><P ALIGN=LEFT>Business Account<BR>The right choice for your\r\n	online business. Accept credit card, debit card, and bank account\r\n	payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>. \r\n	</P>\r\n</UL>\r\n<P ALIGN=LEFT><BR><BR>\r\n</P>\r\n<P ALIGN=CENTER>Sign up is quick and easy &mdash; start using PayPal\r\ntoday !<BR><BR><A HREF="https://www.paypal.com/us/mrb/pal=287WLUA9HHU7W"><IMG SRC="images/simplecart/signup.gif" NAME="signup" ALIGN=BOTTOM WIDTH=112 HEIGHT=21 BORDER=0></A>\r\n</P>', '<DL>\r\n	<DT STYLE="margin-bottom: 0.2in; text-align: left"><U>[sitename]\r\n	is committed to safeguarding your privacy online</U>. We recognize\r\n	your need for reasonable control of personally identifiable\r\n	information that you share with [sitename]. <BR><BR>When you order,\r\n	we need to know your name, e-mail address, mailing address, credit\r\n	card number, and expiration date. This allows us to process and\r\n	fulfill your order. This will be used only for the product/service\r\n	you have sought and would not be under any circumstances passed on\r\n	for any other commercial purpose. [sitename] will not disclose any\r\n	of your personally identifiable information except when we have your\r\n	permission or under special circumstances, such as when we believe\r\n	in good faith that the law requires it. <BR><BR>Although we track\r\n	the total number of visitors to each of our sites in an aggregate\r\n	form to allow us to update an improve our sites, personally\r\n	identifiable information is not extracted in this process. Any\r\n	cookie technology (where our servers deposit special codes on a\r\n	visitor&#039;s computer) will only be used to track non-personal\r\n	information such as type of browser, operating system, and domain\r\n	names to improve our visitor&#039;s online experience. <BR><BR><B>How\r\n	does [sitename] protect customer information?</B> <BR><BR>When you\r\n	place orders, it is through a secure server. The secure server\r\n	software (SSL) encrypts all information you input including your\r\n	credit card number, before it is sent to us. This makes it\r\n	unreadable as it travels across the Internet. Furthermore, all of\r\n	the customer data we collect is protected against unauthorized\r\n	access. <BR><BR><B>Will [sitename] disclose the information it\r\n	collects to outside parties?</B> <BR><BR>[sitename] does not\r\n	sell, trade, or rent your personal information to others. By using\r\n	our web site, you consent to the collection and use of this\r\n	information by [sitename]. If we decide to change our privacy\r\n	policy, we will post those changes on this page so that you are\r\n	always aware of what information we collect, how we use it, and\r\n	under what circumstances we disclose it.</DT></DL>', '<DL>\r\n	<DT STYLE="text-align: left">By using this site the user has,\r\n	unconditionally, accepted the terms and conditions of use as given\r\n	hereunder and/or elsewhere in the site.<BR><BR>1. The user may\r\n	carefully read all the information on products/services as provided\r\n	in relevant sections.<BR><BR>2. This site is owned by [sitename],\r\n	(hereafter referred to as [sitename]). No product/services from this\r\n	site or any other website owned, operated, controlled or licensed by\r\n	[sitename] and/or associates or sister concerns may be copied,\r\n	reproduced, republished, transmitted, downloaded, uploaded or in any\r\n	other manner used for commercial or non-commercial purposes, without\r\n	the written permission of [sitename]. Violation of this condition\r\n	would be treated as a violation of copyright and other proprietary\r\n	rights of [sitename] and/or their associates or sister concerns or\r\n	affiliates.<BR><BR>3. The product/services provided on this site are\r\n	without warranties of any kind either expressed or implied and\r\n	[sitename] disclaims all or any of them to the fullest extent.\r\n	[sitename] makes its best efforts to offer you the best products and\r\n	services but does not warrant that all the products/services offered\r\n	will be error-free, or that the defects will be corrected, or that\r\n	this site or the server that makes it available are or will be free\r\n	of viruses or other harmful components.<BR><BR>4. The product\r\n	specifications (weight, size, color etc.) mentioned with the product\r\n	photos are approximate. There may be a slight variation between the\r\n	real product and product displayed on [sitename] (however unlikely),\r\n	including the pictures &amp; specifications. [sitename], in its\r\n	absolute discretion, may deliver a similar / alternate product for\r\n	reasons or exigencies beyond its control.<BR><BR>5. Under no\r\n	circumstances, whatsoever, [sitename] shall be liable for any loss\r\n	of data, lost profits or any damages whatsoever including, without\r\n	limiting, any indirect, special, incidental, consequential or other\r\n	damages that result from the use of or inability to use the\r\n	products/services offered in the site. Notwithstanding the\r\n	foregoing, in no event shall [sitename] be liable to the user for\r\n	any or all damages, losses, and causes of action (including but not\r\n	limited to, negligence) or otherwise exceeding the amount paid by\r\n	the user to [sitename] for that specific service/product.<BR><BR>6. In\r\n	an effort to provide our customers with the most current\r\n	information, [sitename] will, from time to time, make changes in the\r\n	content and the products or services described on this site. The\r\n	prices advertised on this site are for Internet orders only. Prices\r\n	and the availability of items are subject to change without notice.\r\n	Prices displayed on the site may not be indicative of the actual\r\n	selling price of that product in your area. We reserve the right to\r\n	limit sales, including the right to prohibit sales to re-sellers. We\r\n	are not responsible for typographical or photographic\r\n	errors.<BR><BR>7. Notwithstanding any or all of the Terms, Conditions\r\n	&amp; Disclaimers stated herein above or elsewhere in the site, any\r\n	refund or payment by [sitename] to the user or anyone else acting on\r\n	his behalf for any reason whatsoever, voluntarily or on being\r\n	claimed by any user shall not become a waiver of any or all of the\r\n	Terms, Conditions and Disclaimers made and shall not become a\r\n	precedent for similar future actions/claims or confer any rights on\r\n	the claimant. AND further that all such refunds/payments, if any,\r\n	when made shall be subject to 10% deduction on account of bank\r\n	charges and other processing overheads.<BR><BR>8. If the user has any\r\n	question, doubts or confusion with regard to any of these terms and\r\n	conditions set out herein he should seek clarifications from us by\r\n	<A HREF="modules.php?name=SimpleCart&op=contact">contacting\r\n	the webmaster</A>.<BR><BR>THE USER OF [sitename] IS PRESUMED\r\n	TO HAVE READ ALL THE TERMS AND CONDITIONS HEREIN AND IS DEEMED TO\r\n	HAVE AGREED, UNDERSTOOD AND ACCEPTED UNCONDITIONALLY ALL THE TERMS,\r\n	CONDITIONS, PROCEDURES AND RISKS OF USING THE SERVICES. THE USER\r\n	CANNOT, AT ANY TIME, CLAIM IGNORANCE OF ANY OR ALL OF THEM. ALL\r\n	RELATIONSHIP OF ANY USER WHERESOEVER SITUATED IS GOVERNED BY AND IN\r\n	ACCORDANCE WITH THE LAWS OF [country].</DT></DL>', 'United States of America');



--
-- Table structure for table `nuke_simplecart_config`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart_config` (
  `scmail` varchar(255) NOT NULL DEFAULT 'admin@MySite.com',
  `scsubject` varchar(255) NOT NULL DEFAULT 'SimpleCart Catalog Order',
  `sccontact` varchar(255) NOT NULL DEFAULT 'sales@MySite.com',
  `sccontactsubject` varchar(255) NOT NULL DEFAULT 'SimpleCart Product Inquiry',
  `scname` varchar(255) NOT NULL DEFAULT 'SimpleCart Online Store'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart_config`
--

INSERT INTO `nuke_simplecart_config` VALUES('admin@MySite.com', 'SimpleCart Catalog Order', 'sales@MySite.com', 'SimpleCart Product Inquiry', 'SimpleCart Online Store');



--
-- Table structure for table `nuke_simplecart_featured`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart_featured` (
  `c4_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c4` varchar(50) NOT NULL DEFAULT '',
  `c4p1_img` varchar(255) NOT NULL DEFAULT '',
  `c4p1_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p1_desc` text NOT NULL,
  `c4p1_buy` text NOT NULL,
  `c4p1_cart` text NOT NULL,
  `c4p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p2_img` varchar(255) NOT NULL DEFAULT '',
  `c4p2_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p2_desc` text NOT NULL,
  `c4p2_buy` text NOT NULL,
  `c4p2_cart` text NOT NULL,
  `c4p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p3_img` varchar(255) NOT NULL DEFAULT '',
  `c4p3_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p3_desc` text NOT NULL,
  `c4p3_buy` text NOT NULL,
  `c4p3_cart` text NOT NULL,
  `c4p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p4_img` varchar(255) NOT NULL DEFAULT '',
  `c4p4_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p4_desc` text NOT NULL,
  `c4p4_buy` text NOT NULL,
  `c4p4_cart` text NOT NULL,
  `c4p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p5_img` varchar(255) NOT NULL DEFAULT '',
  `c4p5_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p5_desc` text NOT NULL,
  `c4p5_buy` text NOT NULL,
  `c4p5_cart` text NOT NULL,
  `c4p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p6_img` varchar(255) NOT NULL DEFAULT '',
  `c4p6_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p6_desc` text NOT NULL,
  `c4p6_buy` text NOT NULL,
  `c4p6_cart` text NOT NULL,
  `c4p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p7_img` varchar(255) NOT NULL DEFAULT '',
  `c4p7_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p7_desc` text NOT NULL,
  `c4p7_buy` text NOT NULL,
  `c4p7_cart` text NOT NULL,
  `c4p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p8_img` varchar(255) NOT NULL DEFAULT '',
  `c4p8_tit` varchar(50) NOT NULL DEFAULT '',
  `c4p8_desc` text NOT NULL,
  `c4p8_buy` text NOT NULL,
  `c4p8_cart` text NOT NULL,
  `c4p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart_featured`
--

INSERT INTO `nuke_simplecart_featured` VALUES('Insert Category Description Here', 'Featured Products', 'images/simplecart/featured/c4p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<strong>Price: $16.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.99 ">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<strong>Price: $28.88</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PostNuke Content Management">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.88">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<strong>Price: $27.97</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="27.97">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<strong>Price: $16.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<strong>Price: $32.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="32.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<strong>Price: $19.79</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.79">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);



--
-- Table structure for table `nuke_simplecart_products`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart_products` (
  `c1_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c1` varchar(50) NOT NULL DEFAULT '',
  `c1p1_img` varchar(255) NOT NULL DEFAULT '',
  `c1p1_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p1_desc` text NOT NULL,
  `c1p1_buy` text NOT NULL,
  `c1p1_cart` text NOT NULL,
  `c1p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p2_img` varchar(255) NOT NULL DEFAULT '',
  `c1p2_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p2_desc` text NOT NULL,
  `c1p2_buy` text NOT NULL,
  `c1p2_cart` text NOT NULL,
  `c1p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p3_img` varchar(255) NOT NULL DEFAULT '',
  `c1p3_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p3_desc` text NOT NULL,
  `c1p3_buy` text NOT NULL,
  `c1p3_cart` text NOT NULL,
  `c1p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p4_img` varchar(255) NOT NULL DEFAULT '',
  `c1p4_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p4_desc` text NOT NULL,
  `c1p4_buy` text NOT NULL,
  `c1p4_cart` text NOT NULL,
  `c1p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p5_img` varchar(255) NOT NULL DEFAULT '',
  `c1p5_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p5_desc` text NOT NULL,
  `c1p5_buy` text NOT NULL,
  `c1p5_cart` text NOT NULL,
  `c1p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p6_img` varchar(255) NOT NULL DEFAULT '',
  `c1p6_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p6_desc` text NOT NULL,
  `c1p6_buy` text NOT NULL,
  `c1p6_cart` text NOT NULL,
  `c1p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p7_img` varchar(255) NOT NULL DEFAULT '',
  `c1p7_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p7_desc` text NOT NULL,
  `c1p7_buy` text NOT NULL,
  `c1p7_cart` text NOT NULL,
  `c1p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p8_img` varchar(255) NOT NULL DEFAULT '',
  `c1p8_tit` varchar(50) NOT NULL DEFAULT '',
  `c1p8_desc` text NOT NULL,
  `c1p8_buy` text NOT NULL,
  `c1p8_cart` text NOT NULL,
  `c1p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart_products`
--

INSERT INTO `nuke_simplecart_products` VALUES('Insert Category Description Here', 'Products', 'images/simplecart/products/c1p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<strong>Price: $16.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.99 ">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<strong>Price: $28.88</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PostNuke Content Management">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.88">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<strong>Price: $27.97</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="27.97">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<strong>Price: $16.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<strong>Price: $32.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="32.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<strong>Price: $19.79</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.79">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);



--
-- Table structure for table `nuke_simplecart_services`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart_services` (
  `c2_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c2` varchar(50) NOT NULL DEFAULT '',
  `c2p1_img` varchar(255) NOT NULL DEFAULT '',
  `c2p1_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p1_desc` text NOT NULL,
  `c2p1_buy` text NOT NULL,
  `c2p1_cart` text NOT NULL,
  `c2p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p2_img` varchar(255) NOT NULL DEFAULT '',
  `c2p2_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p2_desc` text NOT NULL,
  `c2p2_buy` text NOT NULL,
  `c2p2_cart` text NOT NULL,
  `c2p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p3_img` varchar(255) NOT NULL DEFAULT '',
  `c2p3_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p3_desc` text NOT NULL,
  `c2p3_buy` text NOT NULL,
  `c2p3_cart` text NOT NULL,
  `c2p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p4_img` varchar(255) NOT NULL DEFAULT '',
  `c2p4_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p4_desc` text NOT NULL,
  `c2p4_buy` text NOT NULL,
  `c2p4_cart` text NOT NULL,
  `c2p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p5_img` varchar(255) NOT NULL DEFAULT '',
  `c2p5_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p5_desc` text NOT NULL,
  `c2p5_buy` text NOT NULL,
  `c2p5_cart` text NOT NULL,
  `c2p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p6_img` varchar(255) NOT NULL DEFAULT '',
  `c2p6_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p6_desc` text NOT NULL,
  `c2p6_buy` text NOT NULL,
  `c2p6_cart` text NOT NULL,
  `c2p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p7_img` varchar(255) NOT NULL DEFAULT '',
  `c2p7_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p7_desc` text NOT NULL,
  `c2p7_buy` text NOT NULL,
  `c2p7_cart` text NOT NULL,
  `c2p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p8_img` varchar(255) NOT NULL DEFAULT '',
  `c2p8_tit` varchar(50) NOT NULL DEFAULT '',
  `c2p8_desc` text NOT NULL,
  `c2p8_buy` text NOT NULL,
  `c2p8_cart` text NOT NULL,
  `c2p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart_services`
--

INSERT INTO `nuke_simplecart_services` VALUES('Insert Category Description Here', 'Services', 'images/simplecart/services/c2p1.jpg', 'Motorola Talkabout FV200AA GMRS / FRS Two-way', 'The Motorola Talkabout FV200AA GMRS/FRS Two-way Radios, which replaces the T4500 model, offers active families a simple and affordable way to stay in touch. With an improved outdoor range of up to five miles, these sleek and compact, water-resistant radios can fit in the palm of your hand or into a pocket.\r\n<br>\r\n<br>\r\n<strong>Price: $19.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Motorola Talkabout FV200AA GMRS / FRS Two-way Radio">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p2.jpg', 'Linksys PAP2 Phone Adapter', 'With Vonage, you can make calls through the Internet, potentially save on long-distance charges, and access a rich assortment of call features. Plans start as low as $14.99 per month, and the Premium Unlimited plan offers unlimited calling to the U.S. and Canada for only $24.99 per month.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Linksys PAP2 Phone Adapter for Vonage Internet Phone Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p3.jpg', 'Apple .Mac 3.5 Online Service', '.Mac provides individuals and families with the Internet experience they?ve come to expect from Apple. The new version of .Mac has extended its services to support the special requirements of groups. Members of clubs, teams, and other organizations can now use .Mac to streamline communication, share photos and movies, and coordinate activities in minutes.\r\n<br>\r\n<br>\r\n<strong>Apple Computer CD-ROM $75.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Apple .Mac 3.5 Online Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="75.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p4.jpg', 'Microsoft Windows XP Professional', 'With Windows XP Professional Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Windows XP is the operating system release that unifies the Microsoft range, with all the desktop versions now built on the NT/2000 code base rather than the shakier foundation of Windows 95, 98, and Me.\r\n<br>\r\n<br>\r\n<strong>Price: $266.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Professional with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="266.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<strong>Price: $28.50</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.50">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<strong>Price: $92.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="92.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<strong>Price: $196.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="196.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);



--
-- Table structure for table `nuke_simplecart_specials`
--

CREATE TABLE IF NOT EXISTS `nuke_simplecart_specials` (
  `c3_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c3` varchar(50) NOT NULL DEFAULT '',
  `c3p1_img` varchar(255) NOT NULL DEFAULT '',
  `c3p1_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p1_desc` text NOT NULL,
  `c3p1_buy` text NOT NULL,
  `c3p1_cart` text NOT NULL,
  `c3p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p2_img` varchar(255) NOT NULL DEFAULT '',
  `c3p2_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p2_desc` text NOT NULL,
  `c3p2_buy` text NOT NULL,
  `c3p2_cart` text NOT NULL,
  `c3p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p3_img` varchar(255) NOT NULL DEFAULT '',
  `c3p3_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p3_desc` text NOT NULL,
  `c3p3_buy` text NOT NULL,
  `c3p3_cart` text NOT NULL,
  `c3p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p4_img` varchar(255) NOT NULL DEFAULT '',
  `c3p4_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p4_desc` text NOT NULL,
  `c3p4_buy` text NOT NULL,
  `c3p4_cart` text NOT NULL,
  `c3p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p5_img` varchar(255) NOT NULL DEFAULT '',
  `c3p5_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p5_desc` text NOT NULL,
  `c3p5_buy` text NOT NULL,
  `c3p5_cart` text NOT NULL,
  `c3p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p6_img` varchar(255) NOT NULL DEFAULT '',
  `c3p6_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p6_desc` text NOT NULL,
  `c3p6_buy` text NOT NULL,
  `c3p6_cart` text NOT NULL,
  `c3p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p7_img` varchar(255) NOT NULL DEFAULT '',
  `c3p7_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p7_desc` text NOT NULL,
  `c3p7_buy` text NOT NULL,
  `c3p7_cart` text NOT NULL,
  `c3p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p8_img` varchar(255) NOT NULL DEFAULT '',
  `c3p8_tit` varchar(50) NOT NULL DEFAULT '',
  `c3p8_desc` text NOT NULL,
  `c3p8_buy` text NOT NULL,
  `c3p8_cart` text NOT NULL,
  `c3p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_simplecart_specials`
--

INSERT INTO `nuke_simplecart_specials` VALUES('Insert Category Description Here', 'Specials', 'images/simplecart/specials/c3p1.jpg', 'Invicta Automatic Pro Diver G3', 'Eminently masculine, the Invicta Automatic Pro Diver G3 watch harkens back to a nostalgic time with its classically styled features. This precisely constructed Swiss timepiece for men features a solid stainless steel case that&#039;s 43mm wide (1.7 inches).\r\n<br>\r\n<br>\r\n<strong>List Price: $375.00 Your Price: $97.00</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Invicta Men&#039;s Automatic Pro Diver S2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="97.00">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p2.jpg', 'Apple 20 GB iPod Photo U2 Special Edition', 'The distinctive 20 GB iPod U2 Special Edition for Mac and Windows. Now with a full-color display. Play up to 5,000 songs. Store up to 20,000 photos. Turn it up loud, captain.\r\n<br>\r\n<br>\r\n<strong>Price: $332.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Apple 20 GB iPod Photo U2 Special Edition">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="332.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p3.jpg', 'T-Mobile Get More 600 Nationwide Minute Plan', '<strong>Calling Range: national with roaming</strong><br><br>\r\nThis cell phone service plan lets you call throughout T-Mobile&#039;s nationwide network, with no additional fees for long distance service or roaming for 600 minutes worth of calls per month.\r\n<br>\r\n<br>\r\n<strong>Plan Price per month: $39.99</strong>\r\n', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="T-Mobile Get More 600 Nationwide Minute Plan with Unlimited Nights and Weekends">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="39.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p4.jpg', 'Fun Hop', 'Every child knows this much about evolution: somewhere, way, way back, we were kangaroos. All you need to satisfy the deep primal desire to get around by hopping is one of these big, heavy-gauge vinyl hopping balls. The slightly stippled surface of the blue vinyl provides plenty of grip, and the ball inflates to over 53 inches in circumference, so it can accommodate different sizes of human Roo.\r\n<br>\r\n<br>\r\n<strong>Price: $12.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Fun Hop">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="12.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<strong>Price: $28.50</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.50">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<strong>Price: $92.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="92.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<strong>Price: $196.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="196.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1);



--
-- Table structure for table `nuke_universal_categories`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_categories`
--




--
-- Table structure for table `nuke_universal_cfg`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_cfg` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_cfg`
--

INSERT INTO `nuke_universal_cfg` VALUES('modtitle', 'Items System');
INSERT INTO `nuke_universal_cfg` VALUES('rightblocks', '0');
INSERT INTO `nuke_universal_cfg` VALUES('imageon', '1');
INSERT INTO `nuke_universal_cfg` VALUES('perpage', '10');
INSERT INTO `nuke_universal_cfg` VALUES('allowusersubmit', '1');
INSERT INTO `nuke_universal_cfg` VALUES('newpage', '5');
INSERT INTO `nuke_universal_cfg` VALUES('popular', '50');
INSERT INTO `nuke_universal_cfg` VALUES('popularpage', '5');
INSERT INTO `nuke_universal_cfg` VALUES('searchresults', '5');
INSERT INTO `nuke_universal_cfg` VALUES('showqueue', '1');
INSERT INTO `nuke_universal_cfg` VALUES('onlyregusers', '1');
INSERT INTO `nuke_universal_cfg` VALUES('allowmodifyrequest', '1');
INSERT INTO `nuke_universal_cfg` VALUES('allowimageupload', '0');
INSERT INTO `nuke_universal_cfg` VALUES('restrictimageupload', '0');
INSERT INTO `nuke_universal_cfg` VALUES('allowcomments', '1');
INSERT INTO `nuke_universal_cfg` VALUES('restrictcomments', '1');
INSERT INTO `nuke_universal_cfg` VALUES('toprated', '10');
INSERT INTO `nuke_universal_cfg` VALUES('mostpopblock', '1');
INSERT INTO `nuke_universal_cfg` VALUES('newblock', '1');
INSERT INTO `nuke_universal_cfg` VALUES('maxcatlimit', '3');
INSERT INTO `nuke_universal_cfg` VALUES('allowratings', '1');
INSERT INTO `nuke_universal_cfg` VALUES('mostwanted', '1');
INSERT INTO `nuke_universal_cfg` VALUES('mwpostlevel', '0');
INSERT INTO `nuke_universal_cfg` VALUES('sortbytype', '0');
INSERT INTO `nuke_universal_cfg` VALUES('mwpages', '20');
INSERT INTO `nuke_universal_cfg` VALUES('quickview', '1');
INSERT INTO `nuke_universal_cfg` VALUES('quickviewnum', '2');
INSERT INTO `nuke_universal_cfg` VALUES('randomquick', '1');
INSERT INTO `nuke_universal_cfg` VALUES('qvarticle', '1');
INSERT INTO `nuke_universal_cfg` VALUES('qvacharlimit', '250');
INSERT INTO `nuke_universal_cfg` VALUES('usedescript', '1');
INSERT INTO `nuke_universal_cfg` VALUES('limitmodrequests', '0');
INSERT INTO `nuke_universal_cfg` VALUES('jschecking', '0');
INSERT INTO `nuke_universal_cfg` VALUES('phpbb_pages', '1');
INSERT INTO `nuke_universal_cfg` VALUES('multilinguel', '0');
INSERT INTO `nuke_universal_cfg` VALUES('nosubcats', '0');
INSERT INTO `nuke_universal_cfg` VALUES('versioncheck', 'Unable to perform version check');
INSERT INTO `nuke_universal_cfg` VALUES('lastupdatecheck', '');



--
-- Table structure for table `nuke_universal_comments`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_comments` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `vid` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_comments`
--




--
-- Table structure for table `nuke_universal_items`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL DEFAULT '',
  `website` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` varchar(120) NOT NULL DEFAULT '',
  `votes` int(10) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `comments` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `lastdate` datetime DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `youremail` varchar(120) NOT NULL DEFAULT '',
  `bbcode_uid` varchar(10) DEFAULT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'english',
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_items`
--




--
-- Table structure for table `nuke_universal_modify`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_modify` (
  `id` int(11) NOT NULL DEFAULT '0',
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL DEFAULT '',
  `website` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` varchar(120) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL DEFAULT '',
  `youremail` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_modify`
--




--
-- Table structure for table `nuke_universal_queue`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL DEFAULT '',
  `website` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` varchar(120) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL DEFAULT '',
  `youremail` varchar(120) NOT NULL DEFAULT '',
  `language` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_queue`
--




--
-- Table structure for table `nuke_universal_related`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_related` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `rid` (`rid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_related`
--




--
-- Table structure for table `nuke_universal_requests`
--

CREATE TABLE IF NOT EXISTS `nuke_universal_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtitle` varchar(120) NOT NULL DEFAULT '',
  `submitter` varchar(50) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_universal_requests`
--



--
-- Table structure for table `nuke_video_stream`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flash` int(1) NOT NULL DEFAULT '0',
  `vidname` varchar(100) DEFAULT NULL,
  `description` text,
  `url` text,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `thumbimg` varchar(255) NOT NULL DEFAULT '',
  `width` int(3) DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(9) DEFAULT '0',
  `rating` int(9) DEFAULT NULL,
  `rates` int(9) NOT NULL DEFAULT '0',
  `category` int(9) DEFAULT NULL,
  `request` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream`
--




--
-- Table structure for table `nuke_video_stream_broken`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream_broken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brokenvidid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream_broken`
--




--
-- Table structure for table `nuke_video_stream_categories`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `parent` int(9) NOT NULL DEFAULT '0',
  `permission` int(1) NOT NULL DEFAULT '0',
  `adult` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream_categories`
--

INSERT INTO `nuke_video_stream_categories` VALUES(3, 'Adult', '', 0, 1, 1);
INSERT INTO `nuke_video_stream_categories` VALUES(1, 'Games', '', 0, 0, 0);
INSERT INTO `nuke_video_stream_categories` VALUES(2, 'Funny', '', 0, 0, 0);
INSERT INTO `nuke_video_stream_categories` VALUES(4, 'Scary', '', 0, 0, 0);
INSERT INTO `nuke_video_stream_categories` VALUES(5, 'Commercials', '', 0, 0, 0);
INSERT INTO `nuke_video_stream_categories` VALUES(6, 'Ouch', '', 0, 0, 0);
INSERT INTO `nuke_video_stream_categories` VALUES(7, 'Music', '', 0, 0, 0);



--
-- Table structure for table `nuke_video_stream_comments`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream_comments` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `vidid` mediumint(9) NOT NULL DEFAULT '0',
  `user` varchar(50) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream_comments`
--




--
-- Table structure for table `nuke_video_stream_points`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream_points` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `points` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream_points`
--

INSERT INTO `nuke_video_stream_points` VALUES(1, 1);
INSERT INTO `nuke_video_stream_points` VALUES(2, 5);
INSERT INTO `nuke_video_stream_points` VALUES(3, 5);
INSERT INTO `nuke_video_stream_points` VALUES(4, 10);
INSERT INTO `nuke_video_stream_points` VALUES(5, 2);



--
-- Table structure for table `nuke_video_stream_settings`
--

CREATE TABLE IF NOT EXISTS `nuke_video_stream_settings` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `commentED` int(1) NOT NULL DEFAULT '0',
  `commentV` int(1) NOT NULL DEFAULT '0',
  `sendED` int(1) NOT NULL DEFAULT '0',
  `sendV` int(1) NOT NULL DEFAULT '0',
  `brokenED` int(1) NOT NULL DEFAULT '0',
  `brokenV` int(1) NOT NULL DEFAULT '0',
  `submitED` int(1) NOT NULL DEFAULT '0',
  `submitV` int(1) NOT NULL DEFAULT '0',
  `submitC` int(1) NOT NULL DEFAULT '0',
  `ratingED` int(1) NOT NULL DEFAULT '0',
  `ratingV` int(1) NOT NULL DEFAULT '0',
  `viewV` int(1) NOT NULL DEFAULT '0',
  `downloadED` int(1) NOT NULL DEFAULT '0',
  `downloadV` int(1) NOT NULL DEFAULT '0',
  `embededED` int(1) NOT NULL DEFAULT '0',
  `embededV` int(1) NOT NULL DEFAULT '0',
  `limitvids` int(9) NOT NULL DEFAULT '10',
  `avmaxwidth` int(3) NOT NULL DEFAULT '0',
  `avmaxheight` int(3) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '4.5',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_video_stream_settings`
--

INSERT INTO `nuke_video_stream_settings` VALUES(1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 5, 100, 100, '4.5');



--
-- Table structure for table `nuke_whoiswhere`
--

CREATE TABLE IF NOT EXISTS `nuke_whoiswhere` (
  `username` varchar(25) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `host_addr` varchar(48) NOT NULL DEFAULT '',
  `guest` int(1) NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_whoiswhere`
--


-- 
-- Table structure for table `nuke_nsnwb_config`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_config`
-- 

INSERT INTO `nuke_nsnwb_config` VALUES ('new_project_priority', '1');
INSERT INTO `nuke_nsnwb_config` VALUES ('new_project_status', '0');
INSERT INTO `nuke_nsnwb_config` VALUES ('project_date_format', 'Y-m-d H:i:s');
INSERT INTO `nuke_nsnwb_config` VALUES ('new_task_priority', '1');
INSERT INTO `nuke_nsnwb_config` VALUES ('new_task_status', '0');
INSERT INTO `nuke_nsnwb_config` VALUES ('task_date_format', 'Y-m-d H:i:s');
INSERT INTO `nuke_nsnwb_config` VALUES ('new_project_position', '0');
INSERT INTO `nuke_nsnwb_config` VALUES ('new_task_position', '0');
INSERT INTO `nuke_nsnwb_config` VALUES ('version_number', '1.4.2');



-- 
-- Table structure for table `nuke_nsnwb_members`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_members` (
  `member_id` int(11) NOT NULL auto_increment,
  `member_name` varchar(255) NOT NULL default '',
  `member_email` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`member_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_members`
-- 




-- 
-- Table structure for table `nuke_nsnwb_members_positions`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_members_positions`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_members_positions` (
  `position_id` int(11) NOT NULL auto_increment,
  `position_name` varchar(255) NOT NULL default '',
  `position_description` text NOT NULL,
  PRIMARY KEY  (`position_id`),
  KEY `position_id` (`position_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_members_positions`
-- 

INSERT INTO `nuke_nsnwb_members_positions` VALUES (1, 'Project Manager', 'Project Manager');
INSERT INTO `nuke_nsnwb_members_positions` VALUES (2, 'Project Developer', 'Project Developer');
INSERT INTO `nuke_nsnwb_members_positions` VALUES (3, 'Project Tester', 'Project Tester');
INSERT INTO `nuke_nsnwb_members_positions` VALUES (4, 'Project Sponsor', 'Project Sponsor');



-- 
-- Table structure for table `nuke_nsnwb_projects`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_projects`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects` (
  `project_id` int(11) NOT NULL auto_increment,
  `project_name` varchar(255) NOT NULL default '',
  `project_description` text NOT NULL,
  `priority_id` int(11) NOT NULL default '0',
  `status_id` int(11) NOT NULL default '0',
  `project_percent` float NOT NULL default '0',
  `weight` int(11) NOT NULL default '0',
  `featured` tinyint(2) NOT NULL default '0',
  `date_created` int(14) NOT NULL default '0',
  `date_started` int(14) NOT NULL default '0',
  `date_finished` int(14) NOT NULL default '0',
  PRIMARY KEY  (`project_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_projects`
-- 




-- 
-- Table structure for table `nuke_nsnwb_projects_members`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_projects_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_members` (
  `project_id` int(11) NOT NULL default '0',
  `member_id` int(11) NOT NULL default '0',
  `position_id` int(11) NOT NULL default '0',
  KEY `project_id` (`project_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_projects_members`
-- 




-- 
-- Table structure for table `nuke_nsnwb_projects_priorities`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_projects_priorities`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_priorities` (
  `priority_id` int(11) NOT NULL auto_increment,
  `priority_name` varchar(30) NOT NULL default '',
  `priority_weight` int(11) NOT NULL default '1',
  PRIMARY KEY  (`priority_id`),
  KEY `priority_id` (`priority_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_projects_priorities`
-- 

INSERT INTO `nuke_nsnwb_projects_priorities` VALUES (1, 'N/A', 0);
INSERT INTO `nuke_nsnwb_projects_priorities` VALUES (2, 'Low', 1);
INSERT INTO `nuke_nsnwb_projects_priorities` VALUES (3, 'Medium', 2);
INSERT INTO `nuke_nsnwb_projects_priorities` VALUES (4, 'High', 3);



-- 
-- Table structure for table `nuke_nsnwb_projects_status`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_projects_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_name` varchar(255) NOT NULL default '',
  `status_description` text NOT NULL,
  PRIMARY KEY  (`status_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_projects_status`
-- 




-- 
-- Table structure for table `nuke_nsnwb_tasks`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_tasks`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks` (
  `task_id` int(11) NOT NULL auto_increment,
  `project_id` int(11) NOT NULL default '0',
  `task_name` varchar(255) NOT NULL default '',
  `task_description` text NOT NULL,
  `priority_id` int(11) NOT NULL default '1',
  `status_id` int(11) NOT NULL default '0',
  `task_percent` float NOT NULL default '0',
  `date_created` int(14) NOT NULL default '0',
  `date_started` int(14) NOT NULL default '0',
  `date_finished` int(14) NOT NULL default '0',
  PRIMARY KEY  (`task_id`),
  KEY `task_id` (`task_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_tasks`
-- 




-- 
-- Table structure for table `nuke_nsnwb_tasks_members`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_tasks_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_members` (
  `task_id` int(11) NOT NULL default '0',
  `member_id` int(11) NOT NULL default '0',
  `position_id` int(11) NOT NULL default '0',
  KEY `task_id` (`task_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_tasks_members`
-- 




-- 
-- Table structure for table `nuke_nsnwb_tasks_priorities`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_tasks_priorities`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_priorities` (
  `priority_id` int(11) NOT NULL auto_increment,
  `priority_name` varchar(30) NOT NULL default '',
  `priority_weight` int(11) NOT NULL default '1',
  PRIMARY KEY  (`priority_id`),
  KEY `priority_id` (`priority_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_tasks_priorities`
-- 

INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (1, 'N/A', 0);
INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (2, 'Low', 1);
INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (3, 'Low-Medium', 2);
INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (4, 'Medium', 3);
INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (5, 'High-Medium', 4);
INSERT INTO `nuke_nsnwb_tasks_priorities` VALUES (6, 'High', 5);



-- 
-- Table structure for table `nuke_nsnwb_tasks_status`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwb_tasks_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_name` varchar(255) NOT NULL default '',
  `status_description` text NOT NULL,
  PRIMARY KEY  (`status_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwb_tasks_status`
-- 

INSERT INTO `nuke_nsnwb_tasks_status` VALUES (1, 'Closed', 'This task is closed.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (2, 'Completed', 'Task has been completed.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (3, 'Discontinued', 'Task has been discontinued.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (4, 'On Hold', 'Task is currently on hold.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (5, 'Open', 'This task is opened.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (6, 'Planned', 'This task is in the planning stages at this time.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (7, 'Progress', 'Task is being developed.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (8, 'Started', 'Task has moved to the development stage.');
INSERT INTO `nuke_nsnwb_tasks_status` VALUES (9, 'Terminated', 'Task has an issue that prevents futher development.');



-- 
-- Table structure for table `nuke_nsnwp_config`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_config`
-- 

INSERT INTO `nuke_nsnwp_config` VALUES ('admin_report_email', 'webmaster@yoursite.com');
INSERT INTO `nuke_nsnwp_config` VALUES ('notify_report_admin', '0');
INSERT INTO `nuke_nsnwp_config` VALUES ('notify_report_submitter', '0');
INSERT INTO `nuke_nsnwp_config` VALUES ('new_report_status', '1');
INSERT INTO `nuke_nsnwp_config` VALUES ('new_report_type', '1');
INSERT INTO `nuke_nsnwp_config` VALUES ('report_date_format', 'Y-m-d H:i:s');
INSERT INTO `nuke_nsnwp_config` VALUES ('version_number', '1.2.2');



-- 
-- Table structure for table `nuke_nsnwp_reports`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_reports`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports` (
  `report_id` int(11) NOT NULL auto_increment,
  `project_id` int(11) NOT NULL default '0',
  `type_id` int(11) NOT NULL default '0',
  `status_id` int(11) NOT NULL default '0',
  `report_name` varchar(255) NOT NULL default '',
  `report_description` text NOT NULL,
  `submitter_name` varchar(32) NOT NULL default '',
  `submitter_email` varchar(255) NOT NULL default '',
  `submitter_ip` varchar(20) NOT NULL default '0.0.0.0',
  `date_submitted` int(14) NOT NULL default '0',
  `date_commented` int(14) NOT NULL default '0',
  `date_modified` int(14) NOT NULL default '0',
  PRIMARY KEY  (`report_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_reports`
-- 




-- 
-- Table structure for table `nuke_nsnwp_reports_comments`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_reports_comments`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_comments` (
  `comment_id` int(11) NOT NULL auto_increment,
  `report_id` int(11) NOT NULL default '0',
  `commenter_name` varchar(32) NOT NULL default '',
  `commenter_email` varchar(255) NOT NULL default '',
  `commenter_ip` varchar(20) NOT NULL default '0.0.0.0',
  `comment_description` text NOT NULL,
  `date_commented` int(14) NOT NULL default '0',
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_reports_comments`
-- 




-- 
-- Table structure for table `nuke_nsnwp_reports_members`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_reports_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_members` (
  `report_id` int(11) NOT NULL default '0',
  `member_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_reports_members`
-- 




-- 
-- Table structure for table `nuke_nsnwp_reports_status`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_reports_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_name` varchar(255) NOT NULL default '',
  `status_description` text NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_reports_status`
-- 

INSERT INTO `nuke_nsnwp_reports_status` VALUES (1, 'Open', 'This report is open.');
INSERT INTO `nuke_nsnwp_reports_status` VALUES (2, 'Closed', 'This report is closed.');
INSERT INTO `nuke_nsnwp_reports_status` VALUES (3, 'Bogus', 'This report is bogus.');
INSERT INTO `nuke_nsnwp_reports_status` VALUES (4, 'Duplicate', 'This report is reported as a duplicate.');
INSERT INTO `nuke_nsnwp_reports_status` VALUES (5, 'Feedback', 'This report requires/has feedback.');
INSERT INTO `nuke_nsnwp_reports_status` VALUES (6, 'Assigned', 'Bug has been assigned for researching.');



-- 
-- Table structure for table `nuke_nsnwp_reports_types`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwp_reports_types`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_description` text NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwp_reports_types`
-- 




-- 
-- Table structure for table `nuke_nsnwr_config`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_config`
-- 

INSERT INTO `nuke_nsnwr_config` VALUES ('admin_request_email', 'webmaster@yoursite.com');
INSERT INTO `nuke_nsnwr_config` VALUES ('notify_request_admin', '1');
INSERT INTO `nuke_nsnwr_config` VALUES ('notify_request_submitter', '1');
INSERT INTO `nuke_nsnwr_config` VALUES ('new_request_status', '1');
INSERT INTO `nuke_nsnwr_config` VALUES ('new_request_type', '');
INSERT INTO `nuke_nsnwr_config` VALUES ('request_date_format', 'Y-m-d H:i:s');
INSERT INTO `nuke_nsnwr_config` VALUES ('version_number', '1.2.2');



-- 
-- Table structure for table `nuke_nsnwr_requests`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_requests`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests` (
  `request_id` int(11) NOT NULL auto_increment,
  `project_id` int(11) NOT NULL default '0',
  `type_id` int(11) NOT NULL default '0',
  `status_id` int(11) NOT NULL default '0',
  `request_name` varchar(255) NOT NULL default '',
  `request_description` text NOT NULL,
  `submitter_name` varchar(32) NOT NULL default '',
  `submitter_email` varchar(255) NOT NULL default '',
  `submitter_ip` varchar(20) NOT NULL default '0.0.0.0',
  `date_submitted` int(14) NOT NULL default '0',
  `date_commented` int(14) NOT NULL default '0',
  `date_modified` int(14) NOT NULL default '0',
  PRIMARY KEY  (`request_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_requests`
-- 




-- 
-- Table structure for table `nuke_nsnwr_requests_comments`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_requests_comments`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_comments` (
  `comment_id` int(11) NOT NULL auto_increment,
  `request_id` int(11) NOT NULL default '0',
  `commenter_name` varchar(32) NOT NULL default '',
  `commenter_email` varchar(255) NOT NULL default '',
  `commenter_ip` varchar(20) NOT NULL default '0.0.0.0',
  `comment_description` text NOT NULL,
  `date_commented` int(14) NOT NULL default '0',
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_requests_comments`
-- 




-- 
-- Table structure for table `nuke_nsnwr_requests_members`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_requests_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_members` (
  `request_id` int(11) NOT NULL default '0',
  `member_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_requests_members`
-- 



-- 
-- Table structure for table `nuke_nsnwr_requests_status`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_requests_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_name` varchar(255) NOT NULL default '',
  `status_description` text NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_requests_status`
-- 

INSERT INTO `nuke_nsnwr_requests_status` VALUES (1, 'Open', 'This request is open.');
INSERT INTO `nuke_nsnwr_requests_status` VALUES (2, 'Closed', 'This request is closed.');
INSERT INTO `nuke_nsnwr_requests_status` VALUES (3, 'Inclusion', 'This request is set for inclusion.');
INSERT INTO `nuke_nsnwr_requests_status` VALUES (4, 'Duplicate', 'This request is a duplicate.');
INSERT INTO `nuke_nsnwr_requests_status` VALUES (5, 'Feedback', 'This request requires/has feedback.');
INSERT INTO `nuke_nsnwr_requests_status` VALUES (6, 'Assigned', 'Request has been assigned for possible inclusion.');



-- 
-- Table structure for table `nuke_nsnwr_requests_types`
-- 

-- DROP TABLE IF EXISTS `nuke_nsnwr_requests_types`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_description` text NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnwr_requests_types`
-- 

