UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPV1.0.1 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.v502';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnuke.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.v502</strong></font></a><br>' WHERE CONVERT( `nuke_config`.`sitename` USING utf8 ) = 'Platinum Nuke Pro' LIMIT 1 ;
UPDATE `nuke_config` SET `Default_Theme` = 'Impressed';
ALTER TABLE nuke_users ADD user_from_flag VARCHAR(25) NULL;
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

INSERT INTO `nuke_platinum_technology` VALUES('versioncheck', 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.v502</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnuke.com" target="_blank">Platinum Nuke Pro</a></strong><br>');
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

INSERT INTO `nuke_aab_config` VALUES('', '', 1, 1, 1, 1, 1, 1, 1, '', '', 1, 1, 1, 1, 1, 195);

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_ads`
--

DROP TABLE IF EXISTS `nukec30_ads_ads`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_ads` (
  `id_ads` int(11) NOT NULL AUTO_INCREMENT,
  `id_catg` mediumint(9) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `ads_desc` text NOT NULL,
  `imageads` varchar(50) NOT NULL,
  `curr` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `submitter` mediumint(9) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `dateposted` int(11) NOT NULL DEFAULT '0',
  `validuntil` int(11) NOT NULL DEFAULT '0',
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `language` varchar(50) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nukec30_ads_ads`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_box`
--

DROP TABLE IF EXISTS `nukec30_ads_box`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_box` (
  `id_save` int(11) NOT NULL AUTO_INCREMENT,
  `id_ads` int(10) unsigned DEFAULT NULL,
  `owner` int(11) NOT NULL DEFAULT '0',
  `id_catg` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `ads_desc` text NOT NULL,
  `imageads` varchar(80) NOT NULL,
  `curr` varchar(25) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `submiter` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `dateposted` int(11) NOT NULL DEFAULT '0',
  `validuntil` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_save`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nukec30_ads_box`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_catg`
--

DROP TABLE IF EXISTS `nukec30_ads_catg`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_catg` (
  `id_catg` mediumint(9) NOT NULL AUTO_INCREMENT,
  `catg` varchar(50) DEFAULT NULL,
  `catg_desc` text,
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL DEFAULT 'english',
  `hits` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_catg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `nukec30_ads_catg`
--

INSERT INTO `nukec30_ads_catg` (`id_catg`, `catg`, `catg_desc`, `parentid`, `image`, `language`, `hits`) VALUES
(1, 'Financial and Money', NULL, 0, '', 'english', 0),
(2, 'Credit Cards', NULL, 1, '', 'english', 0),
(3, 'Credit Services', NULL, 1, '', 'english', 0),
(4, 'Money to Lend', NULL, 1, '', 'english', 0),
(5, 'Mortgage Brokers', NULL, 1, '', 'english', 0),
(6, 'Mortgage Services', NULL, 1, '', 'english', 0),
(7, 'Venture Capital', NULL, 1, '', 'english', 0),
(8, 'Real Estate', NULL, 0, '', 'english', 0),
(9, 'Acreages', NULL, 8, '', 'english', 0),
(10, 'Agents', NULL, 8, '', 'english', 0),
(11, 'Apartments', NULL, 8, '', 'english', 0),
(12, 'Business&Commercial Sites', NULL, 8, '', 'english', 0),
(13, 'Farms', NULL, 8, '', 'english', 0),
(14, 'For Rent', NULL, 8, '', 'english', 0),
(15, 'For Sale', NULL, 8, '', 'english', 0),
(16, 'House Exchanges', NULL, 8, '', 'english', 0),
(17, 'Houses', NULL, 8, '', 'english', 0),
(18, 'Land For Sale', NULL, 8, '', 'english', 0),
(19, 'Rooms', NULL, 8, '', 'english', 0),
(20, 'Services', NULL, 8, '', 'english', 0),
(21, 'Steel Framing Homes', NULL, 8, '', 'english', 0),
(22, 'Time Share', NULL, 8, '', 'english', 0),
(23, 'Vacation Properties', NULL, 8, '', 'english', 0),
(24, 'Wanted', NULL, 8, '', 'english', 0),
(25, 'Business Opportunities', NULL, 0, '', 'english', 0),
(26, 'Agents Wanted', NULL, 25, '', 'english', 0),
(27, 'Business Opportunities', NULL, 25, '', 'english', 0),
(28, 'Business for Sale', NULL, 25, '', 'english', 0),
(29, 'Distributors Wanted', NULL, 25, '', 'english', 0),
(30, 'Home Business Opps', NULL, 25, '', 'english', 0),
(31, 'Investors Wanted', NULL, 25, '', 'english', 0),
(32, 'Marketing / Sales', NULL, 25, '', 'english', 0),
(33, 'MLM', NULL, 25, '', 'english', 0),
(34, 'Money-Making Opportunities', NULL, 25, '', 'english', 0),
(35, 'Representatives Wanted', NULL, 25, '', 'english', 0),
(36, 'Work At Home', NULL, 25, '', 'english', 0),
(37, 'Partnerships & Investments', NULL, 25, '', 'english', 0),
(38, 'Automotive', NULL, 0, '', 'english', 0),
(39, 'Antique', NULL, 38, '', 'english', 0),
(40, 'Auto Accessories', NULL, 38, '', 'english', 0),
(41, 'Auto Parts', NULL, 38, '', 'english', 0),
(42, 'Auto Repairing', NULL, 38, '', 'english', 0),
(43, 'Auto Service', NULL, 38, '', 'english', 0),
(44, 'Auto Supplies', NULL, 38, '', 'english', 0),
(45, 'Autos For Sale', NULL, 38, '', 'english', 0),
(46, 'Autos Wanted', NULL, 38, '', 'english', 0),
(47, 'Boats', NULL, 38, '', 'english', 0),
(48, 'Classic', NULL, 38, '', 'english', 0),
(49, 'Motor Homes & Travel Trailers', NULL, 38, '', 'english', 0),
(50, 'Motorcycle', NULL, 38, '', 'english', 0),
(51, 'Pickups and Vans', NULL, 38, '', 'english', 0),
(52, 'Antique', NULL, 38, '', 'english', 0),
(53, 'Recreational Vehicles', NULL, 38, '', 'english', 0),
(54, 'Sports Cars', NULL, 38, '', 'english', 0),
(55, 'Trailers and Buses', NULL, 38, '', 'english', 0),
(56, 'Trucks', NULL, 38, '', 'english', 0),
(57, 'Animals and Pets', NULL, 0, '', 'english', 0),
(58, 'Birds', NULL, 57, '', 'english', 0),
(59, 'Breeders', NULL, 57, '', 'english', 0),
(60, 'Cats & Kittens', NULL, 57, '', 'english', 0),
(61, 'Chinchillas', NULL, 57, '', 'english', 0),
(62, 'Dogs & Puppies', NULL, 57, '', 'english', 0),
(63, 'Ducks & Geese', NULL, 57, '', 'english', 0),
(64, 'Exotic', NULL, 57, '', 'english', 0),
(65, 'Fish', NULL, 57, '', 'english', 0),
(66, 'Free Adoptions', NULL, 57, '', 'english', 0),
(67, 'Guinnea Pigs', NULL, 57, '', 'english', 0),
(68, 'Hamsters & Gerbils', NULL, 57, '', 'english', 0),
(69, 'Horse & Livestock', NULL, 57, '', 'english', 0),
(70, 'Pet & Animal Foods', NULL, 57, '', 'english', 0),
(71, 'Pet Accessories', NULL, 57, '', 'english', 0),
(72, 'Pet Cages & Houses', NULL, 57, '', 'english', 0),
(73, 'Pet Gifts', NULL, 57, '', 'english', 0),
(74, 'Pets For Sale', NULL, 57, '', 'english', 0),
(75, 'Rabbits & Bunnies', NULL, 57, '', 'english', 0),
(76, 'Rats & Rodents', NULL, 57, '', 'english', 0),
(77, 'Reptiles & Amphibians', NULL, 57, '', 'english', 0),
(78, 'Sugar Gliders', NULL, 57, '', 'english', 0),
(79, 'Other Pets Related', NULL, 57, '', 'english', 0),
(80, 'Business Services', NULL, 0, '', 'english', 0),
(81, 'Advertising', NULL, 80, '', 'english', 0),
(82, 'Business & Professional Services', NULL, 80, '', 'english', 0),
(83, 'Marketings', NULL, 80, '', 'english', 0),
(84, 'Medical Equipment & Supplies', NULL, 80, '', 'english', 0),
(85, 'Merchant Accounts', NULL, 80, '', 'english', 0),
(86, 'Business Equipments', NULL, 80, '', 'english', 0),
(87, 'Office Equipment', NULL, 80, '', 'english', 0),
(88, 'Office Supplies', NULL, 80, '', 'english', 0),
(89, 'Promotion', NULL, 80, '', 'english', 0),
(90, 'Vending Machines', NULL, 80, '', 'english', 0),
(91, 'Personals', NULL, 0, '', 'english', 0),
(92, 'Books/CDs/Videos', NULL, 91, '', 'english', 0),
(93, 'Chat', NULL, 91, '', 'english', 0),
(94, 'Dating Services', NULL, 91, '', 'english', 0),
(95, 'Miscellaneous Personal Services', NULL, 91, '', 'english', 0),
(96, 'Personal Growth & Help', NULL, 91, '', 'english', 0),
(97, 'Personal Products', NULL, 91, '', 'english', 0),
(98, 'Personal Ads', NULL, 91, '', 'english', 0),
(99, 'Personal Services', NULL, 91, '', 'english', 0),
(100, 'Computers', NULL, 0, '', 'english', 0),
(101, 'Accessories', NULL, 100, '', 'english', 0),
(102, 'Consultants', NULL, 100, '', 'english', 0),
(103, 'Hardware', NULL, 100, '', 'english', 0),
(104, 'Software', NULL, 100, '', 'english', 0),
(105, 'For Sale', NULL, 100, '', 'english', 0),
(106, 'Wanted', NULL, 100, '', 'english', 0),
(107, 'Everything Else', NULL, 0, '', 'english', 0),
(108, 'Auctions', NULL, 107, '', 'english', 0),
(109, 'Bulletin Boards', NULL, 107, '', 'english', 0),
(110, 'Education', NULL, 107, '', 'english', 0),
(111, 'Free Stuff', NULL, 107, '', 'english', 0),
(112, 'Furniture', NULL, 107, '', 'english', 0),
(113, 'Gambling', NULL, 107, '', 'english', 0),
(114, 'Gifts', NULL, 107, '', 'english', 0),
(115, 'Home Improvement', NULL, 107, '', 'english', 0),
(116, 'Jewelry', NULL, 107, '', 'english', 0),
(117, 'Manufacturers', NULL, 107, '', 'english', 0),
(118, 'Miscellaneous For Sale', NULL, 107, '', 'english', 0),
(119, 'Package Vacations', NULL, 107, '', 'english', 0),
(120, 'Music', NULL, 107, '', 'english', 0),
(121, 'Other', NULL, 107, '', 'english', 0),
(122, 'Internet & Web Services', NULL, 0, '', 'english', 0),
(123, 'Affiliate Programs', NULL, 122, '', 'english', 0),
(124, 'Free Traffic Programs', NULL, 122, '', 'english', 0),
(125, 'Consulting', NULL, 122, '', 'english', 0),
(126, 'Internet & Web Services', NULL, 122, '', 'english', 0),
(127, 'Misc. Internet Resources', NULL, 122, '', 'english', 0),
(128, 'I.S.P.', NULL, 122, '', 'english', 0),
(129, 'Training', NULL, 122, '', 'english', 0),
(130, 'Web Design', NULL, 122, '', 'english', 0),
(131, 'Web Hosting', NULL, 122, '', 'english', 0),
(132, 'Web Promotion', NULL, 122, '', 'english', 0),
(133, 'Health and Fitness', NULL, 0, '', 'english', 0),
(134, 'Age Related', NULL, 133, '', 'english', 0),
(135, 'Beauty Products', NULL, 133, '', 'english', 0),
(136, 'Dental Care', NULL, 133, '', 'english', 0),
(137, 'Exercise Equipment', NULL, 133, '', 'english', 0),
(138, 'Fitness', NULL, 133, '', 'english', 0),
(139, 'Hair Loss', NULL, 133, '', 'english', 0),
(140, 'Health & Wellness', NULL, 133, '', 'english', 0),
(141, 'Health Services', NULL, 133, '', 'english', 0),
(142, 'Miscellaneous Health Related', NULL, 133, '', 'english', 0),
(143, 'Sexual Health', NULL, 133, '', 'english', 0),
(144, 'Skin Care', NULL, 133, '', 'english', 0),
(145, 'Weight Loss/Diet', NULL, 133, '', 'english', 0),
(146, 'Hosting', 'Cpanel and ISPConfig3 hosting', 0, '', 'english', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_comments`
--

DROP TABLE IF EXISTS `nukec30_ads_comments`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_comments` (
  `no_comment` int(11) NOT NULL AUTO_INCREMENT,
  `id_ads` int(11) NOT NULL DEFAULT '0',
  `commentby` mediumint(9) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `hostname` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`no_comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nukec30_ads_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_config`
--

DROP TABLE IF EXISTS `nukec30_ads_config`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_config` (
  `nukecprefix` varchar(30) DEFAULT NULL,
  `folder_name` varchar(30) NOT NULL,
  `ModuleTitle` varchar(150) NOT NULL,
  `AdsTitleLength` varchar(5) NOT NULL,
  `AdsContentLength` varchar(6) NOT NULL,
  `Waiting` tinyint(4) NOT NULL DEFAULT '0',
  `PerPage` tinyint(4) NOT NULL DEFAULT '0',
  `UseImgCatg` tinyint(4) NOT NULL DEFAULT '0',
  `PostInMainCatg` tinyint(4) NOT NULL DEFAULT '0',
  `MemberRequired` tinyint(4) NOT NULL DEFAULT '0',
  `AdsComment` tinyint(4) NOT NULL DEFAULT '0',
  `PopAds` tinyint(4) NOT NULL DEFAULT '0',
  `UploadImg` tinyint(4) NOT NULL DEFAULT '0',
  `MaxImgSize` varchar(5) NOT NULL,
  `MaxImgHeight` varchar(5) NOT NULL,
  `MaxImgWidth` varchar(5) NOT NULL,
  `ThumbToHeight` tinyint(4) NOT NULL DEFAULT '0',
  `ThumbToWidth` tinyint(4) NOT NULL DEFAULT '0',
  `ThumbHeight` varchar(5) NOT NULL,
  `ThumbWidth` varchar(5) NOT NULL,
  `UploadPath` varchar(150) NOT NULL,
  `UploadPathRev` varchar(100) NOT NULL,
  `CatgPath` varchar(150) NOT NULL,
  `CatgPathRev` varchar(100) NOT NULL,
  `MaxAllowedAds` smallint(6) NOT NULL DEFAULT '0',
  `adsbgcolor1` varchar(10) NOT NULL,
  `adsbgcolor2` varchar(10) NOT NULL,
  `adsbgcolor3` varchar(10) NOT NULL,
  `adsbgcolor4` varchar(10) NOT NULL,
  `adsbgcolor5` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nukec30_ads_config`
--

INSERT INTO `nukec30_ads_config` (`nukecprefix`, `folder_name`, `ModuleTitle`, `AdsTitleLength`, `AdsContentLength`, `Waiting`, `PerPage`, `UseImgCatg`, `PostInMainCatg`, `MemberRequired`, `AdsComment`, `PopAds`, `UploadImg`, `MaxImgSize`, `MaxImgHeight`, `MaxImgWidth`, `ThumbToHeight`, `ThumbToWidth`, `ThumbHeight`, `ThumbWidth`, `UploadPath`, `UploadPathRev`, `CatgPath`, `CatgPathRev`, `MaxAllowedAds`, `adsbgcolor1`, `adsbgcolor2`, `adsbgcolor3`, `adsbgcolor4`, `adsbgcolor5`) VALUES
('nukec30', 'NukeC30', 'Platinum Advanced Classifieds ', '250', '100000', 1, 10, 0, 0, 1, 1, 10, 1, '9999', '999', '999', 0, 1, '450', '150', 'modules/NukeC30/imageads/', 'modules/NukeC30/imageads/', 'modules/NukeC30/imagecatg/', 'modules/NukeC30/imagecatg/', 100, '#c3c2c2', '#c3c2c2', '#c3c2c2', '#c3c2c2', '#c3c2c2');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_currency`
--

DROP TABLE IF EXISTS `nukec30_ads_currency`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_currency` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `curr` varchar(10) NOT NULL,
  `country` varchar(60) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `nukec30_ads_currency`
--

INSERT INTO `nukec30_ads_currency` (`no`, `curr`, `country`) VALUES
(1, 'US$', 'USA'),
(2, 'Euro', 'European'),
(3, 'GBP', 'British'),
(4, 'AUD', 'Australian'),
(5, 'CAD', 'Canadian'),
(6, 'Peso', 'Mexican'),
(7, 'Yen', 'Japanese'),
(8, 'Franc', 'Swiss'),
(9, 'Rp', 'Indonesia'),
(10, 'DN', 'Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_custom`
--

DROP TABLE IF EXISTS `nukec30_ads_custom`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_custom` (
  `custom_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `custom_title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `language` varchar(50) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`custom_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nukec30_ads_custom`
--


-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_disclaimer`
--

DROP TABLE IF EXISTS `nukec30_ads_disclaimer`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_disclaimer` (
  `no` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `language` varchar(60) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nukec30_ads_disclaimer`
--

INSERT INTO `nukec30_ads_disclaimer` (`no`, `title`, `content`, `language`) VALUES
(1, 'NukeC Disclaimer', 'This site area acts as a venue to allow anyone to offer, sell, and buy  just about anything, at any time, from anywhere, in a variety of pricing formats and currencies. \r\n<BR><BR>\r\nWe are not involved in the actual transaction between buyers and sellers. As a result, we have no control over the quality, safety or legality of the items advertised, the truth or accuracy of the listings, the ability of sellers to sell items or the ability of buyers to buy items. We cannot ensure that a buyer or seller will actually complete a transaction.', '');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_duration`
--

DROP TABLE IF EXISTS `nukec30_ads_duration`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_duration` (
  `id_duration` tinyint(4) NOT NULL AUTO_INCREMENT,
  `duration_value` smallint(6) NOT NULL DEFAULT '0',
  `duration_alias` varchar(50) NOT NULL,
  PRIMARY KEY (`id_duration`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `nukec30_ads_duration`
--

INSERT INTO `nukec30_ads_duration` (`id_duration`, `duration_value`, `duration_alias`) VALUES
(1, 7, '1 week'),
(2, 3, '3 days'),
(3, 1, '1 day'),
(4, 30, '1 month'),
(6, 21, '3 weeks'),
(10, 14, '2 weeks'),
(11, 60, '2 months'),
(12, 365, '1 year');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_filter`
--

DROP TABLE IF EXISTS `nukec30_ads_filter`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_filter` (
  `word_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `bad_word` varchar(50) NOT NULL,
  `rep_word` varchar(50) NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nukec30_ads_filter`
--

INSERT INTO `nukec30_ads_filter` (`word_id`, `bad_word`, `rep_word`) VALUES
(3, 'shit', 's**t'),
(4, 'motherfucker', '*****');

-- --------------------------------------------------------

--
-- Table structure for table `nukec30_ads_imgtype`
--

DROP TABLE IF EXISTS `nukec30_ads_imgtype`;
CREATE TABLE IF NOT EXISTS `nukec30_ads_imgtype` (
  `id_typeimg` tinyint(4) NOT NULL DEFAULT '0',
  `typeimg` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nukec30_ads_imgtype`
--

INSERT INTO `nukec30_ads_imgtype` (`id_typeimg`, `typeimg`, `status`) VALUES
(1, 'gif', 1),
(2, 'jpeg', 1),
(3, 'jpg', 1),
(4, 'x-png', 1),
(5, 'pjpeg', 1);

-- --------------------------------------------------------


--
-- Table structure for table `nuke_bbflags`
--

DROP TABLE IF EXISTS `nuke_bbflags`;
CREATE TABLE `nuke_bbflags` (
  `flag_id` int(10) NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(50) DEFAULT NULL,
  `flag_image` varchar(25) DEFAULT NULL,
  PRIMARY KEY  (`flag_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_bbflags`
--

INSERT INTO `nuke_bbflags` VALUES(1, 'Afghanistan', 'af.gif');
INSERT INTO `nuke_bbflags` VALUES(2, 'Akrotiri', 'ax.gif');
INSERT INTO `nuke_bbflags` VALUES(3, 'Albania', 'al.gif');
INSERT INTO `nuke_bbflags` VALUES(4, 'Algeria', 'ag.gif');
INSERT INTO `nuke_bbflags` VALUES(5, 'American Samoa', 'aq.gif');
INSERT INTO `nuke_bbflags` VALUES(6, 'Andorra', 'an.gif');
INSERT INTO `nuke_bbflags` VALUES(7, 'Angola', 'ao.gif');
INSERT INTO `nuke_bbflags` VALUES(8, 'Anguilla', 'av.gif');
INSERT INTO `nuke_bbflags` VALUES(9, 'Antigua and Barbuda', 'ac.gif');
INSERT INTO `nuke_bbflags` VALUES(10, 'Argentina', 'ar.gif');
INSERT INTO `nuke_bbflags` VALUES(11, 'Armenia', 'am.gif');
INSERT INTO `nuke_bbflags` VALUES(12, 'Aruba', 'aa.gif');
INSERT INTO `nuke_bbflags` VALUES(13, 'Ashmore and Cartier Islands', 'at.gif');
INSERT INTO `nuke_bbflags` VALUES(14, 'Australia', 'as.gif');
INSERT INTO `nuke_bbflags` VALUES(15, 'Austria', 'au.gif');
INSERT INTO `nuke_bbflags` VALUES(16, 'Azerbaijan', 'aj.gif');
INSERT INTO `nuke_bbflags` VALUES(17, 'Bahamas, The', 'bf.gif');
INSERT INTO `nuke_bbflags` VALUES(18, 'Bahrain', 'ba.gif');
INSERT INTO `nuke_bbflags` VALUES(19, 'Baker Island', 'fq.gif');
INSERT INTO `nuke_bbflags` VALUES(20, 'Bangladesh', 'bg.gif');
INSERT INTO `nuke_bbflags` VALUES(21, 'Barbados', 'bb.gif');
INSERT INTO `nuke_bbflags` VALUES(22, 'Bassas da India', 'bs.gif');
INSERT INTO `nuke_bbflags` VALUES(23, 'Belarus', 'bo.gif');
INSERT INTO `nuke_bbflags` VALUES(24, 'Belgium', 'be.gif');
INSERT INTO `nuke_bbflags` VALUES(25, 'Belize', 'bh.gif');
INSERT INTO `nuke_bbflags` VALUES(26, 'Benin', 'bn.gif');
INSERT INTO `nuke_bbflags` VALUES(27, 'Bermuda', 'bd.gif');
INSERT INTO `nuke_bbflags` VALUES(28, 'Bhutan', 'bt.gif');
INSERT INTO `nuke_bbflags` VALUES(29, 'Bolivia', 'bl.gif');
INSERT INTO `nuke_bbflags` VALUES(30, 'Bosnia and Herzegovina', 'bk.gif');
INSERT INTO `nuke_bbflags` VALUES(31, 'Botswana', 'bc.gif');
INSERT INTO `nuke_bbflags` VALUES(32, 'Bouvet Island', 'bv.gif');
INSERT INTO `nuke_bbflags` VALUES(33, 'Brazil', 'br.gif');
INSERT INTO `nuke_bbflags` VALUES(34, 'British Indian Ocean Territory', 'io.gif');
INSERT INTO `nuke_bbflags` VALUES(35, 'British Virgin Islands', 'vi.gif');
INSERT INTO `nuke_bbflags` VALUES(36, 'Brunei', 'bx.gif');
INSERT INTO `nuke_bbflags` VALUES(37, 'Bulgaria', 'bu.gif');
INSERT INTO `nuke_bbflags` VALUES(38, 'Burkina Faso', 'uv.gif');
INSERT INTO `nuke_bbflags` VALUES(39, 'Burma', 'bm.gif');
INSERT INTO `nuke_bbflags` VALUES(40, 'Burundi', 'by.gif');
INSERT INTO `nuke_bbflags` VALUES(41, 'Cambodia', 'cb.gif');
INSERT INTO `nuke_bbflags` VALUES(42, 'Cameroon', 'cm.gif');
INSERT INTO `nuke_bbflags` VALUES(43, 'Canada', 'ca.gif');
INSERT INTO `nuke_bbflags` VALUES(44, 'Cape Verde', 'cv.gif');
INSERT INTO `nuke_bbflags` VALUES(45, 'Cayman Islands', 'cj.gif');
INSERT INTO `nuke_bbflags` VALUES(46, 'Central African Republic', 'ct.gif');
INSERT INTO `nuke_bbflags` VALUES(47, 'Chad', 'cd.gif');
INSERT INTO `nuke_bbflags` VALUES(48, 'Chile', 'ci.gif');
INSERT INTO `nuke_bbflags` VALUES(49, 'China', 'ch.gif');
INSERT INTO `nuke_bbflags` VALUES(50, 'Christmas Island', 'kt.gif');
INSERT INTO `nuke_bbflags` VALUES(51, 'Clipperton Island', 'ip.gif');
INSERT INTO `nuke_bbflags` VALUES(52, 'Cocos (Keeling) Islands', 'ck.gif');
INSERT INTO `nuke_bbflags` VALUES(53, 'Colombia', 'co.gif');
INSERT INTO `nuke_bbflags` VALUES(54, 'Comoros', 'cn.gif');
INSERT INTO `nuke_bbflags` VALUES(55, 'Congo, Democratic Republic of the', 'cg.gif');
INSERT INTO `nuke_bbflags` VALUES(56, 'Congo, Republic of the', 'cf.gif');
INSERT INTO `nuke_bbflags` VALUES(57, 'Cook Islands', 'cw.gif');
INSERT INTO `nuke_bbflags` VALUES(58, 'Coral Sea Islands', 'cr.gif');
INSERT INTO `nuke_bbflags` VALUES(59, 'Costa Rica', 'cs.gif');
INSERT INTO `nuke_bbflags` VALUES(60, 'Cote d''Ivoire', 'iv.gif');
INSERT INTO `nuke_bbflags` VALUES(61, 'Croatia', 'hr.gif');
INSERT INTO `nuke_bbflags` VALUES(62, 'Cuba', 'cu.gif');
INSERT INTO `nuke_bbflags` VALUES(63, 'Cyprus', 'cy.gif');
INSERT INTO `nuke_bbflags` VALUES(64, 'Czech Republic', 'ez.gif');
INSERT INTO `nuke_bbflags` VALUES(65, 'Denmark', 'da.gif');
INSERT INTO `nuke_bbflags` VALUES(66, 'Dhekelia', 'dx.gif');
INSERT INTO `nuke_bbflags` VALUES(67, 'Djibouti', 'dj.gif');
INSERT INTO `nuke_bbflags` VALUES(68, 'Dominica', 'do.gif');
INSERT INTO `nuke_bbflags` VALUES(69, 'Dominican Republic', 'dr.gif');
INSERT INTO `nuke_bbflags` VALUES(70, 'East Timor', 'tt.gif');
INSERT INTO `nuke_bbflags` VALUES(71, 'Ecuador', 'ec.gif');
INSERT INTO `nuke_bbflags` VALUES(72, 'Egypt', 'eg.gif');
INSERT INTO `nuke_bbflags` VALUES(73, 'El Salvador', 'es.gif');
INSERT INTO `nuke_bbflags` VALUES(74, 'Equatorial Guinea', 'ek.gif');
INSERT INTO `nuke_bbflags` VALUES(75, 'Eritrea', 'er.gif');
INSERT INTO `nuke_bbflags` VALUES(76, 'Estonia', 'en.gif');
INSERT INTO `nuke_bbflags` VALUES(77, 'Ethiopia', 'et.gif');
INSERT INTO `nuke_bbflags` VALUES(78, 'Europa Island', 'eu.gif');
INSERT INTO `nuke_bbflags` VALUES(79, 'Falkland Islands (Islas Malvinas)', 'fk.gif');
INSERT INTO `nuke_bbflags` VALUES(80, 'Faroe Islands', 'fo.gif');
INSERT INTO `nuke_bbflags` VALUES(81, 'Fiji', 'fj.gif');
INSERT INTO `nuke_bbflags` VALUES(82, 'Finland', 'fi.gif');
INSERT INTO `nuke_bbflags` VALUES(83, 'France', 'fr.gif');
INSERT INTO `nuke_bbflags` VALUES(84, 'French Guiana', 'fg.gif');
INSERT INTO `nuke_bbflags` VALUES(85, 'French Polynesia', 'fp.gif');
INSERT INTO `nuke_bbflags` VALUES(86, 'French Southern and Antarctic Lands', 'fs.gif');
INSERT INTO `nuke_bbflags` VALUES(87, 'Gabon', 'gb.gif');
INSERT INTO `nuke_bbflags` VALUES(88, 'Gambia, The', 'ga.gif');
INSERT INTO `nuke_bbflags` VALUES(89, 'Georgia', 'gg.gif');
INSERT INTO `nuke_bbflags` VALUES(90, 'Germany', 'gm.gif');
INSERT INTO `nuke_bbflags` VALUES(91, 'Ghana', 'gh.gif');
INSERT INTO `nuke_bbflags` VALUES(92, 'Gibraltar', 'gi.gif');
INSERT INTO `nuke_bbflags` VALUES(93, 'Glorioso Islands', 'go.gif');
INSERT INTO `nuke_bbflags` VALUES(94, 'Greece', 'gr.gif');
INSERT INTO `nuke_bbflags` VALUES(95, 'Greenland', 'gl.gif');
INSERT INTO `nuke_bbflags` VALUES(96, 'Grenada', 'gj.gif');
INSERT INTO `nuke_bbflags` VALUES(97, 'Guadeloupe', 'gp.gif');
INSERT INTO `nuke_bbflags` VALUES(98, 'Guam', 'gq.gif');
INSERT INTO `nuke_bbflags` VALUES(99, 'Guatemala', 'gt.gif');
INSERT INTO `nuke_bbflags` VALUES(100, 'Guernsey', 'gk.gif');
INSERT INTO `nuke_bbflags` VALUES(101, 'Guinea', 'gv.gif');
INSERT INTO `nuke_bbflags` VALUES(102, 'Guinea-Bissau', 'pu.gif');
INSERT INTO `nuke_bbflags` VALUES(103, 'Guyana', 'gy.gif');
INSERT INTO `nuke_bbflags` VALUES(104, 'Haiti', 'ha.gif');
INSERT INTO `nuke_bbflags` VALUES(105, 'Heard Island and McDonald Islands', 'hm.gif');
INSERT INTO `nuke_bbflags` VALUES(106, 'Holy See (Vatican City)', 'vt.gif');
INSERT INTO `nuke_bbflags` VALUES(107, 'Honduras', 'ho.gif');
INSERT INTO `nuke_bbflags` VALUES(108, 'Hong Kong', 'hk.gif');
INSERT INTO `nuke_bbflags` VALUES(109, 'Howland Island', 'hq.gif');
INSERT INTO `nuke_bbflags` VALUES(110, 'Hungary', 'hu.gif');
INSERT INTO `nuke_bbflags` VALUES(111, 'Iceland', 'ic.gif');
INSERT INTO `nuke_bbflags` VALUES(112, 'India', 'in.gif');
INSERT INTO `nuke_bbflags` VALUES(113, 'Indonesia', 'id.gif');
INSERT INTO `nuke_bbflags` VALUES(114, 'Iran', 'ir.gif');
INSERT INTO `nuke_bbflags` VALUES(115, 'Iraq', 'iz.gif');
INSERT INTO `nuke_bbflags` VALUES(116, 'Ireland', 'ei.gif');
INSERT INTO `nuke_bbflags` VALUES(117, 'Isle of Man', 'im.gif');
INSERT INTO `nuke_bbflags` VALUES(118, 'Israel', 'is.gif');
INSERT INTO `nuke_bbflags` VALUES(119, 'Italy', 'it.gif');
INSERT INTO `nuke_bbflags` VALUES(120, 'Jamaica', 'jm.gif');
INSERT INTO `nuke_bbflags` VALUES(121, 'Jan Mayen', 'jn.gif');
INSERT INTO `nuke_bbflags` VALUES(122, 'Japan', 'ja.gif');
INSERT INTO `nuke_bbflags` VALUES(123, 'Jarvis Island', 'dq.gif');
INSERT INTO `nuke_bbflags` VALUES(124, 'Jersey', 'je.gif');
INSERT INTO `nuke_bbflags` VALUES(125, 'Johnston Atoll', 'jq.gif');
INSERT INTO `nuke_bbflags` VALUES(126, 'Jordan', 'jo.gif');
INSERT INTO `nuke_bbflags` VALUES(127, 'Juan de Nova Island', 'ju.gif');
INSERT INTO `nuke_bbflags` VALUES(128, 'Kazakhstan', 'kz.gif');
INSERT INTO `nuke_bbflags` VALUES(129, 'Kenya', 'ke.gif');
INSERT INTO `nuke_bbflags` VALUES(130, 'Kingman Reef', 'kq.gif');
INSERT INTO `nuke_bbflags` VALUES(131, 'Kiribati', 'kr.gif');
INSERT INTO `nuke_bbflags` VALUES(132, 'Korea, North', 'kn.gif');
INSERT INTO `nuke_bbflags` VALUES(133, 'Korea, South', 'ks.gif');
INSERT INTO `nuke_bbflags` VALUES(134, 'Kuwait', 'ku.gif');
INSERT INTO `nuke_bbflags` VALUES(135, 'Kyrgyzstan', 'kg.gif');
INSERT INTO `nuke_bbflags` VALUES(136, 'Laos', 'la.gif');
INSERT INTO `nuke_bbflags` VALUES(137, 'Latvia', 'lg.gif');
INSERT INTO `nuke_bbflags` VALUES(138, 'Lebanon', 'le.gif');
INSERT INTO `nuke_bbflags` VALUES(139, 'Lesotho', 'lt.gif');
INSERT INTO `nuke_bbflags` VALUES(140, 'Liberia', 'li.gif');
INSERT INTO `nuke_bbflags` VALUES(141, 'Libya', 'ly.gif');
INSERT INTO `nuke_bbflags` VALUES(142, 'Liechtenstein', 'ls.gif');
INSERT INTO `nuke_bbflags` VALUES(143, 'Lithuania', 'lh.gif');
INSERT INTO `nuke_bbflags` VALUES(144, 'Luxembourg', 'lu.gif');
INSERT INTO `nuke_bbflags` VALUES(145, 'Macau', 'mc.gif');
INSERT INTO `nuke_bbflags` VALUES(146, 'Macedonia', 'mk.gif');
INSERT INTO `nuke_bbflags` VALUES(147, 'Madagascar', 'ma.gif');
INSERT INTO `nuke_bbflags` VALUES(148, 'Malawi', 'mi.gif');
INSERT INTO `nuke_bbflags` VALUES(149, 'Malaysia', 'my.gif');
INSERT INTO `nuke_bbflags` VALUES(150, 'Maldives', 'mv.gif');
INSERT INTO `nuke_bbflags` VALUES(151, 'Mali', 'ml.gif');
INSERT INTO `nuke_bbflags` VALUES(152, 'Malta', 'mt.gif');
INSERT INTO `nuke_bbflags` VALUES(153, 'Marshall Islands', 'rm.gif');
INSERT INTO `nuke_bbflags` VALUES(154, 'Martinique', 'mb.gif');
INSERT INTO `nuke_bbflags` VALUES(155, 'Mauritania', 'mr.gif');
INSERT INTO `nuke_bbflags` VALUES(156, 'Mauritius', 'mp.gif');
INSERT INTO `nuke_bbflags` VALUES(157, 'Mayotte', 'mf.gif');
INSERT INTO `nuke_bbflags` VALUES(158, 'Mexico', 'mx.gif');
INSERT INTO `nuke_bbflags` VALUES(159, 'Micronesia, Federated States of', 'fm.gif');
INSERT INTO `nuke_bbflags` VALUES(160, 'Midway Islands', 'mq.gif');
INSERT INTO `nuke_bbflags` VALUES(161, 'Moldova', 'md.gif');
INSERT INTO `nuke_bbflags` VALUES(162, 'Monaco', 'mn.gif');
INSERT INTO `nuke_bbflags` VALUES(163, 'Mongolia', 'mg.gif');
INSERT INTO `nuke_bbflags` VALUES(164, 'Montserrat', 'mh.gif');
INSERT INTO `nuke_bbflags` VALUES(165, 'Morocco', 'mo.gif');
INSERT INTO `nuke_bbflags` VALUES(166, 'Mozambique', 'mz.gif');
INSERT INTO `nuke_bbflags` VALUES(167, 'Namibia', 'wa.gif');
INSERT INTO `nuke_bbflags` VALUES(168, 'Nauru', 'nr.gif');
INSERT INTO `nuke_bbflags` VALUES(169, 'Navassa Island', 'bq.gif');
INSERT INTO `nuke_bbflags` VALUES(170, 'Nepal', 'np.gif');
INSERT INTO `nuke_bbflags` VALUES(171, 'Netherlands', 'nl.gif');
INSERT INTO `nuke_bbflags` VALUES(172, 'Netherlands Antilles', 'nt.gif');
INSERT INTO `nuke_bbflags` VALUES(173, 'New Caledonia', 'nc.gif');
INSERT INTO `nuke_bbflags` VALUES(174, 'New Zealand', 'nz.gif');
INSERT INTO `nuke_bbflags` VALUES(175, 'Nicaragua', 'nu.gif');
INSERT INTO `nuke_bbflags` VALUES(176, 'Niger', 'ng.gif');
INSERT INTO `nuke_bbflags` VALUES(177, 'Nigeria', 'ni.gif');
INSERT INTO `nuke_bbflags` VALUES(178, 'Niue', 'ne.gif');
INSERT INTO `nuke_bbflags` VALUES(179, 'Norfolk Island', 'nf.gif');
INSERT INTO `nuke_bbflags` VALUES(180, 'Northern Mariana Islands', 'cq.gif');
INSERT INTO `nuke_bbflags` VALUES(181, 'Norway', 'no.gif');
INSERT INTO `nuke_bbflags` VALUES(182, 'Oman', 'mu.gif');
INSERT INTO `nuke_bbflags` VALUES(183, 'Pakistan', 'pk.gif');
INSERT INTO `nuke_bbflags` VALUES(184, 'Palau', 'ps.gif');
INSERT INTO `nuke_bbflags` VALUES(185, 'Palmyra Atoll', 'lq.gif');
INSERT INTO `nuke_bbflags` VALUES(186, 'Panama', 'pm.gif');
INSERT INTO `nuke_bbflags` VALUES(187, 'Papua New Guinea', 'pp.gif');
INSERT INTO `nuke_bbflags` VALUES(188, 'Paraguay', 'pa.gif');
INSERT INTO `nuke_bbflags` VALUES(189, 'Peru', 'pe.gif');
INSERT INTO `nuke_bbflags` VALUES(190, 'Philippines', 'rp.gif');
INSERT INTO `nuke_bbflags` VALUES(191, 'Pitcairn Islands', 'pc.gif');
INSERT INTO `nuke_bbflags` VALUES(192, 'Poland', 'pl.gif');
INSERT INTO `nuke_bbflags` VALUES(193, 'Portugal', 'po.gif');
INSERT INTO `nuke_bbflags` VALUES(194, 'Puerto Rico', 'rq.gif');
INSERT INTO `nuke_bbflags` VALUES(195, 'Qatar', 'qa.gif');
INSERT INTO `nuke_bbflags` VALUES(196, 'Reunion', 're.gif');
INSERT INTO `nuke_bbflags` VALUES(197, 'Romania', 'ro.gif');
INSERT INTO `nuke_bbflags` VALUES(198, 'Russia', 'rs.gif');
INSERT INTO `nuke_bbflags` VALUES(199, 'Rwanda', 'rw.gif');
INSERT INTO `nuke_bbflags` VALUES(200, 'Saint Helena', 'sh.gif');
INSERT INTO `nuke_bbflags` VALUES(201, 'Saint Kitts and Nevis', 'sc.gif');
INSERT INTO `nuke_bbflags` VALUES(202, 'Saint Lucia', 'st.gif');
INSERT INTO `nuke_bbflags` VALUES(203, 'Saint Pierre and Miquelon', 'sb.gif');
INSERT INTO `nuke_bbflags` VALUES(204, 'Saint Vincent and the Grenadines', 'vc.gif');
INSERT INTO `nuke_bbflags` VALUES(205, 'Samoa', 'ws.gif');
INSERT INTO `nuke_bbflags` VALUES(206, 'San Marino', 'sm.gif');
INSERT INTO `nuke_bbflags` VALUES(207, 'Sao Tome and Principe', 'tp.gif');
INSERT INTO `nuke_bbflags` VALUES(208, 'Saudi Arabia', 'sa.gif');
INSERT INTO `nuke_bbflags` VALUES(209, 'Senegal', 'sg.gif');
INSERT INTO `nuke_bbflags` VALUES(210, 'Serbia and Montenegro', 'yi.gif');
INSERT INTO `nuke_bbflags` VALUES(211, 'Seychelles', 'se.gif');
INSERT INTO `nuke_bbflags` VALUES(212, 'Sierra Leone', 'sl.gif');
INSERT INTO `nuke_bbflags` VALUES(213, 'Singapore', 'sn.gif');
INSERT INTO `nuke_bbflags` VALUES(214, 'Slovakia', 'lo.gif');
INSERT INTO `nuke_bbflags` VALUES(215, 'Slovenia', 'si.gif');
INSERT INTO `nuke_bbflags` VALUES(216, 'Solomon Islands', 'bp.gif');
INSERT INTO `nuke_bbflags` VALUES(217, 'Somalia', 'so.gif');
INSERT INTO `nuke_bbflags` VALUES(218, 'South Africa', 'sf.gif');
INSERT INTO `nuke_bbflags` VALUES(219, 'South Georgia and the South Sandwich Islands', 'sx.gif');
INSERT INTO `nuke_bbflags` VALUES(220, 'Spain', 'sp.gif');
INSERT INTO `nuke_bbflags` VALUES(221, 'Sri Lanka', 'ce.gif');
INSERT INTO `nuke_bbflags` VALUES(222, 'Sudan', 'su.gif');
INSERT INTO `nuke_bbflags` VALUES(223, 'Suriname', 'ns.gif');
INSERT INTO `nuke_bbflags` VALUES(224, 'Svalbard', 'sv.gif');
INSERT INTO `nuke_bbflags` VALUES(225, 'Swaziland', 'wz.gif');
INSERT INTO `nuke_bbflags` VALUES(226, 'Sweden', 'sw.gif');
INSERT INTO `nuke_bbflags` VALUES(227, 'Switzerland', 'sz.gif');
INSERT INTO `nuke_bbflags` VALUES(228, 'Syria', 'sy.gif');
INSERT INTO `nuke_bbflags` VALUES(229, 'Tajikistan', 'ti.gif');
INSERT INTO `nuke_bbflags` VALUES(230, 'Tanzania', 'tz.gif');
INSERT INTO `nuke_bbflags` VALUES(231, 'Thailand', 'th.gif');
INSERT INTO `nuke_bbflags` VALUES(232, 'Togo', 'to.gif');
INSERT INTO `nuke_bbflags` VALUES(233, 'Tokelau', 'tl.gif');
INSERT INTO `nuke_bbflags` VALUES(234, 'Tonga', 'tn.gif');
INSERT INTO `nuke_bbflags` VALUES(235, 'Trinidad and Tobago', 'td.gif');
INSERT INTO `nuke_bbflags` VALUES(236, 'Tromelin Island', 'te.gif');
INSERT INTO `nuke_bbflags` VALUES(237, 'Tunisia', 'ts.gif');
INSERT INTO `nuke_bbflags` VALUES(238, 'Turkey', 'tu.gif');
INSERT INTO `nuke_bbflags` VALUES(239, 'Turkmenistan', 'tx.gif');
INSERT INTO `nuke_bbflags` VALUES(240, 'Turks and Caicos Islands', 'tk.gif');
INSERT INTO `nuke_bbflags` VALUES(241, 'Tuvalu', 'tv.gif');
INSERT INTO `nuke_bbflags` VALUES(242, 'Uganda', 'ug.gif');
INSERT INTO `nuke_bbflags` VALUES(243, 'Ukraine', 'up.gif');
INSERT INTO `nuke_bbflags` VALUES(244, 'United Arab Emirates', 'ae.gif');
INSERT INTO `nuke_bbflags` VALUES(245, 'United Kingdom', 'uk.gif');
INSERT INTO `nuke_bbflags` VALUES(246, 'United States', 'us.gif');
INSERT INTO `nuke_bbflags` VALUES(247, 'United States Pacific Island Wildlife Refuges', 'um.gif');
INSERT INTO `nuke_bbflags` VALUES(248, 'Uruguay', 'uy.gif');
INSERT INTO `nuke_bbflags` VALUES(249, 'Uzbekistan', 'uz.gif');
INSERT INTO `nuke_bbflags` VALUES(250, 'Vanuatu', 'nh.gif');
INSERT INTO `nuke_bbflags` VALUES(251, 'Venezuela', 've.gif');
INSERT INTO `nuke_bbflags` VALUES(252, 'Vietnam', 'vm.gif');
INSERT INTO `nuke_bbflags` VALUES(253, 'Virgin Islands', 'vq.gif');
INSERT INTO `nuke_bbflags` VALUES(254, 'Wake Island', 'wq.gif');
INSERT INTO `nuke_bbflags` VALUES(255, 'Wallis and Futuna', 'wf.gif');
INSERT INTO `nuke_bbflags` VALUES(256, 'Yemen', 'ym.gif');
INSERT INTO `nuke_bbflags` VALUES(257, 'Zambia', 'za.gif');
INSERT INTO `nuke_bbflags` VALUES(258, 'Zimbabwe', 'zi.gif');
INSERT INTO `nuke_bbflags` VALUES(259, 'Taiwan', 'tw.gif');
INSERT INTO `nuke_bbflags` VALUES(260, 'European Union', 'ee.gif');


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
-- Table structure for table `nuke_cpg_albums`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_albums` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '0',
  `uploads` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `comments` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `votes` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `pos` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `pic_count` int(11) NOT NULL DEFAULT '0',
  `thumb` int(11) NOT NULL DEFAULT '0',
  `last_addition` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat_uptodate` enum('YES','NO') NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`aid`),
  KEY `alb_category` (`category`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_albums`
--

INSERT INTO `nuke_cpg_albums` VALUES(1, 'General', '', 0, 'NO', 'YES', 'YES', 0, 0, 0, 0, '0000-00-00 00:00:00', 'NO');



--
-- Table structure for table `nuke_cpg_categories`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `catname` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subcat_count` int(11) NOT NULL DEFAULT '0',
  `alb_count` int(11) NOT NULL DEFAULT '0',
  `pic_count` int(11) NOT NULL DEFAULT '0',
  `stat_uptodate` enum('YES','NO') NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`cid`),
  KEY `cat_parent` (`parent`),
  KEY `cat_pos` (`pos`),
  KEY `cat_owner_id` (`owner_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_categories`
--

INSERT INTO `nuke_cpg_categories` VALUES(1, 0, 'User galleries', 'This category contains albums that belong to Coppermine users.', 0, 0, 0, 0, 0, 'NO');



--
-- Table structure for table `nuke_cpg_comments`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_comments` (
  `pid` mediumint(10) NOT NULL DEFAULT '0',
  `msg_id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `msg_author` varchar(25) NOT NULL DEFAULT '',
  `msg_body` text NOT NULL,
  `msg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_md5_id` varchar(32) NOT NULL DEFAULT '',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `msg_raw_ip` tinytext COLLATE utf8_unicode_ci,
  `msg_hdr_ip` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY  (`msg_id`),
  KEY `com_pic_id` (`pid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_comments`
--




--
-- Table structure for table `nuke_cpg_config`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_config` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_config`
--

INSERT INTO `nuke_cpg_config` VALUES('albums_per_page', '12');
INSERT INTO `nuke_cpg_config` VALUES('album_list_cols', '2');
INSERT INTO `nuke_cpg_config` VALUES('display_pic_info', '1');
INSERT INTO `nuke_cpg_config` VALUES('alb_list_thumb_size', '50');
INSERT INTO `nuke_cpg_config` VALUES('allowed_file_extensions', 'GIF/PNG/JPG/JPEG/TIF/TIFF');
INSERT INTO `nuke_cpg_config` VALUES('allowed_img_types', 'JPG/GIF/PNG/TIFF');
INSERT INTO `nuke_cpg_config` VALUES('allow_private_albums', '1');
INSERT INTO `nuke_cpg_config` VALUES('allow_user_registration', '0');
INSERT INTO `nuke_cpg_config` VALUES('allow_duplicate_emails_addr', '0');
INSERT INTO `nuke_cpg_config` VALUES('caption_in_thumbview', '1');
INSERT INTO `nuke_cpg_config` VALUES('charset', 'language file');
INSERT INTO `nuke_cpg_config` VALUES('cookie_name', 'nuke_cpg_nuke');
INSERT INTO `nuke_cpg_config` VALUES('cookie_path', '/');
INSERT INTO `nuke_cpg_config` VALUES('debug_mode', '0');
INSERT INTO `nuke_cpg_config` VALUES('default_dir_mode', '0777');
INSERT INTO `nuke_cpg_config` VALUES('default_file_mode', '0777');
INSERT INTO `nuke_cpg_config` VALUES('default_sort_order', 'na');
INSERT INTO `nuke_cpg_config` VALUES('ecards_more_pic_target', 'http://www.yoursite.com/');
INSERT INTO `nuke_cpg_config` VALUES('enable_smilies', '1');
INSERT INTO `nuke_cpg_config` VALUES('filter_bad_words', '1');
INSERT INTO `nuke_cpg_config` VALUES('forbiden_fname_char', '$/\\\\:*?&quot;''&lt;&gt;|`');
INSERT INTO `nuke_cpg_config` VALUES('fullpath', 'modules/coppermine/albums/');
INSERT INTO `nuke_cpg_config` VALUES('gallery_admin_email', 'email@yoursite.com');
INSERT INTO `nuke_cpg_config` VALUES('gallery_description', 'Your online photo album');
INSERT INTO `nuke_cpg_config` VALUES('gallery_name', 'Photo Gallery');
INSERT INTO `nuke_cpg_config` VALUES('im_options', '-antialias');
INSERT INTO `nuke_cpg_config` VALUES('impath', '');
INSERT INTO `nuke_cpg_config` VALUES('jpeg_qual', '80');
INSERT INTO `nuke_cpg_config` VALUES('keep_votes_time', '30');
INSERT INTO `nuke_cpg_config` VALUES('lang', 'english');
INSERT INTO `nuke_cpg_config` VALUES('main_page_layout', 'breadcrumb/catlist/alblist/lastalb,1/lastup,1/lastcom,1/topn,1/toprated,1/random,1/anycontent');
INSERT INTO `nuke_cpg_config` VALUES('main_table_width', '100%');
INSERT INTO `nuke_cpg_config` VALUES('make_intermediate', '1');
INSERT INTO `nuke_cpg_config` VALUES('max_com_lines', '10');
INSERT INTO `nuke_cpg_config` VALUES('max_com_size', '512');
INSERT INTO `nuke_cpg_config` VALUES('max_com_wlength', '38');
INSERT INTO `nuke_cpg_config` VALUES('max_img_desc_length', '512');
INSERT INTO `nuke_cpg_config` VALUES('max_tabs', '12');
INSERT INTO `nuke_cpg_config` VALUES('max_upl_size', '1024');
INSERT INTO `nuke_cpg_config` VALUES('max_upl_width_height', '2048');
INSERT INTO `nuke_cpg_config` VALUES('min_votes_for_rating', '1');
INSERT INTO `nuke_cpg_config` VALUES('normal_pfx', 'normal_');
INSERT INTO `nuke_cpg_config` VALUES('picture_table_width', '600');
INSERT INTO `nuke_cpg_config` VALUES('picture_width', '400');
INSERT INTO `nuke_cpg_config` VALUES('randpos_interval', '5');
INSERT INTO `nuke_cpg_config` VALUES('read_exif_data', '0');
INSERT INTO `nuke_cpg_config` VALUES('reg_requires_valid_email', '1');
INSERT INTO `nuke_cpg_config` VALUES('subcat_level', '2');
INSERT INTO `nuke_cpg_config` VALUES('theme', 'default');
INSERT INTO `nuke_cpg_config` VALUES('thumbcols', '4');
INSERT INTO `nuke_cpg_config` VALUES('thumbrows', '3');
INSERT INTO `nuke_cpg_config` VALUES('thumb_method', 'gd2');
INSERT INTO `nuke_cpg_config` VALUES('thumb_pfx', 'thumb_');
INSERT INTO `nuke_cpg_config` VALUES('thumb_width', '100');
INSERT INTO `nuke_cpg_config` VALUES('userpics', 'modules/coppermine/albums/userpics/');
INSERT INTO `nuke_cpg_config` VALUES('user_field1_name', '');
INSERT INTO `nuke_cpg_config` VALUES('user_field2_name', '');
INSERT INTO `nuke_cpg_config` VALUES('user_field3_name', '');
INSERT INTO `nuke_cpg_config` VALUES('user_field4_name', '');
INSERT INTO `nuke_cpg_config` VALUES('display_comment_count', '1');
INSERT INTO `nuke_cpg_config` VALUES('display_film_strip', '1');
INSERT INTO `nuke_cpg_config` VALUES('max_film_strip_items', '5');
INSERT INTO `nuke_cpg_config` VALUES('first_level', '1');
INSERT INTO `nuke_cpg_config` VALUES('show_private', '0');
INSERT INTO `nuke_cpg_config` VALUES('thumb_use', 'ht');
INSERT INTO `nuke_cpg_config` VALUES('comment_email_notification', '0');
INSERT INTO `nuke_cpg_config` VALUES('disable_flood_protection', '0');
INSERT INTO `nuke_cpg_config` VALUES('nice_titles', '1');
INSERT INTO `nuke_cpg_config` VALUES('advanced_debug_mode', '0');
INSERT INTO `nuke_cpg_config` VALUES('seo_alts', '0');
INSERT INTO `nuke_cpg_config` VALUES('read_iptc_data', '0');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_favorites', '1');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_filename', '0');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_album_name', '1');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_file_size', '1');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_dimensions', '1');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_count_displayed', '1');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_URL', '0');
INSERT INTO `nuke_cpg_config` VALUES('picinfo_display_URL_bookmark', '1');
INSERT INTO `nuke_cpg_config` VALUES('allow_anon_fullsize', '1');
INSERT INTO `nuke_cpg_config` VALUES('showupdate', '0');
INSERT INTO `nuke_cpg_config` VALUES('right_blocks', '1');
INSERT INTO `nuke_cpg_config` VALUES('avatar_private_album', '0');



--
-- Table structure for table `nuke_cpg_exif`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_exif` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `exifData` text NOT NULL,
  UNIQUE KEY `filename` (`filename`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_exif`
--




--
-- Table structure for table `nuke_cpg_installs`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_installs` (
  `cpg_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(20) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cpg_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_installs`
--

INSERT INTO `nuke_cpg_installs` VALUES(1, 'coppermine', 'nuke_cpg_', '1.3.0');



--
-- Table structure for table `nuke_cpg_pictures`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_pictures` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `total_filesize` int(11) NOT NULL DEFAULT '0',
  `pwidth` smallint(6) NOT NULL DEFAULT '0',
  `pheight` smallint(6) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(40) NOT NULL DEFAULT '',
  `pic_rating` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `caption` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `approved` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `user1` varchar(255) NOT NULL DEFAULT '',
  `user2` varchar(255) NOT NULL DEFAULT '',
  `user3` varchar(255) NOT NULL DEFAULT '',
  `user4` varchar(255) NOT NULL DEFAULT '',
  `url_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `randpos` int(11) NOT NULL DEFAULT '0',
  `pic_raw_ip` tinytext COLLATE utf8_unicode_ci,
  `pic_hdr_ip` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`pid`),
  KEY `pic_hits` (`hits`),
  KEY `pic_rate` (`pic_rating`),
  KEY `aid_approved` (`aid`,`approved`),
  KEY `randpos` (`randpos`),
  KEY `pic_aid` (`aid`),
  FULLTEXT KEY `search` (`title`,`caption`,`keywords`,`filename`,`user1`,`user2`,`user3`,`user4`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_pictures`
--




--
-- Table structure for table `nuke_cpg_usergroups`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_usergroups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `group_quota` int(11) NOT NULL DEFAULT '0',
  `has_admin_access` tinyint(4) NOT NULL DEFAULT '0',
  `can_rate_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_send_ecards` tinyint(4) NOT NULL DEFAULT '0',
  `can_post_comments` tinyint(4) NOT NULL DEFAULT '0',
  `can_upload_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_create_albums` tinyint(4) NOT NULL DEFAULT '0',
  `pub_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  `priv_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_usergroups`
--

INSERT INTO `nuke_cpg_usergroups` VALUES(1, 'Administrators', 0, 1, 1, 1, 1, 1, 1, 0, 0);
INSERT INTO `nuke_cpg_usergroups` VALUES(2, 'Registered', 1024, 0, 1, 1, 1, 1, 1, 1, 0);
INSERT INTO `nuke_cpg_usergroups` VALUES(3, 'Anonymous', 0, 0, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO `nuke_cpg_usergroups` VALUES(4, 'Banned', 0, 0, 0, 0, 0, 0, 0, 1, 1);



--
-- Table structure for table `nuke_cpg_votes`
--

CREATE TABLE IF NOT EXISTS `nuke_cpg_votes` (
  `pic_id` mediumint(9) NOT NULL DEFAULT '0',
  `user_md5_id` varchar(32) NOT NULL DEFAULT '',
  `vote_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pic_id`,`user_md5_id`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_cpg_votes`
--

--
-- Table structure for table `nuke_nsnst_harvesters`
--

CREATE TABLE IF NOT EXISTS `nuke_nsnst_harvesters` (
  `hid` int(2) NOT NULL AUTO_INCREMENT,
  `harvester` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`harvester`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_nsnst_harvesters`
--

INSERT INTO `nuke_nsnst_harvesters` VALUES(1, '@yahoo.com');
INSERT INTO `nuke_nsnst_harvesters` VALUES(2, 'alexibot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(3, 'alligator');
INSERT INTO `nuke_nsnst_harvesters` VALUES(4, 'anonymiz');
INSERT INTO `nuke_nsnst_harvesters` VALUES(5, 'asterias');
INSERT INTO `nuke_nsnst_harvesters` VALUES(6, 'backdoorbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(7, 'black hole');
INSERT INTO `nuke_nsnst_harvesters` VALUES(8, 'blackwidow');
INSERT INTO `nuke_nsnst_harvesters` VALUES(9, 'blowfish');
INSERT INTO `nuke_nsnst_harvesters` VALUES(10, 'botalot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(11, 'builtbottough');
INSERT INTO `nuke_nsnst_harvesters` VALUES(12, 'bullseye');
INSERT INTO `nuke_nsnst_harvesters` VALUES(13, 'bunnyslippers');
INSERT INTO `nuke_nsnst_harvesters` VALUES(14, 'catch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(15, 'cegbfeieh');
INSERT INTO `nuke_nsnst_harvesters` VALUES(16, 'charon');
INSERT INTO `nuke_nsnst_harvesters` VALUES(17, 'cheesebot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(18, 'cherrypicker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(19, 'chinaclaw');
INSERT INTO `nuke_nsnst_harvesters` VALUES(20, 'combine');
INSERT INTO `nuke_nsnst_harvesters` VALUES(21, 'copyrightcheck');
INSERT INTO `nuke_nsnst_harvesters` VALUES(22, 'cosmos');
INSERT INTO `nuke_nsnst_harvesters` VALUES(23, 'crescent');
INSERT INTO `nuke_nsnst_harvesters` VALUES(24, 'curl');
INSERT INTO `nuke_nsnst_harvesters` VALUES(25, 'dbrowse');
INSERT INTO `nuke_nsnst_harvesters` VALUES(26, 'disco');
INSERT INTO `nuke_nsnst_harvesters` VALUES(27, 'dittospyder');
INSERT INTO `nuke_nsnst_harvesters` VALUES(28, 'dlman');
INSERT INTO `nuke_nsnst_harvesters` VALUES(29, 'dnloadmage');
INSERT INTO `nuke_nsnst_harvesters` VALUES(30, 'download');
INSERT INTO `nuke_nsnst_harvesters` VALUES(31, 'dreampassport');
INSERT INTO `nuke_nsnst_harvesters` VALUES(32, 'dts agent');
INSERT INTO `nuke_nsnst_harvesters` VALUES(33, 'ecatch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(34, 'eirgrabber');
INSERT INTO `nuke_nsnst_harvesters` VALUES(35, 'erocrawler');
INSERT INTO `nuke_nsnst_harvesters` VALUES(36, 'express webpictures');
INSERT INTO `nuke_nsnst_harvesters` VALUES(37, 'extractorpro');
INSERT INTO `nuke_nsnst_harvesters` VALUES(38, 'eyenetie');
INSERT INTO `nuke_nsnst_harvesters` VALUES(39, 'fantombrowser');
INSERT INTO `nuke_nsnst_harvesters` VALUES(40, 'fantomcrew browser');
INSERT INTO `nuke_nsnst_harvesters` VALUES(41, 'fileheap');
INSERT INTO `nuke_nsnst_harvesters` VALUES(42, 'filehound');
INSERT INTO `nuke_nsnst_harvesters` VALUES(43, 'flashget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(44, 'foobot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(45, 'franklin locator');
INSERT INTO `nuke_nsnst_harvesters` VALUES(46, 'freshdownload');
INSERT INTO `nuke_nsnst_harvesters` VALUES(47, 'fscrawler');
INSERT INTO `nuke_nsnst_harvesters` VALUES(48, 'gamespy_arcade');
INSERT INTO `nuke_nsnst_harvesters` VALUES(49, 'getbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(50, 'getright');
INSERT INTO `nuke_nsnst_harvesters` VALUES(51, 'getweb');
INSERT INTO `nuke_nsnst_harvesters` VALUES(52, 'go!zilla');
INSERT INTO `nuke_nsnst_harvesters` VALUES(53, 'go-ahead-got-it');
INSERT INTO `nuke_nsnst_harvesters` VALUES(54, 'grab');
INSERT INTO `nuke_nsnst_harvesters` VALUES(55, 'grafula');
INSERT INTO `nuke_nsnst_harvesters` VALUES(56, 'gsa-crawler');
INSERT INTO `nuke_nsnst_harvesters` VALUES(57, 'harvest');
INSERT INTO `nuke_nsnst_harvesters` VALUES(58, 'hloader');
INSERT INTO `nuke_nsnst_harvesters` VALUES(59, 'hmview');
INSERT INTO `nuke_nsnst_harvesters` VALUES(60, 'httplib');
INSERT INTO `nuke_nsnst_harvesters` VALUES(61, 'httpresume');
INSERT INTO `nuke_nsnst_harvesters` VALUES(62, 'httrack');
INSERT INTO `nuke_nsnst_harvesters` VALUES(63, 'humanlinks');
INSERT INTO `nuke_nsnst_harvesters` VALUES(64, 'igetter');
INSERT INTO `nuke_nsnst_harvesters` VALUES(65, 'image stripper');
INSERT INTO `nuke_nsnst_harvesters` VALUES(66, 'image sucker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(67, 'industry program');
INSERT INTO `nuke_nsnst_harvesters` VALUES(68, 'indy library');
INSERT INTO `nuke_nsnst_harvesters` VALUES(69, 'infonavirobot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(70, 'installshield digitalwizard');
INSERT INTO `nuke_nsnst_harvesters` VALUES(71, 'interget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(72, 'iria');
INSERT INTO `nuke_nsnst_harvesters` VALUES(73, 'irvine');
INSERT INTO `nuke_nsnst_harvesters` VALUES(74, 'iupui research bot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(75, 'jbh agent');
INSERT INTO `nuke_nsnst_harvesters` VALUES(76, 'jennybot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(77, 'jetcar');
INSERT INTO `nuke_nsnst_harvesters` VALUES(78, 'jobo');
INSERT INTO `nuke_nsnst_harvesters` VALUES(79, 'joc');
INSERT INTO `nuke_nsnst_harvesters` VALUES(80, 'kapere');
INSERT INTO `nuke_nsnst_harvesters` VALUES(81, 'kenjin spider');
INSERT INTO `nuke_nsnst_harvesters` VALUES(82, 'keyword density');
INSERT INTO `nuke_nsnst_harvesters` VALUES(83, 'larbin');
INSERT INTO `nuke_nsnst_harvesters` VALUES(84, 'leechftp');
INSERT INTO `nuke_nsnst_harvesters` VALUES(85, 'leechget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(86, 'lexibot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(87, 'libweb/clshttp');
INSERT INTO `nuke_nsnst_harvesters` VALUES(88, 'libwww-perl');
INSERT INTO `nuke_nsnst_harvesters` VALUES(89, 'lightningdownload');
INSERT INTO `nuke_nsnst_harvesters` VALUES(90, 'lincoln state web browser');
INSERT INTO `nuke_nsnst_harvesters` VALUES(91, 'linkextractorpro');
INSERT INTO `nuke_nsnst_harvesters` VALUES(92, 'linkscan/8.1a.unix');
INSERT INTO `nuke_nsnst_harvesters` VALUES(93, 'linkwalker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(94, 'lwp-trivial');
INSERT INTO `nuke_nsnst_harvesters` VALUES(95, 'lwp::simple');
INSERT INTO `nuke_nsnst_harvesters` VALUES(96, 'mac finder');
INSERT INTO `nuke_nsnst_harvesters` VALUES(97, 'mata hari');
INSERT INTO `nuke_nsnst_harvesters` VALUES(98, 'mediasearch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(99, 'metaproducts');
INSERT INTO `nuke_nsnst_harvesters` VALUES(100, 'microsoft url control');
INSERT INTO `nuke_nsnst_harvesters` VALUES(101, 'midown tool');
INSERT INTO `nuke_nsnst_harvesters` VALUES(102, 'miixpc');
INSERT INTO `nuke_nsnst_harvesters` VALUES(103, 'missauga locate');
INSERT INTO `nuke_nsnst_harvesters` VALUES(104, 'missouri college browse');
INSERT INTO `nuke_nsnst_harvesters` VALUES(105, 'mister pix');
INSERT INTO `nuke_nsnst_harvesters` VALUES(106, 'moget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(107, 'mozilla.*newt');
INSERT INTO `nuke_nsnst_harvesters` VALUES(108, 'mozilla/3.0 (compatible)');
INSERT INTO `nuke_nsnst_harvesters` VALUES(109, 'mozilla/3.mozilla/2.01');
INSERT INTO `nuke_nsnst_harvesters` VALUES(110, 'msie 4.0 (win95)');
INSERT INTO `nuke_nsnst_harvesters` VALUES(111, 'multiblocker browser');
INSERT INTO `nuke_nsnst_harvesters` VALUES(112, 'mydaemon');
INSERT INTO `nuke_nsnst_harvesters` VALUES(113, 'mygetright');
INSERT INTO `nuke_nsnst_harvesters` VALUES(114, 'nabot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(115, 'navroad');
INSERT INTO `nuke_nsnst_harvesters` VALUES(116, 'nearsite');
INSERT INTO `nuke_nsnst_harvesters` VALUES(117, 'net vampire');
INSERT INTO `nuke_nsnst_harvesters` VALUES(118, 'netants');
INSERT INTO `nuke_nsnst_harvesters` VALUES(119, 'netmechanic');
INSERT INTO `nuke_nsnst_harvesters` VALUES(120, 'netpumper');
INSERT INTO `nuke_nsnst_harvesters` VALUES(121, 'netspider');
INSERT INTO `nuke_nsnst_harvesters` VALUES(122, 'newsearchengine');
INSERT INTO `nuke_nsnst_harvesters` VALUES(123, 'nicerspro');
INSERT INTO `nuke_nsnst_harvesters` VALUES(124, 'ninja');
INSERT INTO `nuke_nsnst_harvesters` VALUES(125, 'nitro downloader');
INSERT INTO `nuke_nsnst_harvesters` VALUES(126, 'npbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(127, 'octopus');
INSERT INTO `nuke_nsnst_harvesters` VALUES(128, 'offline explorer');
INSERT INTO `nuke_nsnst_harvesters` VALUES(129, 'offline navigator');
INSERT INTO `nuke_nsnst_harvesters` VALUES(130, 'openfind');
INSERT INTO `nuke_nsnst_harvesters` VALUES(131, 'pagegrabber');
INSERT INTO `nuke_nsnst_harvesters` VALUES(132, 'papa foto');
INSERT INTO `nuke_nsnst_harvesters` VALUES(133, 'pavuk');
INSERT INTO `nuke_nsnst_harvesters` VALUES(134, 'pbrowse');
INSERT INTO `nuke_nsnst_harvesters` VALUES(135, 'pcbrowser');
INSERT INTO `nuke_nsnst_harvesters` VALUES(136, 'peval');
INSERT INTO `nuke_nsnst_harvesters` VALUES(137, 'pompos/');
INSERT INTO `nuke_nsnst_harvesters` VALUES(138, 'program shareware');
INSERT INTO `nuke_nsnst_harvesters` VALUES(139, 'propowerbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(140, 'prowebwalker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(141, 'psurf');
INSERT INTO `nuke_nsnst_harvesters` VALUES(142, 'puf');
INSERT INTO `nuke_nsnst_harvesters` VALUES(143, 'puxarapido');
INSERT INTO `nuke_nsnst_harvesters` VALUES(144, 'queryn metasearch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(145, 'realdownload');
INSERT INTO `nuke_nsnst_harvesters` VALUES(146, 'reget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(147, 'repomonkey');
INSERT INTO `nuke_nsnst_harvesters` VALUES(148, 'rsurf');
INSERT INTO `nuke_nsnst_harvesters` VALUES(149, 'rumours-agent');
INSERT INTO `nuke_nsnst_harvesters` VALUES(150, 'sakura');
INSERT INTO `nuke_nsnst_harvesters` VALUES(151, 'scan4mail');
INSERT INTO `nuke_nsnst_harvesters` VALUES(152, 'semanticdiscovery');
INSERT INTO `nuke_nsnst_harvesters` VALUES(153, 'sitesnagger');
INSERT INTO `nuke_nsnst_harvesters` VALUES(154, 'slysearch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(155, 'spankbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(156, 'spanner ');
INSERT INTO `nuke_nsnst_harvesters` VALUES(157, 'spiderzilla');
INSERT INTO `nuke_nsnst_harvesters` VALUES(158, 'sq webscanner');
INSERT INTO `nuke_nsnst_harvesters` VALUES(159, 'stamina');
INSERT INTO `nuke_nsnst_harvesters` VALUES(160, 'star downloader');
INSERT INTO `nuke_nsnst_harvesters` VALUES(161, 'steeler');
INSERT INTO `nuke_nsnst_harvesters` VALUES(162, 'strip');
INSERT INTO `nuke_nsnst_harvesters` VALUES(163, 'superbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(164, 'superhttp');
INSERT INTO `nuke_nsnst_harvesters` VALUES(165, 'surfbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(166, 'suzuran');
INSERT INTO `nuke_nsnst_harvesters` VALUES(167, 'swbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(168, 'szukacz');
INSERT INTO `nuke_nsnst_harvesters` VALUES(169, 'takeout');
INSERT INTO `nuke_nsnst_harvesters` VALUES(170, 'teleport');
INSERT INTO `nuke_nsnst_harvesters` VALUES(171, 'telesoft');
INSERT INTO `nuke_nsnst_harvesters` VALUES(172, 'test spider');
INSERT INTO `nuke_nsnst_harvesters` VALUES(173, 'the intraformant');
INSERT INTO `nuke_nsnst_harvesters` VALUES(174, 'thenomad');
INSERT INTO `nuke_nsnst_harvesters` VALUES(175, 'tighttwatbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(176, 'titan');
INSERT INTO `nuke_nsnst_harvesters` VALUES(177, 'tocrawl/urldispatcher');
INSERT INTO `nuke_nsnst_harvesters` VALUES(178, 'true_robot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(179, 'tsurf');
INSERT INTO `nuke_nsnst_harvesters` VALUES(180, 'turing machine');
INSERT INTO `nuke_nsnst_harvesters` VALUES(181, 'turingos');
INSERT INTO `nuke_nsnst_harvesters` VALUES(182, 'urlblaze');
INSERT INTO `nuke_nsnst_harvesters` VALUES(183, 'urlgetfile');
INSERT INTO `nuke_nsnst_harvesters` VALUES(184, 'urly warning');
INSERT INTO `nuke_nsnst_harvesters` VALUES(185, 'utilmind');
INSERT INTO `nuke_nsnst_harvesters` VALUES(186, 'vci');
INSERT INTO `nuke_nsnst_harvesters` VALUES(187, 'voideye');
INSERT INTO `nuke_nsnst_harvesters` VALUES(188, 'web image collector');
INSERT INTO `nuke_nsnst_harvesters` VALUES(189, 'web sucker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(190, 'webauto');
INSERT INTO `nuke_nsnst_harvesters` VALUES(191, 'webbandit');
INSERT INTO `nuke_nsnst_harvesters` VALUES(192, 'webcapture');
INSERT INTO `nuke_nsnst_harvesters` VALUES(193, 'webcollage');
INSERT INTO `nuke_nsnst_harvesters` VALUES(194, 'webcopier');
INSERT INTO `nuke_nsnst_harvesters` VALUES(195, 'webenhancer');
INSERT INTO `nuke_nsnst_harvesters` VALUES(196, 'webfetch');
INSERT INTO `nuke_nsnst_harvesters` VALUES(197, 'webgo');
INSERT INTO `nuke_nsnst_harvesters` VALUES(198, 'webleacher');
INSERT INTO `nuke_nsnst_harvesters` VALUES(199, 'webmasterworldforumbot');
INSERT INTO `nuke_nsnst_harvesters` VALUES(200, 'webql');
INSERT INTO `nuke_nsnst_harvesters` VALUES(201, 'webreaper');
INSERT INTO `nuke_nsnst_harvesters` VALUES(202, 'website extractor');
INSERT INTO `nuke_nsnst_harvesters` VALUES(203, 'website quester');
INSERT INTO `nuke_nsnst_harvesters` VALUES(204, 'webster');
INSERT INTO `nuke_nsnst_harvesters` VALUES(205, 'webstripper');
INSERT INTO `nuke_nsnst_harvesters` VALUES(206, 'webwhacker');
INSERT INTO `nuke_nsnst_harvesters` VALUES(207, 'wep search');
INSERT INTO `nuke_nsnst_harvesters` VALUES(208, 'wget');
INSERT INTO `nuke_nsnst_harvesters` VALUES(209, 'whizbang');
INSERT INTO `nuke_nsnst_harvesters` VALUES(210, 'widow');
INSERT INTO `nuke_nsnst_harvesters` VALUES(211, 'wildsoft surfer');
INSERT INTO `nuke_nsnst_harvesters` VALUES(212, 'www-collector-e');
INSERT INTO `nuke_nsnst_harvesters` VALUES(213, 'www.netwu.com');
INSERT INTO `nuke_nsnst_harvesters` VALUES(214, 'wwwoffle');
INSERT INTO `nuke_nsnst_harvesters` VALUES(215, 'xaldon');
INSERT INTO `nuke_nsnst_harvesters` VALUES(216, 'xenu');
INSERT INTO `nuke_nsnst_harvesters` VALUES(217, 'zeus');
INSERT INTO `nuke_nsnst_harvesters` VALUES(218, 'ziggy');
INSERT INTO `nuke_nsnst_harvesters` VALUES(219, 'zippy');


--
-- Table structure for table `nuke_nsnst_referers`
--

CREATE TABLE IF NOT EXISTS `nuke_nsnst_referers` (
  `rid` int(2) NOT NULL AUTO_INCREMENT,
  `referer` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`referer`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_nsnst_referers`
--

INSERT INTO `nuke_nsnst_referers` VALUES(1, '121hr.com');
INSERT INTO `nuke_nsnst_referers` VALUES(2, '1st-call.net');
INSERT INTO `nuke_nsnst_referers` VALUES(3, '1stcool.com');
INSERT INTO `nuke_nsnst_referers` VALUES(4, '5000n.com');
INSERT INTO `nuke_nsnst_referers` VALUES(5, '69-xxx.com');
INSERT INTO `nuke_nsnst_referers` VALUES(6, '9irl.com');
INSERT INTO `nuke_nsnst_referers` VALUES(7, '9uy.com');
INSERT INTO `nuke_nsnst_referers` VALUES(8, 'a-day-at-the-party.com');
INSERT INTO `nuke_nsnst_referers` VALUES(9, 'accessthepeace.com');
INSERT INTO `nuke_nsnst_referers` VALUES(10, 'adult-model-nude-pictures.com');
INSERT INTO `nuke_nsnst_referers` VALUES(11, 'adult-sex-toys-free-porn.com');
INSERT INTO `nuke_nsnst_referers` VALUES(12, 'agnitum.com');
INSERT INTO `nuke_nsnst_referers` VALUES(13, 'alfonssackpfeiffe.com');
INSERT INTO `nuke_nsnst_referers` VALUES(14, 'alongwayfrommars.com');
INSERT INTO `nuke_nsnst_referers` VALUES(15, 'anime-sex-1.com');
INSERT INTO `nuke_nsnst_referers` VALUES(16, 'anorex-sf-stimulant-free.com');
INSERT INTO `nuke_nsnst_referers` VALUES(17, 'antibot.net');
INSERT INTO `nuke_nsnst_referers` VALUES(18, 'antique-tokiwa.com');
INSERT INTO `nuke_nsnst_referers` VALUES(19, 'apotheke-heute.com');
INSERT INTO `nuke_nsnst_referers` VALUES(20, 'armada31.com');
INSERT INTO `nuke_nsnst_referers` VALUES(21, 'artark.com');
INSERT INTO `nuke_nsnst_referers` VALUES(22, 'artlilei.com');
INSERT INTO `nuke_nsnst_referers` VALUES(23, 'ascendbtg.com');
INSERT INTO `nuke_nsnst_referers` VALUES(24, 'aschalaecheck.com');
INSERT INTO `nuke_nsnst_referers` VALUES(25, 'asian-sex-free-sex.com');
INSERT INTO `nuke_nsnst_referers` VALUES(26, 'aslowspeeker.com');
INSERT INTO `nuke_nsnst_referers` VALUES(27, 'assasinatedfrogs.com');
INSERT INTO `nuke_nsnst_referers` VALUES(28, 'athirst-for-tranquillity.net');
INSERT INTO `nuke_nsnst_referers` VALUES(29, 'aubonpanier.com');
INSERT INTO `nuke_nsnst_referers` VALUES(30, 'avalonumc.com');
INSERT INTO `nuke_nsnst_referers` VALUES(31, 'ayingba.com');
INSERT INTO `nuke_nsnst_referers` VALUES(32, 'bayofnoreturn.com');
INSERT INTO `nuke_nsnst_referers` VALUES(33, 'bbw4phonesex.com');
INSERT INTO `nuke_nsnst_referers` VALUES(34, 'beersarenotfree.com');
INSERT INTO `nuke_nsnst_referers` VALUES(35, 'bierikiuetsch.com');
INSERT INTO `nuke_nsnst_referers` VALUES(36, 'bilingualannouncements.com');
INSERT INTO `nuke_nsnst_referers` VALUES(37, 'black-pussy-toon-clip-anal-lover-single.com');
INSERT INTO `nuke_nsnst_referers` VALUES(38, 'blownapart.com');
INSERT INTO `nuke_nsnst_referers` VALUES(39, 'blueroutes.com');
INSERT INTO `nuke_nsnst_referers` VALUES(40, 'boasex.com');
INSERT INTO `nuke_nsnst_referers` VALUES(41, 'booksandpages.com');
INSERT INTO `nuke_nsnst_referers` VALUES(42, 'bootyquake.com');
INSERT INTO `nuke_nsnst_referers` VALUES(43, 'bossyhunter.com');
INSERT INTO `nuke_nsnst_referers` VALUES(44, 'boyz-sex.com');
INSERT INTO `nuke_nsnst_referers` VALUES(45, 'brokersaandpokers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(46, 'browserwindowcleaner.com');
INSERT INTO `nuke_nsnst_referers` VALUES(47, 'budobytes.com');
INSERT INTO `nuke_nsnst_referers` VALUES(48, 'business2fun.com');
INSERT INTO `nuke_nsnst_referers` VALUES(49, 'buymyshitz.com');
INSERT INTO `nuke_nsnst_referers` VALUES(50, 'byuntaesex.com');
INSERT INTO `nuke_nsnst_referers` VALUES(51, 'caniputsomeloveintoyou.com');
INSERT INTO `nuke_nsnst_referers` VALUES(52, 'cartoons.net.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(53, 'caverunsailing.com');
INSERT INTO `nuke_nsnst_referers` VALUES(54, 'certainhealth.com');
INSERT INTO `nuke_nsnst_referers` VALUES(55, 'clantea.com');
INSERT INTO `nuke_nsnst_referers` VALUES(56, 'close-protection-services.com');
INSERT INTO `nuke_nsnst_referers` VALUES(57, 'clubcanino.com');
INSERT INTO `nuke_nsnst_referers` VALUES(58, 'clubstic.com');
INSERT INTO `nuke_nsnst_referers` VALUES(59, 'cobrakai-skf.com');
INSERT INTO `nuke_nsnst_referers` VALUES(60, 'collegefucktour.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(61, 'commanderspank.com');
INSERT INTO `nuke_nsnst_referers` VALUES(62, 'coolenabled.com');
INSERT INTO `nuke_nsnst_referers` VALUES(63, 'crusecountryart.com');
INSERT INTO `nuke_nsnst_referers` VALUES(64, 'crusingforsex.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(65, 'cunt-twat-pussy-juice-clit-licking.com');
INSERT INTO `nuke_nsnst_referers` VALUES(66, 'customerhandshaker.com');
INSERT INTO `nuke_nsnst_referers` VALUES(67, 'cyborgrama.com');
INSERT INTO `nuke_nsnst_referers` VALUES(68, 'darkprofits.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(69, 'datingforme.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(70, 'datingmind.com');
INSERT INTO `nuke_nsnst_referers` VALUES(71, 'degree.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(72, 'delorentos.com');
INSERT INTO `nuke_nsnst_referers` VALUES(73, 'diggydigger.com');
INSERT INTO `nuke_nsnst_referers` VALUES(74, 'dinkydonkyaussie.com');
INSERT INTO `nuke_nsnst_referers` VALUES(75, 'djpritchard.com');
INSERT INTO `nuke_nsnst_referers` VALUES(76, 'djtop.com');
INSERT INTO `nuke_nsnst_referers` VALUES(77, 'draufgeschissen.com');
INSERT INTO `nuke_nsnst_referers` VALUES(78, 'dreamerteens.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(79, 'ebonyarchives.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(80, 'ebonyplaya.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(81, 'ecobuilder2000.com');
INSERT INTO `nuke_nsnst_referers` VALUES(82, 'emailandemail.com');
INSERT INTO `nuke_nsnst_referers` VALUES(83, 'emedici.net');
INSERT INTO `nuke_nsnst_referers` VALUES(84, 'engine-on-fire.com');
INSERT INTO `nuke_nsnst_referers` VALUES(85, 'erocity.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(86, 'esport3.com');
INSERT INTO `nuke_nsnst_referers` VALUES(87, 'eteenbabes.com');
INSERT INTO `nuke_nsnst_referers` VALUES(88, 'eurofreepages.com');
INSERT INTO `nuke_nsnst_referers` VALUES(89, 'eurotexans.com');
INSERT INTO `nuke_nsnst_referers` VALUES(90, 'evolucionweb.com');
INSERT INTO `nuke_nsnst_referers` VALUES(91, 'fakoli.com');
INSERT INTO `nuke_nsnst_referers` VALUES(92, 'fe4ba.com');
INSERT INTO `nuke_nsnst_referers` VALUES(93, 'ferienschweden.com');
INSERT INTO `nuke_nsnst_referers` VALUES(94, 'findly.com');
INSERT INTO `nuke_nsnst_referers` VALUES(95, 'firsttimeteadrinker.com');
INSERT INTO `nuke_nsnst_referers` VALUES(96, 'fishing.net.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(97, 'flatwonkers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(98, 'flowershopentertainment.com');
INSERT INTO `nuke_nsnst_referers` VALUES(99, 'flymario.com');
INSERT INTO `nuke_nsnst_referers` VALUES(100, 'free-xxx-pictures-porno-gallery.com');
INSERT INTO `nuke_nsnst_referers` VALUES(101, 'freebestporn.com');
INSERT INTO `nuke_nsnst_referers` VALUES(102, 'freefuckingmovies.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(103, 'freexxxstuff.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(104, 'fruitologist.net');
INSERT INTO `nuke_nsnst_referers` VALUES(105, 'fruitsandbolts.com');
INSERT INTO `nuke_nsnst_referers` VALUES(106, 'fuck-cumshots-free-midget-movie-clips.com');
INSERT INTO `nuke_nsnst_referers` VALUES(107, 'fuck-michaelmoore.com');
INSERT INTO `nuke_nsnst_referers` VALUES(108, 'fundacep.com');
INSERT INTO `nuke_nsnst_referers` VALUES(109, 'gadless.com');
INSERT INTO `nuke_nsnst_referers` VALUES(110, 'gallapagosrangers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(111, 'galleries4free.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(112, 'galofu.com');
INSERT INTO `nuke_nsnst_referers` VALUES(113, 'gaypixpost.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(114, 'geomasti.com');
INSERT INTO `nuke_nsnst_referers` VALUES(115, 'girltime.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(116, 'glassrope.com');
INSERT INTO `nuke_nsnst_referers` VALUES(117, 'godjustblessyouall.com');
INSERT INTO `nuke_nsnst_referers` VALUES(118, 'goldenageresort.com');
INSERT INTO `nuke_nsnst_referers` VALUES(119, 'gonnabedaddies.com');
INSERT INTO `nuke_nsnst_referers` VALUES(120, 'granadasexi.com');
INSERT INTO `nuke_nsnst_referers` VALUES(121, 'guardingtheangels.com');
INSERT INTO `nuke_nsnst_referers` VALUES(122, 'guyprofiles.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(123, 'happy1225.com');
INSERT INTO `nuke_nsnst_referers` VALUES(124, 'happychappywacky.com');
INSERT INTO `nuke_nsnst_referers` VALUES(125, 'health.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(126, 'hexplas.com');
INSERT INTO `nuke_nsnst_referers` VALUES(127, 'highheelsmodels4fun.com');
INSERT INTO `nuke_nsnst_referers` VALUES(128, 'hillsweb.com');
INSERT INTO `nuke_nsnst_referers` VALUES(129, 'hiptuner.com');
INSERT INTO `nuke_nsnst_referers` VALUES(130, 'historyintospace.com');
INSERT INTO `nuke_nsnst_referers` VALUES(131, 'hoa-tuoi.com');
INSERT INTO `nuke_nsnst_referers` VALUES(132, 'homebuyinginatlanta.com');
INSERT INTO `nuke_nsnst_referers` VALUES(133, 'horizonultra.com');
INSERT INTO `nuke_nsnst_referers` VALUES(134, 'horseminiature.net');
INSERT INTO `nuke_nsnst_referers` VALUES(135, 'hotkiss.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(136, 'hotlivegirls.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(137, 'hotmatchup.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(138, 'husler.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(139, 'iaentertainment.com');
INSERT INTO `nuke_nsnst_referers` VALUES(140, 'iamnotsomeone.com');
INSERT INTO `nuke_nsnst_referers` VALUES(141, 'iconsofcorruption.com');
INSERT INTO `nuke_nsnst_referers` VALUES(142, 'ihavenotrustinyou.com');
INSERT INTO `nuke_nsnst_referers` VALUES(143, 'informat-systems.com');
INSERT INTO `nuke_nsnst_referers` VALUES(144, 'interiorproshop.com');
INSERT INTO `nuke_nsnst_referers` VALUES(145, 'intersoftnetworks.com');
INSERT INTO `nuke_nsnst_referers` VALUES(146, 'inthecrib.com');
INSERT INTO `nuke_nsnst_referers` VALUES(147, 'investment4cashiers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(148, 'iti-trailers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(149, 'jackpot-hacker.com');
INSERT INTO `nuke_nsnst_referers` VALUES(150, 'jacks-world.com');
INSERT INTO `nuke_nsnst_referers` VALUES(151, 'jamesthesailorbasher.com');
INSERT INTO `nuke_nsnst_referers` VALUES(152, 'jesuislemonds.com');
INSERT INTO `nuke_nsnst_referers` VALUES(153, 'justanotherdomainname.com');
INSERT INTO `nuke_nsnst_referers` VALUES(154, 'kampelicka.com');
INSERT INTO `nuke_nsnst_referers` VALUES(155, 'kanalrattenarsch.com');
INSERT INTO `nuke_nsnst_referers` VALUES(156, 'katzasher.com');
INSERT INTO `nuke_nsnst_referers` VALUES(157, 'kerosinjunkie.com');
INSERT INTO `nuke_nsnst_referers` VALUES(158, 'killasvideo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(159, 'koenigspisser.com');
INSERT INTO `nuke_nsnst_referers` VALUES(160, 'kontorpara.com');
INSERT INTO `nuke_nsnst_referers` VALUES(161, 'l8t.com');
INSERT INTO `nuke_nsnst_referers` VALUES(162, 'laestacion101.com');
INSERT INTO `nuke_nsnst_referers` VALUES(163, 'lambuschlamppen.com');
INSERT INTO `nuke_nsnst_referers` VALUES(164, 'lankasex.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(165, 'laser-creations.com');
INSERT INTO `nuke_nsnst_referers` VALUES(166, 'le-tour-du-monde.com');
INSERT INTO `nuke_nsnst_referers` VALUES(167, 'lecraft.com');
INSERT INTO `nuke_nsnst_referers` VALUES(168, 'ledo-design.com');
INSERT INTO `nuke_nsnst_referers` VALUES(169, 'leftregistration.com');
INSERT INTO `nuke_nsnst_referers` VALUES(170, 'lekkikoomastas.com');
INSERT INTO `nuke_nsnst_referers` VALUES(171, 'lepommeau.com');
INSERT INTO `nuke_nsnst_referers` VALUES(172, 'libr-animal.com');
INSERT INTO `nuke_nsnst_referers` VALUES(173, 'libraries.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(174, 'likewaterlikewind.com');
INSERT INTO `nuke_nsnst_referers` VALUES(175, 'limbojumpers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(176, 'link.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(177, 'lockportlinks.com');
INSERT INTO `nuke_nsnst_referers` VALUES(178, 'loiproject.com');
INSERT INTO `nuke_nsnst_referers` VALUES(179, 'longtermalternatives.com');
INSERT INTO `nuke_nsnst_referers` VALUES(180, 'lottoeco.com');
INSERT INTO `nuke_nsnst_referers` VALUES(181, 'lucalozzi.com');
INSERT INTO `nuke_nsnst_referers` VALUES(182, 'maki-e-pens.com');
INSERT INTO `nuke_nsnst_referers` VALUES(183, 'malepayperview.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(184, 'mangaxoxo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(185, 'maps.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(186, 'marcofields.com');
INSERT INTO `nuke_nsnst_referers` VALUES(187, 'masterofcheese.com');
INSERT INTO `nuke_nsnst_referers` VALUES(188, 'masteroftheblasterhill.com');
INSERT INTO `nuke_nsnst_referers` VALUES(189, 'mastheadwankers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(190, 'megafrontier.com');
INSERT INTO `nuke_nsnst_referers` VALUES(191, 'meinschuppen.com');
INSERT INTO `nuke_nsnst_referers` VALUES(192, 'mercurybar.com');
INSERT INTO `nuke_nsnst_referers` VALUES(193, 'metapannas.com');
INSERT INTO `nuke_nsnst_referers` VALUES(194, 'micelebre.com');
INSERT INTO `nuke_nsnst_referers` VALUES(195, 'midnightlaundries.com');
INSERT INTO `nuke_nsnst_referers` VALUES(196, 'mikeapartment.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(197, 'millenniumchorus.com');
INSERT INTO `nuke_nsnst_referers` VALUES(198, 'mimundial2002.com');
INSERT INTO `nuke_nsnst_referers` VALUES(199, 'miniaturegallerymm.com');
INSERT INTO `nuke_nsnst_referers` VALUES(200, 'mixtaperadio.com');
INSERT INTO `nuke_nsnst_referers` VALUES(201, 'mondialcoral.com');
INSERT INTO `nuke_nsnst_referers` VALUES(202, 'monja-wakamatsu.com');
INSERT INTO `nuke_nsnst_referers` VALUES(203, 'monstermonkey.net');
INSERT INTO `nuke_nsnst_referers` VALUES(204, 'mouthfreshners.com');
INSERT INTO `nuke_nsnst_referers` VALUES(205, 'mullensholiday.com');
INSERT INTO `nuke_nsnst_referers` VALUES(206, 'musilo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(207, 'myhollowlog.com');
INSERT INTO `nuke_nsnst_referers` VALUES(208, 'myhomephonenumber.com');
INSERT INTO `nuke_nsnst_referers` VALUES(209, 'mykeyboardisbroken.com');
INSERT INTO `nuke_nsnst_referers` VALUES(210, 'mysofia.net');
INSERT INTO `nuke_nsnst_referers` VALUES(211, 'naked-cheaters.com');
INSERT INTO `nuke_nsnst_referers` VALUES(212, 'naked-old-women.com');
INSERT INTO `nuke_nsnst_referers` VALUES(213, 'nastygirls.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(214, 'nationclan.net');
INSERT INTO `nuke_nsnst_referers` VALUES(215, 'natterratter.com');
INSERT INTO `nuke_nsnst_referers` VALUES(216, 'naughtyadam.com');
INSERT INTO `nuke_nsnst_referers` VALUES(217, 'nestbeschmutzer.com');
INSERT INTO `nuke_nsnst_referers` VALUES(218, 'netwu.com');
INSERT INTO `nuke_nsnst_referers` VALUES(219, 'newrealeaseonline.com');
INSERT INTO `nuke_nsnst_referers` VALUES(220, 'newrealeasesonline.com');
INSERT INTO `nuke_nsnst_referers` VALUES(221, 'nextfrontiersonline.com');
INSERT INTO `nuke_nsnst_referers` VALUES(222, 'nikostaxi.com');
INSERT INTO `nuke_nsnst_referers` VALUES(223, 'notorious7.com');
INSERT INTO `nuke_nsnst_referers` VALUES(224, 'nrecruiter.com');
INSERT INTO `nuke_nsnst_referers` VALUES(225, 'nursingdepot.com');
INSERT INTO `nuke_nsnst_referers` VALUES(226, 'nustramosse.com');
INSERT INTO `nuke_nsnst_referers` VALUES(227, 'nuturalhicks.com');
INSERT INTO `nuke_nsnst_referers` VALUES(228, 'occaz-auto49.com');
INSERT INTO `nuke_nsnst_referers` VALUES(229, 'ocean-db.net');
INSERT INTO `nuke_nsnst_referers` VALUES(230, 'oilburnerservice.net');
INSERT INTO `nuke_nsnst_referers` VALUES(231, 'omburo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(232, 'oneoz.com');
INSERT INTO `nuke_nsnst_referers` VALUES(233, 'onepageahead.net');
INSERT INTO `nuke_nsnst_referers` VALUES(234, 'onlinewithaline.com');
INSERT INTO `nuke_nsnst_referers` VALUES(235, 'organizate.net');
INSERT INTO `nuke_nsnst_referers` VALUES(236, 'ourownweddingsong.com');
INSERT INTO `nuke_nsnst_referers` VALUES(237, 'owen-music.com');
INSERT INTO `nuke_nsnst_referers` VALUES(238, 'p-partners.com');
INSERT INTO `nuke_nsnst_referers` VALUES(239, 'paginadeautor.com');
INSERT INTO `nuke_nsnst_referers` VALUES(240, 'pakistandutyfree.com');
INSERT INTO `nuke_nsnst_referers` VALUES(241, 'pamanderson.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(242, 'parentsense.net');
INSERT INTO `nuke_nsnst_referers` VALUES(243, 'particlewave.net');
INSERT INTO `nuke_nsnst_referers` VALUES(244, 'pay-clic.com');
INSERT INTO `nuke_nsnst_referers` VALUES(245, 'pay4link.net');
INSERT INTO `nuke_nsnst_referers` VALUES(246, 'pcisp.com');
INSERT INTO `nuke_nsnst_referers` VALUES(247, 'persist-pharma.com');
INSERT INTO `nuke_nsnst_referers` VALUES(248, 'peteband.com');
INSERT INTO `nuke_nsnst_referers` VALUES(249, 'petplusindia.com');
INSERT INTO `nuke_nsnst_referers` VALUES(250, 'pickabbw.co.uk');
INSERT INTO `nuke_nsnst_referers` VALUES(251, 'picture-oral-position-lesbian.com');
INSERT INTO `nuke_nsnst_referers` VALUES(252, 'pl8again.com');
INSERT INTO `nuke_nsnst_referers` VALUES(253, 'planeting.net');
INSERT INTO `nuke_nsnst_referers` VALUES(254, 'popusky.com');
INSERT INTO `nuke_nsnst_referers` VALUES(255, 'porn-expert.com');
INSERT INTO `nuke_nsnst_referers` VALUES(256, 'promoblitza.com');
INSERT INTO `nuke_nsnst_referers` VALUES(257, 'proproducts-usa.com');
INSERT INTO `nuke_nsnst_referers` VALUES(258, 'ptcgzone.com');
INSERT INTO `nuke_nsnst_referers` VALUES(259, 'ptporn.com');
INSERT INTO `nuke_nsnst_referers` VALUES(260, 'publishmybong.com');
INSERT INTO `nuke_nsnst_referers` VALUES(261, 'puttingtogether.com');
INSERT INTO `nuke_nsnst_referers` VALUES(262, 'qualifiedcancelations.com');
INSERT INTO `nuke_nsnst_referers` VALUES(263, 'rahost.com');
INSERT INTO `nuke_nsnst_referers` VALUES(264, 'rainbow21.com');
INSERT INTO `nuke_nsnst_referers` VALUES(265, 'rakkashakka.com');
INSERT INTO `nuke_nsnst_referers` VALUES(266, 'randomfeeding.com');
INSERT INTO `nuke_nsnst_referers` VALUES(267, 'rape-art.com');
INSERT INTO `nuke_nsnst_referers` VALUES(268, 'rd-brains.com');
INSERT INTO `nuke_nsnst_referers` VALUES(269, 'realestateonthehill.net');
INSERT INTO `nuke_nsnst_referers` VALUES(270, 'rebuscadobot');
INSERT INTO `nuke_nsnst_referers` VALUES(271, 'requested-stuff.com');
INSERT INTO `nuke_nsnst_referers` VALUES(272, 'retrotrasher.com');
INSERT INTO `nuke_nsnst_referers` VALUES(273, 'ricopositive.com');
INSERT INTO `nuke_nsnst_referers` VALUES(274, 'risorseinrete.com');
INSERT INTO `nuke_nsnst_referers` VALUES(275, 'rotatingcunts.com');
INSERT INTO `nuke_nsnst_referers` VALUES(276, 'runawayclicks.com');
INSERT INTO `nuke_nsnst_referers` VALUES(277, 'rutalibre.com');
INSERT INTO `nuke_nsnst_referers` VALUES(278, 's-marche.com');
INSERT INTO `nuke_nsnst_referers` VALUES(279, 'sabrosojazz.com');
INSERT INTO `nuke_nsnst_referers` VALUES(280, 'samuraidojo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(281, 'sanaldarbe.com');
INSERT INTO `nuke_nsnst_referers` VALUES(282, 'sasseminars.com');
INSERT INTO `nuke_nsnst_referers` VALUES(283, 'schlampenbruzzler.com');
INSERT INTO `nuke_nsnst_referers` VALUES(284, 'searchmybong.com');
INSERT INTO `nuke_nsnst_referers` VALUES(285, 'seckur.com');
INSERT INTO `nuke_nsnst_referers` VALUES(286, 'sex-asian-porn-interracial-photo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(287, 'sex-porn-fuck-hardcore-movie.com');
INSERT INTO `nuke_nsnst_referers` VALUES(288, 'sexa3.net');
INSERT INTO `nuke_nsnst_referers` VALUES(289, 'sexer.com');
INSERT INTO `nuke_nsnst_referers` VALUES(290, 'sexintention.com');
INSERT INTO `nuke_nsnst_referers` VALUES(291, 'sexnet24.tv');
INSERT INTO `nuke_nsnst_referers` VALUES(292, 'sexomundo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(293, 'sharks.com.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(294, 'shells.com.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(295, 'shop-ecosafe.com');
INSERT INTO `nuke_nsnst_referers` VALUES(296, 'shop-toon-hardcore-fuck-cum-pics.com');
INSERT INTO `nuke_nsnst_referers` VALUES(297, 'silverfussions.com');
INSERT INTO `nuke_nsnst_referers` VALUES(298, 'sin-city-sex.net');
INSERT INTO `nuke_nsnst_referers` VALUES(299, 'sluisvan.com');
INSERT INTO `nuke_nsnst_referers` VALUES(300, 'smutshots.com');
INSERT INTO `nuke_nsnst_referers` VALUES(301, 'snagglersmaggler.com');
INSERT INTO `nuke_nsnst_referers` VALUES(302, 'somethingtoforgetit.com');
INSERT INTO `nuke_nsnst_referers` VALUES(303, 'sophiesplace.net');
INSERT INTO `nuke_nsnst_referers` VALUES(304, 'soursushi.com');
INSERT INTO `nuke_nsnst_referers` VALUES(305, 'southernxstables.com');
INSERT INTO `nuke_nsnst_referers` VALUES(306, 'speed467.com');
INSERT INTO `nuke_nsnst_referers` VALUES(307, 'speedpal4you.com');
INSERT INTO `nuke_nsnst_referers` VALUES(308, 'sporty.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(309, 'stopdriving.net');
INSERT INTO `nuke_nsnst_referers` VALUES(310, 'stw.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(311, 'sufficientlife.com');
INSERT INTO `nuke_nsnst_referers` VALUES(312, 'sussexboats.net');
INSERT INTO `nuke_nsnst_referers` VALUES(313, 'swinger-party-free-dating-porn-sluts.com');
INSERT INTO `nuke_nsnst_referers` VALUES(314, 'sydneyhay.com');
INSERT INTO `nuke_nsnst_referers` VALUES(315, 'szmjht.com');
INSERT INTO `nuke_nsnst_referers` VALUES(316, 'teninchtrout.com');
INSERT INTO `nuke_nsnst_referers` VALUES(317, 'thebalancedfruits.com');
INSERT INTO `nuke_nsnst_referers` VALUES(318, 'theendofthesummit.com');
INSERT INTO `nuke_nsnst_referers` VALUES(319, 'thiswillbeit.com');
INSERT INTO `nuke_nsnst_referers` VALUES(320, 'thosethosethose.com');
INSERT INTO `nuke_nsnst_referers` VALUES(321, 'ticyclesofindia.com');
INSERT INTO `nuke_nsnst_referers` VALUES(322, 'tits-gay-fagot-black-tits-bigtits-amateur.com');
INSERT INTO `nuke_nsnst_referers` VALUES(323, 'tonius.com');
INSERT INTO `nuke_nsnst_referers` VALUES(324, 'toohsoft.com');
INSERT INTO `nuke_nsnst_referers` VALUES(325, 'toolvalley.com');
INSERT INTO `nuke_nsnst_referers` VALUES(326, 'tooporno.net');
INSERT INTO `nuke_nsnst_referers` VALUES(327, 'toosexual.com');
INSERT INTO `nuke_nsnst_referers` VALUES(328, 'torngat.com');
INSERT INTO `nuke_nsnst_referers` VALUES(329, 'tour.org.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(330, 'towneluxury.com');
INSERT INTO `nuke_nsnst_referers` VALUES(331, 'trafficmogger.com');
INSERT INTO `nuke_nsnst_referers` VALUES(332, 'triacoach.net');
INSERT INTO `nuke_nsnst_referers` VALUES(333, 'trottinbob.com');
INSERT INTO `nuke_nsnst_referers` VALUES(334, 'tttframes.com');
INSERT INTO `nuke_nsnst_referers` VALUES(335, 'tvjukebox.net');
INSERT INTO `nuke_nsnst_referers` VALUES(336, 'undercvr.com');
INSERT INTO `nuke_nsnst_referers` VALUES(337, 'unfinished-desires.com');
INSERT INTO `nuke_nsnst_referers` VALUES(338, 'unicornonero.com');
INSERT INTO `nuke_nsnst_referers` VALUES(339, 'unionvillefire.com');
INSERT INTO `nuke_nsnst_referers` VALUES(340, 'upsandowns.com');
INSERT INTO `nuke_nsnst_referers` VALUES(341, 'upthehillanddown.com');
INSERT INTO `nuke_nsnst_referers` VALUES(342, 'vallartavideo.com');
INSERT INTO `nuke_nsnst_referers` VALUES(343, 'vietnamdatingservices.com');
INSERT INTO `nuke_nsnst_referers` VALUES(344, 'vinegarlemonshots.com');
INSERT INTO `nuke_nsnst_referers` VALUES(345, 'vizy.net.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(346, 'vnladiesdatingservices.com');
INSERT INTO `nuke_nsnst_referers` VALUES(347, 'vomitandbusted.com');
INSERT INTO `nuke_nsnst_referers` VALUES(348, 'walkingthewalking.com');
INSERT INTO `nuke_nsnst_referers` VALUES(349, 'well-I-am-the-type-of-boy.com');
INSERT INTO `nuke_nsnst_referers` VALUES(350, 'whales.com.ru');
INSERT INTO `nuke_nsnst_referers` VALUES(351, 'whincer.net');
INSERT INTO `nuke_nsnst_referers` VALUES(352, 'whitpagesrippers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(353, 'whois.sc');
INSERT INTO `nuke_nsnst_referers` VALUES(354, 'wipperrippers.com');
INSERT INTO `nuke_nsnst_referers` VALUES(355, 'wordfilebooklets.com');
INSERT INTO `nuke_nsnst_referers` VALUES(356, 'world-sexs.com');
INSERT INTO `nuke_nsnst_referers` VALUES(357, 'xsay.com');
INSERT INTO `nuke_nsnst_referers` VALUES(358, 'xxxchyangel.com');
INSERT INTO `nuke_nsnst_referers` VALUES(359, 'xxxx:');
INSERT INTO `nuke_nsnst_referers` VALUES(360, 'xxxzips.com');
INSERT INTO `nuke_nsnst_referers` VALUES(361, 'youarelostintransit.com');
INSERT INTO `nuke_nsnst_referers` VALUES(362, 'yuppieslovestocks.com');
INSERT INTO `nuke_nsnst_referers` VALUES(363, 'yuzhouhuagong.com');
INSERT INTO `nuke_nsnst_referers` VALUES(364, 'zhaori-food.com');
INSERT INTO `nuke_nsnst_referers` VALUES(365, 'zwiebelbacke.com');



--
-- Table structure for table `nuke_nsnst_strings`
--

CREATE TABLE IF NOT EXISTS `nuke_nsnst_strings` (
  `sid` int(2) NOT NULL AUTO_INCREMENT,
  `string` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`string`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM;

--
-- Dumping data for table `nuke_nsnst_strings`
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

