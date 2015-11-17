-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2013 at 07:31 AM
-- Server version: 5.5.13
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `name` varchar(25) NOT NULL DEFAULT '',
  `subtype` varchar(20) NOT NULL DEFAULT '',
  `value` varchar(200) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

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

--
-- Dumping data for table `financial`
--


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
-- Table structure for table `nuke_aab_config`
--

DROP TABLE IF EXISTS `nuke_aab_config`;
CREATE TABLE IF NOT EXISTS `nuke_aab_config` (
  `phpmyadmin_url` varchar(255) NOT NULL,
  `cpanel_url` varchar(255) NOT NULL,
  `mainadmin_button` smallint(1) NOT NULL DEFAULT '0',
  `forumadmin_button` smallint(1) NOT NULL DEFAULT '0',
  `phpmyadmin_button` smallint(1) NOT NULL DEFAULT '0',
  `cpanel_button` smallint(1) NOT NULL DEFAULT '0',
  `admin_logout` smallint(1) NOT NULL DEFAULT '0',
  `show_warning_image` smallint(1) NOT NULL DEFAULT '0',
  `show_warning` smallint(1) NOT NULL DEFAULT '0',
  `button_text` varchar(7) NOT NULL,
  `warning_text` varchar(255) NOT NULL,
  `fusion_menu` smallint(1) NOT NULL DEFAULT '0',
  `sentinel_menu` smallint(1) NOT NULL DEFAULT '0',
  `show_modules` smallint(1) NOT NULL DEFAULT '0',
  `show_forum` smallint(1) NOT NULL DEFAULT '0',
  `submissions` smallint(1) NOT NULL DEFAULT '0',
  `block_width` int(3) NOT NULL DEFAULT '150'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_aab_config`
--

INSERT INTO `nuke_aab_config` (`phpmyadmin_url`, `cpanel_url`, `mainadmin_button`, `forumadmin_button`, `phpmyadmin_button`, `cpanel_button`, `admin_logout`, `show_warning_image`, `show_warning`, `button_text`, `warning_text`, `fusion_menu`, `sentinel_menu`, `show_modules`, `show_forum`, `submissions`, `block_width`) VALUES
('http://yoursite.com/phpMyAdmin', 'http://yoursite.com', 1, 1, 1, 1, 1, 1, 1, '#000000', 'Admin Only----You will be banned from this site!', 1, 1, 1, 1, 1, 195);

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
-- Table structure for table `nuke_amazon_cache`
--

DROP TABLE IF EXISTS `nuke_amazon_cache`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_cache` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(60) NOT NULL,
  `xml` longtext NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `date_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_amazon_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_cart`
--

DROP TABLE IF EXISTS `nuke_amazon_cart`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` tinytext NOT NULL,
  `asin` varchar(10) NOT NULL,
  `quantity` int(5) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_amazon_cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_catalog`
--

DROP TABLE IF EXISTS `nuke_amazon_catalog`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_catalog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `catalog` varchar(30) NOT NULL,
  `r_catalog` varchar(30) NOT NULL,
  `l_catalog` text NOT NULL,
  `mode` varchar(20) NOT NULL,
  `button_image` varchar(255) NOT NULL,
  `no_image` varchar(255) NOT NULL,
  `locale` char(2) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `catalog` (`catalog`),
  KEY `r_catalog` (`r_catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `nuke_amazon_catalog`
--

INSERT INTO `nuke_amazon_catalog` (`uid`, `catalog`, `r_catalog`, `l_catalog`, `mode`, `button_image`, `no_image`, `locale`) VALUES
(1, 'Apparel', 'apparel', '_AMZAPPAREL', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/apparel-icon.gif', 'http://g-images.amazon.com/images/G/01/apparel/general/apparel-no-image.gif', 'us'),
(2, 'Baby', 'baby product', '_AMZBABY', 'baby', 'http://g-images.amazon.com/images/G/01/icons/icon-baby.gif', 'http://g-images.amazon.com/images/G/01/baby/no-photo-baby.gif', 'us'),
(3, 'Books', 'book', '_AMZBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/icons/icon-books.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us'),
(4, 'Camera & Photo', 'photo', '_AMZCAMERAPHOTO', 'photo', 'http://g-images.amazon.com/images/G/01/icons/icon-photo.gif', 'http://g-images.amazon.com/images/G/01/photo/placeholder-icon.gif', 'us'),
(5, 'Video Games', 'video games', '_AMZCOMPVIDGAMES', 'videogames', 'http://g-images.amazon.com/images/G/01/icons/vg-icon.gif', 'http://g-images.amazon.com/images/G/01/videogames/icons/vg-not-available.gif', 'us'),
(6, 'Computers', 'personal computer', '_AMZCOMPUTERS', 'pc-hardware', 'http://g-images.amazon.com/images/G/01/icons/icon-computers.gif', 'http://g-images.amazon.com/images/G/01/computer/no-photo-computer.gif', 'us'),
(7, 'DVD', 'dvd', '_AMZDVD', 'dvd', 'http://g-images.amazon.com/images/G/01/icons/icon-dvd.gif', 'http://g-images.amazon.com/images/G/01/dvd/icons/dvd-no-image.gif', 'us'),
(8, 'Electronics', 'electronics', '_AMZELECTRONICS', 'electronics', 'http://g-images.amazon.com/images/G/01/icons/icon-ce.gif', 'http://g-images.amazon.com/images/G/01/electronics/no-photo-ce.gif', 'us'),
(9, 'Kitchen & Housewares', 'kitchen', '_AMZKITCHENHOUSEWARES', 'kitchen', 'http://g-images.amazon.com/images/G/01/icons/icon-kitchen.gif', 'http://g-images.amazon.com/images/G/01/kitchen/placeholder-icon.gif', 'us'),
(10, 'Magazines', 'magazine', '_AMZMAGAZINES', 'magazines', 'http://g-images.amazon.com/images/G/01/icons/icon-magazines.gif', 'http://g-images.amazon.com/images/G/01/stores/magazines/no_cover_image.gif', 'us'),
(11, 'Music', 'music', '_AMZMUSIC', 'music', 'http://g-images.amazon.com/images/G/01/icons/icon-music.gif', 'http://g-images.amazon.com/images/G/01/music/icons/music-no-image.gif', 'us'),
(12, 'Outdoor Living', 'lawn & patio', '_AMZOUTLIVING', 'garden', 'http://g-images.amazon.com/images/G/01/icons/icon-garden.gif', 'http://g-images.amazon.com/images/G/01/stores/garden/no-photo-lawn.gif', 'us'),
(13, 'Software', 'software', '_AMZSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-software.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us'),
(14, 'Toys & Games', 'toy', '_AMZTOYSGAMES', 'toys', 'http://g-images.amazon.com/images/G/01/icons/icon-toys.gif', 'http://g-images.amazon.com/images/G/01/v9/icons/no-picture-icon.gif', 'us'),
(15, 'Tools & Hardware', 'home improvement', '_AMZTOOLS', 'universal', 'http://g-images.amazon.com/images/G/01/icons/home-improvement-icon.gif', 'http://g-images.amazon.com/images/G/01/stores/hi/no-photo-tools.gif', 'us'),
(16, 'Video', 'video', '_AMZVIDEO', 'vhs', 'http://g-images.amazon.com/images/G/01/icons/icon-vhs.gif', 'http://g-images.amazon.com/images/G/01/video/icons/video-no-image.gif', 'us'),
(17, 'Furniture', 'furniture', '_AMZFURNITURE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us'),
(18, 'Downloadable Software', 'downloadable software', '_AMZDSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-sw-downloads.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us'),
(19, 'Office Product', 'office product', '_AMZOFFICE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us'),
(20, 'Home & Garden', 'home', '_AMZHOMEGARDE', 'home-garden', 'http://g-images.amazon.com/images/G/01/icons/target-home-icon.gif', 'http://g-images.amazon.com/images/G/01/icons/product-image-placeholder-icon.gif', 'us'),
(21, 'Jewelry', 'jewelry', '_AMZJEWELRY', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/small-blue-target-jewelry-icon.gif', 'http://g-images.amazon.com/images/G/01/jewelry/nav/jewelry-icon-no-image-avail.gif', 'us'),
(22, 'E-Books', 'ebook', '_AMZEBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/v6/gifts/ebook-icon.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_cfg`
--

DROP TABLE IF EXISTS `nuke_amazon_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_cfg` (
  `AMZVer` varchar(7) NOT NULL,
  `AMZModule_Name` varchar(255) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_amazon_cfg`
--

INSERT INTO `nuke_amazon_cfg` (`AMZVer`, `AMZModule_Name`, `AMZ_id`, `cache_maxtime`, `AMZMore`, `AMZSingle`, `AMZQuickAdd`, `AMZShowReview`, `AMZShowSimilar`, `AMZLocale`, `AMZReviewMod`, `ImageType`, `default_asin`, `AMZ_Popular`, `AMZBuyBox`, `AMZShowXML`) VALUES
('2.7.2', 'Amazon', 'httpwwwnukepc-20', 14400, 1, 1, 1, 1, 1, 'us', 1, 'NO', 'B00009TB5G', 25, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_department`
--

DROP TABLE IF EXISTS `nuke_amazon_department`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_department` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `r_catalog` varchar(30) NOT NULL,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `nuke_amazon_department`
--

INSERT INTO `nuke_amazon_department` (`did`, `r_catalog`, `items`) VALUES
(1, 'apparel', 0),
(2, 'book', 0),
(3, 'dvd', 1),
(4, 'electronics', 7),
(5, 'lawn & patio', 0),
(6, 'kitchen', 0),
(7, 'magazine', 0),
(8, 'music', 1),
(9, 'personal computer', 0),
(10, 'photo', 0),
(11, 'software', 2),
(12, 'toy', 0),
(13, 'home improvement', 0),
(14, 'video', 0),
(15, 'video games', 1),
(16, 'baby', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_items`
--

DROP TABLE IF EXISTS `nuke_amazon_items`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_items` (
  `iid` int(8) NOT NULL AUTO_INCREMENT,
  `asin` varchar(10) DEFAULT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `category` varchar(50) NOT NULL,
  `clicks` mediumint(9) NOT NULL DEFAULT '0',
  `imp` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iid`),
  KEY `asin` (`asin`),
  KEY `category` (`category`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `nuke_amazon_items`
--

INSERT INTO `nuke_amazon_items` (`iid`, `asin`, `hits`, `category`, `clicks`, `imp`) VALUES
(2, 'B0002XQJFA', 0, 'electronics', 0, 64),
(3, 'B0007QKN22', 0, 'electronics', 0, 51),
(4, 'B0007QKMQY', 0, 'electronics', 0, 54),
(5, 'B0002UM0JW', 0, 'electronics', 0, 39),
(6, 'B0002WPSBC', 0, 'electronics', 0, 47),
(7, 'B0007TFLLC', 0, 'video games', 0, 50),
(8, 'B0007KX4TC', 0, 'electronics', 0, 52),
(9, 'B0000AKVJC', 0, 'electronics', 0, 50),
(10, 'B0002UE1X0', 0, 'dvd', 0, 38),
(11, 'B0006399FS', 0, 'music', 0, 56),
(12, 'B00006I02Z', 0, 'software', 0, 35),
(13, 'B00022PTT8', 0, 'software', 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_nodes`
--

DROP TABLE IF EXISTS `nuke_amazon_nodes`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_nodes` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `catalog` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `node` int(10) NOT NULL DEFAULT '0',
  `pnode` int(10) DEFAULT NULL,
  `locale` char(2) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `catalog` (`catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=309 ;

--
-- Dumping data for table `nuke_amazon_nodes`
--

INSERT INTO `nuke_amazon_nodes` (`nid`, `catalog`, `description`, `node`, `pnode`, `locale`) VALUES
(1, 'book', 'Top Selling', 504358, NULL, 'us'),
(2, 'book', 'Bargain', 45, 1000, 'us'),
(3, 'book', 'Audiocassettes', 44, 1000, 'us'),
(4, 'book', 'Audio CDs', 69724, 1000, 'us'),
(5, 'book', 'Business', 3, 1000, 'us'),
(6, 'book', 'Cooking', 6, 1000, 'us'),
(7, 'book', 'Home/Garden', 48, 1000, 'us'),
(8, 'book', 'Literature/Fiction', 17, 1000, 'us'),
(9, 'book', 'Nonfiction', 53, 1000, 'us'),
(10, 'book', 'Technical', 173507, 1000, 'us'),
(11, 'book', 'Romance', 23, 1000, 'us'),
(12, 'book', 'Sports', 26, 1000, 'us'),
(13, 'book', 'Childrens', 4, 1000, 'us'),
(14, 'book', 'Engineering', 13643, 1000, 'us'),
(15, 'book', 'Health', 10, 1000, 'us'),
(16, 'book', 'Reference', 21, 1000, 'us'),
(17, 'book', 'Science', 75, 1000, 'us'),
(18, 'book', 'Biographies', 2, 1000, 'us'),
(19, 'book', 'Computers/Internet', 5, 1000, 'us'),
(20, 'book', 'Entertainment', 86, 1000, 'us'),
(21, 'book', 'History', 9, 1000, 'us'),
(22, 'book', 'Law', 10777, 1000, 'us'),
(23, 'book', 'Mystery', 18, 1000, 'us'),
(24, 'book', 'Religion', 22, 1000, 'us'),
(25, 'book', 'SciFi/Fantasy', 25, 1000, 'us'),
(26, 'book', 'Travel', 27, 1000, 'us'),
(27, 'book', 'Arts & Photography', 1, 1000, 'us'),
(28, 'book', 'e-books', 551440, 1000, 'us'),
(29, 'book', 'Women''s Fiction', 542654, 1000, 'us'),
(30, 'magazine', 'Top Selling', 599872, NULL, 'us'),
(31, 'magazine', 'Computer/Internet', 602324, 599872, 'us'),
(32, 'magazine', 'Family', 602330, 599872, 'us'),
(33, 'magazine', 'Games', 602336, 599872, 'us'),
(34, 'magazine', 'History', 602342, 599872, 'us'),
(35, 'magazine', 'Lifestyle', 602348, 599872, 'us'),
(36, 'magazine', 'Music', 602354, 599872, 'us'),
(37, 'magazine', 'Pets', 602360, 599872, 'us'),
(38, 'magazine', 'Espanol', 1040158, 599872, 'us'),
(39, 'magazine', 'Travel', 602370, 599872, 'us'),
(40, 'magazine', 'Arts', 602314, 599872, 'us'),
(41, 'magazine', 'Business', 602320, 599872, 'us'),
(42, 'magazine', 'Electronics', 602326, 599872, 'us'),
(43, 'magazine', 'Fashion', 602332, 599872, 'us'),
(44, 'magazine', 'Home/Garden', 602344, 599872, 'us'),
(45, 'magazine', 'Literary', 602350, 599872, 'us'),
(46, 'magazine', 'Newspapers', 1040160, 599872, 'us'),
(47, 'magazine', 'Religion', 602362, 599872, 'us'),
(48, 'magazine', 'Sport', 602366, 599872, 'us'),
(49, 'magazine', 'Womens', 602372, 599872, 'us'),
(50, 'magazine', 'Automotive', 602316, 599872, 'us'),
(51, 'magazine', 'Childrens', 602322, 599872, 'us'),
(52, 'magazine', 'Entertainment', 602328, 599872, 'us'),
(53, 'magazine', 'Food', 602334, 599872, 'us'),
(54, 'magazine', 'Health', 602340, 599872, 'us'),
(55, 'magazine', 'International', 602346, 599872, 'us'),
(56, 'magazine', 'Mens', 602352, 599872, 'us'),
(57, 'magazine', 'News/Politics', 602358, 599872, 'us'),
(58, 'magazine', 'Science/Nature', 602364, 599872, 'us'),
(59, 'magazine', 'Teen', 602368, 599872, 'us'),
(60, 'dvd', 'Top Selling', 130, NULL, 'us'),
(61, 'dvd', 'New & Future Releases', 404332, 130, 'us'),
(62, 'dvd', 'Animation', 712256, 130, 'us'),
(63, 'dvd', 'Classic', 163345, 130, 'us'),
(64, 'dvd', 'Documentary', 508532, 130, 'us'),
(65, 'dvd', 'Horror', 163396, 130, 'us'),
(66, 'dvd', 'SciFi/Fantasy', 163431, 130, 'us'),
(67, 'dvd', 'Television', 163450, 130, 'us'),
(68, 'dvd', 'Action/Adventure', 163296, 130, 'us'),
(69, 'dvd', 'Anime/Manga', 517956, 130, 'us'),
(70, 'dvd', 'Comedy', 163357, 130, 'us'),
(71, 'dvd', 'Drama', 163379, 130, 'us'),
(72, 'dvd', 'Kids/Family', 163414, 130, 'us'),
(73, 'dvd', 'Music Video', 163420, 130, 'us'),
(74, 'dvd', 'Special Interest', 163448, 130, 'us'),
(75, 'dvd', 'Military/War', 586156, 130, 'us'),
(76, 'dvd', 'Mystery/Suspense', 512030, 130, 'us'),
(77, 'dvd', 'Sports', 467970, 130, 'us'),
(78, 'dvd', 'African-American Cinema', 538708, 130, 'us'),
(79, 'dvd', 'International', 163313, 130, 'us'),
(80, 'dvd', 'Boxed Sets', 501230, 130, 'us'),
(81, 'dvd', 'Cult', 466674, 130, 'us'),
(82, 'dvd', 'Gay & Lesbian', 301667, 130, 'us'),
(83, 'dvd', 'Hong Kong Action', 464426, 130, 'us'),
(84, 'dvd', 'Independents', 901596, 130, 'us'),
(85, 'dvd', 'Musicals', 508528, 130, 'us'),
(86, 'dvd', 'Westerns', 163312, 130, 'us'),
(87, 'music', 'Top Selling', 301668, NULL, 'us'),
(88, 'music', 'Classical', 85, 301668, 'us'),
(89, 'music', 'Dance/DJ', 7, 301668, 'us'),
(90, 'music', 'Pop', 37, 301668, 'us'),
(91, 'music', 'Rock', 40, 301668, 'us'),
(92, 'music', 'Alternative', 30, 301668, 'us'),
(93, 'music', 'Classic Rock', 67204, 301668, 'us'),
(94, 'music', 'Jazz', 34, 301668, 'us'),
(95, 'music', 'Rap', 38, 301668, 'us'),
(96, 'music', 'Soundtracks', 42, 301668, 'us'),
(97, 'music', 'Blues', 31, 301668, 'us'),
(98, 'music', 'Christian', 173429, 301668, 'us'),
(99, 'music', 'Country', 16, 301668, 'us'),
(100, 'music', 'Latin', 289122, 301668, 'us'),
(101, 'music', 'R/B', 39, 301668, 'us'),
(102, 'software', 'Top Selling', 491286, NULL, 'us'),
(103, 'software', 'Communication', 229636, 491286, 'us'),
(104, 'software', 'Graphics', 229614, 491286, 'us'),
(105, 'software', 'Linux', 290562, 491286, 'us'),
(106, 'software', 'Operating Sys', 229653, 491286, 'us'),
(107, 'software', 'Downloadable', 531448, 491286, 'us'),
(108, 'software', 'Utilities', 229672, 491286, 'us'),
(109, 'software', 'Business', 229535, 491286, 'us'),
(110, 'software', 'Education', 229563, 491286, 'us'),
(111, 'software', 'Home/Hobby', 229624, 491286, 'us'),
(112, 'software', 'Mac', 229643, 491286, 'us'),
(113, 'software', 'Finance', 229540, 491286, 'us'),
(114, 'software', 'Handhelds', 229663, 491286, 'us'),
(115, 'software', 'Video', 497022, 491286, 'us'),
(116, 'software', 'Childrens', 229548, 491286, 'us'),
(117, 'software', 'Games', 229575, 491286, 'us'),
(118, 'software', 'Language/Travel', 497026, 491286, 'us'),
(119, 'software', 'Networking', 229637, 491286, 'us'),
(120, 'software', 'Programming', 229667, 491286, 'us'),
(121, 'software', 'Web Dev', 497024, 491286, 'us'),
(122, 'video', 'Top Selling', 404272, NULL, 'us'),
(123, 'video', 'New & Future Releases', 286747, 404272, 'us'),
(124, 'video', 'Animation', 712260, 404272, 'us'),
(125, 'video', 'Classic', 127, 404272, 'us'),
(126, 'video', 'Documentary', 508530, 404272, 'us'),
(127, 'video', 'Horror', 131, 404272, 'us'),
(128, 'video', 'SciFi/Fantasy', 144, 404272, 'us'),
(129, 'video', 'Television', 136, 404272, 'us'),
(130, 'video', 'Action/Adventure', 141, 404272, 'us'),
(131, 'video', 'Anime/Manga', 281300, 404272, 'us'),
(132, 'video', 'Comedy', 128, 404272, 'us'),
(133, 'video', 'Drama', 129, 404272, 'us'),
(134, 'video', 'Kids/Family', 132, 404272, 'us'),
(135, 'video', 'Music Video', 133, 404272, 'us'),
(136, 'video', 'Special Interest', 135, 404272, 'us'),
(137, 'video', 'Military/War', 586154, 404272, 'us'),
(138, 'video', 'Mystery/Suspense', 512026, 404272, 'us'),
(139, 'video', 'Sports', 169798, 404272, 'us'),
(140, 'video games', 'Top Selling', 471280, NULL, 'us'),
(141, 'video games', 'Game Cube', 541022, 471280, 'us'),
(142, 'video games', 'Play Station 2', 301712, 471280, 'us'),
(143, 'video games', 'Game Boy', 229783, 471280, 'us'),
(144, 'video games', 'Mac', 229647, 471280, 'us'),
(145, 'video games', 'PC', 229575, 471280, 'us'),
(146, 'video games', 'Game Boy Advance', 541020, 471280, 'us'),
(147, 'video games', 'Xbox', 537504, 471280, 'us'),
(148, 'kitchen', 'Top Selling', 491864, NULL, 'us'),
(149, 'kitchen', 'Outlet', 526844, 491864, 'us'),
(150, 'kitchen', 'Coffee/Tea', 289742, 491864, 'us'),
(151, 'kitchen', 'Cookware', 289814, 491864, 'us'),
(152, 'kitchen', 'Appliances', 289913, 491864, 'us'),
(153, 'kitchen', 'Baking', 289668, 491864, 'us'),
(154, 'kitchen', 'Housewares', 510080, 491864, 'us'),
(155, 'kitchen', 'Tableware', 289891, 491864, 'us'),
(156, 'kitchen', 'Bar Tools', 289728, 491864, 'us'),
(157, 'kitchen', 'Gadgets', 289754, 491864, 'us'),
(158, 'kitchen', 'Knives', 289851, 491864, 'us'),
(159, 'toy', 'Top Selling', 491290, NULL, 'us'),
(160, 'toy', 'Crafts', 171859, 491290, 'us'),
(161, 'toy', 'Dolls', 171569, 491290, 'us'),
(162, 'toy', 'Games', 171689, 491290, 'us'),
(163, 'toy', 'Outdoor', 171960, 491290, 'us'),
(164, 'toy', 'Action Figures', 171662, 491290, 'us'),
(165, 'toy', 'Bikes', 569472, 491290, 'us'),
(166, 'toy', 'Electronics', 720366, 491290, 'us'),
(167, 'toy', 'Stuffed Animals', 171992, 491290, 'us'),
(168, 'toy', 'Learning', 171911, 491290, 'us'),
(169, 'toy', 'Building', 171814, 491290, 'us'),
(170, 'toy', 'Furniture', 172790, 491290, 'us'),
(171, 'toy', 'Puzzles', 171744, 491290, 'us'),
(172, 'toy', 'Vehicles', 171600, 491290, 'us'),
(173, 'lawn & patio', 'Top Selling', 468250, NULL, 'us'),
(174, 'lawn & patio', 'Outlet', 526814, 468250, 'us'),
(175, 'lawn & patio', 'Gifts', 553648, 468250, 'us'),
(176, 'lawn & patio', 'Lawn/Garden Tools', 915484, 468250, 'us'),
(177, 'lawn & patio', 'Pest Control', 553844, 468250, 'us'),
(178, 'lawn & patio', 'Birding', 553632, 468250, 'us'),
(179, 'lawn & patio', 'Grills', 553760, 468250, 'us'),
(180, 'lawn & patio', 'Camping', 892986, 468250, 'us'),
(181, 'lawn & patio', 'D?cor', 553788, 468250, 'us'),
(182, 'lawn & patio', 'Heating & Lighting', 553778, 468250, 'us'),
(183, 'lawn & patio', 'Furniture', 553824, 468250, 'us'),
(184, 'photo', 'Top Selling', 502394, NULL, 'us'),
(185, 'photo', 'Accessories', 172435, 502394, 'us'),
(186, 'photo', 'Binoculars', 297842, 502394, 'us'),
(187, 'photo', 'Camcorders', 172421, 502394, 'us'),
(188, 'photo', 'Digital Cameras', 281052, 502394, 'us'),
(189, 'photo', 'Film Cameras', 499106, 502394, 'us'),
(190, 'photo', 'Frames & Albums', 499176, 502394, 'us'),
(191, 'photo', 'Printers & Scanners', 499328, 502394, 'us'),
(192, 'photo', 'Projectors', 525462, 502394, 'us'),
(193, 'photo', 'Telescopes & Microscopes', 660408, 502394, 'us'),
(194, 'personal computer', 'Top Selling', 565118, NULL, 'us'),
(195, 'personal computer', 'AMD', 602286, 565118, 'us'),
(196, 'personal computer', 'Apple', 565124, 565118, 'us'),
(197, 'personal computer', 'HP', 565120, 565118, 'us'),
(198, 'personal computer', 'IBM', 603128, 565118, 'us'),
(199, 'personal computer', 'Intel', 565122, 565118, 'us'),
(200, 'personal computer', 'Sony', 565126, 565118, 'us'),
(201, 'personal computer', 'Toshiba', 598398, 565118, 'us'),
(202, 'home improvement', 'Top Selling', 468240, NULL, 'us'),
(203, 'home improvement', 'Outlet', 527694, 468240, 'us'),
(204, 'home improvement', 'Electrical', 495266, 468240, 'us'),
(205, 'home improvement', 'Heating & Cooling', 495346, 468240, 'us'),
(206, 'home improvement', 'Lighting', 495224, 468240, 'us'),
(207, 'home improvement', 'Automotive', 553294, 468240, 'us'),
(208, 'home improvement', 'Hand Tools', 551238, 468240, 'us'),
(209, 'home improvement', 'Equipment', 551240, 468240, 'us'),
(210, 'home improvement', 'Power Tools', 551236, 468240, 'us'),
(211, 'home improvement', 'Models', 923468, 468240, 'us'),
(212, 'home improvement', 'Hardware', 511228, 468240, 'us'),
(213, 'home improvement', 'Lawn/Garden', 551242, 468240, 'us'),
(214, 'home improvement', 'Accessories', 552262, 468240, 'us'),
(215, 'home improvement', 'Air Tools', 552684, 468240, 'us'),
(216, 'home improvement', 'Cordless Tools', 552738, 468240, 'us'),
(217, 'home improvement', 'Sanders', 552876, 468240, 'us'),
(218, 'home improvement', 'Saws', 552894, 468240, 'us'),
(219, 'home improvement', 'Painting', 228899, 468240, 'us'),
(220, 'electronics', 'Top Selling', 172282, NULL, 'us'),
(221, 'electronics', 'Outlet', 301793, 172282, 'us'),
(222, 'electronics', 'Accessories & Supplies', 281407, 172282, 'us'),
(223, 'electronics', 'Car Accessories', 226184, 172282, 'us'),
(224, 'electronics', 'Clocks & Clock Radios', 509280, 172282, 'us'),
(225, 'electronics', 'Computer Add-Ons', 172455, 172282, 'us'),
(226, 'electronics', 'DVD Players', 172514, 172282, 'us'),
(227, 'electronics', 'Gadgets', 172517, 172282, 'us'),
(228, 'electronics', 'GPS & Navigation', 172526, 172282, 'us'),
(229, 'electronics', 'Handhelds & PDAs', 172594, 172282, 'us'),
(230, 'electronics', 'Home Audio', 172531, 172282, 'us'),
(231, 'electronics', 'Home Office', 172574, 172282, 'us'),
(232, 'electronics', 'Home Video', 172592, 172282, 'us'),
(233, 'electronics', 'Phones', 172606, 172282, 'us'),
(234, 'electronics', 'Portable Audio & Video', 172623, 172282, 'us'),
(235, 'electronics', 'Printers', 172635, 172282, 'us'),
(236, 'electronics', 'TVs', 172659, 172282, 'us'),
(237, 'electronics', 'VCRs & DVRs', 172669, 172282, 'us'),
(238, 'baby product', 'Top Selling', 540744, NULL, 'us'),
(239, 'baby product', 'Backpacks & Carriers', 542456, 540744, 'us'),
(240, 'baby product', 'Car Seats', 541560, 540744, 'us'),
(241, 'baby product', 'Strollers', 541562, 540744, 'us'),
(242, 'baby product', 'Travel Systems', 542442, 540744, 'us'),
(243, 'baby product', 'Playards', 542468, 540744, 'us'),
(244, 'baby product', 'Bedding', 541574, 540744, 'us'),
(245, 'baby product', 'Furniture', 541576, 540744, 'us'),
(246, 'baby product', 'Breast-feeding', 541568, 540744, 'us'),
(247, 'baby product', 'Bottle Feeding', 541566, 540744, 'us'),
(248, 'baby product', 'Solid Feeding', 541570, 540744, 'us'),
(249, 'baby product', 'Highchairs', 542302, 540744, 'us'),
(250, 'baby product', 'Play Centers', 548050, 540744, 'us'),
(251, 'baby product', 'Swings & Bouncers', 542470, 540744, 'us'),
(252, 'baby product', 'Toys: Birth - 12 months', 731816, 540744, 'us'),
(253, 'baby product', 'Toys: 12 - 24 months', 731876, 540744, 'us'),
(254, 'baby product', 'Toys: 2 years', 731924, 540744, 'us'),
(255, 'office product', 'Office Products', 1064954, NULL, 'us'),
(256, 'apparel', 'Apparel', 1036592, NULL, 'us'),
(257, 'office product', 'Office Supplies', 1069242, 1064954, 'us'),
(258, 'office product', 'Office Electronics', 172574, 1064954, 'us'),
(259, 'office product', 'Cleaning & Maintenance', 1068798, 1064954, 'us'),
(260, 'office product', 'Business Presentation Supplies', 1069254, 1064954, 'us'),
(261, 'furniture', 'Furniture & Accessories', 1069102, NULL, 'us'),
(262, 'furniture', 'Bookcases & Shelving', 1069108, 1069102, 'us'),
(263, 'furniture', 'Carts & Stands', 1069114, 1069102, 'us'),
(264, 'furniture', 'Chair Arms, Casters & Chair Mats', 1069144, 1069102, 'us'),
(265, 'furniture', 'Chairs & Stools', 1069122, 1069102, 'us'),
(266, 'furniture', 'Computer Desks & Hutches', 1069106, 1069102, 'us'),
(267, 'furniture', 'Desk Collections (Furniture Systems)', 1069160, 1069102, 'us'),
(268, 'furniture', 'Dollies, Caddies & Gliders', 1069184, 1069102, 'us'),
(269, 'furniture', 'File Cabinets & Storage', 1069166, 1069102, 'us'),
(270, 'furniture', 'Floor Mats', 1069158, 1069102, 'us'),
(271, 'furniture', 'Office Accessories & D?cor', 1069190, 1069102, 'us'),
(272, 'furniture', 'Panel Systems', 1085666, 1069102, 'us'),
(273, 'furniture', 'Computer Armoires', 1069104, 1069102, 'us'),
(274, 'furniture', 'Tables', 1069222, 1069102, 'us'),
(275, 'furniture', 'Workstations', 1069234, 1069102, 'us'),
(276, 'apparel', 'Women', 1040660, 1036592, 'us'),
(277, 'apparel', 'Men', 1040658, 1036592, 'us'),
(278, 'apparel', 'Kids & Baby', 1040662, 1036592, 'us'),
(279, 'apparel', 'Shoes', 1040668, 1036592, 'us'),
(280, 'apparel', 'Accessories', 1036700, 1036592, 'us'),
(281, 'jewelry', 'Jewelry', 1046274, NULL, 'us'),
(282, 'jewelry', 'Rings', 1046334, 1046274, 'us'),
(283, 'jewelry', 'Earrings', 1046336, 1046274, 'us'),
(284, 'jewelry', 'Pendants & Charms', 1046344, 1046274, 'us'),
(285, 'jewelry', 'Bracelets', 1046338, 1046274, 'us'),
(286, 'jewelry', 'Necklaces', 1046340, 1046274, 'us'),
(287, 'jewelry', 'Pins', 1046342, 1046274, 'us'),
(288, 'jewelry', 'Anklets', 1077030, 1046274, 'us'),
(289, 'ebook', 'Top Selling', 551440, NULL, 'us'),
(290, 'ebook', 'Biographies & Memoirs', 509380, 551440, 'us'),
(291, 'ebook', 'Business & Investing', 509382, 551440, 'us'),
(292, 'ebook', 'Children''s Books', 509384, 551440, 'us'),
(293, 'ebook', 'Comics', 638668, 551440, 'us'),
(294, 'ebook', 'Computers & Internet', 551438, 551440, 'us'),
(295, 'ebook', 'Cooking, Food & Wine', 556952, 551440, 'us'),
(296, 'ebook', 'Health, Mind & Body', 510778, 551440, 'us'),
(297, 'ebook', 'History', 509392, 551440, 'us'),
(298, 'ebook', 'Home & Garden', 556956, 551440, 'us'),
(299, 'ebook', 'Literature & Fiction', 509386, 551440, 'us'),
(300, 'ebook', 'Mystery & Thrillers', 509394, 551440, 'us'),
(301, 'ebook', 'Nonfiction', 518304, 551440, 'us'),
(302, 'ebook', 'Reference', 556958, 551440, 'us'),
(303, 'ebook', 'Religion & Spirituality', 509396, 551440, 'us'),
(304, 'ebook', 'Romance', 509398, 551440, 'us'),
(305, 'ebook', 'Science Fiction & Fantasy', 509406, 551440, 'us'),
(306, 'ebook', 'Science & Technology', 556954, 551440, 'us'),
(307, 'ebook', 'Sports', 518302, 551440, 'us'),
(308, 'ebook', 'Travel', 551436, 551440, 'us');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_amazon_not_item`
--

DROP TABLE IF EXISTS `nuke_amazon_not_item`;
CREATE TABLE IF NOT EXISTS `nuke_amazon_not_item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(10) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iid`),
  KEY `asin` (`asin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_amazon_not_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_authors`
--

DROP TABLE IF EXISTS `nuke_authors`;
CREATE TABLE IF NOT EXISTS `nuke_authors` (
  `aid` varchar(25) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `radminsuper` tinyint(1) NOT NULL DEFAULT '1',
  `admlanguage` varchar(30) NOT NULL,
  `radminblocker` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_autonews`
--

DROP TABLE IF EXISTS `nuke_autonews`;
CREATE TABLE IF NOT EXISTS `nuke_autonews` (
  `anid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `aid` varchar(25) NOT NULL,
  `title` varchar(80) NOT NULL,
  `time` varchar(19) NOT NULL,
  `hometext` text NOT NULL,
  `bodytext` text NOT NULL,
  `topic` int(3) NOT NULL DEFAULT '1',
  `informant` varchar(25) NOT NULL,
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT '0',
  `alanguage` varchar(30) NOT NULL,
  `acomm` int(1) NOT NULL DEFAULT '0',
  `associated` text NOT NULL,
  PRIMARY KEY (`anid`),
  KEY `anid` (`anid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_autonews`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_banned_ip`
--

DROP TABLE IF EXISTS `nuke_banned_ip`;
CREATE TABLE IF NOT EXISTS `nuke_banned_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_banned_ip`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner`
--

DROP TABLE IF EXISTS `nuke_banner`;
CREATE TABLE IF NOT EXISTS `nuke_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL,
  `clickurl` varchar(200) NOT NULL,
  `alttext` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `position` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `ad_class` varchar(5) NOT NULL,
  `ad_code` text NOT NULL,
  `ad_width` int(4) DEFAULT '0',
  `ad_height` int(4) DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_banner`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_campaigns`
--

DROP TABLE IF EXISTS `nuke_banner_campaigns`;
CREATE TABLE IF NOT EXISTS `nuke_banner_campaigns` (
  `campaigns_body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_banner_campaigns`
--

INSERT INTO `nuke_banner_campaigns` (`campaigns_body`) VALUES
('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads ? they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>'),
('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads ? they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>'),
('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads ? they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>'),
('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads ? they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_clients`
--

DROP TABLE IF EXISTS `nuke_banner_clients`;
CREATE TABLE IF NOT EXISTS `nuke_banner_clients` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `contact` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `login` varchar(10) NOT NULL,
  `passwd` varchar(10) NOT NULL,
  `extrainfo` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nuke_banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_plans`
--

DROP TABLE IF EXISTS `nuke_banner_plans`;
CREATE TABLE IF NOT EXISTS `nuke_banner_plans` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `delivery` varchar(10) NOT NULL,
  `delivery_type` varchar(25) NOT NULL,
  `price` varchar(25) NOT NULL DEFAULT '0',
  `buy_links` text NOT NULL,
  `buy_links2` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nuke_banner_plans`
--

INSERT INTO `nuke_banner_plans` (`pid`, `active`, `name`, `description`, `delivery`, `delivery_type`, `price`, `buy_links`, `buy_links2`) VALUES
(6, 1, '2 Month Special', 'SPECIAL: Get 2 months at a reduced rate of $25.00 - Place your ads in either the Side or Center locations. Take out as many advertisements as you like for as long as you choose, just select multiple quantities at the time of your purchase <font size="1" color="#0033ff">(Read notes below)</font>.', '2', '3', '$25.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=2%20Month-Special%20Advert&amp;item_number=PCN%20Advertising&amp;amount=25%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=14"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>'),
(7, 1, 'Theme Header', 'This Plan is setup at monthly intervals for the Top right  ThemeHeader area. This area, will give you the best advertising locations to show your ads. Purchase multiple months if you would like, during the payment process <font size="1" color="#0033ff">(Read notes below)</font>.  ', '1', '3', '$45.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Monthly%20Ad&amp;item_number=PCN%20Advertising%20%20&amp;amount=45%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=15"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>'),
(2, 1, 'Monthly Ads', 'This Plan is setup at monthly intervals - Select any type ad (side or center), and they will run in the corresponding areas. Purchase multiple months if you would like, during the payment process <font color="#0033ff">(Read notes below)</font>.', '1', '3', '$15.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Monthly%20Ad&amp;item_number=Monthly%20%2d%20Any%20Ad&amp;amount=15%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=16"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>'),
(1, 1, 'Impressions', 'This Plan is setup for 10,000 Impression groups - Select any type ad (side or center), and they will run in the corresponding areas.  Purchase multiple impression group quantities if you would like, during the payment process <font size="1" color="#0033ff">(Read notes below)</font>.', '10000', '0', '$10.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=10k%20Impressions&amp;item_number=PCN%20%2d%20Advertising&amp;amount10%2e00&amp;no_shipping=0&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=18"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>'),
(5, 1, 'Mini-Ads', 'Mini-Ads will get 1,000s of impressions per day &amp; they run under each Side-Block location. Image size is 130x15 only. Purchase as many weeks as you would like, its an excellent deal. Image types can be flash, gif,  jpeg, or scripts. <strong><em><font color="#0033ff">Only $1.00 per Week!</font></em></strong> <font size="1" color="#0033ff">(Read notes below)</font>.', '1', '3', '$4.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Weekly%20Mini%20Ads&amp;item_number=PCN%20Advertising&amp;amount=4%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=17"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_positions`
--

DROP TABLE IF EXISTS `nuke_banner_positions`;
CREATE TABLE IF NOT EXISTS `nuke_banner_positions` (
  `apid` int(10) NOT NULL AUTO_INCREMENT,
  `position_number` int(5) NOT NULL DEFAULT '0',
  `position_name` varchar(255) NOT NULL,
  PRIMARY KEY (`apid`),
  KEY `position_number` (`position_number`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nuke_banner_positions`
--

INSERT INTO `nuke_banner_positions` (`apid`, `position_number`, `position_name`) VALUES
(1, 0, 'Page Top'),
(2, 1, 'Block Side'),
(3, 2, 'Block Center'),
(5, 4, 'Block Middle'),
(4, 3, 'Page Bottom'),
(6, 5, 'Page Footer'),
(7, 6, 'All Pages Lower'),
(8, 7, 'Themeheader'),
(9, 8, 'Text Ads');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_stats`
--

DROP TABLE IF EXISTS `nuke_banner_stats`;
CREATE TABLE IF NOT EXISTS `nuke_banner_stats` (
  `stats_body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_banner_stats`
--

INSERT INTO `nuke_banner_stats` (`stats_body`) VALUES
('<strong>Site Demographics:</strong><br />\r\nWe are an online community that offers valuable information that allows\r\nyou to make intelligent decisions towards the purchase of or use of\r\nyour advertising interests. They offer daily news, reviews, software\r\ndownloads, forums, polls, hardware and other product accessories. It is\r\na valuable resource for any Online User. By an internal audit we can\r\nprovide you with the following non exact numbers about our audience:<br />\r\n<br /> <li>85% are male </li><li>15% are female </li><li>93% own a computer </li><li>23% provide product or services to the Online Economy<br /> </li>\r\n<br /><br />\r\n\r\n<strong>Server Statistics:</strong><br />\r\nOur server is installed in a secure environment by a big private hosting company. Some features of this service are:<br />\r\n<br /> <li>Bandwidth usage (data transfer): <strong>150+ GB/month</strong><br /></li><li>Connection type: <strong>Multiple OC3 (155 Mbps)</strong><br /></li><li>Average Uptime: <strong>99.9%</strong><br /> </li>\r\n<br /><br />');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_terms`
--

DROP TABLE IF EXISTS `nuke_banner_terms`;
CREATE TABLE IF NOT EXISTS `nuke_banner_terms` (
  `terms_body` text NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_banner_terms`
--

INSERT INTO `nuke_banner_terms` (`terms_body`, `country`) VALUES
('<div align="justify"><strong>Introduction:</strong> This Agreement between you and [sitename] consists of these Terms and Conditions. "You" or "Advertiser" means the entity identified in this enrollment form, and/or any agency acting on its behalf, which shall also be bound by the terms of this Agreement. Please read very carefully these Terms and Conditions.<br /><strong><br />Uses:</strong> You agree that your ads may be placed on (i) [sitename] web site and (ii) Any ads may be modified without your consent to comply with any policy of [sitename]. [sitename] reserves the right to, and in its sole discretion may, at any time review, reject, modify, or remove any ad. No liability of [sitename] and/or its owner(s) shall result from any such decision.<br /><br /></div><div align="justify"><strong>Parties'' Responsibilities:</strong> You are responsible of your own site and/or service advertised in [sitename] web site. You are solely responsible for the advertising image creation, advertising text and for the content of your ads, including URL links. [sitename] is not responsible for anything regarding your Web site(s) including, but not limited to, maintenance of your Web site(s), order entry, customer service, payment processing, shipping, cancellations or returns.<br /><br /></div><div align="justify"><strong>Impressions Count:</strong> Any hit to [sitename] web site is counted as an impression. Due to our advertising price we don''t discriminate from users or automated robots. Even if you access to [sitename] web site and see your own banner ad it will be counted as a valid impression. Only in the case of [sitename] web site administrator, the impressions will not be counted.<br /><br /></div><div align="justify"><strong>Termination, Cancellation:</strong> [sitename] may at any time, in its sole discretion, terminate the Campaign, terminate this Agreement, or cancel any ad(s) or your use of any Target. [sitename] will notify you via email of any such termination or cancellation, which shall be effective immediately. No refund will be made for any reason. Remaining impressions will be stored in a database and you''ll be able to request another campaign to complete your inventory. You may cancel any ad and/or terminate this Agreement with or without cause at any time. Termination of your account shall be effective when [sitename] receives your notice via email. No refund will be made for any reason. Remaining impressions will be stored in a database for future uses by you and/or your company.<br /><br /></div><div align="justify"><strong>Content:</strong> [sitename] web site doesn''t accepts advertising that contains: (i) pornography, (ii) explicit adult content, (iii) moral questionable content, (iv) illegal content of any kind, (v) illegal drugs promotion, (vi) racism, (vii) politics content, (viii) religious content, and/or (ix) fraudulent suspicious content. If your advertising and/or target web site has any of this content and you purchased an advertising package, you''ll not receive refund of any kind but your banners ads impressions will be stored for future use.<br /><br /></div><div align="justify"><strong>Confidentiality:</strong> Each party agrees not to disclose Confidential Information of the other party without prior written consent except as provided herein. "Confidential Information" includes (i) ads, prior to publication, (ii) submissions or modifications relating to any advertising campaign, (iii) clickthrough rates or other statistics (except in an aggregated form that includes no identifiable information about you), and (iv) any other information designated in writing as "Confidential." It does not include information that has become publicly known through no breach by a party, or has been (i) independently developed without access to the other party''s Confidential Information; (ii) rightfully received from a third party; or (iii) required to be disclosed by law or by a governmental authority.<br /><br /></div><div align="justify"><strong>No Guarantee:</strong> [sitename] makes no guarantee regarding the levels of clicks for any ad on its site. [sitename] may offer the same Target to more than one advertiser. You may not receive exclusivity unless special private contract between [sitename] and you.<br /><br /></div><div align="justify"><strong>No Warranty:</strong> [sitename] MAKES NO WARRANTY, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION WITH RESPECT TO ADVERTISING AND OTHER SERVICES, AND EXPRESSLY DISCLAIMS THE WARRANTIES OR CONDITIONS OF NONINFRINGEMENT, MERCHANTABILITY AND FITNESS FOR ANY PARTICULAR PURPOSE.<br /><br /></div><div align="justify"><strong>Limitations of Liability:</strong> In no event shall [sitename] be liable for any act or omission, or any event directly or indirectly resulting from any act or omission of Advertiser, Partner, or any third parties (if any). EXCEPT FOR THE PARTIES'' INDEMNIFICATION AND CONFIDENTIALITY OBLIGATIONS HEREUNDER, (i) IN NO EVENT SHALL EITHER PARTY BE LIABLE UNDER THIS AGREEMENT FOR ANY CONSEQUENTIAL, SPECIAL, INDIRECT, EXEMPLARY, PUNITIVE, OR OTHER DAMAGES WHETHER IN CONTRACT, TORT OR ANY OTHER LEGAL THEORY, EVEN IF SUCH PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES AND NOTWITHSTANDING ANY FAILURE OF ESSENTIAL PURPOSE OF ANY LIMITED REMEDY AND (ii) [sitename] AGGREGATE LIABILITY TO ADVERTISER UNDER THIS AGREEMENT FOR ANY CLAIM IS LIMITED TO THE AMOUNT PAID TO [sitename] BY ADVERTISER FOR THE AD GIVING RISE TO THE CLAIM. Each party acknowledges that the other party has entered into this Agreement relying on the limitations of liability stated herein and that those limitations are an essential basis of the bargain between the parties. Without limiting the foregoing and except for payment obligations, neither party shall have any liability for any failure or delay resulting from any condition beyond the reasonable control of such party, including but not limited to governmental action or acts of terrorism, earthquake or other acts of God, labor conditions, and power failures.<br /><br /></div><div align="justify"><strong>Payment:</strong> You agree to pay in advance the cost of the advertising. [sitename] will not setup any banner ads campaign(s) unless the payment process is complete. [sitename] may change its pricing at any time without prior notice. If you have an advertising campaign running and/or impressions stored for future use for any mentioned cause and [sitename] changes its pricing, you''ll not need to pay any difference. Your purchased banners fee will remain the same. Charges shall be calculated solely based on records maintained by [sitename]. No other measurements or statistics of any kind shall be accepted by [sitename] or have any effect under this Agreement.<br /><br /></div><div align="justify"><strong>Representations and Warranties:</strong> You represent and warrant that (a) all of the information provided by you to [sitename] to enroll in the Advertising Campaign is correct and current; (b) you hold all rights to permit [sitename] and any Partner(s) to use, reproduce, display, transmit and distribute your ad(s); and (c) [sitename] and any Partner(s) Use, your Target(s), and any site(s) linked to, and products or services to which users are directed, will not, in any state or country where the ad is displayed (i) violate any criminal laws or third party rights giving rise to civil liability, including but not limited to trademark rights or rights relating to the performance of music; or (ii) encourage conduct that would violate any criminal or civil law. You further represent and warrant that any Web site linked to your ad(s) (i) complies with all laws and regulations in any state or country where the ad is displayed; (ii) does not breach and has not breached any duty toward or rights of any person or entity including, without limitation, rights of publicity or privacy, or rights or duties under consumer protection, product liability, tort, or contract theories; and (iii) is not false, misleading, defamatory, libelous, slanderous or threatening.<br /><br /></div><div align="justify"><strong>Your Obligation to Indemnify:</strong> You agree to indemnify, defend and hold [sitename], its agents, affiliates, subsidiaries, directors, officers, employees, and applicable third parties (e.g., all relevant Partner(s), licensors, licensees, consultants and contractors) ("Indemnified Person(s)") harmless from and against any and all third party claims, liability, loss, and expense (including damage awards, settlement amounts, and reasonable legal fees), brought against any Indemnified Person(s), arising out of, related to or which may arise from your use of the Advertising Program, your Web site, and/or your breach of any term of this Agreement. Customer understands and agrees that each Partner, as defined herein, has the right to assert and enforce its rights under this Section directly on its own behalf as a third party beneficiary.<br /><br /></div><div align="justify"><strong>Information Rights:</strong> [sitename] may retain and use for its own purposes all information you provide, including but not limited to Targets, URLs, the content of ads, and contact and billing information. [sitename] may share this information about you with business partners and/or sponsors. [sitename] will not sell your information. Your name, web site''s URL and related graphics shall be used by [sitename] in its own web site at any time as a sample to the public, even if your Advertising Campaign has been finished.<br /><br /></div><div align="justify"><strong>Miscellaneous:</strong> Any decision made by [sitename] under this Agreement shall be final. [sitename] shall have no liability for any such decision. You will be responsible for all reasonable expenses (including attorneys'' fees) incurred by [sitename] in collecting unpaid amounts under this Agreement. This Agreement shall be governed by the laws of [country]. Any dispute or claim arising out of or in connection with this Agreement shall be adjudicated in [country]. This constitutes the entire agreement between the parties with respect to the subject matter hereof. Advertiser may not resell, assign, or transfer any of its rights hereunder. Any such attempt may result in termination of this Agreement, without liability to [sitename] and without any refund. The relationship(s) between [sitename] and the "Partners" is not one of a legal partnership relationship, but is one of independent contractors. This Agreement shall be construed as if both parties jointly wrote it.</div>', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banner_thanks`
--

DROP TABLE IF EXISTS `nuke_banner_thanks`;
CREATE TABLE IF NOT EXISTS `nuke_banner_thanks` (
  `thanks_body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_banner_thanks`
--

INSERT INTO `nuke_banner_thanks` (`thanks_body`) VALUES
(' - To finish processing your order quickly please complete these final\r\nsteps in uploading & providing your banner information. <br>\r\n<br>\r\nNotes: make sure the banner image size uploaded... matches the plan you\r\nselected during your purchase.\r\n<br>\r\nExample, if you purchased one 468x60 banner, then this is the size of banner you would upload and provide us a link to.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_banreq`
--

DROP TABLE IF EXISTS `nuke_banreq`;
CREATE TABLE IF NOT EXISTS `nuke_banreq` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `reason` longtext NOT NULL,
  `active` char(3) NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_banreq`
--

INSERT INTO `nuke_banreq` (`id`, `user_name`, `reason`, `active`) VALUES
(1, 'SnuffySmith', 'This is only a test.', 'Yes');

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

--
-- Table structure for table `nuke_bbadmin_nav_module`
--

DROP TABLE IF EXISTS `nuke_bbadmin_nav_module`;
CREATE TABLE IF NOT EXISTS `nuke_bbadmin_nav_module` (
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `modulname` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbadmin_nav_module`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbadmin_pm`
--

DROP TABLE IF EXISTS `nuke_bbadmin_pm`;
CREATE TABLE IF NOT EXISTS `nuke_bbadmin_pm` (
  `admin_id` int(10) DEFAULT '0',
  `admin_redirect_id` int(10) DEFAULT '0',
  `admin_deny` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbadmin_pm`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbadvanced_username_color`
--

DROP TABLE IF EXISTS `nuke_bbadvanced_username_color`;
CREATE TABLE IF NOT EXISTS `nuke_bbadvanced_username_color` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_color` varchar(6) NOT NULL,
  `group_weight` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbadvanced_username_color`
--

INSERT INTO `nuke_bbadvanced_username_color` (`group_id`, `group_name`, `group_color`, `group_weight`) VALUES
(1, 'Administrators', 'ff1515', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade`
--

DROP TABLE IF EXISTS `nuke_bbarcade`;
CREATE TABLE IF NOT EXISTS `nuke_bbarcade` (
  `arcade_name` varchar(255) NOT NULL,
  `arcade_value` varchar(255) NOT NULL,
  PRIMARY KEY (`arcade_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbarcade`
--

INSERT INTO `nuke_bbarcade` (`arcade_name`, `arcade_value`) VALUES
('arcade_announcement', 'Welcome to the Arcade!<br>Enjoy!'),
('use_category_mod', '1'),
('category_preview_games', '500'),
('games_par_page', '1530'),
('game_order', 'Popular'),
('display_winner_avatar', '1'),
('stat_par_page', '500'),
('winner_avatar_position', 'left'),
('maxsize_avatar', '200'),
('linkcat_align', '1'),
('limit_by_posts', ''),
('posts_needed', '1'),
('days_limit', '1'),
('limit_type', 'date'),
('use_fav_category', '1'),
('nag_version', '2.0'),
('nag_ShowRightBlock', '1'),
('nag_NumberGamesShown', '30'),
('nag_IconSize', '60'),
('nag_RankShown', ''),
('nag_TopInfo', ''),
('nag_ShowPopupLink', '1'),
('nag_EnableRateStats', '1'),
('nag_ShowHighScoreComment', '1'),
('nag_UseArcadeThread', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_categories`
--

DROP TABLE IF EXISTS `nuke_bbarcade_categories`;
CREATE TABLE IF NOT EXISTS `nuke_bbarcade_categories` (
  `arcade_catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `arcade_cattitle` varchar(100) NOT NULL,
  `arcade_nbelmt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arcade_catorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arcade_catauth` tinyint(2) NOT NULL DEFAULT '0',
  KEY `arcade_catid` (`arcade_catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbarcade_categories`
--

INSERT INTO `nuke_bbarcade_categories` (`arcade_catid`, `arcade_cattitle`, `arcade_nbelmt`, `arcade_catorder`, `arcade_catauth`) VALUES
(1, 'Arcade', 11, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_comments`
--

DROP TABLE IF EXISTS `nuke_bbarcade_comments`;
CREATE TABLE IF NOT EXISTS `nuke_bbarcade_comments` (
  `game_id` mediumint(8) NOT NULL DEFAULT '0',
  `comments_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbarcade_comments`
--

INSERT INTO `nuke_bbarcade_comments` (`game_id`, `comments_value`) VALUES
(21, ''),
(57, ''),
(58, ''),
(62, ''),
(68, ''),
(92, ''),
(94, ''),
(101, ''),
(114, ''),
(145, ''),
(238, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbarcade_fav`
--

DROP TABLE IF EXISTS `nuke_bbarcade_fav`;
CREATE TABLE IF NOT EXISTS `nuke_bbarcade_fav` (
  `order` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `game_id` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbarcade_fav`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments`
--

DROP TABLE IF EXISTS `nuke_bbattachments`;
CREATE TABLE IF NOT EXISTS `nuke_bbattachments` (
  `attach_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `privmsgs_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id_1` mediumint(8) NOT NULL DEFAULT '0',
  `user_id_2` mediumint(8) NOT NULL DEFAULT '0',
  KEY `attach_id_post_id` (`attach_id`,`post_id`),
  KEY `attach_id_privmsgs_id` (`attach_id`,`privmsgs_id`),
  KEY `post_id` (`post_id`),
  KEY `privmsgs_id` (`privmsgs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbattachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments_config`
--

DROP TABLE IF EXISTS `nuke_bbattachments_config`;
CREATE TABLE IF NOT EXISTS `nuke_bbattachments_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbattachments_config`
--

INSERT INTO `nuke_bbattachments_config` (`config_name`, `config_value`) VALUES
('upload_dir', 'files'),
('upload_img', 'images/icon_clip.gif'),
('topic_icon', 'images/icon_clip.gif'),
('display_order', '0'),
('max_filesize', '0'),
('attachment_quota', '0'),
('max_filesize_pm', '0'),
('max_attachments', '3'),
('max_attachments_pm', '1'),
('disable_mod', '0'),
('allow_pm_attach', '1'),
('attachment_topic_review', '1'),
('allow_ftp_upload', '0'),
('show_apcp', '1'),
('attach_version', '2.3.13'),
('DEFAULT_upload_quota', '0'),
('DEFAULT_pm_quota', '0'),
('ftp_server', 'mysite.com'),
('ftp_path', '/public_html/files'),
('download_path', 'http://www.yoursite.com/files'),
('ftp_user', 'username'),
('ftp_pass', 'password'),
('ftp_pasv_mode', '1'),
('img_display_inlined', '1'),
('img_max_width', '0'),
('img_max_height', '0'),
('img_link_width', '0'),
('img_link_height', '0'),
('img_create_thumbnail', '1'),
('img_min_thumb_filesize', '12000'),
('img_imagick', '/usr/bin/convert'),
('use_gd2', '0'),
('wma_autoplay', '0'),
('flash_autoplay', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattachments_desc`
--

DROP TABLE IF EXISTS `nuke_bbattachments_desc`;
CREATE TABLE IF NOT EXISTS `nuke_bbattachments_desc` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `physical_filename` varchar(255) NOT NULL,
  `real_filename` varchar(255) NOT NULL,
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `extension` varchar(100) DEFAULT NULL,
  `mimetype` varchar(100) DEFAULT NULL,
  `filesize` int(20) NOT NULL DEFAULT '0',
  `filetime` int(11) NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `physical_filename` (`physical_filename`),
  KEY `filesize` (`filesize`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbattachments_desc`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbattach_quota`
--

DROP TABLE IF EXISTS `nuke_bbattach_quota`;
CREATE TABLE IF NOT EXISTS `nuke_bbattach_quota` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quota_type` smallint(2) NOT NULL DEFAULT '0',
  `quota_limit_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `quota_type` (`quota_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbattach_quota`
--


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

--
-- Dumping data for table `nuke_bbattributes`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbauth_access`
--

DROP TABLE IF EXISTS `nuke_bbauth_access`;
CREATE TABLE IF NOT EXISTS `nuke_bbauth_access` (
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `auth_view` tinyint(1) NOT NULL DEFAULT '0',
  `auth_read` tinyint(1) NOT NULL DEFAULT '0',
  `auth_post` tinyint(1) NOT NULL DEFAULT '0',
  `auth_reply` tinyint(1) NOT NULL DEFAULT '0',
  `auth_edit` tinyint(1) NOT NULL DEFAULT '0',
  `auth_delete` tinyint(1) NOT NULL DEFAULT '0',
  `auth_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `auth_announce` tinyint(1) NOT NULL DEFAULT '0',
  `auth_globalannounce` tinyint(1) DEFAULT NULL,
  `auth_vote` tinyint(1) NOT NULL DEFAULT '0',
  `auth_pollcreate` tinyint(1) NOT NULL DEFAULT '0',
  `auth_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `auth_mod` tinyint(1) NOT NULL DEFAULT '0',
  `auth_download` tinyint(1) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbauth_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbauth_arcade_access`
--

DROP TABLE IF EXISTS `nuke_bbauth_arcade_access`;
CREATE TABLE IF NOT EXISTS `nuke_bbauth_arcade_access` (
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `arcade_catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `arcade_catid` (`arcade_catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbauth_arcade_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbbanlist`
--

DROP TABLE IF EXISTS `nuke_bbbanlist`;
CREATE TABLE IF NOT EXISTS `nuke_bbbanlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) NOT NULL DEFAULT '0',
  `ban_ip` varchar(8) NOT NULL,
  `ban_email` varchar(255) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_expire_time` int(11) DEFAULT NULL,
  `ban_by_userid` mediumint(8) DEFAULT NULL,
  `ban_priv_reason` text,
  `ban_pub_reason_mode` tinyint(1) DEFAULT NULL,
  `ban_pub_reason` text,
  PRIMARY KEY (`ban_id`),
  KEY `ban_ip_user_id` (`ban_ip`,`ban_userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbbanlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbbuddies`
--

DROP TABLE IF EXISTS `nuke_bbbuddies`;
CREATE TABLE IF NOT EXISTS `nuke_bbbuddies` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `buddy_id` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbbuddies`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcanned`
--

DROP TABLE IF EXISTS `nuke_bbcanned`;
CREATE TABLE IF NOT EXISTS `nuke_bbcanned` (
  `canned_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `canned_title` varchar(100) NOT NULL,
  `canned_message` text NOT NULL,
  `canned_enable_bbcode` tinyint(1) NOT NULL DEFAULT '0',
  `canned_move_after_post` tinyint(1) NOT NULL DEFAULT '0',
  `canned_lock_after_post` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`canned_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbcanned`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcash`
--

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

--
-- Dumping data for table `nuke_bbcash`
--

INSERT INTO `nuke_bbcash` (`cash_id`, `cash_order`, `cash_settings`, `cash_dbfield`, `cash_name`, `cash_default`, `cash_decimals`, `cash_imageurl`, `cash_exchange`, `cash_perpost`, `cash_postbonus`, `cash_perreply`, `cash_maxearn`, `cash_perpm`, `cash_perchar`, `cash_allowance`, `cash_allowanceamount`, `cash_allowancetime`, `cash_allowancenext`, `cash_forumlist`) VALUES
(6, 1, 3569, 'user_cash', 'PlatinumBux', 0, 2, '', 1, 25, 0, 25, 7500, 0, 0, 0, 0, 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcash_events`
--

DROP TABLE IF EXISTS `nuke_bbcash_events`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_events` (
  `event_name` varchar(32) NOT NULL,
  `event_data` varchar(255) NOT NULL,
  PRIMARY KEY (`event_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbcash_events`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcash_exchange`
--

DROP TABLE IF EXISTS `nuke_bbcash_exchange`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_exchange` (
  `ex_cash_id1` int(11) NOT NULL DEFAULT '0',
  `ex_cash_id2` int(11) NOT NULL DEFAULT '0',
  `ex_cash_enabled` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ex_cash_id1`,`ex_cash_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbcash_exchange`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcash_groups`
--

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

--
-- Dumping data for table `nuke_bbcash_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcash_log`
--

DROP TABLE IF EXISTS `nuke_bbcash_log`;
CREATE TABLE IF NOT EXISTS `nuke_bbcash_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_time` int(11) NOT NULL DEFAULT '0',
  `log_type` smallint(6) NOT NULL DEFAULT '0',
  `log_action` varchar(255) NOT NULL,
  `log_text` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbcash_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcategories`
--

DROP TABLE IF EXISTS `nuke_bbcategories`;
CREATE TABLE IF NOT EXISTS `nuke_bbcategories` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) DEFAULT NULL,
  `cat_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_order` (`cat_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbcategories`
--

INSERT INTO `nuke_bbcategories` (`cat_id`, `cat_title`, `cat_order`) VALUES
(1, 'General Area', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbconfig`
--

DROP TABLE IF EXISTS `nuke_bbconfig`;
CREATE TABLE IF NOT EXISTS `nuke_bbconfig` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbconfig`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbconfirm`
--

DROP TABLE IF EXISTS `nuke_bbconfirm`;
CREATE TABLE IF NOT EXISTS `nuke_bbconfirm` (
  `confirm_id` char(32) NOT NULL,
  `session_id` char(32) NOT NULL,
  `code` char(6) NOT NULL,
  PRIMARY KEY (`session_id`,`confirm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbconfirm`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbcustom_canned`
--

DROP TABLE IF EXISTS `nuke_bbcustom_canned`;
CREATE TABLE IF NOT EXISTS `nuke_bbcustom_canned` (
  `custom_canned_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `custom_canned_title` varchar(100) NOT NULL,
  `custom_canned_message` text NOT NULL,
  `sortorder` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`custom_canned_id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbcustom_canned`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbdisallow`
--

DROP TABLE IF EXISTS `nuke_bbdisallow`;
CREATE TABLE IF NOT EXISTS `nuke_bbdisallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbdisallow`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbextensions`
--

DROP TABLE IF EXISTS `nuke_bbextensions`;
CREATE TABLE IF NOT EXISTS `nuke_bbextensions` (
  `ext_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ext_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `nuke_bbextensions`
--

INSERT INTO `nuke_bbextensions` (`ext_id`, `group_id`, `extension`, `comment`) VALUES
(1, 1, 'gif', ''),
(2, 1, 'png', ''),
(3, 1, 'jpeg', ''),
(4, 1, 'jpg', ''),
(5, 1, 'tif', ''),
(6, 1, 'tga', ''),
(7, 2, 'gtar', ''),
(8, 2, 'gz', ''),
(9, 2, 'tar', ''),
(10, 2, 'zip', ''),
(11, 2, 'rar', ''),
(12, 2, 'ace', ''),
(13, 3, 'txt', ''),
(14, 3, 'c', ''),
(15, 3, 'h', ''),
(16, 3, 'cpp', ''),
(17, 3, 'hpp', ''),
(18, 3, 'diz', ''),
(19, 4, 'xls', ''),
(20, 4, 'doc', ''),
(21, 4, 'dot', ''),
(22, 4, 'pdf', ''),
(23, 4, 'ai', ''),
(24, 4, 'ps', ''),
(25, 4, 'ppt', ''),
(26, 5, 'rm', ''),
(27, 6, 'wma', ''),
(28, 7, 'swf', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbextension_groups`
--

DROP TABLE IF EXISTS `nuke_bbextension_groups`;
CREATE TABLE IF NOT EXISTS `nuke_bbextension_groups` (
  `group_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) NOT NULL,
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(100) DEFAULT NULL,
  `max_filesize` int(20) NOT NULL DEFAULT '0',
  `forum_permissions` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nuke_bbextension_groups`
--

INSERT INTO `nuke_bbextension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `forum_permissions`) VALUES
(1, 'Images', 1, 1, 2, '', 0, ''),
(2, 'Archives', 0, 1, 2, '', 0, ''),
(3, 'Plain Text', 0, 0, 2, '', 0, ''),
(4, 'Documents', 0, 0, 2, '', 0, ''),
(5, 'Real Media', 0, 0, 2, '', 0, ''),
(6, 'Streams', 2, 0, 2, '', 0, ''),
(7, 'Flash Files', 3, 0, 2, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbfavorites`
--

DROP TABLE IF EXISTS `nuke_bbfavorites`;
CREATE TABLE IF NOT EXISTS `nuke_bbfavorites` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbfavorites`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbflags`
--

DROP TABLE IF EXISTS `nuke_bbflags`;
CREATE TABLE IF NOT EXISTS `nuke_bbflags` (
  `flag_id` int(10) NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(50) DEFAULT NULL,
  `flag_image` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`flag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `nuke_bbflags`
--

INSERT INTO `nuke_bbflags` (`flag_id`, `flag_name`, `flag_image`) VALUES
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
-- Table structure for table `nuke_bbforbidden_extensions`
--

DROP TABLE IF EXISTS `nuke_bbforbidden_extensions`;
CREATE TABLE IF NOT EXISTS `nuke_bbforbidden_extensions` (
  `ext_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(100) NOT NULL,
  PRIMARY KEY (`ext_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nuke_bbforbidden_extensions`
--

INSERT INTO `nuke_bbforbidden_extensions` (`ext_id`, `extension`) VALUES
(1, 'php'),
(2, 'php3'),
(3, 'php4'),
(4, 'phtml'),
(5, 'pl'),
(6, 'asp'),
(7, 'cgi');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforums`
--

DROP TABLE IF EXISTS `nuke_bbforums`;
CREATE TABLE IF NOT EXISTS `nuke_bbforums` (
  `forum_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_name` varchar(150) DEFAULT NULL,
  `forum_desc` text,
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_order` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `prune_next` int(11) DEFAULT NULL,
  `prune_enable` tinyint(1) NOT NULL DEFAULT '1',
  `auth_view` tinyint(2) NOT NULL DEFAULT '0',
  `auth_read` tinyint(2) NOT NULL DEFAULT '0',
  `auth_post` tinyint(2) NOT NULL DEFAULT '0',
  `auth_reply` tinyint(2) NOT NULL DEFAULT '0',
  `auth_edit` tinyint(2) NOT NULL DEFAULT '0',
  `auth_delete` tinyint(2) NOT NULL DEFAULT '0',
  `auth_sticky` tinyint(2) NOT NULL DEFAULT '0',
  `auth_announce` tinyint(2) NOT NULL DEFAULT '0',
  `auth_globalannounce` tinyint(2) NOT NULL DEFAULT '3',
  `auth_vote` tinyint(2) NOT NULL DEFAULT '0',
  `auth_pollcreate` tinyint(2) NOT NULL DEFAULT '0',
  `auth_attachments` tinyint(2) NOT NULL DEFAULT '0',
  `auth_download` tinyint(2) NOT NULL DEFAULT '0',
  `attached_forum_id` mediumint(8) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`forum_id`),
  KEY `forums_order` (`forum_order`),
  KEY `cat_id` (`cat_id`),
  KEY `forum_last_post_id` (`forum_last_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_bbforums`
--

INSERT INTO `nuke_bbforums` (`forum_id`, `cat_id`, `forum_name`, `forum_desc`, `forum_status`, `forum_order`, `forum_posts`, `forum_topics`, `forum_last_post_id`, `forum_notify`, `prune_next`, `prune_enable`, `auth_view`, `auth_read`, `auth_post`, `auth_reply`, `auth_edit`, `auth_delete`, `auth_sticky`, `auth_announce`, `auth_globalannounce`, `auth_vote`, `auth_pollcreate`, `auth_attachments`, `auth_download`, `attached_forum_id`) VALUES
(1, 1, 'General Chat', 'Demo of main forums', 0, 10, 1, 1, 2, 1, NULL, 0, 0, 0, 1, 1, 1, 1, 3, 5, 3, 1, 1, 1, 1, -1),
(2, 1, 'The Pub', 'Demo of a Sub-forum', 0, 20, 1, 1, 3, 1, NULL, 0, 0, 0, 1, 1, 1, 1, 3, 5, 3, 1, 1, 1, 1, 1),
(3, 1, 'News', 'News forum section', 0, 30, 1, 1, 1, 1, NULL, 0, 0, 0, 1, 1, 1, 1, 3, 5, 3, 1, 1, 1, 1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforums_watch`
--

DROP TABLE IF EXISTS `nuke_bbforums_watch`;
CREATE TABLE IF NOT EXISTS `nuke_bbforums_watch` (
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbforums_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbforum_prune`
--

DROP TABLE IF EXISTS `nuke_bbforum_prune`;
CREATE TABLE IF NOT EXISTS `nuke_bbforum_prune` (
  `prune_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `prune_days` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `prune_freq` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`prune_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbforum_prune`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgamehash`
--

DROP TABLE IF EXISTS `nuke_bbgamehash`;
CREATE TABLE IF NOT EXISTS `nuke_bbgamehash` (
  `gamehash_id` char(32) NOT NULL,
  `game_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `hash_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbgamehash`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgames`
--

DROP TABLE IF EXISTS `nuke_bbgames`;
CREATE TABLE IF NOT EXISTS `nuke_bbgames` (
  `game_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `game_pic` varchar(50) NOT NULL,
  `game_desc` varchar(255) NOT NULL,
  `game_highscore` int(11) NOT NULL DEFAULT '0',
  `game_highdate` int(11) NOT NULL DEFAULT '0',
  `game_highuser` mediumint(8) NOT NULL DEFAULT '0',
  `game_name` varchar(50) NOT NULL,
  `game_swf` varchar(50) NOT NULL,
  `game_scorevar` varchar(20) NOT NULL,
  `game_type` tinyint(4) NOT NULL DEFAULT '0',
  `game_width` mediumint(5) NOT NULL DEFAULT '550',
  `game_height` varchar(5) NOT NULL DEFAULT '380',
  `game_order` mediumint(8) NOT NULL DEFAULT '0',
  `game_set` mediumint(8) NOT NULL DEFAULT '0',
  `arcade_catid` mediumint(8) NOT NULL DEFAULT '1',
  KEY `game_id` (`game_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `nuke_bbgames`
--

INSERT INTO `nuke_bbgames` (`game_id`, `game_pic`, `game_desc`, `game_highscore`, `game_highdate`, `game_highuser`, `game_name`, `game_swf`, `game_scorevar`, `game_type`, `game_width`, `game_height`, `game_order`, `game_set`, `arcade_catid`) VALUES
(21, 'gpchall21.gif', 'Beat the clock and the obstacles as you race your laps across multiple levels!', 0, 0, 0, 'Grand Prix Challenge 2', 'gpchall2.swf', 'gpchall2', 3, 550, '400', 160, 0, 1),
(57, 'airfox1.gif', 'Blast your way thru enemy ships in this space shooter.', 0, 0, 0, 'AirFox', 'airfox.swf', 'airfox', 3, 300, '320', 520, 0, 1),
(58, 'airport1.gif', 'Load the coloured boxes into the correct container', 0, 0, 0, 'Airport', 'airport.swf', 'airport', 3, 640, '480', 530, 0, 1),
(62, 'alienhominid1.gif', 'Your UFO has crash landed, and the FBI is out to get you.. Time to take them out!', 0, 0, 0, 'Alien Hominid', 'alienhominid.swf', 'alienhominid', 3, 550, '420', 570, 0, 1),
(68, 'alphaforce1.gif', 'A good old fashion side scrolling shoot-em-up. Bosses? Smart bombs? Power up? 5 levels of frantic action as you battle to save the earth?', 0, 0, 0, 'Alpha Force', 'alphaforce.swf', 'alphaforce', 3, 522, '340', 630, 0, 1),
(92, 'autobahn1.gif', 'Speed down the autobahn avoiding other cars and stay alive as long as you can.', 0, 0, 0, 'Autobahn', 'autobahn.swf', 'autobahn', 3, 640, '430', 870, 0, 1),
(94, 'babejump1.gif', 'How far can you jump the bike?!', 0, 0, 0, 'Babe Jump', 'babejump.swf', 'babejump', 3, 770, '550', 890, 0, 1),
(101, 'inhell1.gif', 'You have been sent to hell for your mischevious acts. Shoot your way out to redeem yourself !!!!!', 0, 0, 0, 'Blot in Hell', 'inhell.swf', 'inhell', 3, 550, '400', 960, 0, 1),
(114, 'blackjack1.gif', 'Try to beat the dealer in this game of BlackJack', 0, 0, 0, 'BlackJack', 'blackjack.swf', 'blackjack', 3, 530, '370', 1090, 0, 1),
(145, 'battlefield1.gif', 'Power up your cannon and try to kill your opponent.', 0, 0, 0, 'Battlefield', 'battlefield.swf', 'battlefield', 3, 500, '400', 1400, 0, 1),
(238, 'catapult1.gif', 'Launch the Kitties through the Openings for points.', 0, 0, 0, 'CataPult', 'catapult.swf', 'catapult', 3, 600, '500', 1410, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbgames_rate`
--

DROP TABLE IF EXISTS `nuke_bbgames_rate`;
CREATE TABLE IF NOT EXISTS `nuke_bbgames_rate` (
  `game_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbgames_rate`
--


-- --------------------------------------------------------

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


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbhackgame`
--

DROP TABLE IF EXISTS `nuke_bbhackgame`;
CREATE TABLE IF NOT EXISTS `nuke_bbhackgame` (
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `game_id` mediumint(8) NOT NULL DEFAULT '0',
  `date_hack` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbhackgame`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bblogs`
--

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

--
-- Dumping data for table `nuke_bblogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bblogs_config`
--

DROP TABLE IF EXISTS `nuke_bblogs_config`;
CREATE TABLE IF NOT EXISTS `nuke_bblogs_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bblogs_config`
--

INSERT INTO `nuke_bblogs_config` (`config_name`, `config_value`) VALUES
('all_admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbnotes`
--

DROP TABLE IF EXISTS `nuke_bbnotes`;
CREATE TABLE IF NOT EXISTS `nuke_bbnotes` (
  `id` int(8) NOT NULL DEFAULT '0',
  `text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbnotes`
--

INSERT INTO `nuke_bbnotes` (`id`, `text`) VALUES
(1, 'Hello, This is a place where you can leave notes for other admins, or use it to keep track of any changes or updates you have added.  I find it very useful to remind me what I have added to the site. \r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbposts`
--

DROP TABLE IF EXISTS `nuke_bbposts`;
CREATE TABLE IF NOT EXISTS `nuke_bbposts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) NOT NULL DEFAULT '0',
  `post_time` int(11) NOT NULL DEFAULT '0',
  `poster_ip` varchar(8) NOT NULL,
  `post_username` varchar(25) DEFAULT NULL,
  `enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) NOT NULL DEFAULT '1',
  `post_edit_time` int(11) DEFAULT NULL,
  `post_edit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `post_attachment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_bbposts`
--

INSERT INTO `nuke_bbposts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `post_time`, `poster_ip`, `post_username`, `enable_bbcode`, `enable_html`, `enable_smilies`, `enable_sig`, `post_edit_time`, `post_edit_count`, `post_attachment`) VALUES
(1, 1, 1, 2, 1317356670, '47e9a2dd', '', 1, 1, 1, 0, NULL, 0, 0),
(2, 2, 2, 2, 1317356791, '47e9a2dd', '', 1, 1, 1, 0, NULL, 0, 0),
(3, 3, 3, 2, 1317356867, '47e9a2dd', '', 1, 1, 1, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbposts_text`
--

DROP TABLE IF EXISTS `nuke_bbposts_text`;
CREATE TABLE IF NOT EXISTS `nuke_bbposts_text` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bbcode_uid` varchar(10) NOT NULL,
  `post_subject` varchar(60) DEFAULT NULL,
  `post_text` text,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbposts_text`
--

INSERT INTO `nuke_bbposts_text` (`post_id`, `bbcode_uid`, `post_subject`, `post_text`) VALUES
(1, '3ad78ce28f', 'Platinum Nuke Pro Installed!', '[align=center:3ad78ce28f][b:3ad78ce28f][color=blue:3ad78ce28f]Congratulations! You have successfully installed Platinum Nuke Pro on your site![/color:3ad78ce28f][/b:3ad78ce28f][/align:3ad78ce28f]'),
(2, '4d5df7bb58', 'This is a Sub-forum', 'You can add sub-forums under any main forum!  :twisted:'),
(3, 'c8e186d401', '!Welcome to Platinum Nuke Pro!', '[color=blue:c8e186d401][size=18:c8e186d401]Thank you for installing Platinum Nuke Pro v1 on your site! If you need any support please visit the [b:c8e186d401][url=http://platinumnukepro.com]Platinum Nuke[/url][/b:c8e186d401] site.[/size:c8e186d401][/color:c8e186d401]');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs`
--

DROP TABLE IF EXISTS `nuke_bbprivmsgs`;
CREATE TABLE IF NOT EXISTS `nuke_bbprivmsgs` (
  `privmsgs_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT '0',
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_to_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_date` int(11) NOT NULL DEFAULT '0',
  `privmsgs_ip` varchar(8) NOT NULL,
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_attachment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`privmsgs_id`),
  KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  KEY `privmsgs_to_userid` (`privmsgs_to_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbprivmsgs`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs_archive`
--

DROP TABLE IF EXISTS `nuke_bbprivmsgs_archive`;
CREATE TABLE IF NOT EXISTS `nuke_bbprivmsgs_archive` (
  `privmsgs_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT '0',
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_to_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_date` int(11) NOT NULL DEFAULT '0',
  `privmsgs_ip` varchar(8) NOT NULL,
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`privmsgs_id`),
  KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  KEY `privmsgs_to_userid` (`privmsgs_to_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbprivmsgs_archive`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbprivmsgs_text`
--

DROP TABLE IF EXISTS `nuke_bbprivmsgs_text`;
CREATE TABLE IF NOT EXISTS `nuke_bbprivmsgs_text` (
  `privmsgs_text_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `privmsgs_bbcode_uid` varchar(10) NOT NULL DEFAULT '0',
  `privmsgs_text` text,
  PRIMARY KEY (`privmsgs_text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbprivmsgs_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbproxies`
--

DROP TABLE IF EXISTS `nuke_bbproxies`;
CREATE TABLE IF NOT EXISTS `nuke_bbproxies` (
  `ip_address` char(8) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `port` char(4) DEFAULT '0',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbproxies`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbquota_limits`
--

DROP TABLE IF EXISTS `nuke_bbquota_limits`;
CREATE TABLE IF NOT EXISTS `nuke_bbquota_limits` (
  `quota_limit_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `quota_desc` varchar(20) NOT NULL,
  `quota_limit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`quota_limit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_bbquota_limits`
--

INSERT INTO `nuke_bbquota_limits` (`quota_limit_id`, `quota_desc`, `quota_limit`) VALUES
(1, 'Low', 262144),
(2, 'Medium', 2097152),
(3, 'High', 5242880);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbranks`
--

DROP TABLE IF EXISTS `nuke_bbranks`;
CREATE TABLE IF NOT EXISTS `nuke_bbranks` (
  `rank_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(50) NOT NULL,
  `rank_min` mediumint(8) NOT NULL DEFAULT '0',
  `rank_max` mediumint(8) NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) DEFAULT '0',
  `rank_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_bbranks`
--

INSERT INTO `nuke_bbranks` (`rank_id`, `rank_title`, `rank_min`, `rank_max`, `rank_special`, `rank_image`) VALUES
(1, 'Administrator', -1, -1, 1, 'images/ranks/administrator_01.gif'),
(2, 'Guest', 0, 0, 0, 'images/ranks/newbie.gif'),
(3, 'Moderator', -1, 0, 1, 'images/ranks/moderator_01.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbreport`
--

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

--
-- Dumping data for table `nuke_bbreport`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbreport_cat`
--

DROP TABLE IF EXISTS `nuke_bbreport_cat`;
CREATE TABLE IF NOT EXISTS `nuke_bbreport_cat` (
  `cat_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_type` tinyint(1) NOT NULL DEFAULT '0',
  `cat_auth` tinyint(1) NOT NULL DEFAULT '0',
  `cat_explain` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_bbreport_cat`
--

INSERT INTO `nuke_bbreport_cat` (`cat_id`, `cat_name`, `cat_type`, `cat_auth`, `cat_explain`) VALUES
(1, 'Report Post', 1, 0, ''),
(2, 'Report Topic', 1, 0, ''),
(3, 'Report User', 1, 0, ''),
(4, 'Test Category', 0, 0, 'This is a test of the category creation.');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbscores`
--

DROP TABLE IF EXISTS `nuke_bbscores`;
CREATE TABLE IF NOT EXISTS `nuke_bbscores` (
  `game_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `score_game` int(11) NOT NULL DEFAULT '0',
  `score_date` int(11) NOT NULL DEFAULT '0',
  `score_time` int(11) NOT NULL DEFAULT '0',
  `score_set` mediumint(8) NOT NULL DEFAULT '0',
  KEY `game_id` (`game_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbscores`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_results`
--

DROP TABLE IF EXISTS `nuke_bbsearch_results`;
CREATE TABLE IF NOT EXISTS `nuke_bbsearch_results` (
  `search_id` int(11) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) NOT NULL,
  `search_array` text NOT NULL,
  `search_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`search_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbsearch_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_wordlist`
--

DROP TABLE IF EXISTS `nuke_bbsearch_wordlist`;
CREATE TABLE IF NOT EXISTS `nuke_bbsearch_wordlist` (
  `word_text` varchar(50) NOT NULL,
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  KEY `word_id` (`word_text`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `nuke_bbsearch_wordlist`
--

INSERT INTO `nuke_bbsearch_wordlist` (`word_text`, `word_id`, `word_common`) VALUES
('congratulations', 1, 0),
('installed', 2, 0),
('nuke', 3, 0),
('platinum', 4, 0),
('pro', 5, 0),
('site', 6, 0),
('successfully', 7, 0),
('installing', 8, 0),
('support', 9, 0),
('visit', 10, 0),
('welcome', 11, 0),
('twisted', 23, 0),
('subforums', 22, 0),
('subforum', 21, 0),
('main', 20, 0),
('forum', 19, 0),
('add', 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsearch_wordmatch`
--

DROP TABLE IF EXISTS `nuke_bbsearch_wordmatch`;
CREATE TABLE IF NOT EXISTS `nuke_bbsearch_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) NOT NULL DEFAULT '0',
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbsearch_wordmatch`
--

INSERT INTO `nuke_bbsearch_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(2, 21, 1),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 22, 0),
(2, 23, 0),
(3, 9, 0),
(3, 8, 0),
(3, 6, 0),
(3, 5, 0),
(3, 4, 0),
(3, 3, 0),
(3, 10, 0),
(3, 3, 1),
(3, 4, 1),
(3, 5, 1),
(3, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsessions`
--

DROP TABLE IF EXISTS `nuke_bbsessions`;
CREATE TABLE IF NOT EXISTS `nuke_bbsessions` (
  `session_id` char(32) NOT NULL,
  `session_user_id` mediumint(8) NOT NULL DEFAULT '0',
  `session_start` int(11) NOT NULL DEFAULT '0',
  `session_time` int(11) NOT NULL DEFAULT '0',
  `session_ip` char(8) NOT NULL DEFAULT '0',
  `session_page` int(11) NOT NULL DEFAULT '0',
  `session_logged_in` tinyint(1) NOT NULL DEFAULT '0',
  `session_admin` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_id_ip_user_id` (`session_id`,`session_ip`,`session_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsessions_keys`
--

DROP TABLE IF EXISTS `nuke_bbsessions_keys`;
CREATE TABLE IF NOT EXISTS `nuke_bbsessions_keys` (
  `key_id` varchar(32) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `last_ip` varchar(8) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbsessions_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbsmilies`
--

DROP TABLE IF EXISTS `nuke_bbsmilies`;
CREATE TABLE IF NOT EXISTS `nuke_bbsmilies` (
  `smilies_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `smile_url` varchar(100) DEFAULT NULL,
  `emoticon` varchar(75) DEFAULT NULL,
  `smile_stat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`smilies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `nuke_bbsmilies`
--

INSERT INTO `nuke_bbsmilies` (`smilies_id`, `code`, `smile_url`, `emoticon`, `smile_stat`) VALUES
(1, ':D', 'icon_biggrin.gif', 'Very Happy', 0),
(2, ':-D', 'icon_biggrin.gif', 'Very Happy', 4),
(3, ':grin:', 'icon_biggrin.gif', 'Very Happy', 0),
(4, ':)', 'icon_smile.gif', 'Smile', 1156),
(5, ':-)', 'icon_smile.gif', 'Smile', 0),
(6, ':smile:', 'icon_smile.gif', 'Smile', 0),
(7, ':(', 'icon_sad.gif', 'Sad', 163),
(8, ':-(', 'icon_sad.gif', 'Sad', 0),
(9, ':sad:', 'icon_sad.gif', 'Sad', 0),
(10, ':o', 'icon_surprised.gif', 'Surprised', 36),
(11, ':-o', 'icon_surprised.gif', 'Surprised', 0),
(12, ':eek:', 'icon_surprised.gif', 'Surprised', 0),
(13, '8O', 'icon_eek.gif', 'Shocked', 186),
(14, '8-O', 'icon_eek.gif', 'Shocked', 0),
(15, ':shock:', 'icon_eek.gif', 'Shocked', 0),
(16, ':?', 'icon_confused.gif', 'Confused', 181),
(17, ':-?', 'icon_confused.gif', 'Confused', 0),
(18, ':???:', 'icon_confused.gif', 'Confused', 0),
(19, '8)', 'icon_cool.gif', 'Cool', 80),
(20, '8-)', 'icon_cool.gif', 'Cool', 0),
(21, ':cool:', 'icon_cool.gif', 'Cool', 0),
(22, ':lol:', 'icon_lol.gif', 'Laughing', 471),
(23, ':x', 'icon_mad.gif', 'Mad', 36),
(24, ':-x', 'icon_mad.gif', 'Mad', 0),
(25, ':mad:', 'icon_mad.gif', 'Mad', 0),
(26, ':P', 'icon_razz.gif', 'Razz', 308),
(27, ':-P', 'icon_razz.gif', 'Razz', 1),
(28, ':razz:', 'icon_razz.gif', 'Razz', 0),
(29, ':oops:', 'icon_redface.gif', 'Embarassed', 82),
(30, ':cry:', 'icon_cry.gif', 'Crying or Very sad', 80),
(31, ':evil:', 'icon_evil.gif', 'Evil or Very Mad', 77),
(32, ':twisted:', 'icon_twisted.gif', 'Twisted Evil', 172),
(33, ':roll:', 'icon_rolleyes.gif', 'Rolling Eyes', 145),
(34, ':wink:', 'icon_wink.gif', 'Wink', 265),
(35, ';)', 'icon_wink.gif', 'Wink', 166),
(36, ';-)', 'icon_wink.gif', 'Wink', 0),
(37, ':!:', 'icon_exclaim.gif', 'Exclamation', 50),
(38, ':?:', 'icon_question.gif', 'Question', 47),
(39, ':idea:', 'icon_idea.gif', 'Idea', 5),
(40, ':arrow:', 'icon_arrow.gif', 'Arrow', 25),
(41, ':|', 'icon_neutral.gif', 'Neutral', 6),
(42, ':-|', 'icon_neutral.gif', 'Neutral', 0),
(43, ':neutral:', 'icon_neutral.gif', 'Neutral', 0),
(44, ':mrgreen:', 'icon_mrgreen.gif', 'Mr. Green', 11),
(46, 'aa)', 'aktion033.gif', 'clapper', 0),
(47, 'ab)', 'liebe028.gif', 'loveya', 0),
(48, 'hh)', 'party-smiley-043.gif', 'headbanger', 1),
(49, 'ac)', 'fragend005.gif', 'clueless', 1),
(50, 'ada)', 'Emma_adam1.gif', 'daman', 1),
(51, 'bbn)', 'huepfen024.gif', 'goober', 0),
(52, 'ppr(', 'sprachlos020.gif', 'Whoaaa', 0),
(53, 'tp((', 'aetsch013.gif', 'tonguelashing', 0),
(54, 'ee000)', 'Emma_eva1.gif', 'nekedgirl', 0),
(55, '098))', 'cool008.gif', 'coolie', 0),
(56, 'sn))((', 'violent-smiley-007.gif', 'Sniper', 0),
(57, '8765(((', 'violent-smiley-035.gif', 'gunner', 0),
(58, '1234((', 'lachen001.gif', 'haha', 0),
(59, 'ii998)', 'grinser010.gif', 'booger', 0),
(60, '3333ch', 'ernaehrung004.gif', 'cheers', 1),
(61, '666((', 'musik010.gif', 'guitar', 1),
(62, '0956(', 'waffen093.gif', 'gatlin', 0),
(63, 'tt556)', 'teufel021.gif', 'devil nerd', 0),
(64, '8987((', 'traurig001.gif', 'crybaby', 0),
(65, '3322))', 'engel016.gif', 'angel', 0),
(66, '4455()', 'sauer028.gif', 'pissed', 0),
(67, '5m^1', '08.gif', 'hi5', 1),
(68, '*$ew', '86.gif', 'yehaw', 0),
(69, '6^^2a', '85.gif', 'laffn', 2),
(70, 'aha$a', '93.gif', 'teeth', 0),
(71, '8a#a!', 'friends.gif', 'friends', 0),
(72, '+_ft1', '25.gif', 'ang3', 0),
(73, '=*ss', '58.gif', 'valen', 0),
(74, '!!~ki', '03.gif', 'cryb', 0),
(75, '%%## D', '96.gif', 'damnit', 0),
(76, '-*(mm', '38.gif', 'grrr', 0),
(77, '0*_kr', '72.gif', 'OYEA', 0),
(78, 'c^hI+', '49.gif', 'chillin', 1),
(79, 'p{{0t', '16.gif', 'shucks', 0),
(80, '}P)n&lt;', '94.gif', 'nana', 1),
(81, '??&gt;y3', '62.gif', 'fatso', 0),
(82, '&gt;?M$s', '73.gif', 'snivler', 0),
(83, 'MN*,,e', '97.gif', 'conive', 1),
(84, '&lt;KI*/a', '88.gif', 'luvya', 0),
(85, 'TR%.&gt;', '91.gif', 'screamr', 2),
(86, 'Kk&.&lt;', 'laugh.gif', 'laff3', 0),
(87, '&lt;@@f!', '19.gif', 'sneaki', 0),
(88, '88.,&lt;&gt;T', '41.gif', 'hairpull', 0),
(89, '*Jjs:', '33.gif', 'compsmash', 3),
(90, 'lo*/::', '106.gif', 'boot', 0),
(91, '*&||]d', '53.gif', 'cool8', 0),
(92, '=_*ux', '32.gif', 'hellno', 0),
(93, 'Ku^,::', '35.gif', 'weehee', 1),
(94, '7^,.&lt;u', 'ho.gif', 'ho', 0),
(95, '&&+_;o', 'hum.gif', 'humm', 0),
(96, 'IA$|{', 'confuse.gif', 'confuse3', 1),
(97, '^BGt#a', '57.gif', 'ogod', 0),
(98, '_)n^t', '29.gif', 'tonguen', 0),
(99, 'jjz98z./', 'mybosssucks.png', 'bossuks', 0),
(100, 'I*&lt;/_p', '103.gif', 'grill', 0),
(101, '8&t":{', '67.gif', 'sshh', 0),
(102, '7%gt|?', '34.gif', 'boring5', 0),
(103, 'fgs%{||', 'cool.gif', 'cool9', 0),
(104, '|}{Pfd', '66.gif', 'uhOK', 0),
(105, 'n|o}_9', 'cool2.gif', 'cool54', 1),
(106, 'ii{:&gt;8s', 'angry.gif', 'pissdd', 0),
(107, 'wtf', 'wtf.gif', 'WTF', 0),
(108, 'U%|}?&gt;', 'beer.gif', 'givbeer', 1),
(109, '&gt;&lt;M&^%', 'pics.gif', 'pics', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthemes`
--

DROP TABLE IF EXISTS `nuke_bbthemes`;
CREATE TABLE IF NOT EXISTS `nuke_bbthemes` (
  `themes_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(30) NOT NULL,
  `style_name` varchar(30) NOT NULL,
  `head_stylesheet` varchar(100) DEFAULT NULL,
  `body_background` varchar(100) DEFAULT NULL,
  `body_bgcolor` varchar(6) DEFAULT NULL,
  `body_text` varchar(6) DEFAULT NULL,
  `body_link` varchar(6) DEFAULT NULL,
  `body_vlink` varchar(6) DEFAULT NULL,
  `body_alink` varchar(6) DEFAULT NULL,
  `body_hlink` varchar(6) DEFAULT NULL,
  `tr_color1` varchar(6) DEFAULT NULL,
  `tr_color2` varchar(6) DEFAULT NULL,
  `tr_color3` varchar(6) DEFAULT NULL,
  `tr_class1` varchar(25) DEFAULT NULL,
  `tr_class2` varchar(25) DEFAULT NULL,
  `tr_class3` varchar(25) DEFAULT NULL,
  `th_color1` varchar(6) DEFAULT NULL,
  `th_color2` varchar(6) DEFAULT NULL,
  `th_color3` varchar(6) DEFAULT NULL,
  `th_class1` varchar(25) DEFAULT NULL,
  `th_class2` varchar(25) DEFAULT NULL,
  `th_class3` varchar(25) DEFAULT NULL,
  `td_color1` varchar(6) DEFAULT NULL,
  `td_color2` varchar(6) DEFAULT NULL,
  `td_color3` varchar(6) DEFAULT NULL,
  `td_class1` varchar(25) DEFAULT NULL,
  `td_class2` varchar(25) DEFAULT NULL,
  `td_class3` varchar(25) DEFAULT NULL,
  `fontface1` varchar(50) DEFAULT NULL,
  `fontface2` varchar(50) DEFAULT NULL,
  `fontface3` varchar(50) DEFAULT NULL,
  `fontsize1` tinyint(4) DEFAULT NULL,
  `fontsize2` tinyint(4) DEFAULT NULL,
  `fontsize3` tinyint(4) DEFAULT NULL,
  `fontcolor1` varchar(6) DEFAULT NULL,
  `fontcolor2` varchar(6) DEFAULT NULL,
  `fontcolor3` varchar(6) DEFAULT NULL,
  `span_class1` varchar(25) DEFAULT NULL,
  `span_class2` varchar(25) DEFAULT NULL,
  `span_class3` varchar(25) DEFAULT NULL,
  `img_size_poll` smallint(5) unsigned DEFAULT NULL,
  `img_size_privmsg` smallint(5) unsigned DEFAULT NULL,
  `online_color` varchar(6) DEFAULT NULL,
  `offline_color` varchar(6) DEFAULT NULL,
  `hidden_color` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`themes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbthemes`
--

INSERT INTO `nuke_bbthemes` (`themes_id`, `template_name`, `style_name`, `head_stylesheet`, `body_background`, `body_bgcolor`, `body_text`, `body_link`, `body_vlink`, `body_alink`, `body_hlink`, `tr_color1`, `tr_color2`, `tr_color3`, `tr_class1`, `tr_class2`, `tr_class3`, `th_color1`, `th_color2`, `th_color3`, `th_class1`, `th_class2`, `th_class3`, `td_color1`, `td_color2`, `td_color3`, `td_class1`, `td_class2`, `td_class3`, `fontface1`, `fontface2`, `fontface3`, `fontsize1`, `fontsize2`, `fontsize3`, `fontcolor1`, `fontcolor2`, `fontcolor3`, `span_class1`, `span_class2`, `span_class3`, `img_size_poll`, `img_size_privmsg`, `online_color`, `offline_color`, `hidden_color`) VALUES
(1, 'subSilver', 'subSilver', 'subSilver.css', '', '', '000000', '006699', '5493B4', '1000FF', 'DD6900', 'EFEFEF', 'DEE3E7', 'D1D7DC', '', '', '', '1000FF', '006699', 'FFFFFF', 'cellpic1.gif', 'cellpic3.gif', 'cellpic2.jpg', 'FAFAFA', 'FFFFFF', '', 'row1', 'row2', '', 'Verdana, Arial, Helvetica, sans-serif', 'Trebuchet MS', 'Courier, ''Courier New'', sans-serif', 10, 11, 12, '444444', '006600', '1000FF', '', '', '', NULL, NULL, '008500', 'DF0000', 'EBD400');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthemes_name`
--

DROP TABLE IF EXISTS `nuke_bbthemes_name`;
CREATE TABLE IF NOT EXISTS `nuke_bbthemes_name` (
  `themes_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tr_color1_name` char(50) DEFAULT NULL,
  `tr_color2_name` char(50) DEFAULT NULL,
  `tr_color3_name` char(50) DEFAULT NULL,
  `tr_class1_name` char(50) DEFAULT NULL,
  `tr_class2_name` char(50) DEFAULT NULL,
  `tr_class3_name` char(50) DEFAULT NULL,
  `th_color1_name` char(50) DEFAULT NULL,
  `th_color2_name` char(50) DEFAULT NULL,
  `th_color3_name` char(50) DEFAULT NULL,
  `th_class1_name` char(50) DEFAULT NULL,
  `th_class2_name` char(50) DEFAULT NULL,
  `th_class3_name` char(50) DEFAULT NULL,
  `td_color1_name` char(50) DEFAULT NULL,
  `td_color2_name` char(50) DEFAULT NULL,
  `td_color3_name` char(50) DEFAULT NULL,
  `td_class1_name` char(50) DEFAULT NULL,
  `td_class2_name` char(50) DEFAULT NULL,
  `td_class3_name` char(50) DEFAULT NULL,
  `fontface1_name` char(50) DEFAULT NULL,
  `fontface2_name` char(50) DEFAULT NULL,
  `fontface3_name` char(50) DEFAULT NULL,
  `fontsize1_name` char(50) DEFAULT NULL,
  `fontsize2_name` char(50) DEFAULT NULL,
  `fontsize3_name` char(50) DEFAULT NULL,
  `fontcolor1_name` char(50) DEFAULT NULL,
  `fontcolor2_name` char(50) DEFAULT NULL,
  `fontcolor3_name` char(50) DEFAULT NULL,
  `span_class1_name` char(50) DEFAULT NULL,
  `span_class2_name` char(50) DEFAULT NULL,
  `span_class3_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbthemes_name`
--

INSERT INTO `nuke_bbthemes_name` (`themes_id`, `tr_color1_name`, `tr_color2_name`, `tr_color3_name`, `tr_class1_name`, `tr_class2_name`, `tr_class3_name`, `th_color1_name`, `th_color2_name`, `th_color3_name`, `th_class1_name`, `th_class2_name`, `th_class3_name`, `td_color1_name`, `td_color2_name`, `td_color3_name`, `td_class1_name`, `td_class2_name`, `td_class3_name`, `fontface1_name`, `fontface2_name`, `fontface3_name`, `fontsize1_name`, `fontsize2_name`, `fontsize3_name`, `fontcolor1_name`, `fontcolor2_name`, `fontcolor3_name`, `span_class1_name`, `span_class2_name`, `span_class3_name`) VALUES
(1, 'The lightest row colour', 'The medium row color', 'The darkest row colour', '', '', '', 'Border round the whole page', 'Outer table border', 'Inner table border', 'Silver gradient picture', 'Blue gradient picture', 'Fade-out gradient on index', 'Background for quote boxes', 'All white areas', '', 'Background for topic posts', '2nd background for topic posts', '', 'Main fonts', 'Additional topic title font', 'Form fonts', 'Smallest font size', 'Medium font size', 'Normal font size (post body etc)', 'Quote & copyright text', 'Code text colour', 'Main table header text colour', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbthread_kicker`
--

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

--
-- Dumping data for table `nuke_bbthread_kicker`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopics`
--

DROP TABLE IF EXISTS `nuke_bbtopics`;
CREATE TABLE IF NOT EXISTS `nuke_bbtopics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `topic_title` char(60) NOT NULL,
  `topic_poster` mediumint(8) NOT NULL DEFAULT '0',
  `topic_time` int(11) NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_vote` tinyint(1) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) NOT NULL DEFAULT '0',
  `topic_attribute` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_moved_id` (`topic_moved_id`),
  KEY `topic_status` (`topic_status`),
  KEY `topic_type` (`topic_type`),
  KEY `topic_last_post_id` (`topic_last_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_bbtopics`
--

INSERT INTO `nuke_bbtopics` (`topic_id`, `forum_id`, `topic_title`, `topic_poster`, `topic_time`, `topic_views`, `topic_replies`, `topic_status`, `topic_vote`, `topic_type`, `topic_last_post_id`, `topic_first_post_id`, `topic_moved_id`, `topic_attachment`, `topic_attribute`) VALUES
(1, 1, 'Platinum Nuke Pro Installed!', 2, 1317356670, 4, 0, 0, 0, 2, 1, 1, 0, 0, NULL),
(2, 2, 'This is a Sub-forum', 2, 1317356791, 3, 0, 0, 0, 3, 2, 2, 0, 0, NULL),
(3, 3, '!Welcome to Platinum Nuke Pro!', 2, 1317356867, 4, 0, 0, 0, 1, 3, 3, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbtopics_watch`
--

DROP TABLE IF EXISTS `nuke_bbtopics_watch`;
CREATE TABLE IF NOT EXISTS `nuke_bbtopics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbtopics_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbuser_group`
--

DROP TABLE IF EXISTS `nuke_bbuser_group`;
CREATE TABLE IF NOT EXISTS `nuke_bbuser_group` (
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) DEFAULT NULL,
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbuser_group`
--

INSERT INTO `nuke_bbuser_group` (`group_id`, `user_id`, `user_pending`) VALUES
(1, 1, 0),
(2, 2, 0),
(4, 1, 0),
(5, 2, 0),
(3, 1, 0),
(3, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_desc`
--

DROP TABLE IF EXISTS `nuke_bbvote_desc`;
CREATE TABLE IF NOT EXISTS `nuke_bbvote_desc` (
  `vote_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_text` text NOT NULL,
  `vote_start` int(11) NOT NULL DEFAULT '0',
  `vote_length` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_bbvote_desc`
--

INSERT INTO `nuke_bbvote_desc` (`vote_id`, `topic_id`, `vote_text`, `vote_start`, `vote_length`) VALUES
(1, 7, 'Testing Poll', 1131771299, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_results`
--

DROP TABLE IF EXISTS `nuke_bbvote_results`;
CREATE TABLE IF NOT EXISTS `nuke_bbvote_results` (
  `vote_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_option_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `vote_option_text` varchar(255) NOT NULL,
  `vote_result` int(11) NOT NULL DEFAULT '0',
  KEY `vote_option_id` (`vote_option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbvote_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbvote_voters`
--

DROP TABLE IF EXISTS `nuke_bbvote_voters`;
CREATE TABLE IF NOT EXISTS `nuke_bbvote_voters` (
  `vote_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) NOT NULL DEFAULT '0',
  `vote_user_ip` char(8) NOT NULL,
  `vote_cast` tinyint(4) unsigned NOT NULL DEFAULT '0',
  KEY `vote_id` (`vote_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbvote_voters`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbwords`
--

DROP TABLE IF EXISTS `nuke_bbwords`;
CREATE TABLE IF NOT EXISTS `nuke_bbwords` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` char(100) NOT NULL,
  `replacement` char(100) NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_bbwords`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_bbwpm`
--

DROP TABLE IF EXISTS `nuke_bbwpm`;
CREATE TABLE IF NOT EXISTS `nuke_bbwpm` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_bbwpm`
--

INSERT INTO `nuke_bbwpm` (`name`, `value`) VALUES
('wpm_version', '1.0.2'),
('wpm_subject', 'Welcome to [sitename], [username]!'),
('wpm_message', 'Hi, there [username]!\r\n\r\nI hope you enjoy your stay here at [sitename]!\r\n\r\nIf you have any questions or comments, please post them in the appropriate forum section! \r\n\r\nHave a great day!\r\n[sitename] Staff');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blocks`
--

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

--
-- Dumping data for table `nuke_blocks`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_alerts`
--

DROP TABLE IF EXISTS `nuke_blog_alerts`;
CREATE TABLE IF NOT EXISTS `nuke_blog_alerts` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` mediumint(13) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(25) NOT NULL,
  `alert_date` date NOT NULL DEFAULT '0000-00-00',
  `alert_body` text NOT NULL,
  PRIMARY KEY (`alert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_alerts`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_badwords`
--

DROP TABLE IF EXISTS `nuke_blog_badwords`;
CREATE TABLE IF NOT EXISTS `nuke_blog_badwords` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `word_bad` varchar(48) NOT NULL,
  `word_good` varchar(48) NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `nuke_blog_badwords`
--

INSERT INTO `nuke_blog_badwords` (`word_id`, `word_bad`, `word_good`) VALUES
(1, 'fuck', 'happy'),
(2, 'cunt', 'sunshine'),
(3, 'fucker', 'friend'),
(4, 'fucking', 'playing'),
(5, 'pussy', 'kitty'),
(6, 'cock', 'rooster'),
(7, 'c0ck', 'chicken'),
(8, 'cum', 'laugh'),
(9, 'twat', 'puppy'),
(10, 'clit', 'dove'),
(11, 'bitch', 'gripe'),
(12, 'fuk', 'gerbil'),
(13, 'fuking', 'jumping'),
(14, 'motherfucker', 'good budy');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_blogs`
--

DROP TABLE IF EXISTS `nuke_blog_blogs`;
CREATE TABLE IF NOT EXISTS `nuke_blog_blogs` (
  `blog_id` mediumint(13) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_title` varchar(255) NOT NULL,
  `blog_body` text NOT NULL,
  `blog_mood` int(11) NOT NULL DEFAULT '0',
  `blog_date` date NOT NULL DEFAULT '0000-00-00',
  `blog_update` date NOT NULL DEFAULT '0000-00-00',
  `blog_status` tinyint(1) NOT NULL DEFAULT '1',
  `blog_comments` tinyint(1) NOT NULL DEFAULT '1',
  `blog_views` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_blogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_comments`
--

DROP TABLE IF EXISTS `nuke_blog_comments`;
CREATE TABLE IF NOT EXISTS `nuke_blog_comments` (
  `comm_id` mediumint(13) NOT NULL AUTO_INCREMENT,
  `blog_id` mediumint(13) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comm_body` text NOT NULL,
  `comm_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`comm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_config`
--

DROP TABLE IF EXISTS `nuke_blog_config`;
CREATE TABLE IF NOT EXISTS `nuke_blog_config` (
  `config_key` varchar(24) NOT NULL,
  `config_value` text NOT NULL,
  `config_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_blog_config`
--

INSERT INTO `nuke_blog_config` (`config_key`, `config_value`, `config_desc`) VALUES
('show_sql', '0', 'Display SQL statements for debugging purposes.'),
('bad_words', '1', 'Turn bad word filtering on or off.'),
('blog_page', '20', 'The number of blogs per page in list view.'),
('blog_wrap', '5', 'The number of pages per line in foot navigation.'),
('blog_admin', 'Nobody', 'Admin name of primary blog administrator.'),
('right_blocks', '1', 'Turn right side blocks on and off.'),
('points_blog', '3', 'Points awarded to blog poster.'),
('points_comment', '1', 'Points awarded to comment poster.'),
('mass_remove', '0', 'Reduce the points of all commenting users if blog author removes a blog and associated comments?');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_friends`
--

DROP TABLE IF EXISTS `nuke_blog_friends`;
CREATE TABLE IF NOT EXISTS `nuke_blog_friends` (
  `friend_id` mediumint(14) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `friend_uid` int(11) NOT NULL DEFAULT '0',
  `friend_username` varchar(25) NOT NULL,
  `friend_added` date NOT NULL DEFAULT '0000-00-00',
  `friend_visit` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_friends`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_messages`
--

DROP TABLE IF EXISTS `nuke_blog_messages`;
CREATE TABLE IF NOT EXISTS `nuke_blog_messages` (
  `mess_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` mediumint(14) NOT NULL DEFAULT '0',
  `blog_title` varchar(255) NOT NULL,
  `blog_date` date NOT NULL DEFAULT '0000-00-00',
  `aid` varchar(48) NOT NULL,
  `mess_date` date NOT NULL DEFAULT '0000-00-00',
  `mess_body` text NOT NULL,
  `mess_read` tinyint(1) NOT NULL DEFAULT '0',
  `mess_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mess_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_moods`
--

DROP TABLE IF EXISTS `nuke_blog_moods`;
CREATE TABLE IF NOT EXISTS `nuke_blog_moods` (
  `mood_id` int(11) NOT NULL AUTO_INCREMENT,
  `mood_title` varchar(128) NOT NULL,
  `mood_image` varchar(24) NOT NULL,
  PRIMARY KEY (`mood_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `nuke_blog_moods`
--

INSERT INTO `nuke_blog_moods` (`mood_id`, `mood_title`, `mood_image`) VALUES
(1, 'Calm', 'calm.gif'),
(2, 'Angry', 'angry.gif'),
(3, 'Rejuvenated', 'rejuvenated.gif'),
(4, 'Aggravated', 'aggravated.gif'),
(5, 'Mellow', 'mellow.gif'),
(6, 'Annoyed', 'annoyed.gif'),
(7, 'Peaceful', 'peaceful.gif'),
(8, 'Bitchy', 'bitchy.gif'),
(9, 'Content', 'content.gif'),
(10, 'Cranky', 'cranky.gif'),
(11, 'Full', 'full.gif'),
(12, 'Cynical', 'cynical.gif'),
(13, 'Relieved', 'relieved.gif'),
(14, 'Enraged', 'enraged.gif'),
(15, 'Recumbent', 'recumbent.gif'),
(16, 'Silly', 'silly.gif'),
(17, 'Frustrated', 'frustrated.gif'),
(18, 'Crazy', 'crazy.gif'),
(19, 'Grumpy', 'grumpy.gif'),
(20, 'Satisfied', 'satisfied.gif'),
(21, 'Ditzy', 'ditzy.gif'),
(22, 'Infuriated', 'infuriated.gif'),
(23, 'Flirty', 'flirty.gif'),
(24, 'Irate', 'irate.gif'),
(25, 'Giddy', 'giddy.gif'),
(26, 'Giggly', 'giggly.gif'),
(27, 'Irritated', 'irritated.gif'),
(28, 'Naughty', 'naughty.gif'),
(29, 'Moody', 'moody.gif'),
(30, 'Complacent', 'complacent.gif'),
(31, 'Pissed_off', 'pissed_off.gif'),
(32, 'Quixotic', 'quixotic.gif'),
(33, 'Stressed', 'stressed.gif'),
(34, 'Weird', 'weird.gif'),
(35, 'Rushed', 'rushed.gif'),
(36, 'Suprised', 'suprised.gif'),
(37, 'Awake', 'awake.gif'),
(38, 'Shocked', 'shocked.gif'),
(39, 'Confused', 'confused.gif'),
(40, 'Thankful', 'thankful.gif'),
(41, 'Curious', 'curious.gif'),
(42, 'Indifferent', 'indifferent.gif'),
(43, 'Determined', 'determined.gif'),
(44, 'Touched', 'touched.gif'),
(45, 'Nerdy', 'nerdy.gif'),
(46, 'Predatory', 'predatory.gif'),
(47, 'Dorky', 'drunk.gif'),
(48, 'Devious', 'devious.gif'),
(49, 'Geeky', 'geeky.gif'),
(50, 'Okay', 'okay.gif'),
(51, 'Energetic', 'energetic.gif'),
(52, 'Blah', 'blah.gif'),
(53, 'Bouncy', 'bouncy.gif'),
(54, 'Lazy', 'lazy.gif'),
(55, 'Hyper', 'hyper.gif'),
(56, 'Mischievous', 'mischievous.gif'),
(57, 'Enthralled', 'enthralled.gif'),
(58, 'Blank', 'blank.gif'),
(59, 'Happy', 'happy.gif'),
(60, 'Nervous', 'nervous.gif'),
(61, 'Amused', 'amused.gif'),
(62, 'Pensive', 'pensive.gif'),
(63, 'Cheerful', 'cheerful.gif'),
(64, 'Working', 'working.gif'),
(65, 'Chipper', 'chipper.gif'),
(66, 'Artistic', 'artistic.gif'),
(67, 'Ecstatic', 'ecstatic.gif'),
(68, 'Busy', 'busy.gif'),
(69, 'Excited', 'excited.gif'),
(71, 'High', 'high.gif'),
(72, 'Horny', 'horny.gif'),
(73, 'Good', 'good.gif'),
(74, 'Grateful', 'grateful.gif'),
(75, 'Exanimate', 'exanimate.gif'),
(76, 'Impressed', 'impressed.gif'),
(77, 'Jubilant', 'jubilant.gif'),
(78, 'Loved', 'loved.gif'),
(79, 'Indescribable', 'indescribable.gif'),
(80, 'Optimistic', 'optimistic.gif'),
(81, 'Hopeful', 'hopeful.gif'),
(82, 'Pleased', 'pleased.gif'),
(83, 'Apathetic', 'apathetic.gif'),
(84, 'Refreshed', 'refreshed.gif'),
(85, 'Relaxed', 'relaxed.gif'),
(86, 'Nostalgic', 'nostalgic.gif'),
(87, 'Lethargic', 'lethargic.gif'),
(88, 'Listless', 'listless.gif'),
(89, 'Sad', 'sad.gif'),
(90, 'Bored', 'bored.gif'),
(91, 'Crappy', 'crappy.gif'),
(92, 'Crushed', 'crushed.gif'),
(93, 'Depressed', 'depressed.gif'),
(94, 'Thoughtful', 'thoughtful.gif'),
(95, 'Disappointed', 'disappointed.gif'),
(96, 'Contemplative', 'contemplative.gif'),
(97, 'Discontent', 'discontent.gif'),
(98, 'Envious', 'envious.gif'),
(99, 'Gloomy', 'gloomy.gif'),
(100, 'Accomplished', 'accomplished.gif'),
(101, 'Pessimistic', 'pessimistic.gif'),
(102, 'Jealous', 'jealous.gif'),
(103, 'Lonely', 'lonely.gif'),
(104, 'Productive', 'productive.gif'),
(105, 'Melancholy', 'melancholy.gif'),
(106, 'Morose', 'morose.gif'),
(107, 'Numb', 'numb.gif'),
(108, 'Rejected', 'rejected.gif'),
(109, 'Sympathetic', 'sympathetic.gif'),
(110, 'Uncomfortable', 'uncomfortable.gif'),
(111, 'Cold', 'cold.gif'),
(112, 'Dirty', 'dirty.gif'),
(113, 'Drunk', 'drunk.gif'),
(114, 'Exhausted', 'exhausted.gif'),
(115, 'Drained', 'drained.gif'),
(116, 'Tired', 'tired.gif'),
(117, 'Groggy', 'groggy.gif'),
(118, 'Sleepy', 'sleepy.gif'),
(119, 'Guilty', 'guilty.gif'),
(120, 'Hot', 'hot.gif'),
(121, 'Hungry', 'hungry.gif'),
(122, 'Restless', 'restless.gif'),
(123, 'Sick', 'sick.gif'),
(124, 'Nauseated', 'nauseated.gif'),
(125, 'Sore', 'sore.gif'),
(126, 'Thirsty', 'thirsty.gif'),
(127, 'Worried', 'worried.gif'),
(128, 'Scared', 'scared.gif'),
(129, 'Anxious', 'anxious.gif'),
(130, 'Distressed', 'distressed.gif'),
(131, 'Embarrassed', 'embarrassed.gif'),
(132, 'Intimidated', 'intimidated.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_blog_users`
--

DROP TABLE IF EXISTS `nuke_blog_users`;
CREATE TABLE IF NOT EXISTS `nuke_blog_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `user_last` date NOT NULL DEFAULT '0000-00-00',
  `user_blogs` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_blog_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_comments`
--

DROP TABLE IF EXISTS `nuke_comments`;
CREATE TABLE IF NOT EXISTS `nuke_comments` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(85) NOT NULL,
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `reason` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_comments`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_config`
--

DROP TABLE IF EXISTS `nuke_config`;
CREATE TABLE IF NOT EXISTS `nuke_config` (
  `sitename` varchar(255) NOT NULL,
  `nukeurl` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `adminmail` varchar(255) NOT NULL,
  `anonpost` tinyint(1) NOT NULL DEFAULT '0',
  `Default_Theme` varchar(255) NOT NULL,
  `foot1` text NOT NULL,
  `foot2` text NOT NULL,
  `foot3` text NOT NULL,
  `commentlimit` int(9) NOT NULL DEFAULT '4096',
  `anonymous` varchar(255) NOT NULL,
  `minpass` tinyint(1) NOT NULL DEFAULT '5',
  `pollcomm` tinyint(1) NOT NULL DEFAULT '1',
  `articlecomm` tinyint(1) NOT NULL DEFAULT '1',
  `broadcast_msg` tinyint(1) NOT NULL DEFAULT '1',
  `my_headlines` tinyint(1) NOT NULL DEFAULT '1',
  `top` int(3) NOT NULL DEFAULT '10',
  `storyhome` int(2) NOT NULL DEFAULT '10',
  `user_news` tinyint(1) NOT NULL DEFAULT '1',
  `oldnum` int(2) NOT NULL DEFAULT '30',
  `ultramode` tinyint(1) NOT NULL DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '1',
  `adb_chk` tinyint(1) NOT NULL DEFAULT '0',
  `backend_title` varchar(255) NOT NULL,
  `backend_language` varchar(10) NOT NULL,
  `language` varchar(100) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `multilingual` tinyint(1) NOT NULL DEFAULT '0',
  `useflags` tinyint(1) NOT NULL DEFAULT '1',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_email` varchar(255) NOT NULL,
  `notify_subject` varchar(255) NOT NULL,
  `notify_message` varchar(255) NOT NULL,
  `notify_from` varchar(255) NOT NULL,
  `moderate` tinyint(1) NOT NULL DEFAULT '0',
  `admingraphic` tinyint(1) NOT NULL DEFAULT '1',
  `httpref` tinyint(1) NOT NULL DEFAULT '1',
  `httprefmax` int(5) NOT NULL DEFAULT '1000',
  `CensorMode` tinyint(1) NOT NULL DEFAULT '3',
  `CensorReplace` varchar(10) NOT NULL,
  `copyright` text NOT NULL,
  `Version_Num` varchar(14) NOT NULL,
  `displayerror` tinyint(1) NOT NULL DEFAULT '0',
  `admin_pos` tinyint(4) NOT NULL DEFAULT '1',
  `login_bar` int(1) DEFAULT '1',
  PRIMARY KEY (`sitename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_config`
--

INSERT INTO `nuke_config` (`sitename`, `nukeurl`, `site_logo`, `slogan`, `startdate`, `adminmail`, `anonpost`, `Default_Theme`, `foot1`, `foot2`, `foot3`, `commentlimit`, `anonymous`, `minpass`, `pollcomm`, `articlecomm`, `broadcast_msg`, `my_headlines`, `top`, `storyhome`, `user_news`, `oldnum`, `ultramode`, `banners`, `adb_chk`, `backend_title`, `backend_language`, `language`, `locale`, `multilingual`, `useflags`, `notify`, `notify_email`, `notify_subject`, `notify_message`, `notify_from`, `moderate`, `admingraphic`, `httpref`, `httprefmax`, `CensorMode`, `CensorReplace`, `copyright`, `Version_Num`, `displayerror`, `admin_pos`, `login_bar`) VALUES
('Platinum Nuke Pro Dev Site', 'http://plat-dev.mach-hosting.com', 'logo.gif', 'Expect to be Impressed!', 'April 2014', 'platdev@mach-hosting.com', 0, 'PNP_WB', '', '', '<p style="text-align:center"><span style="font-size:10px">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />\r\nAll the rest &copy; 2013 by this site.<br />\r\nPHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank">GPL</a>.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:10px">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="height:15px; width:80px" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="height:15px; width:80px" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="height:15px; width:80px" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="height:15px; width:80px" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" src="http://tool.motoricerca.info/pic/valid-robots-small.png" style="height:15px; width:80px" /></a><br />\r\nSite Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1&nbsp;</strong></a> and is maintained by the Platinum Pro Team.</span></p>\r\n', 4096, 'Anonymous', 5, 1, 1, 1, 1, 5, 5, 0, 10, 1, 0, 0, 'Platinum Nuke Pro Dev Site', 'en-us', 'english', 'en_US', 1, 0, 1, 'platdev@mach-hosting.com', 'NEWS for my site', 'Hey! You got a new submission for your site.', 'webmaster', 1, 1, 1, 100, 3, '*****', 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1</strong></font></a><br>', '7.6.PNPV1.0.1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_config`
--

DROP TABLE IF EXISTS `nuke_config`;
CREATE TABLE IF NOT EXISTS `nuke_config` (
  `sitename` varchar(255) NOT NULL,
  `nukeurl` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `adminmail` varchar(255) NOT NULL,
  `anonpost` tinyint(1) NOT NULL DEFAULT '0',
  `Default_Theme` varchar(255) NOT NULL,
  `foot1` text NOT NULL,
  `foot2` text NOT NULL,
  `foot3` text NOT NULL,
  `commentlimit` int(9) NOT NULL DEFAULT '4096',
  `anonymous` varchar(255) NOT NULL,
  `minpass` tinyint(1) NOT NULL DEFAULT '5',
  `pollcomm` tinyint(1) NOT NULL DEFAULT '1',
  `articlecomm` tinyint(1) NOT NULL DEFAULT '1',
  `broadcast_msg` tinyint(1) NOT NULL DEFAULT '1',
  `my_headlines` tinyint(1) NOT NULL DEFAULT '1',
  `top` int(3) NOT NULL DEFAULT '10',
  `storyhome` int(2) NOT NULL DEFAULT '10',
  `user_news` tinyint(1) NOT NULL DEFAULT '1',
  `oldnum` int(2) NOT NULL DEFAULT '30',
  `ultramode` tinyint(1) NOT NULL DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '1',
  `adb_chk` int(1) DEFAULT '0',
  `backend_title` varchar(255) NOT NULL,
  `backend_language` varchar(10) NOT NULL,
  `language` varchar(100) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `multilingual` tinyint(1) NOT NULL DEFAULT '0',
  `useflags` tinyint(1) NOT NULL DEFAULT '1',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_email` varchar(255) NOT NULL,
  `notify_subject` varchar(255) NOT NULL,
  `notify_message` varchar(255) NOT NULL,
  `notify_from` varchar(255) NOT NULL,
  `moderate` tinyint(1) NOT NULL DEFAULT '0',
  `admingraphic` tinyint(1) NOT NULL DEFAULT '1',
  `httpref` tinyint(1) NOT NULL DEFAULT '1',
  `httprefmax` int(5) NOT NULL DEFAULT '1000',
  `CensorMode` tinyint(1) NOT NULL DEFAULT '3',
  `CensorReplace` varchar(10) NOT NULL,
  `copyright` text NOT NULL,
  `Version_Num` varchar(14) NOT NULL,
  `displayerror` tinyint(1) NOT NULL DEFAULT '0',
  `admin_pos` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sitename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_config`
--

INSERT INTO `nuke_config` (`sitename`, `nukeurl`, `site_logo`, `slogan`, `startdate`, `adminmail`, `anonpost`, `Default_Theme`, `foot1`, `foot2`, `foot3`, `commentlimit`, `anonymous`, `minpass`, `pollcomm`, `articlecomm`, `broadcast_msg`, `my_headlines`, `top`, `storyhome`, `user_news`, `oldnum`, `ultramode`, `banners`, `adb_chk`, `backend_title`, `backend_language`, `language`, `locale`, `multilingual`, `useflags`, `notify`, `notify_email`, `notify_subject`, `notify_message`, `notify_from`, `moderate`, `admingraphic`, `httpref`, `httprefmax`, `CensorMode`, `CensorReplace`, `copyright`, `Version_Num`, `displayerror`, `admin_pos`) VALUES
('Platinum Nuke Pro v1', 'http://', 'logo.gif', 'Expect to be Impressed!', now(), 'you@yoursite.com', 0, 'PNP_WB', '', '', '<p style="text-align: center;">\r\n	<span style="font-size:10px;"><font class="footmsg">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />All the rest &copy; 2013 by this site.<br />\r\n	PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="&quot;footmsg_l&quot;">GPL</font></a>.</font></span></p>\r\n<p style="text-align: center;">\r\n	<font class="footmsg"><span style="font-size:10px;">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="width: 80px; height: 15px;" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="width: 80px; height: 15px;" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="width: 80px; height: 15px;" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="width: 80px; height: 15px;" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" border="0" height="15" src="http://tool.motoricerca.info/pic/valid-robots-small.png" width="80" /></a><br />\r\n	Site Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1&nbsp;</strong></font></a><font class="footmsg"> and is maintained by the Platinum Pro Team.</font></span></font></p>\r\n', 4096, 'Anonymous', 5, 1, 1, 1, 1, 5, 5, 0, 10, 1, 0, 0, 'Platinum Nuke Pro 7.6.PNPv1.0.1', 'en-us', 'english', 'en_US', 1, 0, 1, 'you@yoursite.com', 'NEWS for my site', 'Hey! You got a new submission for your site.', 'webmaster', 1, 1, 1, 100, 3, '*****', 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPV1.0.1</strong></font></a><br>', '7.6.PNPV1.0.1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_counter`
--

DROP TABLE IF EXISTS nuke_counter;
CREATE TABLE IF NOT EXISTS nuke_counter (
  `type` varchar(80) NOT NULL DEFAULT '',
  var varchar(80) NOT NULL DEFAULT '',
  count int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_counter`
--

INSERT INTO nuke_counter (`type`, var, count) VALUES
('total', 'hits', 0),
('browser', 'WebTV', 0),
('browser', 'Lynx', 0),
('browser', 'MSIE', 0),
('browser', 'Opera', 0),
('browser', 'Konqueror', 0),
('browser', 'Netscape', 0),
('browser', 'FireFox', 0),
('browser', 'Bot', 0),
('browser', 'Other', 0),
('os', 'Windows', 0),
('os', 'Linux', 0),
('os', 'Mac', 0),
('os', 'FreeBSD', 0),
('os', 'SunOS', 0),
('os', 'IRIX', 0),
('os', 'BeOS', 0),
('os', 'OS/2', 0),
('os', 'AIX', 0),
('os', 'Other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_albums`
--

DROP TABLE IF EXISTS `nuke_cpg_albums`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_albums` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_cpg_albums`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_categories`
--

DROP TABLE IF EXISTS `nuke_cpg_categories`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `catname` varchar(255) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_cpg_categories`
--

INSERT INTO `nuke_cpg_categories` (`cid`, `owner_id`, `catname`, `description`, `pos`, `parent`, `subcat_count`, `alb_count`, `pic_count`, `stat_uptodate`) VALUES
(1, 0, 'User galleries', 'This category contains albums that belong to Coppermine users.', 0, 0, 0, 0, 0, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_comments`
--

DROP TABLE IF EXISTS `nuke_cpg_comments`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_comments` (
  `pid` mediumint(10) NOT NULL DEFAULT '0',
  `msg_id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `msg_author` varchar(25) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_md5_id` varchar(32) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `msg_raw_ip` tinytext,
  `msg_hdr_ip` tinytext,
  PRIMARY KEY (`msg_id`),
  KEY `com_pic_id` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_cpg_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_config`
--

DROP TABLE IF EXISTS `nuke_cpg_config`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_config` (
  `name` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_cpg_config`
--

INSERT INTO `nuke_cpg_config` (`name`, `value`) VALUES
('albums_per_page', '12'),
('album_list_cols', '2'),
('display_pic_info', '1'),
('alb_list_thumb_size', '50'),
('allowed_file_extensions', 'GIF/PNG/JPG/JPEG/TIF/TIFF'),
('allowed_img_types', 'JPG/GIF/PNG/TIFF'),
('allow_private_albums', '1'),
('allow_user_registration', '0'),
('allow_duplicate_emails_addr', '0'),
('caption_in_thumbview', '1'),
('charset', 'language file'),
('cookie_name', 'nuke_cpg_nuke'),
('cookie_path', '/'),
('debug_mode', '0'),
('default_dir_mode', '0777'),
('default_file_mode', '0777'),
('default_sort_order', 'na'),
('ecards_more_pic_target', 'http://www.yoursite.com/'),
('enable_smilies', '1'),
('filter_bad_words', '1'),
('forbiden_fname_char', '$/\\\\:*?&quot;''&lt;&gt;|`'),
('fullpath', 'modules/coppermine/albums/'),
('gallery_admin_email', 'email@yoursite.com'),
('gallery_description', 'Your online photo album'),
('gallery_name', 'Photo Gallery'),
('im_options', '-antialias'),
('impath', ''),
('jpeg_qual', '80'),
('keep_votes_time', '30'),
('lang', 'english'),
('main_page_layout', 'breadcrumb/catlist/alblist/lastalb,1/lastup,1/lastcom,1/topn,1/toprated,1/random,1/anycontent'),
('main_table_width', '100%'),
('make_intermediate', '1'),
('max_com_lines', '10'),
('max_com_size', '512'),
('max_com_wlength', '38'),
('max_img_desc_length', '512'),
('max_tabs', '12'),
('max_upl_size', '1024'),
('max_upl_width_height', '2048'),
('min_votes_for_rating', '1'),
('normal_pfx', 'normal_'),
('picture_table_width', '600'),
('picture_width', '400'),
('randpos_interval', '5'),
('read_exif_data', '0'),
('reg_requires_valid_email', '1'),
('subcat_level', '2'),
('theme', 'default'),
('thumbcols', '4'),
('thumbrows', '3'),
('thumb_method', 'gd2'),
('thumb_pfx', 'thumb_'),
('thumb_width', '100'),
('userpics', 'modules/coppermine/albums/userpics/'),
('user_field1_name', ''),
('user_field2_name', ''),
('user_field3_name', ''),
('user_field4_name', ''),
('display_comment_count', '1'),
('display_film_strip', '1'),
('max_film_strip_items', '5'),
('first_level', '1'),
('show_private', '0'),
('thumb_use', 'ht'),
('comment_email_notification', '0'),
('disable_flood_protection', '0'),
('nice_titles', '1'),
('advanced_debug_mode', '0'),
('seo_alts', '0'),
('read_iptc_data', '0'),
('picinfo_display_favorites', '1'),
('picinfo_display_filename', '0'),
('picinfo_display_album_name', '1'),
('picinfo_display_file_size', '1'),
('picinfo_display_dimensions', '1'),
('picinfo_display_count_displayed', '1'),
('picinfo_display_URL', '0'),
('picinfo_display_URL_bookmark', '1'),
('allow_anon_fullsize', '1'),
('showupdate', '0'),
('right_blocks', '1'),
('avatar_private_album', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_exif`
--

DROP TABLE IF EXISTS `nuke_cpg_exif`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_exif` (
  `filename` varchar(255) NOT NULL,
  `exifData` text NOT NULL,
  UNIQUE KEY `filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_cpg_exif`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_installs`
--

DROP TABLE IF EXISTS `nuke_cpg_installs`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_installs` (
  `cpg_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(20) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cpg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_cpg_installs`
--

INSERT INTO `nuke_cpg_installs` (`cpg_id`, `dirname`, `prefix`, `version`) VALUES
(1, 'coppermine', 'nuke_cpg_', '1.3.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_pictures`
--

DROP TABLE IF EXISTS `nuke_cpg_pictures`;
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
  `pic_raw_ip` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pic_hdr_ip` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`pid`),
  KEY `pic_hits` (`hits`),
  KEY `pic_rate` (`pic_rating`),
  KEY `aid_approved` (`aid`,`approved`),
  KEY `randpos` (`randpos`),
  KEY `pic_aid` (`aid`),
  FULLTEXT KEY `search` (`title`,`caption`,`keywords`,`filename`,`user1`,`user2`,`user3`,`user4`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_cpg_pictures`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_usergroups`
--

DROP TABLE IF EXISTS `nuke_cpg_usergroups`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_usergroups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_quota` int(11) NOT NULL DEFAULT '0',
  `has_admin_access` tinyint(4) NOT NULL DEFAULT '0',
  `can_rate_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_send_ecards` tinyint(4) NOT NULL DEFAULT '0',
  `can_post_comments` tinyint(4) NOT NULL DEFAULT '0',
  `can_upload_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_create_albums` tinyint(4) NOT NULL DEFAULT '0',
  `pub_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  `priv_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_cpg_usergroups`
--

INSERT INTO `nuke_cpg_usergroups` (`group_id`, `group_name`, `group_quota`, `has_admin_access`, `can_rate_pictures`, `can_send_ecards`, `can_post_comments`, `can_upload_pictures`, `can_create_albums`, `pub_upl_need_approval`, `priv_upl_need_approval`) VALUES
(1, 'Administrators', 0, 1, 1, 1, 1, 1, 1, 0, 0),
(2, 'Registered', 1024, 0, 1, 1, 1, 1, 1, 1, 0),
(3, 'Anonymous', 0, 0, 1, 0, 0, 0, 0, 1, 1),
(4, 'Banned', 0, 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_cpg_votes`
--

DROP TABLE IF EXISTS `nuke_cpg_votes`;
CREATE TABLE IF NOT EXISTS `nuke_cpg_votes` (
  `pic_id` mediumint(9) NOT NULL DEFAULT '0',
  `user_md5_id` varchar(32) NOT NULL,
  `vote_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pic_id`,`user_md5_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_cpg_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_credits`
--

DROP TABLE IF EXISTS `nuke_credits`;
CREATE TABLE IF NOT EXISTS `nuke_credits` (
  `credit_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_name` varchar(60) DEFAULT NULL,
  `credit_author` varchar(20) DEFAULT NULL,
  `credit_link` varchar(30) DEFAULT NULL,
  `credit_description` text,
  PRIMARY KEY (`credit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_czuser`
--

DROP TABLE IF EXISTS `nuke_czuser`;
CREATE TABLE IF NOT EXISTS `nuke_czuser` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `show_lost_pw` varchar(10) NOT NULL,
  `show_online_total` varchar(10) NOT NULL,
  `show_pm` varchar(10) NOT NULL,
  `waiting` varchar(10) NOT NULL,
  `user_gc` varchar(10) NOT NULL,
  `groups` varchar(10) NOT NULL,
  `posts` varchar(10) NOT NULL,
  `avatars` varchar(10) NOT NULL,
  `bbranks` varchar(10) NOT NULL,
  `showmost` varchar(10) NOT NULL,
  `showstaffonline` varchar(10) NOT NULL,
  `show_hits` varchar(10) NOT NULL,
  `show_ip` varchar(10) NOT NULL,
  `shortnames` varchar(10) NOT NULL,
  `tooltip` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_czuser`
--

INSERT INTO `nuke_czuser` (`id`, `show_lost_pw`, `show_online_total`, `show_pm`, `waiting`, `user_gc`, `groups`, `posts`, `avatars`, `bbranks`, `showmost`, `showstaffonline`, `show_hits`, `show_ip`, `shortnames`, `tooltip`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_czuser_botlist`
--

DROP TABLE IF EXISTS `nuke_czuser_botlist`;
CREATE TABLE IF NOT EXISTS `nuke_czuser_botlist` (
  `bot_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `bot_ip` varchar(15) NOT NULL,
  `bot_name` varchar(50) NOT NULL,
  PRIMARY KEY (`bot_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2086 ;

--
-- Dumping data for table `nuke_czuser_botlist`
--

INSERT INTO `nuke_czuser_botlist` (`bot_id`, `bot_ip`, `bot_name`) VALUES
(00001, '128.177.243', 'Alta Vista'),
(00002, '128.177.244.100', 'Alta Vista'),
(00003, '128.177.244.86', 'Alta Vista'),
(00004, '194.112.94.250', 'Alta Vista'),
(00005, '194.112.94.251', 'Alta Vista'),
(00006, '194.112.94.252', 'Alta Vista'),
(00007, '194.201.146.1', 'Alta Vista'),
(00008, '194.201.146.24', 'Alta Vista'),
(00009, '194.221.84.11', 'Alta Vista'),
(00010, '194.221.84.15', 'Alta Vista'),
(00011, '194.221.84.31', 'Alta Vista'),
(00012, '194.221.84.32', 'Alta Vista'),
(00013, '194.221.84.33', 'Alta Vista'),
(00014, '194.221.84.34', 'Alta Vista'),
(00015, '194.221.84.38', 'Alta Vista'),
(00016, '194.221.84.39', 'Alta Vista'),
(00017, '194.221.84.40', 'Alta Vista'),
(00018, '194.221.84.41', 'Alta Vista'),
(00019, '194.51.33.72', 'Alta Vista'),
(00020, '204.123.13.36', 'Alta Vista'),
(00021, '204.123.13.65', 'Alta Vista'),
(00022, '204.123.13.66', 'Alta Vista'),
(00023, '204.123.2', 'Alta Vista'),
(00024, '204.123.28.10', 'Alta Vista'),
(00025, '204.123.28.11', 'Alta Vista'),
(00026, '204.123.28.20', 'Alta Vista'),
(00027, '204.123.28.21', 'Alta Vista'),
(00028, '204.123.28.27', 'Alta Vista'),
(00029, '204.123.28.30', 'Alta Vista'),
(00030, '204.123.28.31', 'Alta Vista'),
(00031, '204.123.28.32', 'Alta Vista'),
(00032, '204.123.28.33', 'Alta Vista'),
(00033, '204.123.9', 'Alta Vista'),
(00034, '204.152.190', 'Alta Vista'),
(00035, '204.152.191', 'Alta Vista'),
(00036, '205.229.83.18', 'Alta Vista'),
(00037, '208.185.243.148', 'Alta Vista'),
(00038, '208.221.32', 'Alta Vista'),
(00039, '208.221.35.200', 'Alta Vista'),
(00040, '208.221.35.201', 'Alta Vista'),
(00041, '208.221.35.202', 'Alta Vista'),
(00042, '208.221.35.203', 'Alta Vista'),
(00043, '208.221.35.204', 'Alta Vista'),
(00044, '208.221.35.205', 'Alta Vista'),
(00045, '208.221.35.206', 'Alta Vista'),
(00046, '208.221.35.207', 'Alta Vista'),
(00047, '209.247.40.246', 'Alta Vista'),
(00048, '209.73.160.1', 'Alta Vista'),
(00049, '209.73.160.250', 'Alta Vista'),
(00050, '209.73.160.254', 'Alta Vista'),
(00051, '209.73.162', 'Alta Vista'),
(00052, '209.73.164', 'Alta Vista'),
(00053, '209.73.174.250', 'Alta Vista'),
(00054, '209.73.174.251', 'Alta Vista'),
(00055, '209.73.180', 'Alta Vista'),
(00056, '212.187.213.171', 'Alta Vista'),
(00057, '212.187.213.172', 'Alta Vista'),
(00058, '212.187.213.173', 'Alta Vista'),
(00059, '212.187.213.174', 'Alta Vista'),
(00060, '212.187.213.175', 'Alta Vista'),
(00061, '212.187.226', 'Alta Vista'),
(00062, '212.187.226.42', 'Alta Vista'),
(00063, '212.187.226.83', 'Alta Vista'),
(00064, '212.187.226.84', 'Alta Vista'),
(00065, '212.187.226.85', 'Alta Vista'),
(00066, '212.187.226.87', 'Alta Vista'),
(00067, '212.187.226.88', 'Alta Vista'),
(00068, '212.187.226.93', 'Alta Vista'),
(00069, '212.187.226.99', 'Alta Vista'),
(00070, '212.187.227', 'Alta Vista'),
(00071, '216.39.48', 'Alta Vista'),
(00072, '216.39.50', 'Alta Vista'),
(00073, '216.39.51', 'Alta Vista'),
(00074, '216.198.200.119', 'Alta Vista'),
(00075, '64.152.75', 'Alta Vista'),
(00076, '66.17.148.128', 'Alta Vista'),
(00077, '66.17.148.129', 'Alta Vista'),
(00078, '66.17.148.130', 'Alta Vista'),
(00079, '66.17.148.131', 'Alta Vista'),
(00080, '66.17.148.132', 'Alta Vista'),
(00081, '66.17.148.133', 'Alta Vista'),
(00082, '66.17.148.134', 'Alta Vista'),
(00083, '66.17.148.135', 'Alta Vista'),
(00084, '66.17.148.136', 'Alta Vista'),
(00085, '66.17.148.137', 'Alta Vista'),
(00086, '66.17.148.138', 'Alta Vista'),
(00087, '66.17.148.139', 'Alta Vista'),
(00088, '66.17.148.140', 'Alta Vista'),
(00089, '66.17.148.141', 'Alta Vista'),
(00090, '66.17.148.142', 'Alta Vista'),
(00091, '66.17.148.143', 'Alta Vista'),
(00092, '66.17.148.144', 'Alta Vista'),
(00093, '66.17.148.145', 'Alta Vista'),
(00094, '66.17.148.146', 'Alta Vista'),
(00095, '66.17.148.147', 'Alta Vista'),
(00096, '66.17.148.148', 'Alta Vista'),
(00097, '66.17.148.149', 'Alta Vista'),
(00098, '66.17.148.150', 'Alta Vista'),
(00099, '66.17.148.151', 'Alta Vista'),
(00100, '66.17.148.152', 'Alta Vista'),
(00101, '66.17.148.153', 'Alta Vista'),
(00102, '66.17.148.154', 'Alta Vista'),
(00103, '66.17.148.155', 'Alta Vista'),
(00104, '66.17.148.156', 'Alta Vista'),
(00105, '66.17.148.157', 'Alta Vista'),
(00106, '66.17.148.158', 'Alta Vista'),
(00107, '66.17.148.159', 'Alta Vista'),
(00108, '66.17.148.160', 'Alta Vista'),
(00109, '66.17.148.161', 'Alta Vista'),
(00110, '66.17.148.162', 'Alta Vista'),
(00111, '66.17.148.163', 'Alta Vista'),
(00112, '66.17.148.164', 'Alta Vista'),
(00113, '66.17.148.165', 'Alta Vista'),
(00114, '66.17.148.166', 'Alta Vista'),
(00115, '66.17.148.167', 'Alta Vista'),
(00116, '66.17.148.168', 'Alta Vista'),
(00117, '66.17.148.169', 'Alta Vista'),
(00118, '66.17.148.170', 'Alta Vista'),
(00119, '66.17.148.171', 'Alta Vista'),
(00120, '66.17.148.172', 'Alta Vista'),
(00121, '66.17.148.173', 'Alta Vista'),
(00122, '66.17.148.174', 'Alta Vista'),
(00123, '66.17.148.175', 'Alta Vista'),
(00124, '66.17.148.176', 'Alta Vista'),
(00125, '66.17.148.177', 'Alta Vista'),
(00126, '66.17.148.178', 'Alta Vista'),
(00127, '66.17.148.179', 'Alta Vista'),
(00128, '66.17.148.180', 'Alta Vista'),
(00129, '66.17.148.181', 'Alta Vista'),
(00130, '66.17.148.182', 'Alta Vista'),
(00131, '66.17.148.183', 'Alta Vista'),
(00132, '66.17.148.184', 'Alta Vista'),
(00133, '66.17.148.185', 'Alta Vista'),
(00134, '66.17.148.186', 'Alta Vista'),
(00135, '66.17.148.187', 'Alta Vista'),
(00136, '66.17.148.188', 'Alta Vista'),
(00137, '66.17.148.189', 'Alta Vista'),
(00138, '66.17.148.190', 'Alta Vista'),
(00139, '66.17.148.191', 'Alta Vista'),
(00140, '140.239.126.13', 'Ask Jeeves / Teoma'),
(00141, '140.239.251.220', 'Ask Jeeves / Teoma'),
(00142, '140.239.251.221', 'Ask Jeeves / Teoma'),
(00143, '140.239.251.222', 'Ask Jeeves / Teoma'),
(00144, '140.239.251.223', 'Ask Jeeves / Teoma'),
(00145, '140.239.251.224', 'Ask Jeeves / Teoma'),
(00146, '140.239.251.230', 'Ask Jeeves / Teoma'),
(00147, '207.204.132.233', 'Ask Jeeves / Teoma'),
(00148, '207.204.132.234', 'Ask Jeeves / Teoma'),
(00149, '208.178.104.55', 'Ask Jeeves / Teoma'),
(00150, '209.67.252.197', 'Ask Jeeves / Teoma'),
(00151, '209.67.252.199', 'Ask Jeeves / Teoma'),
(00152, '209.67.252.211', 'Ask Jeeves / Teoma'),
(00153, '209.67.252.212', 'Ask Jeeves / Teoma'),
(00154, '209.67.252.213', 'Ask Jeeves / Teoma'),
(00155, '209.67.252.214', 'Ask Jeeves / Teoma'),
(00156, '209.67.252.215', 'Ask Jeeves / Teoma'),
(00157, '209.67.252.216', 'Ask Jeeves / Teoma'),
(00158, '211.13.230.249', 'Ask Jeeves / Teoma'),
(00159, '216.200.130.200', 'Ask Jeeves / Teoma'),
(00160, '216.200.130.201', 'Ask Jeeves / Teoma'),
(00161, '216.200.130.202', 'Ask Jeeves / Teoma'),
(00162, '216.200.130.203', 'Ask Jeeves / Teoma'),
(00163, '216.200.130.204', 'Ask Jeeves / Teoma'),
(00164, '216.200.130.205', 'Ask Jeeves / Teoma'),
(00165, '216.200.130.206', 'Ask Jeeves / Teoma'),
(00166, '216.200.130.207', 'Ask Jeeves / Teoma'),
(00167, '216.200.130.208', 'Ask Jeeves / Teoma'),
(00168, '216.200.130.209', 'Ask Jeeves / Teoma'),
(00169, '216.200.130.210', 'Ask Jeeves / Teoma'),
(00170, '216.200.130.242', 'Ask Jeeves / Teoma'),
(00171, '216.200.130.244', 'Ask Jeeves / Teoma'),
(00172, '216.200.130.245', 'Ask Jeeves / Teoma'),
(00173, '216.200.130.246', 'Ask Jeeves / Teoma'),
(00174, '216.200.130.248', 'Ask Jeeves / Teoma'),
(00175, '216.200.130.249', 'Ask Jeeves / Teoma'),
(00176, '216.200.130.26', 'Ask Jeeves / Teoma'),
(00177, '216.200.130.77', 'Ask Jeeves / Teoma'),
(00178, '216.200.130.78', 'Ask Jeeves / Teoma'),
(00179, '216.200.130.79', 'Ask Jeeves / Teoma'),
(00180, '216.200.130.85', 'Ask Jeeves / Teoma'),
(00181, '216.200.130.86', 'Ask Jeeves / Teoma'),
(00182, '216.200.130.87', 'Ask Jeeves / Teoma'),
(00183, '216.200.130.88', 'Ask Jeeves / Teoma'),
(00184, '216.200.130.89', 'Ask Jeeves / Teoma'),
(00185, '216.34.121.100', 'Ask Jeeves / Teoma'),
(00186, '216.34.121.18', 'Ask Jeeves / Teoma'),
(00187, '216.34.121.19', 'Ask Jeeves / Teoma'),
(00188, '216.34.121.31', 'Ask Jeeves / Teoma'),
(00189, '216.34.121.32', 'Ask Jeeves / Teoma'),
(00190, '216.34.121.33', 'Ask Jeeves / Teoma'),
(00191, '216.34.121.34', 'Ask Jeeves / Teoma'),
(00192, '216.34.121.67', 'Ask Jeeves / Teoma'),
(00193, '216.34.121.68', 'Ask Jeeves / Teoma'),
(00194, '63.236.92.143', 'Ask Jeeves / Teoma'),
(00195, '63.236.92.144', 'Ask Jeeves / Teoma'),
(00196, '63.236.92.145', 'Ask Jeeves / Teoma'),
(00197, '63.236.92.146', 'Ask Jeeves / Teoma'),
(00198, '63.236.92.147', 'Ask Jeeves / Teoma'),
(00199, '63.236.92.148', 'Ask Jeeves / Teoma'),
(00200, '63.236.92.149', 'Ask Jeeves / Teoma'),
(00201, '63.236.92.150', 'Ask Jeeves / Teoma'),
(00202, '63.236.92.151', 'Ask Jeeves / Teoma'),
(00203, '63.236.92.152', 'Ask Jeeves / Teoma'),
(00204, '63.236.92.153', 'Ask Jeeves / Teoma'),
(00205, '64.55.148.37', 'Ask Jeeves / Teoma'),
(00206, '64.55.148.38', 'Ask Jeeves / Teoma'),
(00207, '64.55.148.39', 'Ask Jeeves / Teoma'),
(00208, '64.55.148.43', 'Ask Jeeves / Teoma'),
(00209, '64.55.148.44', 'Ask Jeeves / Teoma'),
(00210, '64.55.148.45', 'Ask Jeeves / Teoma'),
(00211, '64.55.148.50', 'Ask Jeeves / Teoma'),
(00212, '64.55.148.51', 'Ask Jeeves / Teoma'),
(00213, '64.55.148.52', 'Ask Jeeves / Teoma'),
(00214, '64.55.148.53', 'Ask Jeeves / Teoma'),
(00215, '64.55.148.54', 'Ask Jeeves / Teoma'),
(00216, '65.192.195.0', 'Ask Jeeves / Teoma'),
(00217, '65.192.195.1', 'Ask Jeeves / Teoma'),
(00218, '65.192.195.10', 'Ask Jeeves / Teoma'),
(00219, '65.192.195.11', 'Ask Jeeves / Teoma'),
(00220, '65.192.195.12', 'Ask Jeeves / Teoma'),
(00221, '65.192.195.13', 'Ask Jeeves / Teoma'),
(00222, '65.192.195.14', 'Ask Jeeves / Teoma'),
(00223, '65.192.195.15', 'Ask Jeeves / Teoma'),
(00224, '65.192.195.16', 'Ask Jeeves / Teoma'),
(00225, '65.192.195.17', 'Ask Jeeves / Teoma'),
(00226, '65.192.195.18', 'Ask Jeeves / Teoma'),
(00227, '65.192.195.19', 'Ask Jeeves / Teoma'),
(00228, '65.192.195.2', 'Ask Jeeves / Teoma'),
(00229, '65.192.195.20', 'Ask Jeeves / Teoma'),
(00230, '65.192.195.21', 'Ask Jeeves / Teoma'),
(00231, '65.192.195.22', 'Ask Jeeves / Teoma'),
(00232, '65.192.195.23', 'Ask Jeeves / Teoma'),
(00233, '65.192.195.24', 'Ask Jeeves / Teoma'),
(00234, '65.192.195.25', 'Ask Jeeves / Teoma'),
(00235, '65.192.195.26', 'Ask Jeeves / Teoma'),
(00236, '65.192.195.27', 'Ask Jeeves / Teoma'),
(00237, '65.192.195.28', 'Ask Jeeves / Teoma'),
(00238, '65.192.195.29', 'Ask Jeeves / Teoma'),
(00239, '65.192.195.3', 'Ask Jeeves / Teoma'),
(00240, '65.192.195.30', 'Ask Jeeves / Teoma'),
(00241, '65.192.195.31', 'Ask Jeeves / Teoma'),
(00242, '65.192.195.4', 'Ask Jeeves / Teoma'),
(00243, '65.192.195.5', 'Ask Jeeves / Teoma'),
(00244, '65.192.195.6', 'Ask Jeeves / Teoma'),
(00245, '65.192.195.7', 'Ask Jeeves / Teoma'),
(00246, '65.192.195.8', 'Ask Jeeves / Teoma'),
(00247, '65.192.195.9', 'Ask Jeeves / Teoma'),
(00248, '65.214.32.173', 'Ask Jeeves / Teoma'),
(00249, '65.214.36.100', 'Ask Jeeves / Teoma'),
(00250, '65.214.36.101', 'Ask Jeeves / Teoma'),
(00251, '65.214.36.102', 'Ask Jeeves / Teoma'),
(00252, '65.214.36.103', 'Ask Jeeves / Teoma'),
(00253, '65.214.36.104', 'Ask Jeeves / Teoma'),
(00254, '65.214.36.105', 'Ask Jeeves / Teoma'),
(00255, '65.214.36.106', 'Ask Jeeves / Teoma'),
(00256, '65.214.36.107', 'Ask Jeeves / Teoma'),
(00257, '65.214.36.108', 'Ask Jeeves / Teoma'),
(00258, '65.214.36.109', 'Ask Jeeves / Teoma'),
(00259, '65.214.36.110', 'Ask Jeeves / Teoma'),
(00260, '65.214.36.111', 'Ask Jeeves / Teoma'),
(00261, '65.214.36.112', 'Ask Jeeves / Teoma'),
(00262, '65.214.36.113', 'Ask Jeeves / Teoma'),
(00263, '65.214.36.114', 'Ask Jeeves / Teoma'),
(00264, '65.214.36.115', 'Ask Jeeves / Teoma'),
(00265, '65.214.36.116', 'Ask Jeeves / Teoma'),
(00266, '65.214.36.117', 'Ask Jeeves / Teoma'),
(00267, '65.214.36.118', 'Ask Jeeves / Teoma'),
(00268, '65.214.36.119', 'Ask Jeeves / Teoma'),
(00269, '65.214.36.12', 'Ask Jeeves / Teoma'),
(00270, '65.214.36.120', 'Ask Jeeves / Teoma'),
(00271, '65.214.36.121', 'Ask Jeeves / Teoma'),
(00272, '65.214.36.122', 'Ask Jeeves / Teoma'),
(00273, '65.214.36.123', 'Ask Jeeves / Teoma'),
(00274, '65.214.36.125', 'Ask Jeeves / Teoma'),
(00275, '65.214.36.126', 'Ask Jeeves / Teoma'),
(00276, '65.214.36.127', 'Ask Jeeves / Teoma'),
(00277, '65.214.36.128', 'Ask Jeeves / Teoma'),
(00278, '65.214.36.129', 'Ask Jeeves / Teoma'),
(00279, '65.214.36.140', 'Ask Jeeves / Teoma'),
(00280, '65.214.36.141', 'Ask Jeeves / Teoma'),
(00281, '65.214.36.142', 'Ask Jeeves / Teoma'),
(00282, '65.214.36.143', 'Ask Jeeves / Teoma'),
(00283, '65.214.36.144', 'Ask Jeeves / Teoma'),
(00284, '65.214.36.145', 'Ask Jeeves / Teoma'),
(00285, '65.214.36.146', 'Ask Jeeves / Teoma'),
(00286, '65.214.36.147', 'Ask Jeeves / Teoma'),
(00287, '65.214.36.148', 'Ask Jeeves / Teoma'),
(00288, '65.214.36.149', 'Ask Jeeves / Teoma'),
(00289, '65.214.36.150', 'Ask Jeeves / Teoma'),
(00290, '65.214.36.151', 'Ask Jeeves / Teoma'),
(00291, '65.214.36.152', 'Ask Jeeves / Teoma'),
(00292, '65.214.36.153', 'Ask Jeeves / Teoma'),
(00293, '65.214.36.154', 'Ask Jeeves / Teoma'),
(00294, '65.214.36.155', 'Ask Jeeves / Teoma'),
(00295, '65.214.36.156', 'Ask Jeeves / Teoma'),
(00296, '65.214.36.157', 'Ask Jeeves / Teoma'),
(00297, '65.214.36.158', 'Ask Jeeves / Teoma'),
(00298, '65.214.36.159', 'Ask Jeeves / Teoma'),
(00299, '65.214.36.160', 'Ask Jeeves / Teoma'),
(00300, '65.214.36.161', 'Ask Jeeves / Teoma'),
(00301, '65.214.36.162', 'Ask Jeeves / Teoma'),
(00302, '65.214.36.163', 'Ask Jeeves / Teoma'),
(00303, '65.214.36.164', 'Ask Jeeves / Teoma'),
(00304, '65.214.36.165', 'Ask Jeeves / Teoma'),
(00305, '65.214.36.166', 'Ask Jeeves / Teoma'),
(00306, '65.214.36.167', 'Ask Jeeves / Teoma'),
(00307, '65.214.36.168', 'Ask Jeeves / Teoma'),
(00308, '65.214.36.169', 'Ask Jeeves / Teoma'),
(00309, '65.214.36.175', 'Ask Jeeves / Teoma'),
(00310, '65.214.36.176', 'Ask Jeeves / Teoma'),
(00311, '65.214.36.177', 'Ask Jeeves / Teoma'),
(00312, '65.214.36.178', 'Ask Jeeves / Teoma'),
(00313, '65.214.36.179', 'Ask Jeeves / Teoma'),
(00314, '65.214.36.185', 'Ask Jeeves / Teoma'),
(00315, '65.214.36.196', 'Ask Jeeves / Teoma'),
(00316, '65.214.36.197', 'Ask Jeeves / Teoma'),
(00317, '65.214.36.198', 'Ask Jeeves / Teoma'),
(00318, '65.214.36.199', 'Ask Jeeves / Teoma'),
(00319, '65.214.36.20', 'Ask Jeeves / Teoma'),
(00320, '65.214.36.201', 'Ask Jeeves / Teoma'),
(00321, '65.214.36.203', 'Ask Jeeves / Teoma'),
(00322, '65.214.36.205', 'Ask Jeeves / Teoma'),
(00323, '65.214.36.206', 'Ask Jeeves / Teoma'),
(00324, '65.214.36.207', 'Ask Jeeves / Teoma'),
(00325, '65.214.36.21', 'Ask Jeeves / Teoma'),
(00326, '65.214.36.210', 'Ask Jeeves / Teoma'),
(00327, '65.214.36.211', 'Ask Jeeves / Teoma'),
(00328, '65.214.36.212', 'Ask Jeeves / Teoma'),
(00329, '65.214.36.215', 'Ask Jeeves / Teoma'),
(00330, '65.214.36.216', 'Ask Jeeves / Teoma'),
(00331, '65.214.36.217', 'Ask Jeeves / Teoma'),
(00332, '65.214.36.218', 'Ask Jeeves / Teoma'),
(00333, '65.214.36.219', 'Ask Jeeves / Teoma'),
(00334, '65.214.36.22', 'Ask Jeeves / Teoma'),
(00335, '65.214.36.221', 'Ask Jeeves / Teoma'),
(00336, '65.214.36.222', 'Ask Jeeves / Teoma'),
(00337, '65.214.36.23', 'Ask Jeeves / Teoma'),
(00338, '65.214.36.233', 'Ask Jeeves / Teoma'),
(00339, '65.214.36.24', 'Ask Jeeves / Teoma'),
(00340, '65.214.36.240', 'Ask Jeeves / Teoma'),
(00341, '65.214.36.241', 'Ask Jeeves / Teoma'),
(00342, '65.214.36.242', 'Ask Jeeves / Teoma'),
(00343, '65.214.36.243', 'Ask Jeeves / Teoma'),
(00344, '65.214.36.244', 'Ask Jeeves / Teoma'),
(00345, '65.214.36.245', 'Ask Jeeves / Teoma'),
(00346, '65.214.36.246', 'Ask Jeeves / Teoma'),
(00347, '65.214.36.248', 'Ask Jeeves / Teoma'),
(00348, '65.214.36.249', 'Ask Jeeves / Teoma'),
(00349, '65.214.36.25', 'Ask Jeeves / Teoma'),
(00350, '65.214.36.250', 'Ask Jeeves / Teoma'),
(00351, '65.214.36.251', 'Ask Jeeves / Teoma'),
(00352, '65.214.36.252', 'Ask Jeeves / Teoma'),
(00353, '65.214.36.26', 'Ask Jeeves / Teoma'),
(00354, '65.214.36.27', 'Ask Jeeves / Teoma'),
(00355, '65.214.36.28', 'Ask Jeeves / Teoma'),
(00356, '65.214.36.29', 'Ask Jeeves / Teoma'),
(00357, '65.214.36.30', 'Ask Jeeves / Teoma'),
(00358, '65.214.36.31', 'Ask Jeeves / Teoma'),
(00359, '65.214.36.32', 'Ask Jeeves / Teoma'),
(00360, '65.214.36.33', 'Ask Jeeves / Teoma'),
(00361, '65.214.36.34', 'Ask Jeeves / Teoma'),
(00362, '65.214.36.42', 'Ask Jeeves / Teoma'),
(00363, '65.214.36.43', 'Ask Jeeves / Teoma'),
(00364, '65.214.36.44', 'Ask Jeeves / Teoma'),
(00365, '65.214.36.45', 'Ask Jeeves / Teoma'),
(00366, '65.214.36.46', 'Ask Jeeves / Teoma'),
(00367, '65.214.36.50', 'Ask Jeeves / Teoma'),
(00368, '65.214.36.51', 'Ask Jeeves / Teoma'),
(00369, '65.214.36.52', 'Ask Jeeves / Teoma'),
(00370, '65.214.36.53', 'Ask Jeeves / Teoma'),
(00371, '65.214.36.54', 'Ask Jeeves / Teoma'),
(00372, '65.214.36.55', 'Ask Jeeves / Teoma'),
(00373, '65.214.36.58', 'Ask Jeeves / Teoma'),
(00374, '65.214.36.59', 'Ask Jeeves / Teoma'),
(00375, '65.214.36.7', 'Ask Jeeves / Teoma'),
(00376, '65.214.36.8', 'Ask Jeeves / Teoma'),
(00377, '65.214.36.80', 'Ask Jeeves / Teoma'),
(00378, '65.214.36.81', 'Ask Jeeves / Teoma'),
(00379, '65.214.36.82', 'Ask Jeeves / Teoma'),
(00380, '65.214.36.83', 'Ask Jeeves / Teoma'),
(00381, '65.214.36.84', 'Ask Jeeves / Teoma'),
(00382, '65.214.36.85', 'Ask Jeeves / Teoma'),
(00383, '65.214.36.86', 'Ask Jeeves / Teoma'),
(00384, '65.214.36.87', 'Ask Jeeves / Teoma'),
(00385, '65.214.36.88', 'Ask Jeeves / Teoma'),
(00386, '65.214.36.89', 'Ask Jeeves / Teoma'),
(00387, '65.214.36.9', 'Ask Jeeves / Teoma'),
(00388, '65.214.38.10', 'Ask Jeeves / Teoma'),
(00389, '146.101.142.222', 'FAST'),
(00390, '146.101.142.223', 'FAST'),
(00391, '146.101.142.224', 'FAST'),
(00392, '146.101.142.225', 'FAST'),
(00393, '146.101.142.226', 'FAST'),
(00394, '146.101.142.227', 'FAST'),
(00395, '146.101.142.228', 'FAST'),
(00396, '146.101.142.229', 'FAST'),
(00397, '146.101.142.230', 'FAST'),
(00398, '146.101.142.231', 'FAST'),
(00399, '146.101.142.232', 'FAST'),
(00400, '146.101.142.233', 'FAST'),
(00401, '146.101.142.234', 'FAST'),
(00402, '146.101.142.235', 'FAST'),
(00403, '146.101.142.236', 'FAST'),
(00404, '146.101.142.237', 'FAST'),
(00405, '146.101.142.238', 'FAST'),
(00406, '146.101.142.239', 'FAST'),
(00407, '146.101.142.240', 'FAST'),
(00408, '146.101.142.241', 'FAST'),
(00409, '146.101.142.242', 'FAST'),
(00410, '146.101.142.243', 'FAST'),
(00411, '146.101.142.244', 'FAST'),
(00412, '146.101.142.245', 'FAST'),
(00413, '146.101.142.246', 'FAST'),
(00414, '146.101.142.247', 'FAST'),
(00415, '146.101.142.248', 'FAST'),
(00416, '146.101.142.249', 'FAST'),
(00417, '146.101.142.250', 'FAST'),
(00418, '146.101.142.251', 'FAST'),
(00419, '146.101.142.252', 'FAST'),
(00420, '146.101.142.253', 'FAST'),
(00421, '200.221.10.240', 'FAST'),
(00422, '207.201.123.246', 'FAST'),
(00423, '208.186.202.28', 'FAST'),
(00424, '209.202.148', 'FAST'),
(00425, '209.67.247', 'FAST'),
(00426, '213.188.8.2', 'FAST'),
(00427, '213.188.8.4', 'FAST'),
(00428, '213.188.8.76', 'FAST'),
(00429, '216.35.112.141', 'FAST'),
(00430, '216.35.112.142', 'FAST'),
(00431, '216.35.112.143', 'FAST'),
(00432, '216.35.112.50', 'FAST'),
(00433, '216.35.112.51', 'FAST'),
(00434, '62.41.154', 'FAST'),
(00435, '64.41.254.23', 'FAST'),
(00436, '64.41.254.24', 'FAST'),
(00437, '64.41.254.25', 'FAST'),
(00438, '66.77.73', 'FAST'),
(00439, '66.77.74', 'FAST'),
(00440, '164.71.1.146', 'Google'),
(00441, '164.71.1.147', 'Google'),
(00442, '164.71.1.148', 'Google'),
(00443, '164.71.1.149', 'Google'),
(00444, '192.51.44.10', 'Google'),
(00445, '192.51.44.13', 'Google'),
(00446, '192.51.44.18', 'Google'),
(00447, '192.51.44.19', 'Google'),
(00448, '209.185.108', 'Google'),
(00449, '209.185.253', 'Google'),
(00450, '210.131.75.80', 'Google'),
(00451, '210.131.75.81', 'Google'),
(00452, '210.131.75.82', 'Google'),
(00453, '210.131.75.83', 'Google'),
(00454, '210.131.75.84', 'Google'),
(00455, '216.33.229.163', 'Google'),
(00456, '216.239.33.96', 'Google'),
(00457, '216.239.33.97', 'Google'),
(00458, '216.239.33.98', 'Google'),
(00459, '216.239.33.99', 'Google'),
(00460, '216.239.37.98', 'Google'),
(00461, '216.239.37.99', 'Google'),
(00462, '216.239.39.98', 'Google'),
(00463, '216.239.39.99', 'Google'),
(00464, '216.239.41.96', 'Google'),
(00465, '216.239.41.97', 'Google'),
(00466, '216.239.41.98', 'Google'),
(00467, '216.239.41.99', 'Google'),
(00468, '216.239.45.4', 'Google'),
(00469, '216.239.46', 'Google'),
(00470, '216.239.51.96', 'Google'),
(00471, '216.239.51.97', 'Google'),
(00472, '216.239.51.98', 'Google'),
(00473, '216.239.51.99', 'Google'),
(00474, '216.239.53.98', 'Google'),
(00475, '216.239.53.99', 'Google'),
(00476, '216.239.57.96', 'Google'),
(00477, '216.239.57.97', 'Google'),
(00478, '216.239.57.98', 'Google'),
(00479, '216.239.57.99', 'Google'),
(00480, '216.239.59.98', 'Google'),
(00481, '216.239.59.99', 'Google'),
(00482, '62.27.59.227', 'Google'),
(00483, '63.83.186.67', 'Google'),
(00484, '64.208.32.11', 'Google'),
(00485, '64.208.32.12', 'Google'),
(00486, '64.208.32.4', 'Google'),
(00487, '64.208.33.33', 'Google'),
(00488, '64.208.36', 'Google'),
(00489, '64.208.37', 'Google'),
(00490, '64.68.80', 'Google'),
(00491, '64.68.81', 'Google'),
(00492, '64.68.82', 'Google'),
(00493, '64.68.83', 'Google'),
(00494, '64.68.84', 'Google'),
(00495, '64.68.85', 'Google'),
(00496, '64.68.86', 'Google'),
(00497, '64.68.87', 'Google'),
(00498, '64.68.88', 'Google'),
(00499, '64.68.90.1', 'Google'),
(00500, '64.68.90.10', 'Google'),
(00501, '64.68.90.11', 'Google'),
(00502, '64.68.90.12', 'Google'),
(00503, '64.68.90.129', 'Google'),
(00504, '64.68.90.13', 'Google'),
(00505, '64.68.90.130', 'Google'),
(00506, '64.68.90.131', 'Google'),
(00507, '64.68.90.132', 'Google'),
(00508, '64.68.90.133', 'Google'),
(00509, '64.68.90.134', 'Google'),
(00510, '64.68.90.135', 'Google'),
(00511, '64.68.90.136', 'Google'),
(00512, '64.68.90.137', 'Google'),
(00513, '64.68.90.138', 'Google'),
(00514, '64.68.90.139', 'Google'),
(00515, '64.68.90.14', 'Google'),
(00516, '64.68.90.140', 'Google'),
(00517, '64.68.90.141', 'Google'),
(00518, '64.68.90.142', 'Google'),
(00519, '64.68.90.143', 'Google'),
(00520, '64.68.90.144', 'Google'),
(00521, '64.68.90.145', 'Google'),
(00522, '64.68.90.146', 'Google'),
(00523, '64.68.90.147', 'Google'),
(00524, '64.68.90.148', 'Google'),
(00525, '64.68.90.149', 'Google'),
(00526, '64.68.90.15', 'Google'),
(00527, '64.68.90.150', 'Google'),
(00528, '64.68.90.151', 'Google'),
(00529, '64.68.90.152', 'Google'),
(00530, '64.68.90.153', 'Google'),
(00531, '64.68.90.154', 'Google'),
(00532, '64.68.90.155', 'Google'),
(00533, '64.68.90.156', 'Google'),
(00534, '64.68.90.157', 'Google'),
(00535, '64.68.90.158', 'Google'),
(00536, '64.68.90.159', 'Google'),
(00537, '64.68.90.16', 'Google'),
(00538, '64.68.90.160', 'Google'),
(00539, '64.68.90.161', 'Google'),
(00540, '64.68.90.162', 'Google'),
(00541, '64.68.90.163', 'Google'),
(00542, '64.68.90.164', 'Google'),
(00543, '64.68.90.165', 'Google'),
(00544, '64.68.90.166', 'Google'),
(00545, '64.68.90.167', 'Google'),
(00546, '64.68.90.168', 'Google'),
(00547, '64.68.90.169', 'Google'),
(00548, '64.68.90.17', 'Google'),
(00549, '64.68.90.170', 'Google'),
(00550, '64.68.90.171', 'Google'),
(00551, '64.68.90.172', 'Google'),
(00552, '64.68.90.173', 'Google'),
(00553, '64.68.90.174', 'Google'),
(00554, '64.68.90.175', 'Google'),
(00555, '64.68.90.176', 'Google'),
(00556, '64.68.90.177', 'Google'),
(00557, '64.68.90.178', 'Google'),
(00558, '64.68.90.179', 'Google'),
(00559, '64.68.90.18', 'Google'),
(00560, '64.68.90.180', 'Google'),
(00561, '64.68.90.181', 'Google'),
(00562, '64.68.90.182', 'Google'),
(00563, '64.68.90.183', 'Google'),
(00564, '64.68.90.184', 'Google'),
(00565, '64.68.90.185', 'Google'),
(00566, '64.68.90.186', 'Google'),
(00567, '64.68.90.187', 'Google'),
(00568, '64.68.90.188', 'Google'),
(00569, '64.68.90.189', 'Google'),
(00570, '64.68.90.19', 'Google'),
(00571, '64.68.90.190', 'Google'),
(00572, '64.68.90.191', 'Google'),
(00573, '64.68.90.192', 'Google'),
(00574, '64.68.90.193', 'Google'),
(00575, '64.68.90.194', 'Google'),
(00576, '64.68.90.195', 'Google'),
(00577, '64.68.90.196', 'Google'),
(00578, '64.68.90.197', 'Google'),
(00579, '64.68.90.198', 'Google'),
(00580, '64.68.90.199', 'Google'),
(00581, '64.68.90.2', 'Google'),
(00582, '64.68.90.20', 'Google'),
(00583, '64.68.90.200', 'Google'),
(00584, '64.68.90.201', 'Google'),
(00585, '64.68.90.202', 'Google'),
(00586, '64.68.90.203', 'Google'),
(00587, '64.68.90.204', 'Google'),
(00588, '64.68.90.205', 'Google'),
(00589, '64.68.90.206', 'Google'),
(00590, '64.68.90.207', 'Google'),
(00591, '64.68.90.208', 'Google'),
(00592, '64.68.90.21', 'Google'),
(00593, '64.68.90.22', 'Google'),
(00594, '64.68.90.23', 'Google'),
(00595, '64.68.90.24', 'Google'),
(00596, '64.68.90.25', 'Google'),
(00597, '64.68.90.26', 'Google'),
(00598, '64.68.90.27', 'Google'),
(00599, '64.68.90.28', 'Google'),
(00600, '64.68.90.29', 'Google'),
(00601, '64.68.90.3', 'Google'),
(00602, '64.68.90.30', 'Google'),
(00603, '64.68.90.31', 'Google'),
(00604, '64.68.90.32', 'Google'),
(00605, '64.68.90.33', 'Google'),
(00606, '64.68.90.34', 'Google'),
(00607, '64.68.90.35', 'Google'),
(00608, '64.68.90.36', 'Google'),
(00609, '64.68.90.37', 'Google'),
(00610, '64.68.90.38', 'Google'),
(00611, '64.68.90.39', 'Google'),
(00612, '64.68.90.4', 'Google'),
(00613, '64.68.90.40', 'Google'),
(00614, '64.68.90.41', 'Google'),
(00615, '64.68.90.42', 'Google'),
(00616, '64.68.90.43', 'Google'),
(00617, '64.68.90.44', 'Google'),
(00618, '64.68.90.45', 'Google'),
(00619, '64.68.90.46', 'Google'),
(00620, '64.68.90.47', 'Google'),
(00621, '64.68.90.48', 'Google'),
(00622, '64.68.90.49', 'Google'),
(00623, '64.68.90.5', 'Google'),
(00624, '64.68.90.50', 'Google'),
(00625, '64.68.90.51', 'Google'),
(00626, '64.68.90.52', 'Google'),
(00627, '64.68.90.53', 'Google'),
(00628, '64.68.90.54', 'Google'),
(00629, '64.68.90.55', 'Google'),
(00630, '64.68.90.56', 'Google'),
(00631, '64.68.90.57', 'Google'),
(00632, '64.68.90.58', 'Google'),
(00633, '64.68.90.59', 'Google'),
(00634, '64.68.90.6', 'Google'),
(00635, '64.68.90.60', 'Google'),
(00636, '64.68.90.61', 'Google'),
(00637, '64.68.90.62', 'Google'),
(00638, '64.68.90.63', 'Google'),
(00639, '64.68.90.64', 'Google'),
(00640, '64.68.90.65', 'Google'),
(00641, '64.68.90.66', 'Google'),
(00642, '64.68.90.67', 'Google'),
(00643, '64.68.90.68', 'Google'),
(00644, '64.68.90.69', 'Google'),
(00645, '64.68.90.7', 'Google'),
(00646, '64.68.90.70', 'Google'),
(00647, '64.68.90.71', 'Google'),
(00648, '64.68.90.72', 'Google'),
(00649, '64.68.90.73', 'Google'),
(00650, '64.68.90.74', 'Google'),
(00651, '64.68.90.75', 'Google'),
(00652, '64.68.90.76', 'Google'),
(00653, '64.68.90.77', 'Google'),
(00654, '64.68.90.78', 'Google'),
(00655, '64.68.90.79', 'Google'),
(00656, '64.68.90.8', 'Google'),
(00657, '64.68.90.80', 'Google'),
(00658, '64.68.90.9', 'Google'),
(00659, '64.68.92', 'Google'),
(00660, '141.185.209', 'Inktomi'),
(00661, '169.207.238', 'Inktomi'),
(00662, '199.177.18.9', 'Inktomi'),
(00663, '202.212.5.30', 'Inktomi'),
(00664, '202.212.5.32', 'Inktomi'),
(00665, '202.212.5.33', 'Inktomi'),
(00666, '202.212.5.34', 'Inktomi'),
(00667, '202.212.5.35', 'Inktomi'),
(00668, '202.212.5.36', 'Inktomi'),
(00669, '202.212.5.37', 'Inktomi'),
(00670, '202.212.5.38', 'Inktomi'),
(00671, '202.212.5.39', 'Inktomi'),
(00672, '202.212.5.47', 'Inktomi'),
(00673, '202.212.5.48', 'Inktomi'),
(00674, '203.255.234.102', 'Inktomi'),
(00675, '203.255.234.103', 'Inktomi'),
(00676, '203.255.234.105', 'Inktomi'),
(00677, '203.255.234.106', 'Inktomi'),
(00678, '209.1.12', 'Inktomi'),
(00679, '209.1.13.101', 'Inktomi'),
(00680, '209.1.13.231', 'Inktomi'),
(00681, '209.1.13.232', 'Inktomi'),
(00682, '209.1.32.122', 'Inktomi'),
(00683, '209.1.38', 'Inktomi'),
(00684, '209.131.40', 'Inktomi'),
(00685, '209.131.48', 'Inktomi'),
(00686, '209.131.49.37', 'Inktomi'),
(00687, '209.131.50.153', 'Inktomi'),
(00688, '209.131.51.166', 'Inktomi'),
(00689, '209.131.60.19', 'Inktomi'),
(00690, '209.131.60.169', 'Inktomi'),
(00691, '209.131.60.170', 'Inktomi'),
(00692, '209.131.60.171', 'Inktomi'),
(00693, '209.131.62.107', 'Inktomi'),
(00694, '209.131.62.108', 'Inktomi'),
(00695, '209.131.62.109', 'Inktomi'),
(00696, '209.131.62.214', 'Inktomi'),
(00697, '209.185.122', 'Inktomi'),
(00698, '209.185.141', 'Inktomi'),
(00699, '209.185.143', 'Inktomi'),
(00700, '209.185.143.96', 'Inktomi'),
(00701, '209.185.143.98', 'Inktomi'),
(00702, '209.67.206.126', 'Inktomi'),
(00703, '209.67.206.127', 'Inktomi'),
(00704, '209.67.206.133', 'Inktomi'),
(00705, '211.169.241.21', 'Inktomi'),
(00706, '213.216.143.37', 'Inktomi'),
(00707, '213.216.143.38', 'Inktomi'),
(00708, '213.216.143.39', 'Inktomi'),
(00709, '216.155.200', 'Inktomi'),
(00710, '216.155.204.40', 'Inktomi'),
(00711, '216.198.200.123', 'Inktomi'),
(00712, '216.239.193.71', 'Inktomi'),
(00713, '216.239.193.72', 'Inktomi'),
(00714, '216.239.193.73', 'Inktomi'),
(00715, '216.239.193.74', 'Inktomi'),
(00716, '216.239.193.75', 'Inktomi'),
(00717, '216.239.193.76', 'Inktomi'),
(00718, '216.239.193.77', 'Inktomi'),
(00719, '216.239.193.78', 'Inktomi'),
(00720, '216.239.193.79', 'Inktomi'),
(00721, '216.239.193.80', 'Inktomi'),
(00722, '216.239.193.81', 'Inktomi'),
(00723, '216.239.193.82', 'Inktomi'),
(00724, '216.239.193.83', 'Inktomi'),
(00725, '216.239.193.84', 'Inktomi'),
(00726, '216.239.193.85', 'Inktomi'),
(00727, '216.239.193.86', 'Inktomi'),
(00728, '216.32.237.1', 'Inktomi'),
(00729, '216.32.237.10', 'Inktomi'),
(00730, '216.32.237.11', 'Inktomi'),
(00731, '216.32.237.12', 'Inktomi'),
(00732, '216.32.237.13', 'Inktomi'),
(00733, '216.32.237.14', 'Inktomi'),
(00734, '216.32.237.15', 'Inktomi'),
(00735, '216.32.237.16', 'Inktomi'),
(00736, '216.32.237.17', 'Inktomi'),
(00737, '216.32.237.18', 'Inktomi'),
(00738, '216.32.237.19', 'Inktomi'),
(00739, '216.32.237.20', 'Inktomi'),
(00740, '216.32.237.21', 'Inktomi'),
(00741, '216.32.237.22', 'Inktomi'),
(00742, '216.32.237.23', 'Inktomi'),
(00743, '216.32.237.24', 'Inktomi'),
(00744, '216.32.237.25', 'Inktomi'),
(00745, '216.32.237.26', 'Inktomi'),
(00746, '216.32.237.27', 'Inktomi'),
(00747, '216.32.237.28', 'Inktomi'),
(00748, '216.32.237.29', 'Inktomi'),
(00749, '216.32.237.30', 'Inktomi'),
(00750, '216.32.237.7', 'Inktomi'),
(00751, '216.32.237.8', 'Inktomi'),
(00752, '216.32.237.9', 'Inktomi'),
(00753, '62.172.199.20', 'Inktomi'),
(00754, '62.172.199.21', 'Inktomi'),
(00755, '62.172.199.22', 'Inktomi'),
(00756, '62.172.199.23', 'Inktomi'),
(00757, '62.172.199.24', 'Inktomi'),
(00758, '62.27.59.245', 'Inktomi'),
(00759, '64.75.36.42', 'Inktomi'),
(00760, '64.75.36.43', 'Inktomi'),
(00761, '64.75.36.44', 'Inktomi'),
(00762, '64.75.36.45', 'Inktomi'),
(00763, '64.75.36.47', 'Inktomi'),
(00764, '64.75.36.77', 'Inktomi'),
(00765, '64.75.36.79', 'Inktomi'),
(00766, '64.75.36.80', 'Inktomi'),
(00767, '66.196.65', 'Inktomi'),
(00768, '66.196.72', 'Inktomi'),
(00769, '66.196.73', 'Inktomi'),
(00770, '66.196.74', 'Inktomi'),
(00771, '66.196.78', 'Inktomi'),
(00772, '66.196.81.10', 'Inktomi'),
(00773, '66.196.81.102', 'Inktomi'),
(00774, '66.196.81.103', 'Inktomi'),
(00775, '66.196.81.104', 'Inktomi'),
(00776, '66.196.81.105', 'Inktomi'),
(00777, '66.196.81.106', 'Inktomi'),
(00778, '66.196.81.107', 'Inktomi'),
(00779, '66.196.81.108', 'Inktomi'),
(00780, '66.196.81.109', 'Inktomi'),
(00781, '66.196.81.11', 'Inktomi'),
(00782, '66.196.81.110', 'Inktomi'),
(00783, '66.196.81.111', 'Inktomi'),
(00784, '66.196.81.112', 'Inktomi'),
(00785, '66.196.81.113', 'Inktomi'),
(00786, '66.196.81.114', 'Inktomi'),
(00787, '66.196.81.115', 'Inktomi'),
(00788, '66.196.81.116', 'Inktomi'),
(00789, '66.196.81.117', 'Inktomi'),
(00790, '66.196.81.118', 'Inktomi'),
(00791, '66.196.81.119', 'Inktomi'),
(00792, '66.196.81.12', 'Inktomi'),
(00793, '66.196.81.120', 'Inktomi'),
(00794, '66.196.81.121', 'Inktomi'),
(00795, '66.196.81.122', 'Inktomi'),
(00796, '66.196.81.123', 'Inktomi'),
(00797, '66.196.81.124', 'Inktomi'),
(00798, '66.196.81.125', 'Inktomi'),
(00799, '66.196.81.126', 'Inktomi'),
(00800, '66.196.81.127', 'Inktomi'),
(00801, '66.196.81.128', 'Inktomi'),
(00802, '66.196.81.129', 'Inktomi'),
(00803, '66.196.81.13', 'Inktomi'),
(00804, '66.196.81.130', 'Inktomi'),
(00805, '66.196.81.131', 'Inktomi'),
(00806, '66.196.81.132', 'Inktomi'),
(00807, '66.196.81.133', 'Inktomi'),
(00808, '66.196.81.134', 'Inktomi'),
(00809, '66.196.81.135', 'Inktomi'),
(00810, '66.196.81.136', 'Inktomi'),
(00811, '66.196.81.137', 'Inktomi'),
(00812, '66.196.81.138', 'Inktomi'),
(00813, '66.196.81.139', 'Inktomi'),
(00814, '66.196.81.14', 'Inktomi'),
(00815, '66.196.81.140', 'Inktomi'),
(00816, '66.196.81.141', 'Inktomi'),
(00817, '66.196.81.142', 'Inktomi'),
(00818, '66.196.81.143', 'Inktomi'),
(00819, '66.196.81.144', 'Inktomi'),
(00820, '66.196.81.145', 'Inktomi'),
(00821, '66.196.81.146', 'Inktomi'),
(00822, '66.196.81.147', 'Inktomi'),
(00823, '66.196.81.148', 'Inktomi'),
(00824, '66.196.81.149', 'Inktomi'),
(00825, '66.196.81.15', 'Inktomi'),
(00826, '66.196.81.150', 'Inktomi'),
(00827, '66.196.81.151', 'Inktomi'),
(00828, '66.196.81.152', 'Inktomi'),
(00829, '66.196.81.153', 'Inktomi'),
(00830, '66.196.81.154', 'Inktomi'),
(00831, '66.196.81.155', 'Inktomi'),
(00832, '66.196.81.156', 'Inktomi'),
(00833, '66.196.81.157', 'Inktomi'),
(00834, '66.196.81.158', 'Inktomi'),
(00835, '66.196.81.159', 'Inktomi'),
(00836, '66.196.81.16', 'Inktomi'),
(00837, '66.196.81.160', 'Inktomi'),
(00838, '66.196.81.161', 'Inktomi'),
(00839, '66.196.81.162', 'Inktomi'),
(00840, '66.196.81.163', 'Inktomi'),
(00841, '66.196.81.164', 'Inktomi'),
(00842, '66.196.81.165', 'Inktomi'),
(00843, '66.196.81.166', 'Inktomi'),
(00844, '66.196.81.167', 'Inktomi'),
(00845, '66.196.81.168', 'Inktomi'),
(00846, '66.196.81.169', 'Inktomi'),
(00847, '66.196.81.17', 'Inktomi'),
(00848, '66.196.81.170', 'Inktomi'),
(00849, '66.196.81.171', 'Inktomi'),
(00850, '66.196.81.172', 'Inktomi'),
(00851, '66.196.81.173', 'Inktomi'),
(00852, '66.196.81.174', 'Inktomi'),
(00853, '66.196.81.175', 'Inktomi'),
(00854, '66.196.81.176', 'Inktomi'),
(00855, '66.196.81.177', 'Inktomi'),
(00856, '66.196.81.178', 'Inktomi'),
(00857, '66.196.81.179', 'Inktomi'),
(00858, '66.196.81.18', 'Inktomi'),
(00859, '66.196.81.180', 'Inktomi'),
(00860, '66.196.81.181', 'Inktomi'),
(00861, '66.196.81.182', 'Inktomi'),
(00862, '66.196.81.183', 'Inktomi'),
(00863, '66.196.81.184', 'Inktomi'),
(00864, '66.196.81.185', 'Inktomi'),
(00865, '66.196.81.187', 'Inktomi'),
(00866, '66.196.81.188', 'Inktomi'),
(00867, '66.196.81.189', 'Inktomi'),
(00868, '66.196.81.19', 'Inktomi'),
(00869, '66.196.81.190', 'Inktomi'),
(00870, '66.196.81.191', 'Inktomi'),
(00871, '66.196.81.192', 'Inktomi'),
(00872, '66.196.81.193', 'Inktomi'),
(00873, '66.196.81.194', 'Inktomi'),
(00874, '66.196.81.195', 'Inktomi'),
(00875, '66.196.81.196', 'Inktomi'),
(00876, '66.196.81.197', 'Inktomi'),
(00877, '66.196.81.198', 'Inktomi'),
(00878, '66.196.81.199', 'Inktomi'),
(00879, '66.196.81.20', 'Inktomi'),
(00880, '66.196.81.200', 'Inktomi'),
(00881, '66.196.81.201', 'Inktomi'),
(00882, '66.196.81.202', 'Inktomi'),
(00883, '66.196.81.203', 'Inktomi'),
(00884, '66.196.81.204', 'Inktomi'),
(00885, '66.196.81.205', 'Inktomi'),
(00886, '66.196.81.206', 'Inktomi'),
(00887, '66.196.81.207', 'Inktomi'),
(00888, '66.196.81.208', 'Inktomi'),
(00889, '66.196.81.209', 'Inktomi'),
(00890, '66.196.81.21', 'Inktomi'),
(00891, '66.196.81.210', 'Inktomi'),
(00892, '66.196.81.211', 'Inktomi'),
(00893, '66.196.81.212', 'Inktomi'),
(00894, '66.196.81.213', 'Inktomi'),
(00895, '66.196.81.214', 'Inktomi'),
(00896, '66.196.81.215', 'Inktomi'),
(00897, '66.196.81.216', 'Inktomi'),
(00898, '66.196.81.217', 'Inktomi'),
(00899, '66.196.81.218', 'Inktomi'),
(00900, '66.196.81.219', 'Inktomi'),
(00901, '66.196.81.22', 'Inktomi'),
(00902, '66.196.81.23', 'Inktomi'),
(00903, '66.196.81.86', 'Inktomi'),
(00904, '66.196.81.87', 'Inktomi'),
(00905, '66.196.81.88', 'Inktomi'),
(00906, '66.196.81.93', 'Inktomi'),
(00907, '66.196.81.94', 'Inktomi'),
(00908, '66.196.81.95', 'Inktomi'),
(00909, '66.196.81.96', 'Inktomi'),
(00910, '66.196.90', 'Inktomi'),
(00911, '66.196.97', 'Inktomi'),
(00912, '66.196.99.20', 'Inktomi'),
(00913, '166.48.225.254', 'Lycos'),
(00914, '202.232.118.40', 'Lycos'),
(00915, '202.232.118.51', 'Lycos'),
(00916, '206.79.171', 'Lycos'),
(00917, '207.77.90', 'Lycos'),
(00918, '207.77.91.184', 'Lycos'),
(00919, '208.146.26', 'Lycos'),
(00920, '208.146.27.123', 'Lycos'),
(00921, '208.146.27.124', 'Lycos'),
(00922, '208.146.27.57', 'Lycos'),
(00923, '208.146.27.58', 'Lycos'),
(00924, '208.146.27.59', 'Lycos'),
(00925, '208.146.27.60', 'Lycos'),
(00926, '208.146.27.62', 'Lycos'),
(00927, '208.146.27.89', 'Lycos'),
(00928, '208.146.27.90', 'Lycos'),
(00929, '208.146.27.91', 'Lycos'),
(00930, '208.146.27.92', 'Lycos'),
(00931, '208.146.27.93', 'Lycos'),
(00932, '208.146.27.94', 'Lycos'),
(00933, '208.146.27.95', 'Lycos'),
(00934, '208.146.27.96', 'Lycos'),
(00935, '209.202.192', 'Lycos'),
(00936, '209.202.192.147', 'Lycos'),
(00937, '209.202.193', 'Lycos'),
(00938, '209.202.194.237', 'Lycos'),
(00939, '209.202.194.238', 'Lycos'),
(00940, '209.202.240.109', 'Lycos'),
(00941, '209.202.240.8', 'Lycos'),
(00942, '209.67.228', 'Lycos'),
(00943, '209.67.229', 'Lycos'),
(00944, '211.51.63.4', 'Lycos'),
(00945, '213.193.19.35', 'Lycos'),
(00946, '64.89.33', 'Lycos'),
(00947, '206.253.217.18', '100hot'),
(00948, '63.222.37.101', '2kcity.com'),
(00949, '63.222.37.105', '2kcity.com'),
(00950, '195.3.97.3', 'A-Online'),
(00951, '193.110.40.93', 'Abacho'),
(00952, '194.231.30.86', 'Abacho'),
(00953, '194.231.30.87', 'Abacho'),
(00954, '194.231.30.88', 'Abacho'),
(00955, '194.231.30.89', 'Abacho'),
(00956, '194.231.30.90', 'Abacho'),
(00957, '194.231.30.91', 'Abacho'),
(00958, '194.231.30.92', 'Abacho'),
(00959, '194.231.30.93', 'Abacho'),
(00960, '194.231.30.108', 'Abacho'),
(00961, '194.231.30.109', 'Abacho'),
(00962, '194.231.68.166', 'Abacho'),
(00963, '209.68.2.36', 'Abadoor'),
(00964, '194.117.133.180', 'Abrexa.co.uk'),
(00965, '194.231.42.185', 'Acoon'),
(00966, '208.204.161.8', 'Ah-Ha'),
(00967, '216.250.141.186', 'Ah-Ha'),
(00968, '207.126.112.254', 'Aeiwi'),
(00969, '209.120.206.178', 'Aeiwi'),
(00970, '212.91.134.190', 'Aeiwi'),
(00971, '216.178.189.230', 'Aeiwi'),
(00972, '130.225.20.4', 'Aeiwi'),
(00973, '64.247.218.197', 'Aeiwi'),
(00974, '140.142.13.196', 'Ahoy!'),
(00975, '194.231.30.14', 'Aladin'),
(00976, '194.231.0.71', 'Aladin'),
(00977, '194.231.30.11', 'Aladin'),
(00978, '195.37.68.3', 'Allesklar'),
(00979, '195.37.68.65', 'Allesklar'),
(00980, '195.37.68.180', 'Allesklar'),
(00981, '195.37.68.181', 'Allesklar'),
(00982, '209.239.48.69', 'AllFreak.com'),
(00983, '194.231.42.178', 'ANAGRAROBOT'),
(00984, '167.160.195.61', 'Ananzi'),
(00985, '80.16.145.187', 'AnnoMille'),
(00986, '64.246.36.123', 'Ano-Kato.com (Greek)'),
(00987, '134.96.104.226', 'AnswerBus'),
(00988, '62.210.155.50', 'AntiSearch'),
(00989, '62.210.155.56', 'AntiSearch'),
(00990, '62.210.155.58', 'AntiSearch'),
(00991, '62.210.155.59', 'AntiSearch'),
(00992, '192.41.9.30', 'Apidom (Guadeloupe)'),
(00993, '192.41.9.30', 'Apidom (Guadeloupe)'),
(00994, '208.237.120.82', 'Apidom (Guadeloupe)'),
(00995, '195.210.89.11', 'Arianna'),
(00996, '195.210.91.24', 'Arianna'),
(00997, '195.210.91.80', 'Arianna'),
(00998, '195.210.91.112', 'Arianna'),
(00999, '195.210.91.113', 'Arianna'),
(01000, '195.210.91.187', 'Arianna'),
(01001, '195.210.91.212', 'Arianna'),
(01002, '195.210.91.213', 'Arianna'),
(01003, '195.210.91.214', 'Arianna'),
(01004, '195.210.91.235', 'Arianna'),
(01005, '195.210.91.215', 'Arianna'),
(01006, '192.92.126.4', 'Arianna'),
(01007, '192.92.126.5', 'Arianna'),
(01008, '171.64.68.80', 'Backrub'),
(01009, '171.64.75.100', 'Backrub'),
(01010, '171.64.75.104', 'Backrub'),
(01011, '162.105.207.185', 'Baidu'),
(01012, '162.105.207.192', 'Baidu'),
(01013, '202.103.134.196', 'Baidu'),
(01014, '202.108.249.184', 'Baidu'),
(01015, '202.108.249.185', 'Baidu'),
(01016, '202.108.249.186', 'Baidu'),
(01017, '202.108.249.187', 'Baidu'),
(01018, '202.108.249.188', 'Baidu'),
(01019, '202.108.249.189', 'Baidu'),
(01020, '202.108.249.190', 'Baidu'),
(01021, '202.108.250.195', 'Baidu'),
(01022, '202.108.250.196', 'Baidu'),
(01023, '202.108.250.197', 'Baidu'),
(01024, '202.108.250.198', 'Baidu'),
(01025, '202.108.250.199', 'Baidu'),
(01026, '202.108.250.206', 'Baidu'),
(01027, '202.108.250.207', 'Baidu'),
(01028, '202.108.250.226', 'Baidu'),
(01029, '202.108.250.241', 'Baidu'),
(01030, '202.108.250.242', 'Baidu'),
(01031, '202.108.250.243', 'Baidu'),
(01032, '211.100.24.90', 'Baidu'),
(01033, '211.100.24.91', 'Baidu'),
(01034, '211.100.24.92', 'Baidu'),
(01035, '211.100.24.93', 'Baidu'),
(01036, '211.100.24.94', 'Baidu'),
(01037, '211.100.24.95', 'Baidu'),
(01038, '211.100.24.96', 'Baidu'),
(01039, '211.100.24.97', 'Baidu'),
(01040, '211.100.25.196', 'Baidu'),
(01041, '211.100.25.197', 'Baidu'),
(01042, '211.100.25.198', 'Baidu'),
(01043, '211.100.25.199', 'Baidu'),
(01044, '211.100.25.200', 'Baidu'),
(01045, '211.100.25.202', 'Baidu'),
(01046, '211.100.25.204', 'Baidu'),
(01047, '211.101.48.53', 'Baidu'),
(01048, '61.149.2.221', 'Baidu'),
(01049, '204.251.93.10', 'Batsch'),
(01050, '208.28.152.71', 'Bellnet'),
(01051, '194.198.230.36', 'BizSearch'),
(01052, '210.159.73.36', 'BlackSpider'),
(01053, '210.159.73.35', 'BlackSpider'),
(01054, '140.190.65.', 'BlackWidow'),
(01055, '194.231.30.106', 'Blitzsuche'),
(01056, '194.231.30.107', 'Blitzsuche'),
(01057, '194.231.30.108', 'Blitzsuche'),
(01058, '217.118.38.226', 'Boitho'),
(01059, '217.118.38.227', 'Boitho'),
(01060, '217.118.38.228', 'Boitho'),
(01061, '217.118.38.229', 'Boitho'),
(01062, '217.118.38.230', 'Boitho'),
(01063, '217.118.38.231', 'Boitho'),
(01064, '217.118.38.232', 'Boitho'),
(01065, '217.118.38.233', 'Boitho'),
(01066, '217.118.38.234', 'Boitho'),
(01067, '151.189.96.99', 'Brainbot (Gigabaz)'),
(01068, '134.93.7.97', 'Brainbot (Gigabaz)'),
(01069, '134.93.7.98', 'Brainbot (Gigabaz)'),
(01070, '64.57.64.90', 'Brainysearch'),
(01071, '200.215.16.125', 'Brazilian Research Network'),
(01072, '131.188.128.229', 'CACTVS Chemistry Spider'),
(01073, '194.199.4.2', 'CACTVS Chemistry Spider'),
(01074, '192.115.137.202', 'Chimera (eSense)'),
(01075, '192.115.136.15', 'Chimera (eSense)'),
(01076, '64.28.94.71', 'Chimera (eSense)'),
(01077, '203.122.61.30', 'Cipinet'),
(01078, '198.138.63.1', 'Claymont'),
(01079, '198.138.63.22', 'Claymont'),
(01080, '198.139.155.10', 'Claymont'),
(01081, '209.10.61.5', 'Colorstamps'),
(01082, '130.235.86.152', 'Combine System'),
(01083, '195.76.40.251', 'Comunet'),
(01084, '66.47.255.121', 'ConceptBot'),
(01085, '80.182.226.190', 'Crawler.de'),
(01086, '195.20.224.72', 'Crawler.de'),
(01087, '195.20.224.73', 'Crawler.de'),
(01088, '143.89.40.159', 'CS Hkust Wise'),
(01089, '192.41.34.245', 'CurryGuide'),
(01090, '192.41.43.146', 'CurryGuide'),
(01091, '192.41.49.235', 'CurryGuide'),
(01092, '208.185.131.219', 'DavesEngine'),
(01093, '208.185.131.220', 'DavesEngine'),
(01094, '208.185.131.221', 'DavesEngine'),
(01095, '208.185.131.222', 'DavesEngine'),
(01096, '216.200.195.53', 'DavesEngine'),
(01097, '216.200.195.58', 'DavesEngine'),
(01098, '216.200.195.60', 'DavesEngine'),
(01099, '216.200.195.57', 'DavesEngine'),
(01100, '216.200.195.59', 'DavesEngine'),
(01101, '216.200.195.61', 'DavesEngine'),
(01102, '62.212.117.198', 'DeepIndex'),
(01103, '217.160.94.14', 'DIE-KRAEHE'),
(01104, '217.146.97.27', 'Domanova'),
(01105, '210.199.215.54', 'DragonNext'),
(01106, '208.186.202.21', 'eFamily'),
(01107, '62.57.74.14', 'Egoto.com Spain'),
(01108, '210.16.10.40', 'EDSA Phillipines'),
(01109, '193.15.210.29', 'entireweb.com'),
(01110, '193.15.210.29', 'entireweb.com'),
(01111, '62.13.25.201', 'entireweb.com'),
(01112, '62.13.25.209', 'entireweb.com'),
(01113, '209.198.242.61', 'Esoterica'),
(01114, '194.231.76.158', 'Eule'),
(01115, '194.168.54.6', 'EuroFerret (MuscatFerret)'),
(01116, '194.168.54.11', 'EuroFerret (MuscatFerret)'),
(01117, '195.95.124.3', 'EuroOne'),
(01118, '195.95.124.7', 'EuroOne'),
(01119, '212.209.54.40', 'EuroSeek'),
(01120, '212.209.54.134', 'EuroSeek'),
(01121, '195.242.46.55', 'EuroSeek'),
(01122, '207.36.47.237', 'ExactSeek.com'),
(01123, '216.110.167.157', 'ExactSeek.com'),
(01124, '195.154.174.164', 'Exalead (NG/1.0)'),
(01125, '195.154.174.167', 'Exalead (NG/1.0)'),
(01126, '213.174.84.195', 'Exalead (NG/1.0)'),
(01127, '198.3.103', 'Excite'),
(01128, '199.172.148.105', 'Excite'),
(01129, '199.172.148.11', 'Excite'),
(01130, '199.172.148.37', 'Excite'),
(01131, '199.172.149', 'Excite'),
(01132, '199.172.152.238', 'Excite'),
(01133, '199.172.152.34', 'Excite'),
(01134, '199.172.152.54', 'Excite'),
(01135, '199.172.152.56', 'Excite'),
(01136, '199.172.152.57', 'Excite'),
(01137, '199.172.152.95', 'Excite'),
(01138, '199.172.153.174', 'Excite'),
(01139, '199.172.153.178', 'Excite'),
(01140, '199.172.156.168', 'Excite'),
(01141, '199.172.156.169', 'Excite'),
(01142, '199.172.156.170', 'Excite'),
(01143, '199.172.156.219', 'Excite'),
(01144, '199.172.157.28', 'Excite'),
(01145, '204.62.245.167', 'Excite'),
(01146, '204.62.245.169', 'Excite'),
(01147, '204.62.245.178', 'Excite'),
(01148, '204.62.245.187', 'Excite'),
(01149, '204.62.245.32', 'Excite'),
(01150, '216.131.41.1', 'Excite'),
(01151, '216.131.41.10', 'Excite'),
(01152, '216.131.41.2', 'Excite'),
(01153, '216.131.41.3', 'Excite'),
(01154, '216.131.41.4', 'Excite'),
(01155, '216.131.41.5', 'Excite'),
(01156, '216.131.41.6', 'Excite'),
(01157, '216.131.41.7', 'Excite'),
(01158, '216.131.41.8', 'Excite'),
(01159, '216.131.41.9', 'Excite'),
(01160, '209.67.252.214', 'Exodus.Net'),
(01161, '64.14.66.11', 'EZResult'),
(01162, '64.14.66.100', 'EZResult'),
(01163, '192.41.15.30', 'FetchRover'),
(01164, '207.86.79.6', 'FindLink.com'),
(01165, '207.86.79.12', 'FindLink.com'),
(01166, '207.153.57.51', 'findquick.com'),
(01167, '193.7.255.21', 'Fireball'),
(01168, '193.7.255.33', 'Fireball'),
(01169, '193.7.255.90', 'Fireball'),
(01170, '193.7.255.121', 'Fireball'),
(01171, '193.7.255.122', 'Fireball'),
(01172, '193.7.255.130', 'Fireball'),
(01173, '193.7.255.142', 'Fireball'),
(01174, '193.7.255.22', 'Fireball'),
(01175, '193.7.255.241', 'Fireball'),
(01176, '193.7.255.242', 'Fireball'),
(01177, '193.7.255.244', 'Fireball'),
(01178, '217.75.104.26', 'First-Search'),
(01179, '63.121.41.166', 'First-Search'),
(01180, '63.121.41.172', 'First-Search'),
(01181, '63.121.41.173', 'First-Search'),
(01182, '63.121.41.174', 'First-Search'),
(01183, '63.121.41.176', 'First-Search'),
(01184, '63.121.41.177', 'First-Search'),
(01185, '208.131.25.166', 'First-Search'),
(01186, '208.131.25.167', 'First-Search'),
(01187, '208.131.25.169', 'First-Search'),
(01188, '198.173.35.169', 'First-Search'),
(01189, '198.173.35.170', 'First-Search'),
(01190, '198.173.35.171', 'First-Search'),
(01191, '63.121.41.175', 'First-Search'),
(01192, '131.155.70.189', 'Fish search'),
(01193, '195.190.21.70', 'Flix'),
(01194, '132.218.30.216', 'Francoroute'),
(01195, '205.179.93.66', 'FreeFind'),
(01196, '151.196.224.70', 'Funkycat Search'),
(01197, '209.176.27.63', 'Funkycat Search'),
(01198, '64.208.104.2', 'Funkycat Search'),
(01199, '203.21.15.10', 'FunnelWeb'),
(01200, '208.131.25.6', 'Galaxy'),
(01201, '216.206.178.81', 'Galaxy'),
(01202, '216.206.178.83', 'Galaxy'),
(01203, '216.206.178.85', 'Galaxy'),
(01204, '208.131.25.168', 'Galaxy'),
(01205, '63.121.41.178', 'Galaxy'),
(01206, '63.121.41.179', 'Galaxy'),
(01207, '140.123.101.14', 'Gais'),
(01208, '194.46.8.25', 'gasta'),
(01209, '216.127.80.23', 'Geobot'),
(01210, '69.59.142.172', 'Geona'),
(01211, '216.93.161.126', 'Geona'),
(01212, '208.254.87.133', 'Gigablast'),
(01213, '216.243.113.1', 'Gigablast'),
(01214, '216.243.113.81', 'Gigablast'),
(01215, '216.243.113.82', 'Gigablast'),
(01216, '216.243.113.83', 'Gigablast'),
(01217, '216.243.113.84', 'Gigablast'),
(01218, '216.243.113.86', 'Gigablast'),
(01219, '216.243.113.87', 'Gigablast'),
(01220, '217.75.103.130', 'Gigablast'),
(01221, '210.150.25.156', 'Goo'),
(01222, '202.229.31.13', 'Goo'),
(01223, '202.229.31.14', 'Goo'),
(01224, '202.229.31.15', 'Goo'),
(01225, '210.150.10.100', 'Goo'),
(01226, '216.181.122.11', 'GoZero Search'),
(01227, '216.181.122.110', 'GoZero Search'),
(01228, '212.125.68.30', 'GoZilla'),
(01229, '206.30.142.100', 'Grub'),
(01230, '193.62.81.96', 'Harvest'),
(01231, '193.62.81.96', 'Harvest'),
(01232, '64.246.15.61', 'HiddenStreet.com'),
(01233, '192.41.170.17', 'HI (HTML Index) Search'),
(01234, '208.232.223.80', 'Hitbox'),
(01235, '216.55.4.15', 'Hitsearch'),
(01236, '209.1.12.2', 'HotBot'),
(01237, '209.1.12.220', 'HotBot'),
(01238, '209.1.12.221', 'HotBot'),
(01239, '209.1.12.222', 'HotBot'),
(01240, '209.1.12.224', 'HotBot'),
(01241, '209.1.12.225', 'HotBot'),
(01242, '209.1.12.226', 'HotBot'),
(01243, '209.1.12.227', 'HotBot'),
(01244, '209.1.12.228', 'HotBot'),
(01245, '209.1.12.229', 'HotBot'),
(01246, '209.1.12.230', 'HotBot'),
(01247, '209.1.12.231', 'HotBot'),
(01248, '209.1.12.232', 'HotBot'),
(01249, '209.1.12.233', 'HotBot'),
(01250, '209.1.12.234', 'HotBot'),
(01251, '209.1.12.235', 'HotBot'),
(01252, '209.1.12.236', 'HotBot'),
(01253, '209.1.12.237', 'HotBot'),
(01254, '209.1.12.238', 'HotBot'),
(01255, '209.1.12.239', 'HotBot'),
(01256, '209.1.12.240', 'HotBot'),
(01257, '209.1.12.241', 'HotBot'),
(01258, '209.1.12.242', 'HotBot'),
(01259, '204.62.132.20', 'HotWired'),
(01260, '209.75.193.22', 'HTDig'),
(01261, '209.114.176.250', 'Hubat'),
(01262, '204.146.80.99', 'IBM_Planetwide'),
(01263, '204.146.81.99', 'IBM_Planetwide'),
(01264, '209.239.36.253', 'icorus.com'),
(01265, '205.188.147.53', 'ICQ'),
(01266, '205.188.147.56', 'ICQ'),
(01267, '205.188.252.121', 'ICQ'),
(01268, '212.123.67.70', 'Ideare'),
(01269, '193.120.253.2', 'IErachnid'),
(01270, '213.244.181.190', 'ILSE'),
(01271, '212.72.39.2', 'ILSE'),
(01272, '194.134.109.3', 'ILSE'),
(01273, '194.134.109.7', 'ILSE'),
(01274, '194.134.109.17', 'ILSE'),
(01275, '194.134.109.21', 'ILSE'),
(01276, '212.72.39.8', 'ILSE'),
(01277, '212.72.39.3', 'ILSE'),
(01278, '212.72.39.4', 'ILSE'),
(01279, '212.72.39.5', 'ILSE'),
(01280, '212.72.39.6', 'ILSE'),
(01281, '212.72.39.7', 'ILSE'),
(01282, '212.72.39.9', 'ILSE'),
(01283, '212.72.39.10', 'ILSE'),
(01284, '212.72.39.11', 'ILSE'),
(01285, '212.72.39.12', 'ILSE'),
(01286, '212.72.39.13', 'ILSE'),
(01287, '212.72.39.14', 'ILSE'),
(01288, '212.72.39.15', 'ILSE'),
(01289, '212.72.39.16', 'ILSE'),
(01290, '212.72.39.17', 'ILSE'),
(01291, '212.72.39.18', 'ILSE'),
(01292, '212.72.39.19', 'ILSE'),
(01293, '212.72.39.20', 'ILSE'),
(01294, '212.72.39.21', 'ILSE'),
(01295, '212.72.39.22', 'ILSE'),
(01296, '212.72.39.23', 'ILSE'),
(01297, '212.72.39.24', 'ILSE'),
(01298, '212.72.39.27', 'ILSE'),
(01299, '212.72.39.28', 'ILSE'),
(01300, '212.72.39.29', 'ILSE'),
(01301, '212.72.39.30', 'ILSE'),
(01302, '212.72.39.194', 'ILSE'),
(01303, '212.72.39.195', 'ILSE'),
(01304, '212.72.39.196', 'ILSE'),
(01305, '212.72.39.197', 'ILSE'),
(01306, '212.72.39.198', 'ILSE'),
(01307, '212.72.39.199', 'ILSE'),
(01308, '212.72.39.200', 'ILSE'),
(01309, '212.72.39.201', 'ILSE'),
(01310, '212.72.39.202', 'ILSE'),
(01311, '212.72.39.203', 'ILSE'),
(01312, '212.72.39.204', 'ILSE'),
(01313, '212.72.39.205', 'ILSE'),
(01314, '212.72.39.206', 'ILSE'),
(01315, '212.72.39.207', 'ILSE'),
(01316, '212.72.39.208', 'ILSE'),
(01317, '212.72.39.209', 'ILSE'),
(01318, '212.72.39.210', 'ILSE'),
(01319, '212.72.39.211', 'ILSE'),
(01320, '212.72.39.212', 'ILSE'),
(01321, '212.72.39.213', 'ILSE'),
(01322, '212.72.39.214', 'ILSE'),
(01323, '212.72.39.215', 'ILSE'),
(01324, '212.72.39.216', 'ILSE'),
(01325, '212.72.39.217', 'ILSE'),
(01326, '212.72.39.218', 'ILSE'),
(01327, '212.72.39.219', 'ILSE'),
(01328, '212.72.39.220', 'ILSE'),
(01329, '212.72.39.221', 'ILSE'),
(01330, '213.215.201.204', 'Iltrovatore.it'),
(01331, '213.215.201.234', 'Iltrovatore.it'),
(01332, '210.165.39.216', 'Infobee'),
(01333, '210.165.39.217', 'Infobee'),
(01334, '210.165.39.216', 'Infobee'),
(01335, '210.165.39.244', 'Infobee'),
(01336, '210.165.39.245', 'Infobee'),
(01337, '210.165.39.246', 'Infobee'),
(01338, '210.165.39.247', 'Infobee'),
(01339, '210.165.39.248', 'Infobee'),
(01340, '210.165.39.249', 'Infobee'),
(01341, '210.165.39.250', 'Infobee'),
(01342, '210.165.39.252', 'Infobee'),
(01343, '210.165.39.254', 'Infobee'),
(01344, '165.254.215.60', 'Infomak'),
(01345, '165.254.215.61', 'Infomak'),
(01346, '165.254.215.62', 'Infomak'),
(01347, '165.254.215.63', 'Infomak'),
(01348, '129.170.24.57', 'Informant'),
(01349, '195.145.119.24', 'Infoseek'),
(01350, '195.145.119.25', 'Infoseek'),
(01351, '198.5.208', 'Infoseek'),
(01352, '198.5.210', 'Infoseek'),
(01353, '202.33.250.146', 'Infoseek'),
(01354, '202.33.250.147', 'Infoseek'),
(01355, '202.33.250.148', 'Infoseek'),
(01356, '202.33.250.149', 'Infoseek'),
(01357, '202.33.250.150', 'Infoseek'),
(01358, '202.33.250.151', 'Infoseek'),
(01359, '202.33.250.152', 'Infoseek'),
(01360, '202.33.250.153', 'Infoseek'),
(01361, '202.33.250.154', 'Infoseek'),
(01362, '204.162.96', 'Infoseek'),
(01363, '204.162.97.1', 'Infoseek'),
(01364, '204.162.97.152', 'Infoseek'),
(01365, '204.162.97.17', 'Infoseek'),
(01366, '204.162.97.2', 'Infoseek'),
(01367, '204.162.97.205', 'Infoseek'),
(01368, '204.162.97.228', 'Infoseek'),
(01369, '204.162.97.231', 'Infoseek'),
(01370, '204.162.97.3', 'Infoseek'),
(01371, '204.162.97.32', 'Infoseek'),
(01372, '204.162.98.11', 'Infoseek'),
(01373, '204.162.98.12', 'Infoseek'),
(01374, '204.162.98.124', 'Infoseek'),
(01375, '204.162.98.126', 'Infoseek'),
(01376, '204.162.98.151', 'Infoseek'),
(01377, '204.162.98.161', 'Infoseek'),
(01378, '204.162.98.168', 'Infoseek'),
(01379, '204.162.98.18', 'Infoseek'),
(01380, '204.162.98.192', 'Infoseek'),
(01381, '204.162.98.2', 'Infoseek'),
(01382, '204.162.98.237', 'Infoseek'),
(01383, '204.162.98.27', 'Infoseek'),
(01384, '204.162.98.3', 'Infoseek'),
(01385, '204.162.98.36', 'Infoseek'),
(01386, '204.162.98.38', 'Infoseek'),
(01387, '204.162.98.4', 'Infoseek'),
(01388, '204.162.98.45', 'Infoseek'),
(01389, '204.162.98.48', 'Infoseek'),
(01390, '204.162.98.49', 'Infoseek'),
(01391, '204.162.98.5', 'Infoseek'),
(01392, '204.162.98.6', 'Infoseek'),
(01393, '204.162.98.7', 'Infoseek'),
(01394, '204.162.98.8', 'Infoseek'),
(01395, '204.162.98.80', 'Infoseek'),
(01396, '204.162.98.88', 'Infoseek'),
(01397, '204.162.98.9', 'Infoseek'),
(01398, '204.162.98.91', 'Infoseek'),
(01399, '204.162.98.98', 'Infoseek'),
(01400, '204.202.132.19', 'Infoseek'),
(01401, '205.226.201', 'Infoseek'),
(01402, '205.226.203.186', 'Infoseek'),
(01403, '205.226.203.35', 'Infoseek'),
(01404, '205.226.203.56', 'Infoseek'),
(01405, '205.226.203.62', 'Infoseek'),
(01406, '205.226.204.238', 'Infoseek'),
(01407, '206.3.30.196', 'Infoseek'),
(01408, '206.3.30.250', 'Infoseek'),
(01409, '206.3.30.251', 'Infoseek'),
(01410, '210.148.160.157', 'Infoseek'),
(01411, '210.155.157', 'Infoseek'),
(01412, '210.155.159', 'Infoseek'),
(01413, '210.236.233.130', 'Infoseek'),
(01414, '210.236.233.131', 'Infoseek'),
(01415, '210.236.233.132', 'Infoseek'),
(01416, '210.236.233.133', 'Infoseek'),
(01417, '210.236.233.135', 'Infoseek'),
(01418, '210.236.233.136', 'Infoseek'),
(01419, '210.236.233.137', 'Infoseek'),
(01420, '210.236.233.139', 'Infoseek'),
(01421, '210.236.233.150', 'Infoseek'),
(01422, '210.236.233.151', 'Infoseek'),
(01423, '210.236.233.155', 'Infoseek'),
(01424, '210.236.233.160', 'Infoseek'),
(01425, '210.236.233.161', 'Infoseek'),
(01426, '211.13.222.230', 'Infoseek'),
(01427, '211.18.214.194', 'Infoseek'),
(01428, '212.185.44.10', 'Infoseek'),
(01429, '212.185.44.11', 'Infoseek'),
(01430, '212.185.44.12', 'Infoseek'),
(01431, '212.185.44.15', 'Infoseek'),
(01432, '128.255.244.88', 'InfoSpiders'),
(01433, '195.57.152.80', 'Inter-Fux'),
(01434, '206.132.56.130', 'Internet Archiver'),
(01435, '209.133.111.132', 'Internet Portal 3000'),
(01436, '216.200.196.8', 'Internet Portal 3000'),
(01437, '216.200.196.9', 'Internet Portal 3000'),
(01438, '216.200.196.10', 'Internet Portal 3000'),
(01439, '216.200.196.11', 'Internet Portal 3000'),
(01440, '216.200.196.12', 'Internet Portal 3000'),
(01441, '216.200.196.13', 'Internet Portal 3000'),
(01442, '216.200.196.14', 'Internet Portal 3000'),
(01443, '216.200.196.15', 'Internet Portal 3000'),
(01444, '194.232.15.65', 'Intersearch'),
(01445, '133.194.226.226', 'ISIZE (jp)'),
(01446, '193.195.19.10', 'iSparkle'),
(01447, '207.82.104.100', 'ISpi Crawler'),
(01448, '66.240.140.190', 'it LOOX'),
(01449, '216.33.59.61', 'iWon'),
(01450, '208.239.240.102', 'JAYDE.COM'),
(01451, '66.28.139.66', 'JAYDE.COM'),
(01452, '195.226.160.249', 'JAYDE.DE'),
(01453, '216.234.161.144', 'jblue'),
(01454, '195.211.11.50', 'Jippii.fi'),
(01455, '216.148.213.150', 'Job Robot (Jobot)'),
(01456, '212.112.128.30', 'The Jubii Indexing Robot'),
(01457, '139.153.13.200', 'JumpStation'),
(01458, '216.33.119.136', 'Kanoodle'),
(01459, '216.33.119.138', 'Kanoodle'),
(01460, '38.170.72.194', 'Kanoodle'),
(01461, '24.57.240.53', 'Keywen Encyclopedia'),
(01462, '151.189.12.140', 'Kolibri'),
(01463, '66.90.81.41', 'Kuloko'),
(01464, '66.227.104.196', 'Kuloko'),
(01465, '209.87.232.5', 'Look.com'),
(01466, '209.177.62.135', 'Lookseek'),
(01467, '207.138.42.212', 'Looksmart'),
(01468, '64.241.242.160', 'Looksmart'),
(01469, '64.241.242.18', 'Looksmart'),
(01470, '64.241.242.34', 'Looksmart'),
(01471, '195.20.224.66', 'Lotse'),
(01472, '195.153.48.120', 'Magpie'),
(01473, '216.94.9.119', 'mande'),
(01474, '195.44.0.150', 'Mcmail'),
(01475, '195.44.0.104', 'Mcmail'),
(01476, '195.44.0.152', 'Mcmail'),
(01477, '195.44.0.153', 'Mcmail'),
(01478, '207.158.203.71', 'MerzScope'),
(01479, '130.75.2.24', 'Metager'),
(01480, '130.75.6.10', 'Metager'),
(01481, '194.202.39.44', 'Mirago'),
(01482, '217.154.244.217', 'Mirago'),
(01483, '217.154.244.228', 'Mirago'),
(01484, '217.154.244.229', 'Mirago'),
(01485, '217.154.244.230', 'Mirago'),
(01486, '217.154.244.231', 'Mirago'),
(01487, '217.154.244.232', 'Mirago'),
(01488, '217.154.244.233', 'Mirago'),
(01489, '217.154.244.234', 'Mirago'),
(01490, '217.154.244.235', 'Mirago'),
(01491, '217.154.244.239', 'Mirago'),
(01492, '217.154.244.240', 'Mirago'),
(01493, '217.154.244.241', 'Mirago'),
(01494, '217.154.244.251', 'Mirago'),
(01495, '217.205.60', 'Mirago'),
(01496, '217.205.61', 'Mirago'),
(01497, '195.200.163.250', 'Mister-Jack'),
(01498, '195.200.169.193', 'Mister-Jack'),
(01499, '198.31.135.245', 'MixCat'),
(01500, '65.54.188.14', 'MSN'),
(01501, '65.54.188.15', 'MSN'),
(01502, '65.54.188.16', 'MSN'),
(01503, '65.54.188.21', 'MSN'),
(01504, '65.54.188.22', 'MSN'),
(01505, '65.54.188.26', 'MSN'),
(01506, '65.54.188.29', 'MSN'),
(01507, '65.54.188.30', 'MSN'),
(01508, '65.54.188.31', 'MSN'),
(01509, '65.54.188.32', 'MSN'),
(01510, '65.54.188.33', 'MSN'),
(01511, '65.54.188.35', 'MSN'),
(01512, '65.54.188.38', 'MSN'),
(01513, '65.54.188.40', 'MSN'),
(01514, '65.54.188.41', 'MSN'),
(01515, '131.107.3.91', 'MSN'),
(01516, '131.107.137.37', 'MSN'),
(01517, '131.107.137.47', 'MSN'),
(01518, '131.107.137.165', 'MSN'),
(01519, '131.107.137.166', 'MSN'),
(01520, '131.107.163.47', 'MSN'),
(01521, '131.107.163.48', 'MSN'),
(01522, '131.107.163.49', 'MSN'),
(01523, '131.107.163.57', 'MSN'),
(01524, '131.107.163.58', 'MSN'),
(01525, '204.4.80.10', 'MSN'),
(01526, '204.95.98.251', 'MSN'),
(01527, '204.95.98.252', 'MSN'),
(01528, '213.41.71.18', 'MotionBridge'),
(01529, '24.42.211.66', 'myEfinder.com'),
(01530, '194.221.102.137', 'Nathan'),
(01531, '66.27.55.14', 'NationalDirectory'),
(01532, '209.116.58.140', 'NationalDirectory'),
(01533, '199.184.188.143', 'NationalDirectory'),
(01534, '199.184.188.151', 'NationalDirectory'),
(01535, '199.184.188.160', 'NationalDirectory'),
(01536, '204.210.31.231', 'NationalDirectory'),
(01537, '209.116.58.143', 'NationalDirectory'),
(01538, '209.191.102.228', 'NationalDirectory'),
(01539, '218.23.2.122', 'Naver'),
(01540, '218.145.25.11', 'Naver'),
(01541, '218.145.25.43', 'Naver'),
(01542, '218.145.25.45', 'Naver'),
(01543, '218.145.25.78', 'Naver'),
(01544, '218.145.25.83', 'Naver'),
(01545, '218.145.25.109', 'Naver'),
(01546, '218.145.25.111', 'Naver'),
(01547, '218.145.25.113', 'Naver'),
(01548, '220.73.165.12', 'Naver'),
(01549, '220.73.165.14', 'Naver'),
(01550, '220.73.165.141', 'Naver'),
(01551, '220.73.165.206', 'Naver'),
(01552, '194.231.30.16', 'NDV'),
(01553, '195.188.192.23', 'Netcraft'),
(01554, '208.222.98.150', 'NetMind'),
(01555, '199.35.98.30', 'NetNose'),
(01556, '150.59.20.63', 'NetScoop'),
(01557, '150.59.20.20', 'NetScoop'),
(01558, '216.71.78.11', 'Netseek'),
(01559, '212.63.155.1', 'Nit-Net'),
(01560, '195.228.240.177', 'NorthernLight'),
(01561, '204.166.111.29', 'NorthernLight'),
(01562, '205.181.75.130', 'NorthernLight'),
(01563, '205.181.75.60', 'NorthernLight'),
(01564, '205.181.75.66', 'NorthernLight'),
(01565, '205.181.75.75', 'NorthernLight'),
(01566, '205.181.75.76', 'NorthernLight'),
(01567, '208.219.77', 'NorthernLight'),
(01568, '216.34.102', 'NorthernLight'),
(01569, '216.34.109.190', 'NorthernLight'),
(01570, '216.34.109.191', 'NorthernLight'),
(01571, '216.34.109.192', 'NorthernLight'),
(01572, '64.95.79.195', 'NorthernLight'),
(01573, '64.95.79.40', 'NorthernLight'),
(01574, '129.110.16.16', 'The NorthStar Robot'),
(01575, '129.110.10.1', 'The NorthStar Robot'),
(01576, '130.235.86.136', 'The NWI Robot'),
(01577, '130.235.86.137', 'The NWI Robot'),
(01578, '210.165.39.210', 'Cyberspace Labs'),
(01579, '210.165.39.211', 'Cyberspace Labs'),
(01580, '210.165.39.212', 'Cyberspace Labs'),
(01581, '210.165.39.213', 'Cyberspace Labs'),
(01582, '210.165.39.214', 'Cyberspace Labs'),
(01583, '210.165.39.215', 'Cyberspace Labs'),
(01584, '210.165.39.253', 'Cyberspace Labs'),
(01585, '62.121.105.75', 'Nutch'),
(01586, '66.113.7.112', 'Nutch'),
(01587, '66.113.76.111', 'Nutch'),
(01588, '66.113.76.112', 'Nutch'),
(01589, '128.208.6.201', 'Nutch'),
(01590, '131.114.2.96', 'Nutch'),
(01591, '150.140.4.162', 'Nutch'),
(01592, '193.42.229.8', 'Nutch'),
(01593, '209.25.87.38', 'Nutch'),
(01594, '209.237.227.229', 'Nutch'),
(01595, '202.36.240.1', 'Nzexplorer'),
(01596, '194.221.132.133', 'Oberland Net'),
(01597, '128.95.1.184', 'Occam'),
(01598, '128.95.1.208', 'Occam'),
(01599, '128.95.1.84', 'Occam'),
(01600, '195.20.225.123', 'onlinepilot.de'),
(01601, '212.227.109.241', 'onlinepilot.de'),
(01602, '195.20.225.112', 'onlinepilot.de'),
(01603, '195.20.225.115', 'onlinepilot.de'),
(01604, '212.227.109.14', 'onlinepilot.de'),
(01605, '212.227.109.57', 'onlinepilot.de'),
(01606, '212.227.109.58', 'onlinepilot.de'),
(01607, '212.227.109.197', 'onlinepilot.de'),
(01608, '212.227.109.225', 'onlinepilot.de'),
(01609, '212.227.109.229', 'onlinepilot.de'),
(01610, '212.227.118.9', 'onlinepilot.de'),
(01611, '212.227.118.25', 'onlinepilot.de'),
(01612, '212.227.118.130', 'onlinepilot.de'),
(01613, '212.227.119.5', 'onlinepilot.de'),
(01614, '64.23.82.44', 'Only'),
(01615, '210.59.144.148', 'Openfind'),
(01616, '210.59.144.149', 'Openfind'),
(01617, '211.72.252.182', 'Openfind'),
(01618, '209.133.111.58', 'Openfind'),
(01619, '211.72.252.49', 'Openfind'),
(01620, '212.98.78.29', 'Openfind'),
(01621, '205.158.61.194', 'Openfind'),
(01622, '205.158.61.197', 'Openfind'),
(01623, '205.158.61.198', 'Openfind'),
(01624, '205.158.61.200', 'Openfind'),
(01625, '205.158.61.201', 'Openfind'),
(01626, '205.158.61.202', 'Openfind'),
(01627, '205.158.61.207', 'Openfind'),
(01628, '209.133.111.56', 'Openfind'),
(01629, '209.133.111.57', 'Openfind'),
(01630, '216.250.80.67', 'Openfind'),
(01631, '66.7.131.130', 'Openfind'),
(01632, '66.7.131.131', 'Openfind'),
(01633, '66.7.131.132', 'Openfind'),
(01634, '66.7.131.133', 'Openfind'),
(01635, '66.7.131.134', 'Openfind'),
(01636, '66.7.131.135', 'Openfind'),
(01637, '66.7.131.136', 'Openfind'),
(01638, '66.7.131.137', 'Openfind'),
(01639, '66.7.131.138', 'Openfind'),
(01640, '66.7.131.139', 'Openfind'),
(01641, '66.7.131.140', 'Openfind'),
(01642, '66.7.131.141', 'Openfind'),
(01643, '66.7.131.142', 'Openfind'),
(01644, '66.7.131.143', 'Openfind'),
(01645, '66.7.131.144', 'Openfind'),
(01646, '66.7.131.145', 'Openfind'),
(01647, '66.7.131.146', 'Openfind'),
(01648, '66.7.131.147', 'Openfind'),
(01649, '66.7.131.148', 'Openfind'),
(01650, '66.7.131.149', 'Openfind'),
(01651, '66.7.131.150', 'Openfind'),
(01652, '66.7.131.151', 'Openfind'),
(01653, '66.7.131.152', 'Openfind'),
(01654, '66.7.131.153', 'Openfind'),
(01655, '66.7.131.154', 'Openfind'),
(01656, '66.7.131.155', 'Openfind'),
(01657, '66.7.131.156', 'Openfind'),
(01658, '66.7.131.157', 'Openfind'),
(01659, '66.7.131.158', 'Openfind'),
(01660, '66.7.131.159', 'Openfind'),
(01661, '66.7.131.160', 'Openfind'),
(01662, '66.7.131.161', 'Openfind'),
(01663, '66.7.131.162', 'Openfind'),
(01664, '66.7.131.163', 'Openfind'),
(01665, '66.7.131.164', 'Openfind'),
(01666, '66.7.131.165', 'Openfind'),
(01667, '66.237.60', 'Openfind'),
(01668, '211.72.252.150', 'Openfind'),
(01669, '211.72.252.243', 'Openfind'),
(01670, '211.155.160.2', 'Openfind'),
(01671, '211.155.160.5', 'Openfind'),
(01672, '211.155.160.12', 'Openfind'),
(01673, '140.123.103.4', 'Openfind'),
(01674, '211.72.252.147', 'Openfind'),
(01675, '211.72.252.242', 'Openfind'),
(01676, '204.138.115.2', 'Open Text'),
(01677, '213.215.133.19', 'Physics.org'),
(01678, '213.242.179.43', 'Picsearch'),
(01679, '217.75.104.23', 'Picsearch'),
(01680, '217.75.104.26', 'Picsearch'),
(01681, '62.119.21.136', 'Picsearch'),
(01682, '62.119.21.132', 'Picsearch'),
(01683, '62.119.21.135', 'Picsearch'),
(01684, '62.119.21.137', 'Picsearch'),
(01685, '62.119.21.138', 'Picsearch'),
(01686, '62.119.21.139', 'Picsearch'),
(01687, '62.119.21.150', 'Picsearch'),
(01688, '62.119.21.157', 'Picsearch'),
(01689, '62.119.133.12', 'Picsearch'),
(01690, '62.119.133.14', 'Picsearch'),
(01691, '128.109.136.132', 'Pioneer'),
(01692, '195.120.233.1', 'PGP Key Agent'),
(01693, '209.116.70.46', 'Pinpoint'),
(01694, '161.58.207.17', 'Pizilla'),
(01695, '216.218.130.79', 'Pizilla'),
(01696, '216.218.155.2', 'Pizilla'),
(01697, '216.218.197.2', 'Pizilla'),
(01698, '207.87.8.78', 'PlanetClick'),
(01699, '207.87.10.33', 'PlanetClick'),
(01700, '212.27.33.160', 'Pompos'),
(01701, '212.27.33.161', 'Pompos'),
(01702, '212.27.33.162', 'Pompos'),
(01703, '212.27.33.163', 'Pompos'),
(01704, '212.27.33.164', 'Pompos'),
(01705, '212.27.33.165', 'Pompos'),
(01706, '212.27.33.166', 'Pompos'),
(01707, '212.27.33.167', 'Pompos'),
(01708, '212.27.33.168', 'Pompos'),
(01709, '212.27.33.169', 'Pompos'),
(01710, '212.27.41.11', 'Pompos'),
(01711, '212.27.41.14', 'Pompos'),
(01712, '212.27.41.22', 'Pompos'),
(01713, '195.186.149.91', 'Pop.gr'),
(01714, '209.10.169.15', 'PortalB'),
(01715, '209.10.169.16', 'PortalB'),
(01716, '209.10.169.17', 'PortalB'),
(01717, '209.20.44.236', 'Portal Juice'),
(01718, '154.15.28.143', 'psi.net'),
(01719, '212.78.64.35', 'Qango'),
(01720, '217.158.17.25', 'Qango'),
(01721, '216.104.145.71', 'Questfinder'),
(01722, '64.40.105.197', 'Queue'),
(01723, '63.251.238.8', 'Realnames'),
(01724, '216.86.229.85', 'Realnames'),
(01725, '216.86.229.86', 'Realnames'),
(01726, '212.172.94.128', 'Rex'),
(01727, '206.215.122.20', 'Rex'),
(01728, '209.254.2.2', 'SafetyNet Robot'),
(01729, '64.140.165.133', 'Scrub the web'),
(01730, '208.234.1.83', 'Scrub the web'),
(01731, '208.145.190.250', 'Scrub the web'),
(01732, '208.145.190.251', 'Scrub the web'),
(01733, '208.145.190.254', 'Scrub the web'),
(01734, '195.141.85.142', 'Search.ch'),
(01735, '195.141.85.146', 'Search.ch'),
(01736, '206.40.146.58', 'SearchHippo'),
(01737, '208.148.122.27', 'SearchHippo'),
(01738, '208.148.122.28', 'SearchHippo'),
(01739, '208.148.122.29', 'SearchHippo'),
(01740, '208.165.96.26', 'SearchKing'),
(01741, '206.129.98.7', 'SearchMil.com'),
(01742, '206.129.98.16', 'SearchMil.com'),
(01743, '206.129.98.19', 'SearchMil.com'),
(01744, '206.129.0.3', 'Searchopolis'),
(01745, '206.129.0.131', 'Searchopolis'),
(01746, '206.129.0.132', 'Searchopolis'),
(01747, '206.129.1.24', 'Searchopolis'),
(01748, '206.129.1.27', 'Searchopolis'),
(01749, '24.90.243.203', 'SearchSpider'),
(01750, '216.205.148.106', 'SearchWho'),
(01751, '133.9.222.37', 'Senrigan'),
(01752, '194.201.93.6', 'searchengine.com'),
(01753, '194.201.93.18', 'searchengine.com'),
(01754, '194.201.93.118', 'searchengine.com'),
(01755, '68.166.53.158', 'Semantic Discovery'),
(01756, '69.3.78.160', 'Semantic Discovery'),
(01757, '63.251.10.139', 'Singing Fish'),
(01758, '63.251.169.236', 'Singing Fish'),
(01759, '206.253.222.233', 'Singing Fish'),
(01760, '216.188.26.203', 'Slider'),
(01761, '128.121.225.20', 'SmartDesk'),
(01762, '207.16.241', 'Smart Spider'),
(01763, '203.89.255.8', 'Sofcom'),
(01764, '194.197.68.46', 'Sonera'),
(01765, '194.97.8.162', 'speedfind'),
(01766, '194.97.8.163', 'speedfind'),
(01767, '192.109.251.26', 'speedfind'),
(01768, '194.221.132.56', 'speedfind'),
(01769, '194.221.132.139', 'speedfind'),
(01770, '128.211.213.117', 'Splat! Search'),
(01771, '207.44.130.81', 'Splat! Search'),
(01772, '207.44.142.84', 'Splat! Search'),
(01773, '209.150.128.145', 'Splat! Search'),
(01774, '216.71.84.57', 'Splat! Search'),
(01775, '216.71.84.212', 'Splat! Search'),
(01776, '216.71.187.134', 'Splat! Search'),
(01777, '198.147.135.13', 'Spry Wizard Robot'),
(01778, '165.121.1.77', 'Spry Wizard Robot'),
(01779, '165.121.2.77', 'Spry Wizard Robot'),
(01780, '198.185.1.224', 'Spry Wizard Robot'),
(01781, '194.231.30.15', 'Spider'),
(01782, '209.203.234.4', 'SpiderBot'),
(01783, '207.77.90.17', 'SpiderBot'),
(01784, '66.163.18.197', 'Spider Monkey'),
(01785, '195.20.227.67', 'Spider Monkey'),
(01786, '207.8.212.162', 'SuperSnooper'),
(01787, '207.8.212.163', 'SuperSnooper'),
(01788, '162.33.251.50', 'SuperSnooper'),
(01789, '66.28.248.146', 'surfnomore'),
(01790, '81.208.26.55', 'Sygol'),
(01791, '62.181.185.37', 'Szukacz.pl'),
(01792, '62.181.185.44', 'Szukacz.pl'),
(01793, '193.218.115.6', 'Szukacz.pl'),
(01794, '193.218.115.81', 'Szukacz.pl'),
(01795, '193.218.115.254', 'Szukacz.pl'),
(01796, '194.181.35.5', 'Szukacz.pl'),
(01797, '194.181.35.6', 'Szukacz.pl'),
(01798, '213.134.142.22', 'Szukacz.pl'),
(01799, '213.134.142.50', 'Szukacz.pl'),
(01800, '212.97.42.229', 'Tecnoseek.it'),
(01801, '198.49.220.81', 'Thunderstone'),
(01802, '207.218.150.79', 'Thunderstone'),
(01803, '63.251.4.43', 'Thunderstone'),
(01804, '208.51.0.20', 'Thunderstone'),
(01805, '208.51.0.74', 'Thunderstone'),
(01806, '208.51.0.79', 'Thunderstone'),
(01807, '195.130.233.22', 'Tiscalinet.it'),
(01808, '195.130.233.30', 'Tiscalinet.it'),
(01809, '195.130.233.60', 'Tiscalinet.it'),
(01810, '161.53.120.3', 'TitIn'),
(01811, '212.185.44.13', 'T-Online'),
(01812, '194.151.1.60', 'Track'),
(01813, '146.82.72.23', 'Tygo'),
(01814, '132.239.50.245', 'UCSD Crawl'),
(01815, '217.151.96.52', 'UKSearchPages'),
(01816, '209.67.119.9', 'Valkyrie'),
(01817, '133.9.215.72', 'Verno'),
(01818, '133.9.215.87', 'Verno'),
(01819, '193.172.236.108', 'Vindex'),
(01820, '193.172.237.17', 'Vindex'),
(01821, '193.172.236.114', 'Vindex'),
(01822, '193.172.237.16', 'Vindex'),
(01823, '193.172.236.8', 'Vindex'),
(01824, '128.2.206.215', 'vision-search'),
(01825, '195.101.94.80', 'voila.fr'),
(01826, '195.101.94.81', 'voila.fr'),
(01827, '195.101.94.15', 'voila.fr'),
(01828, '195.101.94.101', 'voila.fr'),
(01829, '195.101.94.166', 'voila.fr'),
(01830, '195.101.94.208', 'voila.fr'),
(01831, '195.101.94.209', 'voila.fr'),
(01832, '209.185.188.207', 'voila.fr'),
(01833, '216.35.76.11', 'voila.fr'),
(01834, '216.13.169.244', 'VWbot'),
(01835, '64.95.2.212', 'W3matter.com'),
(01836, '216.104.145.2', 'W8 Search'),
(01837, '216.104.145.160', 'W8 Search'),
(01838, '212.127.141.18', 'Walhello'),
(01839, '212.58.162.42', 'Walhello'),
(01840, '212.58.162.78', 'Walhello'),
(01841, '212.58.169.133', 'Walhello'),
(01842, '212.58.169.181', 'Walhello'),
(01843, '213.73.161.41', 'Walhello'),
(01844, '213.73.197.30', 'Walhello'),
(01845, '213.10.10.117', 'Walhello'),
(01846, '213.10.10.118', 'Walhello'),
(01847, '80.60.35.143', 'Walhello'),
(01848, '81.205.39.64', 'Walhello'),
(01849, '206.253.217.18', 'Web21'),
(01850, '199.182.120.206', 'WebBandit Web Spider'),
(01851, '193.136.20.2', 'Web Core'),
(01852, '193.136.20.250', 'Web Core'),
(01853, '198.3.99.101', 'WebCrawler'),
(01854, '204.62.245.77', 'WebCrawler'),
(01855, '204.62.245.88', 'WebCrawler'),
(01856, '194.45.170.120', 'Web.de'),
(01857, '65.105.223.11', 'WebFind'),
(01858, '61.139.65.222', 'WebGather'),
(01859, '144.214.122.55', 'WebGather'),
(01860, '203.51.46.83', 'Websearch.com.au'),
(01861, '203.51.44.181', 'Websearch.com.au'),
(01862, '217.73.164.106', 'WebsearchUS'),
(01863, '62.96.181.197', 'Webseek.de'),
(01864, '212.111.41.2', 'Webtop'),
(01865, '212.111.41.33', 'Webtop'),
(01866, '212.111.41.34', 'Webtop'),
(01867, '212.111.41.35', 'Webtop'),
(01868, '212.111.41.36', 'Webtop'),
(01869, '212.111.41.52', 'Webtop'),
(01870, '212.111.41.53', 'Webtop'),
(01871, '212.111.41.151', 'Webtop'),
(01872, '212.111.41.154', 'Webtop'),
(01873, '212.111.41.153', 'Webtop'),
(01874, '212.111.41.152', 'Webtop'),
(01875, '212.135.14.4', 'Webtop'),
(01876, '202.139.99.130', 'Web Wombat'),
(01877, '202.139.99.131', 'Web Wombat'),
(01878, '202.139.99.131', 'Web Wombat'),
(01879, '210.8.18.66', 'Web Wombat'),
(01880, '203.9.252.2', 'Web Wombat'),
(01881, '67.67.130.238', 'WhatchaSeek'),
(01882, '209.69.255.132', 'whatUseek'),
(01883, '209.69.255.131', 'whatUseek'),
(01884, '209.69.255.160', 'whatUseek'),
(01885, '63.173.190.2', 'WhizBang'),
(01886, '63.173.190.16', 'WhizBang'),
(01887, '63.173.190.30', 'WhizBang'),
(01888, '63.173.190.152', 'WhizBang'),
(01889, '63.225.238.7', 'WhizBang'),
(01890, '63.225.238.11', 'WhizBang'),
(01891, '216.250.143.106', 'WhizBang'),
(01892, '216.250.143.102', 'WhizBang'),
(01893, '208.1.109.130', 'WhizBang'),
(01894, '63.140.184.187', 'WholeWeb.net'),
(01895, '192.41.47.46', 'WholeWeb.net'),
(01896, '209.19.244.162', 'WholeWeb.net'),
(01897, '63.140.184.168', 'WholeWeb.net'),
(01898, '63.140.184.171', 'WholeWeb.net'),
(01899, '63.140.184.172', 'WholeWeb.net'),
(01900, '205.230.7.23', 'WhoWhere Robot'),
(01901, '207.178.193.51', 'Wild Ferret Web Hopper'),
(01902, '212.19.205.147', 'wise-guys.nl'),
(01903, '212.172.247.162', 'Witch'),
(01904, '209.78.25.59', 'wolong.de'),
(01905, '207.153.39.132', 'World Search Center'),
(01906, '207.153.23.8', 'World Search Center'),
(01907, '128.138.236.20', 'The WWW Worm'),
(01908, '81.5.184.25', 'Wotbox'),
(01909, '203.96.111.201', 'XTRA'),
(01910, '208.197.37.29', 'Yeehaa'),
(01911, '130.245.134.62', 'Yuntis'),
(01912, '130.245.134.63', 'Yuntis'),
(01913, '130.245.134.64', 'Yuntis'),
(01914, '133.11.36.24', 'Zao - Kototoi Project'),
(01915, '133.11.36.25', 'Zao - Kototoi Project'),
(01916, '133.11.36.26', 'Zao - Kototoi Project'),
(01917, '133.11.36.28', 'Zao - Kototoi Project'),
(01918, '133.11.36.34', 'Zao - Kototoi Project'),
(01919, '133.11.36.36', 'Zao - Kototoi Project'),
(01920, '133.11.36.37', 'Zao - Kototoi Project'),
(01921, '133.11.36.39', 'Zao - Kototoi Project'),
(01922, '133.11.36.41', 'Zao - Kototoi Project'),
(01923, '133.11.36.42', 'Zao - Kototoi Project'),
(01924, '133.11.36.45', 'Zao - Kototoi Project'),
(01925, '133.11.36.46', 'Zao - Kototoi Project'),
(01926, '133.11.36.50', 'Zao - Kototoi Project'),
(01927, '133.11.36.52', 'Zao - Kototoi Project'),
(01928, '133.11.36.54', 'Zao - Kototoi Project'),
(01929, '216.55.128.47', 'zSearch.net'),
(01930, '12.148.209.196', 'NameProtect'),
(01931, '12.40.85', 'NameProtect'),
(01932, '138.15.164.9', 'ScoutAbout'),
(01933, '146.48.78.32', 'UbiCrawler'),
(01934, '146.48.78.38', 'UbiCrawler'),
(01935, '147.208.15.13', 'NetMechanic'),
(01936, '195.166.231.3', 'Microsoft URL control'),
(01937, '198.139.155.32', 'Internetseer.com'),
(01938, '198.139.155.7', 'Internetseer.com'),
(01939, '198.185.18.207', 'Lexis-Nexis.com'),
(01940, '198.4.83.49', 'Almaden'),
(01941, '204.62.226.36', 'MarkWatch.com'),
(01942, '206.190.171.174', 'MarkWatch.com'),
(01943, '206.190.171.175', 'MarkWatch.com'),
(01944, '207.140.168.143', 'Tivra'),
(01945, '207.140.168.146', 'Tivra'),
(01946, '207.200.81.145', 'Robozilla'),
(01947, '207.235.6.157', 'Webrank'),
(01948, '208.128.7.215', 'Grub.org'),
(01949, '209.167.50.22', 'LinkWalker'),
(01950, '209.167.50.25', 'LinkWalker'),
(01951, '209.247.40.99', 'Alexa'),
(01952, '209.61.182.37', 'Tracerlock'),
(01953, '209.73.228.163', 'Webclipping.com'),
(01954, '209.73.228.167', 'Webclipping.com'),
(01955, '211.101.236.162', 'Indy Library'),
(01956, '211.101.236.91', 'Indy Library'),
(01957, '211.154.211.209', 'Google Fake'),
(01958, '212.1.26.100', 'Indy Library'),
(01959, '212.253.129.11', 'Spidersoft'),
(01960, '212.73.246.71', 'Xyleme.com'),
(01961, '212.73.246.73', 'Xyleme.com'),
(01962, '213.97.108.143', 'Inria.fr'),
(01963, '216.145.50.40', 'Yahoo.com'),
(01964, '216.182.214.7', 'NetMechanic'),
(01965, '24.126.133.124', 'Lite Bot'),
(01966, '62.58.2.5', 'Eidetica.com'),
(01967, '63.148.99.224', 'Cyveillance'),
(01968, '63.148.99.255', 'Cyveillance'),
(01969, '63.173.190.19', 'Whizbang'),
(01970, '63.212.171.171', 'Inria.fr'),
(01971, '64.133.109.250', 'IncyWincy'),
(01972, '64.14.241.54', 'websmostlinked.com'),
(01973, '64.210.196.195', 'Girafa'),
(01974, '64.210.196.198', 'Girafa'),
(01975, '64.222.18.44', 'DTSearch'),
(01976, '64.241.242.11', 'Zealbot'),
(01977, '64.241.243.32', 'Zealbot'),
(01978, '64.241.243.65', 'Zealbot'),
(01979, '64.241.243.66', 'Zealbot'),
(01980, '64.69.79.210', 'Teradex Mapper'),
(01981, '64.81.243.66', 'IncyWincy'),
(01982, '66.221.171.1', 'Websquash.com'),
(01983, '66.28.20.194', 'Metacarta.com'),
(01984, '66.28.44.122', 'Metacarta.com'),
(01985, '66.28.44.123', 'Metacarta.com'),
(01986, '66.28.44.125', 'Metacarta.com'),
(01987, '66.28.68.234', 'Metacarta.com'),
(01988, '66.28.68.235', 'Metacarta.com'),
(01989, '66.28.68.236', 'Metacarta.com'),
(01990, '66.28.68.237', 'Metacarta.com'),
(01991, '64.241.243.123', 'WISEnut'),
(01992, '64.241.242.177', 'WISEnut'),
(01993, '64.241.243.65', 'WISEnut'),
(01994, '64.241.243.124', 'WISEnut'),
(01995, '65.116.145.141', 'WISEnut'),
(01996, '65.113.96.174', 'WISEnut'),
(01997, '65.116.145', 'WISEnut'),
(01998, '66.35.208.59', 'WISEnut'),
(01999, '66.35.208.60', 'WISEnut'),
(02000, '66.35.208.112', 'WISEnut'),
(02001, '66.35.208.158', 'WISEnut'),
(02002, '66.35.208.160', 'WISEnut'),
(02003, '66.35.208.206', 'WISEnut'),
(02004, '66.35.208.210', 'WISEnut'),
(02005, '66.35.208.211', 'WISEnut'),
(02006, '208.232.154.64', 'WISEnut'),
(02007, '209.249.66.10', 'WISEnut'),
(02008, '209.249.66.26', 'WISEnut'),
(02009, '209.249.66.36', 'WISEnut'),
(02010, '209.249.67.101', 'WISEnut'),
(02011, '209.249.67.102', 'WISEnut'),
(02012, '209.249.67.103', 'WISEnut'),
(02013, '209.249.67.104', 'WISEnut'),
(02014, '209.249.67.105', 'WISEnut'),
(02015, '209.249.67.106', 'WISEnut'),
(02016, '209.249.67.107', 'WISEnut'),
(02017, '209.249.67.108', 'WISEnut'),
(02018, '209.249.67.109', 'WISEnut'),
(02019, '209.249.67.110', 'WISEnut'),
(02020, '209.249.67.111', 'WISEnut'),
(02021, '209.249.67.112', 'WISEnut'),
(02022, '209.249.67.113', 'WISEnut'),
(02023, '209.249.67.114', 'WISEnut'),
(02024, '209.249.67.115', 'WISEnut'),
(02025, '209.249.67.116', 'WISEnut'),
(02026, '209.249.67.117', 'WISEnut'),
(02027, '209.249.67.118', 'WISEnut'),
(02028, '209.249.67.119', 'WISEnut'),
(02029, '209.249.67.120', 'WISEnut'),
(02030, '209.249.67.121', 'WISEnut'),
(02031, '209.249.67.122', 'WISEnut'),
(02032, '209.249.67.125', 'WISEnut'),
(02033, '209.249.67.126', 'WISEnut'),
(02034, '209.249.67.127', 'WISEnut'),
(02035, '209.249.67.128', 'WISEnut'),
(02036, '209.249.67.129', 'WISEnut'),
(02037, '209.249.67.130', 'WISEnut'),
(02038, '209.249.67.131', 'WISEnut'),
(02039, '209.249.67.132', 'WISEnut'),
(02040, '209.249.67.133', 'WISEnut'),
(02041, '209.249.67.134', 'WISEnut'),
(02042, '209.249.67.135', 'WISEnut'),
(02043, '209.249.67.136', 'WISEnut'),
(02044, '209.249.67.137', 'WISEnut'),
(02045, '209.249.67.138', 'WISEnut'),
(02046, '209.249.67.139', 'WISEnut'),
(02047, '209.249.67.140', 'WISEnut'),
(02048, '209.249.67.141', 'WISEnut'),
(02049, '209.249.67.142', 'WISEnut'),
(02050, '209.249.67.143', 'WISEnut'),
(02051, '209.249.67.144', 'WISEnut'),
(02052, '210.109.141.5', 'WISEnut'),
(02053, '216.34.42.12', 'WISEnut'),
(02054, '216.34.42.14', 'WISEnut'),
(02055, '216.34.42.36', 'WISEnut'),
(02056, '216.34.42.38', 'WISEnut'),
(02057, '216.34.42.42', 'WISEnut'),
(02058, '216.34.42.47', 'WISEnut'),
(02059, '216.34.42.54', 'WISEnut'),
(02060, '216.34.42.55', 'WISEnut'),
(02061, '216.34.42.56', 'WISEnut'),
(02062, '216.34.42.57', 'WISEnut'),
(02063, '216.34.42.59', 'WISEnut'),
(02064, '216.34.42.110', 'WISEnut'),
(02065, '216.34.42.111', 'WISEnut'),
(02066, '216.34.42.112', 'WISEnut'),
(02067, '216.34.42.113', 'WISEnut'),
(02068, '216.34.42.114', 'WISEnut'),
(02069, '216.34.42.115', 'WISEnut'),
(02070, '216.34.42.116', 'WISEnut'),
(02071, '216.34.42.117', 'WISEnut'),
(02072, '216.34.42.171', 'WISEnut'),
(02073, '216.34.42.172', 'WISEnut'),
(02074, '216.34.42.173', 'WISEnut'),
(02075, '216.34.42.176', 'WISEnut'),
(02076, '216.34.42.210', 'WISEnut'),
(02077, '216.34.42.211', 'WISEnut'),
(02078, '216.34.42.212', 'WISEnut'),
(02079, '216.34.42.213', 'WISEnut'),
(02080, '216.34.42.214', 'WISEnut'),
(02081, '216.34.42.215', 'WISEnut'),
(02082, '216.34.42.216', 'WISEnut'),
(02083, '216.34.42.217', 'WISEnut'),
(02084, '216.88.158.142', 'WISEnut'),
(02085, '127.0.0.1', 'Lone Bot');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_czuser_conf`
--

DROP TABLE IF EXISTS `nuke_czuser_conf`;
CREATE TABLE IF NOT EXISTS `nuke_czuser_conf` (
  `user_ip` varchar(24) NOT NULL,
  `pms` varchar(24) NOT NULL,
  `spoint` varchar(24) NOT NULL,
  `user_posts` varchar(24) NOT NULL,
  `avatar` varchar(24) NOT NULL,
  `bbranks` varchar(24) NOT NULL,
  `most` varchar(24) NOT NULL,
  `hits` varchar(24) NOT NULL,
  `groups` varchar(24) NOT NULL,
  `tooltip` varchar(24) NOT NULL,
  `online` varchar(24) NOT NULL,
  `guests` varchar(24) NOT NULL,
  `chopped` varchar(24) NOT NULL,
  `pick` varchar(24) NOT NULL,
  `ordermode` varchar(24) NOT NULL,
  `charnum` varchar(24) NOT NULL,
  `davatar` varchar(24) NOT NULL,
  `duser` varchar(24) NOT NULL,
  `demail` varchar(24) NOT NULL,
  `dreg` varchar(24) NOT NULL,
  `dgender` varchar(24) NOT NULL,
  `dpost` varchar(24) NOT NULL,
  `dtheme` varchar(24) NOT NULL,
  `dwhere` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_czuser_conf`
--

INSERT INTO `nuke_czuser_conf` (`user_ip`, `pms`, `spoint`, `user_posts`, `avatar`, `bbranks`, `most`, `hits`, `groups`, `tooltip`, `online`, `guests`, `chopped`, `pick`, `ordermode`, `charnum`, `davatar`, `duser`, `demail`, `dreg`, `dgender`, `dpost`, `dtheme`, `dwhere`) VALUES
('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '10', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_czuser_info`
--

DROP TABLE IF EXISTS `nuke_czuser_info`;
CREATE TABLE IF NOT EXISTS `nuke_czuser_info` (
  `pic` varchar(40) NOT NULL,
  `view` varchar(40) NOT NULL,
  `king` tinyint(2) NOT NULL DEFAULT '0',
  `gname` varchar(40) NOT NULL,
  PRIMARY KEY (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_czuser_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_czuser_mostonline`
--

DROP TABLE IF EXISTS `nuke_czuser_mostonline`;
CREATE TABLE IF NOT EXISTS `nuke_czuser_mostonline` (
  `total` int(10) NOT NULL DEFAULT '0',
  `members` int(10) NOT NULL DEFAULT '0',
  `spiders` int(10) NOT NULL DEFAULT '0',
  `nonmembers` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_czuser_mostonline`
--


-- --------------------------------------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_dfw_code`
--

DROP TABLE IF EXISTS `nuke_dfw_code`;
CREATE TABLE IF NOT EXISTS `nuke_dfw_code` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` char(20) NOT NULL,
  `code` text,
  `desc` varchar(100) DEFAULT '',
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_dfw_tooltip_img`
--

INSERT INTO `nuke_dfw_tooltip_img` (`tipimage_username`, `tipimage_email`, `tipimage_regdate`, `tipimage_group`, `tipimage_posts`, `tipimage_theme`) VALUES
('images/DFW/tooltip/memberusr.gif', 'images/DFW/tooltip/messages.gif', 'images/DFW/tooltip/regdate.gif', 'images/DFW/tooltip/membership.gif', 'images/DFW/tooltip/posts.gif', 'images/DFW/tooltip/theme.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_categories`
--

DROP TABLE IF EXISTS `nuke_downloads_categories`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `ns_cat_note` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_downloads_categories`
--

INSERT INTO `nuke_downloads_categories` (`cid`, `title`, `cdescription`, `parentid`, `ns_cat_note`) VALUES
(1, 'Files', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_downloads`
--

DROP TABLE IF EXISTS `nuke_downloads_downloads`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_downloads` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `downloadratingsummary` double(6,4) NOT NULL DEFAULT '0.0000',
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `totalcomments` int(11) NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `homepage` varchar(200) NOT NULL,
  `ns_compat` varchar(30) NOT NULL,
  `ns_des_img` varchar(100) NOT NULL,
  `ns_disable` tinyint(1) NOT NULL DEFAULT '0',
  `ns_mirror_one` varchar(255) NOT NULL,
  `ns_mirror_two` varchar(255) NOT NULL,
  `ns_dl_down_note` text NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_downloads_downloads`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_editorials`
--

DROP TABLE IF EXISTS `nuke_downloads_editorials`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_editorials` (
  `downloadid` int(11) NOT NULL DEFAULT '0',
  `adminid` varchar(60) NOT NULL,
  `editorialtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editorialtext` text NOT NULL,
  `editorialtitle` varchar(100) NOT NULL,
  PRIMARY KEY (`downloadid`),
  KEY `downloadid` (`downloadid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_downloads_editorials`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_modrequest`
--

DROP TABLE IF EXISTS `nuke_downloads_modrequest`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_modrequest` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `modifysubmitter` varchar(60) NOT NULL,
  `brokendownload` int(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `homepage` varchar(200) NOT NULL,
  `ns_compat` varchar(30) NOT NULL,
  `ns_des_img` varchar(100) NOT NULL,
  `ns_mirror_one` varchar(255) NOT NULL,
  `ns_mirror_two` varchar(255) NOT NULL,
  PRIMARY KEY (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_downloads_modrequest`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_newdownload`
--

DROP TABLE IF EXISTS `nuke_downloads_newdownload`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_newdownload` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `submitter` varchar(60) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `homepage` varchar(200) NOT NULL,
  `ns_compat` varchar(30) NOT NULL,
  `ns_des_img` varchar(100) NOT NULL,
  `ns_mirror_one` varchar(255) NOT NULL,
  `ns_mirror_two` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_downloads_newdownload`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_downloads_votedata`
--

DROP TABLE IF EXISTS `nuke_downloads_votedata`;
CREATE TABLE IF NOT EXISTS `nuke_downloads_votedata` (
  `ratingdbid` int(11) NOT NULL AUTO_INCREMENT,
  `ratinglid` int(11) NOT NULL DEFAULT '0',
  `ratinguser` varchar(60) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `ratinghostname` varchar(60) NOT NULL,
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_downloads_votedata`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_faqanswer`
--

DROP TABLE IF EXISTS `nuke_faqanswer`;
CREATE TABLE IF NOT EXISTS `nuke_faqanswer` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) NOT NULL DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_faqanswer`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_faqcategories`
--

DROP TABLE IF EXISTS `nuke_faqcategories`;
CREATE TABLE IF NOT EXISTS `nuke_faqcategories` (
  `id_cat` tinyint(3) NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `flanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cat`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_faqcategories`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_forum_message`
--

DROP TABLE IF EXISTS `nuke_forum_message`;
CREATE TABLE IF NOT EXISTS `nuke_forum_message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` varchar(14) NOT NULL,
  `expire` int(7) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `view` int(1) NOT NULL DEFAULT '1',
  `mlanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_forum_message`
--

INSERT INTO `nuke_forum_message` (`mid`, `title`, `content`, `date`, `expire`, `active`, `view`, `mlanguage`) VALUES
(1, 'Test', '<p>Welcome to Platinum Nuke Pro v1! You can use this to post important info in your forums for your members or just about anything!</p>', '1294169568', 0, 1, 1, ''),
(3, 'Test 2', '<div align="center">\r\n	<font color="#ff6600"><strong><font face="Comic Sans MS" size="5" style="background-color: rgb(0, 255, 255);"><span class="Title">Testing CKeditor</span></font></strong></font><font color="#ff6600"><strong><font face="Comic Sans MS" size="5" style="background-color: rgb(0, 255, 255);"><span class="Title"> </span></font></strong></font></div>\r\n<div align="center">\r\n	<span style="color: rgb(64, 224, 208);"><font face="Comic Sans MS" size="5" style="background-color: rgb(0, 255, 255);"><span class="Title"><span style="background-color: rgb(255, 140, 0);"><a class="colorbox" href="/userfiles/images/mw2-2.jpg" title="test"><img align="middle" alt="test" src="/userfiles/images/mw2-2.jpg" style="width: 100px; height: 75px;" /></a><br />\r\n	</span></span></font></span></div>\r\n<div align="center">\r\n	&nbsp;</div>\r\n<div align="center">\r\n	<span style="color: rgb(64, 224, 208);"><font face="Comic Sans MS" size="5" style="background-color: rgb(0, 255, 255);"><span class="Title"><span style="background-color: rgb(255, 140, 0);">Demo</span></span></font></span></div>\r\n', '1294654998', 0, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_gcal_category`
--

DROP TABLE IF EXISTS `nuke_gcal_category`;
CREATE TABLE IF NOT EXISTS `nuke_gcal_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_google_bot_detector`
--

DROP TABLE IF EXISTS `nuke_google_bot_detector`;
CREATE TABLE IF NOT EXISTS `nuke_google_bot_detector` (
  `detect_id` int(8) NOT NULL AUTO_INCREMENT,
  `detect_time` int(11) NOT NULL DEFAULT '0',
  `detect_url` varchar(255) NOT NULL,
  PRIMARY KEY (`detect_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_google_bot_detector`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_groups`
--

DROP TABLE IF EXISTS `nuke_groups`;
CREATE TABLE IF NOT EXISTS `nuke_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `points` int(10) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_groups`
--

INSERT INTO `nuke_groups` (`id`, `name`, `description`, `points`) VALUES
(1, 'Guest', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_groups_points`
--

DROP TABLE IF EXISTS `nuke_groups_points`;
CREATE TABLE IF NOT EXISTS `nuke_groups_points` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `points` int(10) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `nuke_groups_points`
--

INSERT INTO `nuke_groups_points` (`id`, `points`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 1),
(13, 0),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 0),
(21, 2),
(23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_headlines`
--

DROP TABLE IF EXISTS `nuke_headlines`;
CREATE TABLE IF NOT EXISTS `nuke_headlines` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL,
  `headlinesurl` varchar(200) NOT NULL,
  PRIMARY KEY (`hid`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_headlines`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_categories`
--

DROP TABLE IF EXISTS `nuke_hnl_categories`;
CREATE TABLE IF NOT EXISTS `nuke_hnl_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ctitle` varchar(50) NOT NULL,
  `cdescription` text NOT NULL,
  `cblocklimit` int(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nuke_hnl_categories`
--

INSERT INTO `nuke_hnl_categories` (`cid`, `ctitle`, `cdescription`, `cblocklimit`) VALUES
(1, '*Unassigned*', 'This is a catch-all category where newsletters can default to or if all other categories are removed.  Do NOT remove this category!  This category of newsletters are only shown to the Admins.  ', 5),
(2, 'Archived Newsletters', 'This category is for newsletter subscribers.', 5),
(3, 'Archived Mass Mails', 'This category is used for mass mails.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_cfg`
--

DROP TABLE IF EXISTS `nuke_hnl_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_hnl_cfg` (
  `cfg_nm` varchar(255) NOT NULL,
  `cfg_val` longtext NOT NULL,
  PRIMARY KEY (`cfg_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_hnl_cfg`
--

INSERT INTO `nuke_hnl_cfg` (`cfg_nm`, `cfg_val`) VALUES
('debug_mode', 'OFF'),
('debug_output', 'DISPLAY'),
('show_blocks', '1'),
('dl_module', 'downloads'),
('blk_lmt', '10'),
('scroll', '1'),
('scroll_height', '180'),
('scroll_amt', '2'),
('scroll_delay', '100'),
('version', '1.3.0'),
('show_hits', '1'),
('show_dates', '1'),
('show_sender', '1'),
('show_categories', '1'),
('nsn_groups', '1'),
('latest_news', '5'),
('latest_downloads', '5'),
('latest_links', '5'),
('latest_forums', '5'),
('latest_reviews', '5'),
('wysiwyg_on', '1'),
('wysiwyg_rows', '30');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_hnl_newsletters`
--

DROP TABLE IF EXISTS `nuke_hnl_newsletters`;
CREATE TABLE IF NOT EXISTS `nuke_hnl_newsletters` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '1',
  `topic` varchar(100) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `filename` varchar(32) NOT NULL,
  `datesent` date DEFAULT NULL,
  `view` int(1) NOT NULL DEFAULT '0',
  `groups` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nuke_hnl_newsletters`
--

INSERT INTO `nuke_hnl_newsletters` (`nid`, `cid`, `topic`, `sender`, `filename`, `datesent`, `view`, `groups`, `hits`) VALUES
(1, 1, 'PREVIEW Newsletter File', 'Admin', 'tmp.php', '0000-00-00', 99, '', 0),
(2, 1, 'Tested Email Temporary File', 'Admin', 'testemail.php', '0000-00-00', 99, '', 0);

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
-- Table structure for table `nuke_journal`
--

DROP TABLE IF EXISTS `nuke_journal`;
CREATE TABLE IF NOT EXISTS `nuke_journal` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(30) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `bodytext` text NOT NULL,
  `mood` varchar(48) NOT NULL,
  `pdate` varchar(48) NOT NULL,
  `ptime` varchar(48) NOT NULL,
  `status` varchar(48) NOT NULL,
  `mtime` varchar(48) NOT NULL,
  `mdate` varchar(48) NOT NULL,
  PRIMARY KEY (`jid`),
  KEY `jid` (`jid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_journal`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_journal_comments`
--

DROP TABLE IF EXISTS `nuke_journal_comments`;
CREATE TABLE IF NOT EXISTS `nuke_journal_comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(48) NOT NULL,
  `aid` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `pdate` varchar(48) NOT NULL,
  `ptime` varchar(48) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_journal_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_journal_stats`
--

DROP TABLE IF EXISTS `nuke_journal_stats`;
CREATE TABLE IF NOT EXISTS `nuke_journal_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joid` varchar(48) NOT NULL,
  `nop` varchar(48) NOT NULL,
  `ldp` varchar(24) NOT NULL,
  `ltp` varchar(24) NOT NULL,
  `micro` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_journal_stats`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_lastseen`
--

DROP TABLE IF EXISTS `nuke_lastseen`;
CREATE TABLE IF NOT EXISTS `nuke_lastseen` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `date` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_lastseen`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_cfg`
--

DROP TABLE IF EXISTS `nuke_legal_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_legal_cfg` (
  `contact_email` varchar(255) NOT NULL DEFAULT 'legal@MySite.com',
  `contact_subject` varchar(255) NOT NULL DEFAULT 'Legal Notice Inquiry',
  `country` varchar(255) NOT NULL DEFAULT 'United States of America'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_legal_cfg`
--

INSERT INTO `nuke_legal_cfg` (`contact_email`, `contact_subject`, `country`) VALUES
('legal@MySite.com', 'Legal Notice Inquiry', 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_legal_docs`
--

DROP TABLE IF EXISTS `nuke_legal_docs`;
CREATE TABLE IF NOT EXISTS `nuke_legal_docs` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(32) NOT NULL,
  `doc_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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

DROP TABLE IF EXISTS `nuke_legal_text`;
CREATE TABLE IF NOT EXISTS `nuke_legal_text` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `doc_text` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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

DROP TABLE IF EXISTS `nuke_legal_text_map`;
CREATE TABLE IF NOT EXISTS `nuke_legal_text_map` (
  `mid` mediumint(9) NOT NULL,
  `did` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `language` varchar(32) NOT NULL DEFAULT 'english',
  UNIQUE KEY `mid` (`mid`,`did`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Table structure for table `nuke_links_categories`
--

DROP TABLE IF EXISTS `nuke_links_categories`;
CREATE TABLE IF NOT EXISTS `nuke_links_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_links_categories`
--

INSERT INTO `nuke_links_categories` (`cid`, `title`, `cdescription`, `parentid`) VALUES
(1, 'Support Sites', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_editorials`
--

DROP TABLE IF EXISTS `nuke_links_editorials`;
CREATE TABLE IF NOT EXISTS `nuke_links_editorials` (
  `linkid` int(11) NOT NULL DEFAULT '0',
  `adminid` varchar(60) NOT NULL,
  `editorialtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editorialtext` text NOT NULL,
  `editorialtitle` varchar(100) NOT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_links_editorials`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_links`
--

DROP TABLE IF EXISTS `nuke_links_links`;
CREATE TABLE IF NOT EXISTS `nuke_links_links` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `linkratingsummary` double(6,4) NOT NULL DEFAULT '0.0000',
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `totalcomments` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_links_links`
--

INSERT INTO `nuke_links_links` (`lid`, `cid`, `sid`, `title`, `url`, `description`, `date`, `name`, `email`, `hits`, `submitter`, `linkratingsummary`, `totalvotes`, `totalcomments`) VALUES
(1, 1, 0, 'Platinum Nuke', 'http://www.platinumnukepro.com', 'The Home of Platinum Nuke 76v5.0.2.', '2007-05-18 00:20:00', 'SgtMudd', 'SgtMudd@platinumnukepro.com', 41, 'SgtMudd', 0.0000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_modrequest`
--

DROP TABLE IF EXISTS `nuke_links_modrequest`;
CREATE TABLE IF NOT EXISTS `nuke_links_modrequest` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `modifysubmitter` varchar(60) NOT NULL,
  `brokenlink` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_links_modrequest`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_newlink`
--

DROP TABLE IF EXISTS `nuke_links_newlink`;
CREATE TABLE IF NOT EXISTS `nuke_links_newlink` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `submitter` varchar(60) NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_links_newlink`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_links_votedata`
--

DROP TABLE IF EXISTS `nuke_links_votedata`;
CREATE TABLE IF NOT EXISTS `nuke_links_votedata` (
  `ratingdbid` int(11) NOT NULL AUTO_INCREMENT,
  `ratinglid` int(11) NOT NULL DEFAULT '0',
  `ratinguser` varchar(60) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `ratinghostname` varchar(60) NOT NULL,
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_links_votedata`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_link_us`
--

DROP TABLE IF EXISTS `nuke_link_us`;
CREATE TABLE IF NOT EXISTS `nuke_link_us` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `site_image` varchar(255) NOT NULL,
  `site_description` varchar(255) NOT NULL,
  `site_hits` varchar(255) NOT NULL,
  `site_status` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL,
  `button_type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nuke_link_us`
--

INSERT INTO `nuke_link_us` (`id`, `site_name`, `site_url`, `site_image`, `site_description`, `site_hits`, `site_status`, `date_added`, `button_type`) VALUES
(1, 'Mach-hosting.com', 'http://mach-hosting.com', 'modules/Link_Us/buttons/MH_button2.jpg', 'TeamSpeak and web hosting, Site installs and repairs.', '47', '1', '21 Dec, 2009', '1'),
(2, 'Platinum Nuke', 'http://platinumnukepro.com', 'images/platinum_502_88x31.gif', 'Platinum Nuke Developement, support, installs and more!', '44', '1', '21 Dec, 2009', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_link_us_config`
--

DROP TABLE IF EXISTS `nuke_link_us_config`;
CREATE TABLE IF NOT EXISTS `nuke_link_us_config` (
  `my_image` varchar(255) NOT NULL,
  `fade_effect` varchar(15) NOT NULL,
  `marquee` varchar(15) NOT NULL,
  `marquee_direction` varchar(15) NOT NULL,
  `marquee_scroll` varchar(15) NOT NULL,
  `block_height` varchar(15) NOT NULL,
  `show_clicks` varchar(15) NOT NULL,
  `button_seperate` varchar(15) NOT NULL,
  `user_submit` varchar(15) NOT NULL,
  `button_method` varchar(15) NOT NULL,
  `button_height` varchar(15) NOT NULL,
  `button_width` varchar(15) NOT NULL,
  `upload_file` varchar(255) NOT NULL,
  `button_standard` varchar(15) NOT NULL,
  `button_banner` varchar(15) NOT NULL,
  `button_resource` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_link_us_config`
--

INSERT INTO `nuke_link_us_config` (`my_image`, `fade_effect`, `marquee`, `marquee_direction`, `marquee_scroll`, `block_height`, `show_clicks`, `button_seperate`, `user_submit`, `button_method`, `button_height`, `button_width`, `upload_file`, `button_standard`, `button_banner`, `button_resource`) VALUES
('http://platinumnukepro.com/platnuke_bnr.gif', '1', '1', '1', '2', '2', '1', '0', '0', '0', '31', '88', 'modules/Link_Us/buttons/', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_mail_config`
--

DROP TABLE IF EXISTS `nuke_mail_config`;
CREATE TABLE IF NOT EXISTS `nuke_mail_config` (
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `mailer` tinyint(1) NOT NULL DEFAULT '1',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_helo` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` int(10) NOT NULL DEFAULT '25',
  `smtp_auth` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_uname` varchar(255) NOT NULL DEFAULT '',
  `smtp_passw` varchar(255) NOT NULL DEFAULT '',
  `sendmail_path` varchar(255) NOT NULL DEFAULT '/usr/sbin/sendmail',
  `smtp_encrypt` tinyint(4) NOT NULL DEFAULT '0',
  `smtp_encrypt_method` tinyint(4) NOT NULL DEFAULT '0',
  `reply_to` varchar(255) NOT NULL,
  `debug_level` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mailer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_mail_config`
--

INSERT INTO `nuke_mail_config` (`active`, `mailer`, `smtp_host`, `smtp_helo`, `smtp_port`, `smtp_auth`, `smtp_uname`, `smtp_passw`, `sendmail_path`, `smtp_encrypt`, `smtp_encrypt_method`, `reply_to`, `debug_level`) VALUES
(0, 2, 'smtp.comcast.net', 'smtp.comcast.net', 25, 1, 'djjoker@comcast.net', 'jasmine21', '/usr/sbin/sendmail', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_main`
--

DROP TABLE IF EXISTS `nuke_main`;
CREATE TABLE IF NOT EXISTS `nuke_main` (
  `main_module` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_main`
--

INSERT INTO `nuke_main` (`main_module`) VALUES
('News');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu`
--

DROP TABLE IF EXISTS `nuke_menu`;
CREATE TABLE IF NOT EXISTS `nuke_menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `nuke_menu`
--

INSERT INTO `nuke_menu` (`mid`, `cid`, `title`, `weight`) VALUES
(1, 1, 'Forums', 1),
(2, 3, 'Content', 12),
(3, 3, 'Reviews', 11),
(4, 3, 'Stories_Archive', 10),
(5, 2, 'Submit_News', 8),
(6, 2, 'Groups', 9),
(7, 1, 'Downloads', 2),
(8, 1, 'AvantGo', 3),
(9, 4, 'Statistics', 5),
(10, 4, 'Your_Account', 4),
(11, 4, 'Journal', 7),
(12, 4, 'Search', 6),
(13, 4, 'Legal', 8),
(14, 4, 'Change_Log', 9),
(15, 2, 'Donations', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_menu_cat`
--

DROP TABLE IF EXISTS `nuke_menu_cat`;
CREATE TABLE IF NOT EXISTS `nuke_menu_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_menu_cat`
--

INSERT INTO `nuke_menu_cat` (`cid`, `cat`, `weight`) VALUES
(1, 'General', 1),
(2, 'Community', 3),
(3, 'Content', 4),
(4, 'Info', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_message`
--

DROP TABLE IF EXISTS `nuke_message`;
CREATE TABLE IF NOT EXISTS `nuke_message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` varchar(14) NOT NULL,
  `expire` int(7) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `view` int(1) NOT NULL DEFAULT '1',
  `groups` text NOT NULL,
  `mlanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_message`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_modules`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `nuke_modules`
--

INSERT INTO `nuke_modules` (`mid`, `title`, `custom_title`, `active`, `view`, `groups`, `inmenu`, `mod_group`, `mcid`, `admins`) VALUES
(1, 'AvantGo', 'AvantGo', 1, 0, '', 1, 0, 1, ''),
(2, 'Ban_Request', 'Request Ban', 1, 0, '', 1, 0, 1, ''),
(3, 'Banner_Ads', 'Banner Ads', 1, 0, '', 1, 0, 3, ''),
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
(70, 'About_Us', 'About_Us', 0, 0, '', 1, 0, 1, ''),
(66, 'Tags', 'Tags', 1, 0, '', 1, 0, 4, ''),
(67, 'Surveys', 'Surveys', 0, 0, '', 1, 0, 1, ''),
(68, 'Legal', 'Legal', 0, 0, '', 1, 0, 1, ''),
(69, 'Forums_Glance_Admin', 'Forums_Glance_Admin', 0, 0, '', 1, 0, 1, ''),
(71, 'Admin_Image_Control', 'Admin_Image_Control', 0, 0, '', 1, 0, 1, ''),
(72, 'ErrorDocuments', 'ErrorDocuments', 0, 0, '', 1, 0, 1, ''),
(73, 'GCalendar', 'GCalendar', 0, 0, '', 1, 0, 1, ''),
(74, 'Manga_Viewer', 'Manga_Viewer', 0, 0, '', 1, 0, 1, '');


-- --------------------------------------------------------

--
-- Table structure for table `nuke_modules_categories`
--

DROP TABLE IF EXISTS `nuke_modules_categories`;
CREATE TABLE IF NOT EXISTS `nuke_modules_categories` (
  `mcid` int(11) NOT NULL AUTO_INCREMENT,
  `mcname` varchar(60) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mcid`),
  KEY `mcid` (`mcid`),
  KEY `mcname` (`mcname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_modules_categories`
--

INSERT INTO `nuke_modules_categories` (`mcid`, `mcname`, `visible`) VALUES
(1, 'General', 1),
(2, 'Community', 1),
(3, 'Members', 1),
(4, 'Information', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_mostonline`
--

DROP TABLE IF EXISTS `nuke_mostonline`;
CREATE TABLE IF NOT EXISTS `nuke_mostonline` (
  `total` int(10) NOT NULL DEFAULT '0',
  `members` int(10) NOT NULL DEFAULT '0',
  `nonmembers` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_mostonline`
--

INSERT INTO `nuke_mostonline` (`total`, `members`, `nonmembers`) VALUES
(0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_newpages`
--

DROP TABLE IF EXISTS `nuke_newpages`;
CREATE TABLE IF NOT EXISTS `nuke_newpages` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `page_header` text NOT NULL,
  `text` text NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `uname` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clanguage` varchar(30) NOT NULL DEFAULT 'english',
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_newpages`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_news_config`
--

DROP TABLE IF EXISTS `nuke_news_config`;
CREATE TABLE IF NOT EXISTS `nuke_news_config` (
  `newsrows` int(1) NOT NULL DEFAULT '1',
  `bookmark` int(1) NOT NULL DEFAULT '0',
  `rblocks` int(1) NOT NULL DEFAULT '0',
  `showtags` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_news_config`
--

INSERT INTO `nuke_news_config` (`newsrows`, `bookmark`, `rblocks`, `showtags`) VALUES
(1, 1, 1, 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnba_config`
--

DROP TABLE IF EXISTS `nuke_nsnba_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnba_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
-- Table structure for table `nuke_nsncb_blocks`
--

DROP TABLE IF EXISTS `nuke_nsncb_blocks`;
CREATE TABLE IF NOT EXISTS `nuke_nsncb_blocks` (
  `rid` tinyint(2) NOT NULL DEFAULT '0',
  `cgid` tinyint(2) NOT NULL DEFAULT '0',
  `cbid` tinyint(2) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `wtype` tinyint(1) NOT NULL DEFAULT '0',
  `width` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsncb_blocks`
--

INSERT INTO `nuke_nsncb_blocks` (`rid`, `cgid`, `cbid`, `title`, `filename`, `content`, `wtype`, `width`) VALUES
(1, 1, 1, '', 'block-Arcade.php', '', 1, 50),
(2, 1, 2, '', 'block-Nuke_Blog.php', '', 1, 50),
(3, 1, 3, 'Place Holder', '', '', 1, 25),
(4, 1, 4, 'Place Holder', '', '', 1, 25),
(5, 2, 1, '', 'block-Arcade.php', '', 1, 50),
(6, 2, 2, '', 'block-Donat_o_Meter.php', '', 1, 50),
(7, 2, 3, '', '', '', 1, 25),
(8, 2, 4, '', '', '', 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsncb_config`
--

DROP TABLE IF EXISTS `nuke_nsncb_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsncb_config` (
  `cgid` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `count` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cgid`),
  UNIQUE KEY `cfgid` (`cgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsncb_config`
--

INSERT INTO `nuke_nsncb_config` (`cgid`, `enabled`, `height`, `count`) VALUES
(1, 0, 0, 2),
(2, 1, 400, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_accesses`
--

DROP TABLE IF EXISTS `nuke_nsngd_accesses`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_accesses` (
  `username` varchar(60) NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `uploads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsngd_accesses`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_categories`
--

DROP TABLE IF EXISTS `nuke_nsngd_categories`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `whoadd` tinyint(2) NOT NULL DEFAULT '0',
  `uploaddir` varchar(255) NOT NULL,
  `canupload` tinyint(2) NOT NULL DEFAULT '0',
  `active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_nsngd_categories`
--

INSERT INTO `nuke_nsngd_categories` (`cid`, `title`, `cdescription`, `parentid`, `whoadd`, `uploaddir`, `canupload`, `active`) VALUES
(1, 'Files', 'Test category', 0, 2, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_config`
--

DROP TABLE IF EXISTS `nuke_nsngd_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsngd_config`
--

INSERT INTO `nuke_nsngd_config` (`config_name`, `config_value`) VALUES
('admperpage', '50'),
('blockunregmodify', '1'),
('dateformat', 'D M j G:i:s T Y'),
('mostpopular', '25'),
('mostpopulartrig', '0'),
('perpage', '10'),
('popular', '500'),
('results', '10'),
('show_links_num', '0'),
('usegfxcheck', '0'),
('show_download', '0'),
('version_number', '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_downloads`
--

DROP TABLE IF EXISTS `nuke_nsngd_downloads`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_downloads` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `sub_ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `version` varchar(20) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_nsngd_downloads`
--

INSERT INTO `nuke_nsngd_downloads` (`lid`, `cid`, `sid`, `title`, `url`, `description`, `date`, `name`, `email`, `hits`, `submitter`, `sub_ip`, `filesize`, `version`, `homepage`, `active`) VALUES
(1, 1, 0, 'test', 'modules/PrivateDownloads/loads/arcade_install.zip', 'This is a test upload', '2007-06-19 01:07:05', 'SgtMudd', 'SgtMudd@platinumnukepro.com', 1, 'SgtMudd', '127.0.0.1', 3204, '1', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_extensions`
--

DROP TABLE IF EXISTS `nuke_nsngd_extensions`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_extensions` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ext` varchar(6) NOT NULL,
  `file` tinyint(1) NOT NULL DEFAULT '0',
  `image` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `ext` (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `nuke_nsngd_extensions`
--

INSERT INTO `nuke_nsngd_extensions` (`eid`, `ext`, `file`, `image`) VALUES
(1, '.ace', 1, 0),
(2, '.arj', 1, 0),
(3, '.bz', 1, 0),
(4, '.bz2', 1, 0),
(5, '.cab', 1, 0),
(6, '.exe', 1, 0),
(7, '.gif', 0, 1),
(8, '.gz', 1, 0),
(9, '.iso', 1, 0),
(10, '.jpeg', 0, 1),
(11, '.jpg', 0, 1),
(12, '.lha', 1, 0),
(13, '.lzh', 1, 0),
(14, '.png', 0, 1),
(15, '.rar', 1, 0),
(16, '.tar', 1, 0),
(17, '.tgz', 1, 0),
(18, '.uue', 1, 0),
(19, '.zip', 1, 0),
(20, '.zoo', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_mods`
--

DROP TABLE IF EXISTS `nuke_nsngd_mods`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_mods` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `modifier` varchar(60) NOT NULL,
  `sub_ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `brokendownload` int(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `version` varchar(20) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_nsngd_mods`
--

INSERT INTO `nuke_nsngd_mods` (`rid`, `lid`, `cid`, `sid`, `title`, `url`, `description`, `modifier`, `sub_ip`, `brokendownload`, `name`, `email`, `filesize`, `version`, `homepage`) VALUES
(1, 1, 0, 0, '', '', '', 'Download Script<br />Sep 08, 2011 4:22:pm', '112.205.83.196', 1, '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngd_new`
--

DROP TABLE IF EXISTS `nuke_nsngd_new`;
CREATE TABLE IF NOT EXISTS `nuke_nsngd_new` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `submitter` varchar(60) NOT NULL,
  `sub_ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `version` varchar(20) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsngd_new`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngr_config`
--

DROP TABLE IF EXISTS `nuke_nsngr_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsngr_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsngr_config`
--

INSERT INTO `nuke_nsngr_config` (`config_name`, `config_value`) VALUES
('perpage', '50'),
('date_format', 'Y-m-d'),
('send_notice', '1'),
('version_number', '1.7.1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngr_groups`
--

DROP TABLE IF EXISTS `nuke_nsngr_groups`;
CREATE TABLE IF NOT EXISTS `nuke_nsngr_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(32) NOT NULL,
  `gdesc` text NOT NULL,
  `gpublic` tinyint(1) NOT NULL DEFAULT '0',
  `glimit` int(11) NOT NULL DEFAULT '0',
  `phpBB` int(11) NOT NULL DEFAULT '0',
  `muid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nuke_nsngr_groups`
--

INSERT INTO `nuke_nsngr_groups` (`gid`, `gname`, `gdesc`, `gpublic`, `glimit`, `phpBB`, `muid`) VALUES
(1, 'Moderators', 'Moderators of this Forum', 0, 0, 3, 2),
(4, 'Test Groupie', 'This is a test group for the modules', 0, 0, 0, 2),
(5, 'Administrators', '', 0, 0, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsngr_users`
--

DROP TABLE IF EXISTS `nuke_nsngr_users`;
CREATE TABLE IF NOT EXISTS `nuke_nsngr_users` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(25) NOT NULL,
  `trial` tinyint(1) NOT NULL DEFAULT '0',
  `notice` tinyint(1) NOT NULL DEFAULT '0',
  `sdate` int(14) NOT NULL DEFAULT '0',
  `edate` int(14) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsngr_users`
--

INSERT INTO `nuke_nsngr_users` (`gid`, `uid`, `uname`, `trial`, `notice`, `sdate`, `edate`) VALUES
(1, 2, '', 0, 0, 2007, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnml_config`
--

DROP TABLE IF EXISTS `nuke_nsnml_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnml_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` tinytext NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnml_config`
--

INSERT INTO `nuke_nsnml_config` (`config_name`, `config_value`) VALUES
('date_format', 'Y-m-d H:i:s'),
('version_number', '1.0.3');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnml_issues`
--

DROP TABLE IF EXISTS `nuke_nsnml_issues`;
CREATE TABLE IF NOT EXISTS `nuke_nsnml_issues` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `text_plain` mediumtext,
  `text_html` mediumtext,
  `sent` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnml_issues`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnml_lists`
--

DROP TABLE IF EXISTS `nuke_nsnml_lists`;
CREATE TABLE IF NOT EXISTS `nuke_nsnml_lists` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnml_lists`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnml_tracked`
--

DROP TABLE IF EXISTS `nuke_nsnml_tracked`;
CREATE TABLE IF NOT EXISTS `nuke_nsnml_tracked` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL DEFAULT '0',
  `sent` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnml_tracked`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnml_users`
--

DROP TABLE IF EXISTS `nuke_nsnml_users`;
CREATE TABLE IF NOT EXISTS `nuke_nsnml_users` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `active` int(2) NOT NULL DEFAULT '0',
  `html` int(2) NOT NULL DEFAULT '0',
  `act_key` int(11) NOT NULL DEFAULT '0',
  `joined` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnml_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_2_config`
--

DROP TABLE IF EXISTS `nuke_nsnsp_2_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnsp_2_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnsp_2_config`
--

INSERT INTO `nuke_nsnsp_2_config` (`config_name`, `config_value`) VALUES
('require_user', '1'),
('image_type', '1'),
('max_width', '88'),
('max_height', '31'),
('version_number', '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_2_sites`
--

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

--
-- Dumping data for table `nuke_nsnsp_2_sites`
--

INSERT INTO `nuke_nsnsp_2_sites` (`site_id`, `site_name`, `site_url`, `site_image`, `site_status`, `site_hits`, `site_date`, `site_description`, `user_id`, `user_name`, `user_email`, `user_ip`) VALUES
(1, 'Platinum Nuke', 'http://platinumnukepro.com', 'modules/Supporters_2/images/Supporters_2/000001.gif', 1, 9, '2006-08-21', 'Home of Platinum Nuke!', 0, 'Admin', 'webmaster@platinumnukepro.com', ''),
(2, 'Mach-Hosting', 'http://nach-hosting.com', 'modules/Supporters_2/images/banners/machhosting.png', 1, 11, '2006-08-21', 'Web hosting, installs, and teamspeak servers.', 156, 'sales', 'sales@mach-hosting.com', ''),
(3, 'HaVoc SoulTaker', 'http://www.havocst.net', 'http://www.havocst.net/images/hst_bbw_linkus150.jpg', 1, 30, '2011-01-22', 'clan gaming ', 10, 'dochavoc', 'dochavoc@havocst.net', '74.129.33.93'),
(4, 'Mach-hosting.com', 'http://mach-network.com/partners/index.php?linkoutid=1280163765', 'http://mach-hosting.com/themes/RD-WebHost/images/hd/logo.png', 1, 0, '2011-10-16', 'Free and paid-for web hosting and email services. Site installs and repairs, forums and blogs, etc.', 0, 'TGates', 'tgates@mach-hosting.com', '71.233.168.221');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_config`
--

DROP TABLE IF EXISTS `nuke_nsnsp_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnsp_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnsp_config`
--

INSERT INTO `nuke_nsnsp_config` (`config_name`, `config_value`) VALUES
('image_type', '1'),
('max_height', '31'),
('max_width', '88'),
('require_user', '1'),
('version_check', '1318896000'),
('version_newest', '<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">\r\n<html><head>\r\n<title>404 Not Found</title>\r\n</head><body>\r\n<h1>Not Found</h1>\r\n<p>The requested URL /versions/nsnsp.txt was not found on this server.</p>\r\n<hr>\r\n<address>Apache/2.2.9 (Debian) PHP/5.2.6-1+lenny3 with Suhosin-Patch Server at www.nukescripts.net Port 80</address>\r\n</body></html>\r\n'),
('version_number', '1.4.00');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnsp_sites`
--

DROP TABLE IF EXISTS `nuke_nsnsp_sites`;
CREATE TABLE IF NOT EXISTS `nuke_nsnsp_sites` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_nsnsp_sites`
--

INSERT INTO `nuke_nsnsp_sites` (`site_id`, `site_name`, `site_url`, `site_image`, `site_status`, `site_hits`, `site_date`, `site_description`, `user_id`, `user_name`, `user_email`, `user_ip`) VALUES
(1, 'Platinum Nuke', 'http://www.platinumnukepro.com', 'modules/Supporters/images/supporters/platinum.gif', 1, 10, '2007-07-30', 'PHP-Nuke Platinum. ', 2, 'sgtmudd', 'sgtmudd@platinumnukepro.com', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_admins`
--

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

--
-- Dumping data for table `nuke_nsnst_admins`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blocked_ips`
--

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

--
-- Dumping data for table `nuke_nsnst_blocked_ips`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blocked_ranges`
--

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

--
-- Dumping data for table `nuke_nsnst_blocked_ranges`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_blockers`
--

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

--
-- Dumping data for table `nuke_nsnst_blockers`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_cidrs`
--

DROP TABLE IF EXISTS `nuke_nsnst_cidrs`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_cidrs` (
  `cidr` int(2) NOT NULL DEFAULT '0',
  `hosts` int(10) NOT NULL DEFAULT '0',
  `mask` varchar(15) NOT NULL,
  PRIMARY KEY (`cidr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnst_cidrs`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_config`
--

DROP TABLE IF EXISTS `nuke_nsnst_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` longtext NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnst_config`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_countries`
--

DROP TABLE IF EXISTS `nuke_nsnst_countries`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_countries` (
  `c2c` char(2) NOT NULL,
  `country` varchar(60) NOT NULL,
  PRIMARY KEY (`c2c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnst_countries`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_excluded_ranges`
--

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

--
-- Dumping data for table `nuke_nsnst_excluded_ranges`
--

INSERT INTO `nuke_nsnst_excluded_ranges` (`ip_lo`, `ip_hi`, `date`, `notes`, `c2c`) VALUES
(1659187506, 1659187506, 1256367568, 'Admin''s personal ip', '00');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_flood`
--

DROP TABLE IF EXISTS `nuke_nsnst_flood`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_flood` (
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `lastpost` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnst_flood`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_harvesters`
--

DROP TABLE IF EXISTS `nuke_nsnst_harvesters`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_harvesters` (
  `hid` int(2) NOT NULL AUTO_INCREMENT,
  `harvester` varchar(255) NOT NULL,
  PRIMARY KEY (`harvester`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

--
-- Dumping data for table `nuke_nsnst_harvesters`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_ip2country`
--

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

--
-- Dumping data for table `nuke_nsnst_ip2country`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_protected_ranges`
--

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

--
-- Dumping data for table `nuke_nsnst_protected_ranges`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_referers`
--

DROP TABLE IF EXISTS `nuke_nsnst_referers`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_referers` (
  `rid` int(2) NOT NULL AUTO_INCREMENT,
  `referer` varchar(255) NOT NULL,
  PRIMARY KEY (`referer`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=366 ;

--
-- Dumping data for table `nuke_nsnst_referers`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_strings`
--

DROP TABLE IF EXISTS `nuke_nsnst_strings`;
CREATE TABLE IF NOT EXISTS `nuke_nsnst_strings` (
  `sid` int(2) NOT NULL AUTO_INCREMENT,
  `string` varchar(255) NOT NULL,
  PRIMARY KEY (`string`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnst_strings`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnst_tracked_ips`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_config`
--

DROP TABLE IF EXISTS `nuke_nsnwb_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwb_config`
--

INSERT INTO `nuke_nsnwb_config` (`config_name`, `config_value`) VALUES
('new_project_priority', '1'),
('new_project_status', '0'),
('project_date_format', 'Y-m-d H:i:s'),
('new_task_priority', '1'),
('new_task_status', '0'),
('task_date_format', 'Y-m-d H:i:s'),
('new_project_position', '0'),
('new_task_position', '0'),
('version_number', '1.4.2');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_members`
--

DROP TABLE IF EXISTS `nuke_nsnwb_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(255) NOT NULL,
  `member_email` varchar(255) NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwb_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_members_positions`
--

DROP TABLE IF EXISTS `nuke_nsnwb_members_positions`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_members_positions` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) NOT NULL,
  `position_description` text NOT NULL,
  PRIMARY KEY (`position_id`),
  KEY `position_id` (`position_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_nsnwb_members_positions`
--

INSERT INTO `nuke_nsnwb_members_positions` (`position_id`, `position_name`, `position_description`) VALUES
(1, 'Project Manager', 'Project Manager'),
(2, 'Project Developer', 'Project Developer'),
(3, 'Project Tester', 'Project Tester'),
(4, 'Project Sponsor', 'Project Sponsor');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_projects`
--

DROP TABLE IF EXISTS `nuke_nsnwb_projects`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `project_percent` float NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(2) NOT NULL DEFAULT '0',
  `date_created` int(14) NOT NULL DEFAULT '0',
  `date_started` int(14) NOT NULL DEFAULT '0',
  `date_finished` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`project_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwb_projects`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_projects_members`
--

DROP TABLE IF EXISTS `nuke_nsnwb_projects_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_members` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `position_id` int(11) NOT NULL DEFAULT '0',
  KEY `project_id` (`project_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwb_projects_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_projects_priorities`
--

DROP TABLE IF EXISTS `nuke_nsnwb_projects_priorities`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_priorities` (
  `priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(30) NOT NULL,
  `priority_weight` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priority_id`),
  KEY `priority_id` (`priority_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nuke_nsnwb_projects_priorities`
--

INSERT INTO `nuke_nsnwb_projects_priorities` (`priority_id`, `priority_name`, `priority_weight`) VALUES
(1, 'N/A', 0),
(2, 'Low', 1),
(3, 'Medium', 2),
(4, 'High', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_projects_status`
--

DROP TABLE IF EXISTS `nuke_nsnwb_projects_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_projects_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `status_description` text NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_nsnwb_projects_status`
--

INSERT INTO `nuke_nsnwb_projects_status` (`status_id`, `status_name`, `status_description`) VALUES
(1, 'Open Pro', 'Open project');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_tasks`
--

DROP TABLE IF EXISTS `nuke_nsnwb_tasks`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_name` varchar(255) NOT NULL,
  `task_description` text NOT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '1',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `task_percent` float NOT NULL DEFAULT '0',
  `date_created` int(14) NOT NULL DEFAULT '0',
  `date_started` int(14) NOT NULL DEFAULT '0',
  `date_finished` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`task_id`),
  KEY `task_id` (`task_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwb_tasks`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_tasks_members`
--

DROP TABLE IF EXISTS `nuke_nsnwb_tasks_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_members` (
  `task_id` int(11) NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `position_id` int(11) NOT NULL DEFAULT '0',
  KEY `task_id` (`task_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwb_tasks_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_tasks_priorities`
--

DROP TABLE IF EXISTS `nuke_nsnwb_tasks_priorities`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_priorities` (
  `priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(30) NOT NULL,
  `priority_weight` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priority_id`),
  KEY `priority_id` (`priority_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_nsnwb_tasks_priorities`
--

INSERT INTO `nuke_nsnwb_tasks_priorities` (`priority_id`, `priority_name`, `priority_weight`) VALUES
(1, 'N/A', 0),
(2, 'Low', 1),
(3, 'Low-Medium', 2),
(4, 'Medium', 3),
(5, 'High-Medium', 4),
(6, 'High', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwb_tasks_status`
--

DROP TABLE IF EXISTS `nuke_nsnwb_tasks_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwb_tasks_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `status_description` text NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nuke_nsnwb_tasks_status`
--

INSERT INTO `nuke_nsnwb_tasks_status` (`status_id`, `status_name`, `status_description`) VALUES
(1, 'Closed', 'This task is closed.'),
(2, 'Completed', 'Task has been completed.'),
(3, 'Discontinued', 'Task has been discontinued.'),
(4, 'On Hold', 'Task is currently on hold.'),
(5, 'Open', 'This task is opened.'),
(6, 'Planned', 'This task is in the planning stages at this time.'),
(7, 'Progress', 'Task is being developed.'),
(8, 'Started', 'Task has moved to the development stage.'),
(9, 'Terminated', 'Task has an issue that prevents futher development.');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_config`
--

DROP TABLE IF EXISTS `nuke_nsnwp_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwp_config`
--

INSERT INTO `nuke_nsnwp_config` (`config_name`, `config_value`) VALUES
('admin_report_email', 'webmaster@yoursite.com'),
('notify_report_admin', '0'),
('notify_report_submitter', '0'),
('new_report_status', '1'),
('new_report_type', '1'),
('report_date_format', 'Y-m-d H:i:s'),
('version_number', '1.2.2');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_reports`
--

DROP TABLE IF EXISTS `nuke_nsnwp_reports`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `report_name` varchar(255) NOT NULL,
  `report_description` text NOT NULL,
  `submitter_name` varchar(32) NOT NULL,
  `submitter_email` varchar(255) NOT NULL,
  `submitter_ip` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `date_submitted` int(14) NOT NULL DEFAULT '0',
  `date_commented` int(14) NOT NULL DEFAULT '0',
  `date_modified` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwp_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_reports_comments`
--

DROP TABLE IF EXISTS `nuke_nsnwp_reports_comments`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL DEFAULT '0',
  `commenter_name` varchar(32) NOT NULL,
  `commenter_email` varchar(255) NOT NULL,
  `commenter_ip` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `comment_description` text NOT NULL,
  `date_commented` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwp_reports_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_reports_members`
--

DROP TABLE IF EXISTS `nuke_nsnwp_reports_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_members` (
  `report_id` int(11) NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwp_reports_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_reports_status`
--

DROP TABLE IF EXISTS `nuke_nsnwp_reports_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `status_description` text NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_nsnwp_reports_status`
--

INSERT INTO `nuke_nsnwp_reports_status` (`status_id`, `status_name`, `status_description`) VALUES
(1, 'Open', 'This report is open.'),
(2, 'Closed', 'This report is closed.'),
(3, 'Bogus', 'This report is bogus.'),
(4, 'Duplicate', 'This report is reported as a duplicate.'),
(5, 'Feedback', 'This report requires/has feedback.'),
(6, 'Assigned', 'Bug has been assigned for researching.');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwp_reports_types`
--

DROP TABLE IF EXISTS `nuke_nsnwp_reports_types`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwp_reports_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwp_reports_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_config`
--

DROP TABLE IF EXISTS `nuke_nsnwr_config`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwr_config`
--

INSERT INTO `nuke_nsnwr_config` (`config_name`, `config_value`) VALUES
('admin_request_email', 'webmaster@yoursite.com'),
('notify_request_admin', '1'),
('notify_request_submitter', '1'),
('new_request_status', '1'),
('new_request_type', ''),
('request_date_format', 'Y-m-d H:i:s'),
('version_number', '1.2.2');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_requests`
--

DROP TABLE IF EXISTS `nuke_nsnwr_requests`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `request_name` varchar(255) NOT NULL,
  `request_description` text NOT NULL,
  `submitter_name` varchar(32) NOT NULL,
  `submitter_email` varchar(255) NOT NULL,
  `submitter_ip` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `date_submitted` int(14) NOT NULL DEFAULT '0',
  `date_commented` int(14) NOT NULL DEFAULT '0',
  `date_modified` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwr_requests`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_requests_comments`
--

DROP TABLE IF EXISTS `nuke_nsnwr_requests_comments`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL DEFAULT '0',
  `commenter_name` varchar(32) NOT NULL,
  `commenter_email` varchar(255) NOT NULL,
  `commenter_ip` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `comment_description` text NOT NULL,
  `date_commented` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwr_requests_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_requests_members`
--

DROP TABLE IF EXISTS `nuke_nsnwr_requests_members`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_members` (
  `request_id` int(11) NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_nsnwr_requests_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_requests_status`
--

DROP TABLE IF EXISTS `nuke_nsnwr_requests_status`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `status_description` text NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `nuke_nsnwr_requests_status`
--

INSERT INTO `nuke_nsnwr_requests_status` (`status_id`, `status_name`, `status_description`) VALUES
(1, 'Open', 'This request is open.'),
(2, 'Closed', 'This request is closed.'),
(3, 'Inclusion', 'This request is set for inclusion.'),
(4, 'Duplicate', 'This request is a duplicate.'),
(5, 'Feedback', 'This request requires/has feedback.'),
(6, 'Assigned', 'Request has been assigned for possible inclusion.');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_nsnwr_requests_types`
--

DROP TABLE IF EXISTS `nuke_nsnwr_requests_types`;
CREATE TABLE IF NOT EXISTS `nuke_nsnwr_requests_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_nsnwr_requests_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_contact_add`
--

DROP TABLE IF EXISTS `nuke_ns_contact_add`;
CREATE TABLE IF NOT EXISTS `nuke_ns_contact_add` (
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_contact_add`
--

INSERT INTO `nuke_ns_contact_add` (`address`) VALUES
('Address Info');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_contact_dept`
--

DROP TABLE IF EXISTS `nuke_ns_contact_dept`;
CREATE TABLE IF NOT EXISTS `nuke_ns_contact_dept` (
  `did` int(3) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(60) DEFAULT NULL,
  `dept_email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `did` (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_ns_contact_dept`
--

INSERT INTO `nuke_ns_contact_dept` (`did`, `dept_name`, `dept_email`) VALUES
(1, 'Support', 'me@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_contact_phone`
--

DROP TABLE IF EXISTS `nuke_ns_contact_phone`;
CREATE TABLE IF NOT EXISTS `nuke_ns_contact_phone` (
  `pid` int(3) NOT NULL AUTO_INCREMENT,
  `phone_name` varchar(60) DEFAULT NULL,
  `phone_num` varchar(60) DEFAULT NULL,
  `fax_num` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_ns_contact_phone`
--

INSERT INTO `nuke_ns_contact_phone` (`pid`, `phone_name`, `phone_num`, `fax_num`) VALUES
(1, 'Phone Test', '1-800-TEST', '1-800-TEST2');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_contact_show`
--

DROP TABLE IF EXISTS `nuke_ns_contact_show`;
CREATE TABLE IF NOT EXISTS `nuke_ns_contact_show` (
  `show_add` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_contact_show`
--

INSERT INTO `nuke_ns_contact_show` (`show_add`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_add_modify`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_add_modify`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_add_modify` (
  `ns_dl_add` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_anon_add` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_auto_add` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_affiliate_links` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_add_email` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_add_filesize` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_add_compat` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_mod` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_mod_anon` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_owner_mod` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_add_modify`
--

INSERT INTO `nuke_ns_downloads_add_modify` (`ns_dl_add`, `ns_dl_anon_add`, `ns_dl_auto_add`, `ns_dl_allow_html`, `ns_dl_affiliate_links`, `ns_dl_add_email`, `ns_dl_add_filesize`, `ns_dl_add_compat`, `ns_dl_mod`, `ns_dl_mod_anon`, `ns_dl_owner_mod`) VALUES
(1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_auth`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_auth`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_auth` (
  `ns_dl_auth_list` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_auth_lim` tinyint(2) NOT NULL DEFAULT '0',
  `ns_dl_auth_pp` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_auth`
--

INSERT INTO `nuke_ns_downloads_auth` (`ns_dl_auth_list`, `ns_dl_auth_lim`, `ns_dl_auth_pp`) VALUES
(1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_blocks`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_blocks`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_blocks` (
  `ns_dl_show_block` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_show_all` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_show_num` int(2) NOT NULL DEFAULT '0',
  `ns_dl_left_block` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_right_block` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_blocks`
--

INSERT INTO `nuke_ns_downloads_blocks` (`ns_dl_show_block`, `ns_dl_show_all`, `ns_dl_show_num`, `ns_dl_left_block`, `ns_dl_right_block`) VALUES
(1, 0, 5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_desc_img`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_desc_img`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_desc_img` (
  `ns_dl_des_img` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_des_img_pos` char(2) NOT NULL,
  `ns_dl_des_img_width` int(3) NOT NULL DEFAULT '0',
  `ns_dl_des_img_height` int(3) NOT NULL DEFAULT '0',
  `ns_dl_pop_win` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_pop_win_width` int(4) NOT NULL DEFAULT '0',
  `ns_dl_pop_win_height` int(4) NOT NULL DEFAULT '0',
  `ns_dl_pop_conform` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_use_standard` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_desc_img`
--

INSERT INTO `nuke_ns_downloads_desc_img` (`ns_dl_des_img`, `ns_dl_des_img_pos`, `ns_dl_des_img_width`, `ns_dl_des_img_height`, `ns_dl_pop_win`, `ns_dl_pop_win_width`, `ns_dl_pop_win_height`, `ns_dl_pop_conform`, `ns_dl_use_standard`) VALUES
(0, 'l', 60, 60, 1, 600, 600, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_fetch`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_fetch`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_fetch` (
  `ns_getit` tinyint(1) NOT NULL DEFAULT '0',
  `ns_getit_image` tinyint(1) NOT NULL DEFAULT '0',
  `ns_getit_color` varchar(10) NOT NULL,
  `ns_getit_msg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_fetch`
--

INSERT INTO `nuke_ns_downloads_fetch` (`ns_getit`, `ns_getit_image`, `ns_getit_color`, `ns_getit_msg`) VALUES
(1, 0, 'CC0000', 'We are sorry for the inconvenience to all users, but this change to our System is necessary because of a few people leeching our Files. We have made significant attempts to make our Files easier to Download for each user, compared to the mass downloading applications... But our last resort will be to force Registration to download any files.');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_field`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_field`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_field` (
  `fid` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_field_perm`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_field_perm`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_field_perm` (
  `ns_dl_field_vers` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_field_comp` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_field_file` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_field_date` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_field_hits` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_field_rate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_field_perm`
--

INSERT INTO `nuke_ns_downloads_field_perm` (`ns_dl_field_vers`, `ns_dl_field_comp`, `ns_dl_field_file`, `ns_dl_field_date`, `ns_dl_field_hits`, `ns_dl_field_rate`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_general`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_general`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_general` (
  `ns_download_image` varchar(255) NOT NULL,
  `ns_download_image_pos` int(3) NOT NULL DEFAULT '0',
  `ns_dl_show_sub_cats` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_show_num` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_show_full` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_num_per_page` tinyint(2) NOT NULL DEFAULT '10',
  `ns_dl_num_results` tinyint(2) NOT NULL DEFAULT '10',
  `ns_dl_sort_order` tinyint(2) NOT NULL DEFAULT '1',
  `ns_dl_down_button` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_foot_button` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_reg_down` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_right_blocks` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_link_bar` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_show_engines` tinyint(1) NOT NULL DEFAULT '0',
  `ns_cat_image` varchar(255) NOT NULL,
  `ns_cat_image_pos` int(3) NOT NULL DEFAULT '0',
  `ns_subcat_image` varchar(255) NOT NULL,
  `ns_subcat_image_pos` int(3) NOT NULL DEFAULT '0',
  `ns_featured_image` varchar(255) NOT NULL,
  `ns_featured_image_pos` int(3) NOT NULL DEFAULT '0',
  `ns_dl_main_note` text NOT NULL,
  `ns_dl_main_note_show` tinyint(1) NOT NULL DEFAULT '0',
  `prbgcolor1` varchar(10) NOT NULL,
  `prbgcolor2` varchar(10) NOT NULL,
  `tttextcolor` varchar(10) NOT NULL,
  `tbtextcolor` varchar(10) NOT NULL,
  `ns_dl_open_new` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_mirror_link` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_view_dis` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_empty_cat` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_general`
--

INSERT INTO `nuke_ns_downloads_general` (`ns_download_image`, `ns_download_image_pos`, `ns_dl_show_sub_cats`, `ns_dl_show_num`, `ns_dl_show_full`, `ns_dl_num_per_page`, `ns_dl_num_results`, `ns_dl_sort_order`, `ns_dl_down_button`, `ns_dl_foot_button`, `ns_dl_reg_down`, `ns_dl_right_blocks`, `ns_dl_link_bar`, `ns_dl_show_engines`, `ns_cat_image`, `ns_cat_image_pos`, `ns_subcat_image`, `ns_subcat_image_pos`, `ns_featured_image`, `ns_featured_image_pos`, `ns_dl_main_note`, `ns_dl_main_note_show`, `prbgcolor1`, `prbgcolor2`, `tttextcolor`, `tbtextcolor`, `ns_dl_open_new`, `ns_dl_mirror_link`, `ns_dl_view_dis`, `ns_dl_empty_cat`) VALUES
('', 0, 1, 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, '', 0, '', 0, '', 0, '', 0, '', '', '', '', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_new_pop`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_new_pop`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_new_pop` (
  `ns_dl_num_new_one` tinyint(2) NOT NULL DEFAULT '7',
  `ns_dl_num_new_two` tinyint(2) NOT NULL DEFAULT '14',
  `ns_dl_num_new_three` tinyint(2) NOT NULL DEFAULT '30',
  `ns_dl_newimage_on` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_new_one` int(3) NOT NULL DEFAULT '1',
  `ns_dl_new_two` int(3) NOT NULL DEFAULT '3',
  `ns_dl_new_three` int(3) NOT NULL DEFAULT '7',
  `ns_dl_num_top` int(3) NOT NULL DEFAULT '25',
  `ns_dl_num_top_num` tinyint(2) NOT NULL DEFAULT '10',
  `ns_dl_num_top_per` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_num_pop` int(4) NOT NULL DEFAULT '200',
  `ns_dl_num_pop_num` tinyint(2) NOT NULL DEFAULT '10',
  `ns_dl_num_pop_per` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_popimage_on` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_num_pop_image` varchar(100) NOT NULL,
  `ns_dl_new_image1` varchar(100) NOT NULL,
  `ns_dl_new_image2` varchar(100) NOT NULL,
  `ns_dl_new_image3` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_new_pop`
--

INSERT INTO `nuke_ns_downloads_new_pop` (`ns_dl_num_new_one`, `ns_dl_num_new_two`, `ns_dl_num_new_three`, `ns_dl_newimage_on`, `ns_dl_new_one`, `ns_dl_new_two`, `ns_dl_new_three`, `ns_dl_num_top`, `ns_dl_num_top_num`, `ns_dl_num_top_per`, `ns_dl_num_pop`, `ns_dl_num_pop_num`, `ns_dl_num_pop_per`, `ns_dl_popimage_on`, `ns_dl_num_pop_image`, `ns_dl_new_image1`, `ns_dl_new_image2`, `ns_dl_new_image3`) VALUES
(7, 14, 30, 1, 1, 3, 7, 25, 10, 0, 200, 10, 0, 1, 'popular.gif', 'new_1.gif', 'new_3.gif', 'new_7.gif');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_nfeatured`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_nfeatured`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_nfeatured` (
  `fdid` int(5) NOT NULL AUTO_INCREMENT,
  `lid` int(5) NOT NULL DEFAULT '0',
  `ns_dl_feat_det` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_feat_dlength` varchar(10) NOT NULL,
  `ns_dl_feat_dimg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdid`),
  KEY `fdid` (`fdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_nfeatured`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_rating`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_rating`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_rating` (
  `ns_dl_outside_vote` tinyint(1) NOT NULL DEFAULT '1',
  `ns_dl_anon_wait_days` int(6) NOT NULL DEFAULT '7',
  `ns_dl_outside_wait_days` int(6) NOT NULL DEFAULT '7',
  `ns_dl_anon_weight` int(6) NOT NULL DEFAULT '5',
  `ns_dl_outside_weight` int(6) NOT NULL DEFAULT '20',
  `ns_dl_main_dec` tinyint(1) NOT NULL DEFAULT '2',
  `ns_dl_detail_dec` tinyint(1) NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_rating`
--

INSERT INTO `nuke_ns_downloads_rating` (`ns_dl_outside_vote`, `ns_dl_anon_wait_days`, `ns_dl_outside_wait_days`, `ns_dl_anon_weight`, `ns_dl_outside_weight`, `ns_dl_main_dec`, `ns_dl_detail_dec`) VALUES
(1, 7, 7, 5, 20, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_recommend`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_recommend`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_recommend` (
  `ns_dl_rec` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_rec_num` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_rec_msg` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_rec_stats` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_rec_stats_user` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_rec_email` text NOT NULL,
  `ns_dl_rec_subject` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_recommend`
--

INSERT INTO `nuke_ns_downloads_recommend` (`ns_dl_rec`, `ns_dl_rec_num`, `ns_dl_rec_msg`, `ns_dl_rec_stats`, `ns_dl_rec_stats_user`, `ns_dl_rec_email`, `ns_dl_rec_subject`) VALUES
(1, 3, 1, 1, 1, 'You have to take a look at this great download! Just click the link below to view the Downloads details.', 'Check out this GREAT Download!');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_recom_dlstats`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_recom_dlstats`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_recom_dlstats` (
  `rdid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `ns_dl_rec_title` varchar(255) NOT NULL,
  `ns_dl_rec_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rdid`),
  KEY `rdid` (`rdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_recom_dlstats`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_recom_usrstats`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_recom_usrstats`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_recom_usrstats` (
  `rduid` int(11) NOT NULL AUTO_INCREMENT,
  `rdid` int(11) NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL DEFAULT '0',
  `ns_dl_rec_rname` varchar(255) NOT NULL,
  `ns_dl_rec_remail` varchar(255) NOT NULL,
  `ns_dl_rec_uip` varchar(25) NOT NULL,
  `ns_dl_rec_rnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rduid`),
  KEY `rduid` (`rduid`),
  KEY `rdid` (`rdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_recom_usrstats`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_table_form`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_table_form`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_table_form` (
  `tid` int(5) NOT NULL AUTO_INCREMENT,
  `id` int(5) NOT NULL DEFAULT '0',
  `width` int(3) NOT NULL DEFAULT '0',
  `cpad` int(3) NOT NULL DEFAULT '0',
  `cspace` int(3) NOT NULL DEFAULT '0',
  `align` int(3) NOT NULL DEFAULT '0',
  `bdr` int(3) NOT NULL DEFAULT '0',
  `bdrclr` varchar(10) NOT NULL,
  `trclr` varchar(10) NOT NULL,
  `tdclr` varchar(10) NOT NULL,
  `bgclr` varchar(10) NOT NULL,
  `bgimg` varchar(100) NOT NULL,
  `act` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tid` (`tid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_table_form`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_table_html`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_table_html`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_table_html` (
  `thid` int(5) NOT NULL AUTO_INCREMENT,
  `id` int(5) NOT NULL DEFAULT '0',
  `html_open` text NOT NULL,
  `html_close` text NOT NULL,
  `act` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thid`),
  KEY `thid` (`thid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_table_html`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_theme`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_theme`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_theme` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_ns_downloads_theme`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_theme_mode`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_theme_mode`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_theme_mode` (
  `id` int(5) NOT NULL DEFAULT '0',
  `mode` tinyint(1) NOT NULL DEFAULT '0',
  `mset` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_theme_mode`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_ns_downloads_upload`
--

DROP TABLE IF EXISTS `nuke_ns_downloads_upload`;
CREATE TABLE IF NOT EXISTS `nuke_ns_downloads_upload` (
  `ns_dl_file_dir` varchar(150) NOT NULL,
  `ns_dl_image_dir` varchar(150) NOT NULL,
  `ns_dl_allow_file` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_allow_img` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_file_size` int(15) NOT NULL DEFAULT '0',
  `ns_dl_image_size` int(15) NOT NULL DEFAULT '0',
  `ns_dl_file_ext` varchar(255) NOT NULL,
  `ns_dl_image_ext` varchar(255) NOT NULL,
  `ns_dl_use_resize` tinyint(1) NOT NULL DEFAULT '0',
  `ns_dl_netpath` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_ns_downloads_upload`
--

INSERT INTO `nuke_ns_downloads_upload` (`ns_dl_file_dir`, `ns_dl_image_dir`, `ns_dl_allow_file`, `ns_dl_allow_img`, `ns_dl_file_size`, `ns_dl_image_size`, `ns_dl_file_ext`, `ns_dl_image_ext`, `ns_dl_use_resize`, `ns_dl_netpath`) VALUES
('dl', 'dl', 0, 0, 2560000, 25600, 'zip tar tgz doc pdf gz rar', 'gif jpg jpeg png bmp tif', 1, 'includes/netpbm/');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_optimize_gain`
--

DROP TABLE IF EXISTS `nuke_optimize_gain`;
CREATE TABLE IF NOT EXISTS `nuke_optimize_gain` (
  `gain` decimal(10,3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_optimize_gain`
--

INSERT INTO `nuke_optimize_gain` (`gain`) VALUES
('0.000'),
('0.160'),
('11.906'),
('6.535'),
('35.590'),
('0.090'),
('20.605'),
('12.680');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pages`
--

DROP TABLE IF EXISTS `nuke_pages`;
CREATE TABLE IF NOT EXISTS `nuke_pages` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `page_header` text NOT NULL,
  `text` text NOT NULL,
  `page_footer` text NOT NULL,
  `signature` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `counter` int(10) NOT NULL DEFAULT '0',
  `clanguage` varchar(30) NOT NULL,
  `uname` varchar(40) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_pages`
--

INSERT INTO `nuke_pages` (`pid`, `cid`, `title`, `subtitle`, `tags`, `active`, `page_header`, `text`, `page_footer`, `signature`, `date`, `counter`, `clanguage`, `uname`) VALUES
(1, 2, 'testing content', '', '', 1, '<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris. <a class="colorbox" href="/userfiles/images/mw2-1.jpg" title="testing colorbox"><img alt="" src="/userfiles/images/mw2-1.jpg" /></a></p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '<p>\r\n	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '', '2011-01-24 00:34:44', 81, 'english', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pages_categories`
--

DROP TABLE IF EXISTS `nuke_pages_categories`;
CREATE TABLE IF NOT EXISTS `nuke_pages_categories` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cimg` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nuke_pages_categories`
--

INSERT INTO `nuke_pages_categories` (`cid`, `cimg`, `title`, `description`) VALUES
(1, '', 'Test Category', 'This is a test of the Category.'),
(2, '', 'Test of the content module', '<p>Test of the content module</p>');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pages_feat`
--

DROP TABLE IF EXISTS `nuke_pages_feat`;
CREATE TABLE IF NOT EXISTS `nuke_pages_feat` (
  `cid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_pages_feat`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_platinum_technology`
--

DROP TABLE IF EXISTS `nuke_platinum_technology`;
CREATE TABLE IF NOT EXISTS `nuke_platinum_technology` (
  `name` varchar(20) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_platinum_technology`
--

INSERT INTO `nuke_platinum_technology` (`name`, `value`) VALUES
('versioncheck', 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPV1.0.1</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke</a></strong><br>'),
('lastupdatecheck', '1116781443');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_pollcomments`
--

DROP TABLE IF EXISTS `nuke_pollcomments`;
CREATE TABLE IF NOT EXISTS `nuke_pollcomments` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `pollID` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `url` varchar(60) DEFAULT NULL,
  `host_name` varchar(60) DEFAULT NULL,
  `subject` varchar(60) NOT NULL,
  `comment` text NOT NULL,
  `score` tinyint(4) NOT NULL DEFAULT '0',
  `reason` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_pollcomments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_check`
--

DROP TABLE IF EXISTS `nuke_poll_check`;
CREATE TABLE IF NOT EXISTS `nuke_poll_check` (
  `ip` varchar(20) NOT NULL,
  `time` varchar(14) NOT NULL,
  `pollID` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_poll_check`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_data`
--

DROP TABLE IF EXISTS `nuke_poll_data`;
CREATE TABLE IF NOT EXISTS `nuke_poll_data` (
  `pollID` int(11) NOT NULL DEFAULT '0',
  `optionText` char(50) NOT NULL,
  `optionCount` int(11) NOT NULL DEFAULT '0',
  `voteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_poll_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_poll_desc`
--

DROP TABLE IF EXISTS `nuke_poll_desc`;
CREATE TABLE IF NOT EXISTS `nuke_poll_desc` (
  `pollID` int(11) NOT NULL AUTO_INCREMENT,
  `pollTitle` varchar(100) NOT NULL,
  `timeStamp` int(11) NOT NULL DEFAULT '0',
  `voters` mediumint(9) NOT NULL DEFAULT '0',
  `planguage` varchar(30) NOT NULL,
  `artid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollID`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_poll_desc`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_public_messages`
--

DROP TABLE IF EXISTS `nuke_public_messages`;
CREATE TABLE IF NOT EXISTS `nuke_public_messages` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `date` varchar(14) DEFAULT NULL,
  `who` varchar(25) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_public_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_queue`
--

DROP TABLE IF EXISTS `nuke_queue`;
CREATE TABLE IF NOT EXISTS `nuke_queue` (
  `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `uname` varchar(40) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `story` text,
  `storyext` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic` varchar(20) NOT NULL,
  `alanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `qid` (`qid`),
  KEY `uid` (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_quotes`
--

DROP TABLE IF EXISTS `nuke_quotes`;
CREATE TABLE IF NOT EXISTS `nuke_quotes` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quote` text,
  PRIMARY KEY (`qid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_quotes`
--

INSERT INTO `nuke_quotes` (`qid`, `quote`) VALUES
(1, 'Nos morituri te salutamus - CBHS');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_referer`
--

DROP TABLE IF EXISTS `nuke_referer`;
CREATE TABLE IF NOT EXISTS `nuke_referer` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_referer`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_related`
--

DROP TABLE IF EXISTS `nuke_related`;
CREATE TABLE IF NOT EXISTS `nuke_related` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `rid` (`rid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_related`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews`
--

DROP TABLE IF EXISTS `nuke_reviews`;
CREATE TABLE IF NOT EXISTS `nuke_reviews` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `reviewer` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `cover` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `url_title` varchar(50) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `rlanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_reviews`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_add`
--

DROP TABLE IF EXISTS `nuke_reviews_add`;
CREATE TABLE IF NOT EXISTS `nuke_reviews_add` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `reviewer` varchar(25) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL,
  `url_title` varchar(50) NOT NULL,
  `rlanguage` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_reviews_add`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_comments`
--

DROP TABLE IF EXISTS `nuke_reviews_comments`;
CREATE TABLE IF NOT EXISTS `nuke_reviews_comments` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `userid` varchar(25) NOT NULL,
  `date` datetime DEFAULT NULL,
  `comments` text,
  `score` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_reviews_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_reviews_main`
--

DROP TABLE IF EXISTS `nuke_reviews_main`;
CREATE TABLE IF NOT EXISTS `nuke_reviews_main` (
  `title` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_reviews_main`
--

INSERT INTO `nuke_reviews_main` (`title`, `description`) VALUES
('Game Reviews', '<p>Member views on new and revived games.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_security_agents`
--

DROP TABLE IF EXISTS `nuke_security_agents`;
CREATE TABLE IF NOT EXISTS `nuke_security_agents` (
  `agent_name` varchar(20) NOT NULL,
  `agent_fullname` varchar(30) DEFAULT NULL,
  `agent_hostname` varchar(30) DEFAULT NULL,
  `agent_url` varchar(80) DEFAULT NULL,
  `agent_ban` int(1) NOT NULL DEFAULT '0',
  `agent_desc` text,
  PRIMARY KEY (`agent_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_security_agents`
--

INSERT INTO `nuke_security_agents` (`agent_name`, `agent_fullname`, `agent_hostname`, `agent_url`, `agent_ban`, `agent_desc`) VALUES
('1Noon', '1Noonbot', NULL, '1nooncorp.com', -1, 'Doesn''t follow robots.txt'),
('AI', 'AIBOT', NULL, '21seek.com', 0, '(China) robot (218.17.90.xxx)'),
('aip', 'aipbot/', NULL, 'nameprotect.com', 0, 'copyright search robot (24.177.134.x), s. also\r\n- np/0.1_(np;_http://www.nameprotect.com...\r\n- abot/0.1 (abot; http://www.abot.com...'),
('Alexa', 'ia_archiver', '.alexa.com', 'alexa.com', 0, 'Alexa (209.237.238.1xx)'),
('Archive', 'ia_archiver', '.archive.org', 'archive.org', 0, 'The Internet Archive (209.237.238.1xx)'),
('AltaVista', 'Scooter', NULL, 'altavista.com', 0, NULL),
('Amfibi', 'Amfibibot', NULL, 'amfibi.com', 0, NULL),
('Ansearch', 'AnsearchBot/', NULL, 'ansearch.com.au', 0, NULL),
('AnswerBus', 'AnswerBus', NULL, 'answerbus.com', 0, NULL),
('Argus', 'Argus/', NULL, 'simpy.com/bot.html', 0, NULL),
('Arachmo', 'Arachmo', NULL, NULL, -1, 'Impolite bandwidth sucker. Netblock owned by SOFTBANK BB CORP, Japan.\r\nDoesn''t follow robots.txt'),
('Ask Jeeves', 'Ask Jeeves/Teoma', '.ask.com', 'sp.ask.com/docs/about/tech_crawling.html', 0, NULL),
('ASPseek', 'ASPseek/', NULL, 'aspseek.org', 0, 'search engine software'),
('AvantGo', 'AvantGo', 'avantgo.com', 'avantgo.com', 0, NULL),
('Axadine', 'Axadine Crawler', NULL, 'axada.de', 0, NULL),
('Baidu', 'Baiduspider', NULL, 'baidu.com/search/spider.htm', 0, NULL),
('Become', 'BecomeBot', NULL, NULL, 0, NULL),
('BigClique', 'BigCliqueBOT', NULL, 'bigclique.com', 0, NULL),
('BilderSauger', 'BilderSauger', NULL, 'google.com/search?q=BilderSauger+data+becker', -1, NULL),
('BitTorrent', 'btbot/', NULL, 'btbot.com/btbot.html', 0, NULL),
('Bruin', 'BruinBot', NULL, 'webarchive.cs.ucla.edu/bruinbot.html', 0, NULL),
('cfetch', 'cfetch/', NULL, NULL, 0, NULL),
('Cipinet', 'Cipinet', NULL, 'cipinet.com/bot.html', 0, NULL),
('Combine', 'Combine/', NULL, 'lub.lu.se/combine/', -1, 'harvesting robot'),
('Convera', 'ConveraCrawler/', NULL, 'authoritativeweb.com/crawl', -1, 'Impolite robot. Netblock owned by Convera Corp, Vienna'),
('Cydral', 'CydralSpider', NULL, 'cydral.com', 0, 'Cydral Web Image Search'),
('curl', 'curl/', NULL, 'curl.haxx.se', 0, 'file transferring tool'),
('Datapark', 'DataparkSearch/', NULL, 'dataparksearch.org', 0, NULL),
('Demo', 'Demo Bot', NULL, NULL, -1, NULL),
('DHCrawler', 'DHCrawler', NULL, NULL, 0, NULL),
('Diamond', 'DiamondBot', NULL, 'searchscout.com', -1, 'Claria (ex Gator) robot (64.152.73.xx), s. also Claria'),
('DISCo', 'DISCo Pump', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Dragonfly CMS', 'Dragonfly File Reader', NULL, NULL, 0, NULL),
('Drecom', 'Drecombot/', 'drecom.jp', 'career.drecom.jp/bot.html', -1, 'Doesn''t follow robots.txt'),
('Dumbfind', 'Dumbot', NULL, 'dumbfind.com/dumbot.html', 0, NULL),
('e-Society', 'e-SocietyRobot', NULL, 'yama.info.waseda.ac.jp/~yamana/es/', 0, NULL),
('EmailSiphon', 'EmailSiphon', NULL, NULL, -1, NULL),
('EmeraldShield', 'EmeraldShield.com WebBot', NULL, 'emeraldshield.com/webbot.aspx', 0, NULL),
('Educate', 'Educate Search', NULL, NULL, -1, NULL),
('Envolk', 'envolk[ITS]spider/', NULL, 'envolk.com/envolkspider.html', 0, NULL),
('Eruvo', 'EruvoBot', NULL, 'eruvo.com', 0, NULL),
('Esperanza', 'EsperanzaBot', NULL, 'esperanza.to/bot/', 0, NULL),
('eStyle', 'eStyleSearch', NULL, NULL, 0, NULL),
('Eurip', 'EuripBot', NULL, 'eurip.com', 0, NULL),
('Fast', 'FAST MetaWeb Crawler', NULL, NULL, 0, NULL),
('FAST Enterprise', 'FAST Enterprise Crawler', 'fastsearch.net', NULL, 0, NULL),
('Feedster', 'Feedster Crawler', NULL, NULL, 0, NULL),
('FetchAPI', 'Fetch API Request', NULL, NULL, -1, 'Some sort of application that tries to download and store your full website.\r\nDoesn''t follow robots.txt'),
('fg', 'fgcrawler', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Filangy', 'Filangy', NULL, 'filangy.com/filangyinfo.jsp?inc=robots.jsp', 0, NULL),
('Findexa', 'Findexa Crawler', 'gulesider.no', 'findexa.no/gulesider/article26548.ece', 0, NULL),
('FindLinks', 'findlinks', NULL, 'wortschatz.uni-leipzig.de/findlinks/', 0, NULL),
('Franklin', 'Franklin locator', NULL, NULL, -1, NULL),
('FullWeb', 'Full Web Bot', NULL, NULL, -1, NULL),
('Fyber', 'FyberSpider', NULL, 'fybersearch.com/fyberspider.php', 0, NULL),
('Gais', 'Gaisbot', NULL, 'gais.cs.ccu.edu.tw/robot.php', 0, NULL),
('Genie', 'geniebot', NULL, 'genieknows.com', 0, NULL),
('GetRight', 'GetRight/', NULL, NULL, 0, NULL),
('Giga', 'Gigabot/', NULL, 'gigablast.com/spider.html', 0, NULL),
('Girafa', 'Girafabot', NULL, 'girafa.com', 0, NULL),
('GoForIt', 'GOFORITBOT', NULL, 'goforit.com/about/', 0, NULL),
('Gonzo', 'gonzo1', '.t-ipconnect.de', 'telekom.de', 0, NULL),
('Google', 'Googlebot', 'crawl[0-9\\-]+.googlebot.com', 'google.com/bot.html', 0, NULL),
('GoogleAds', 'Mediapartners-Google', NULL, NULL, 0, NULL),
('GoogleImg', 'Googlebot-Image', NULL, NULL, 0, NULL),
('GPU', 'GPU p2p crawler', NULL, 'gpu.sourceforge.net/search_engine.php', 0, NULL),
('Grub', 'grub-client', NULL, 'grub.org', 0, NULL),
('GSA', 'gsa-crawler', NULL, 'arsenaldigital.com', 0, NULL),
('HappyFun', 'HappyFunBot/', NULL, 'happyfunsearch.com/bot.html', 0, NULL),
('Harvest', 'Harvest/', NULL, NULL, 0, NULL),
('HeadScan', 'head-scan.pl/', NULL, NULL, -1, NULL),
('Heritrix', 'heritrix/', NULL, 'crawler.xtramind.com', 0, NULL),
('HooWWWer', 'HooWWWer', NULL, 'cosco.hiit.fi/search/hoowwwer/', 0, NULL),
('htdig', 'htdig/', NULL, NULL, -1, NULL),
('HTMLParser', 'HTMLParser/', NULL, 'htmlparser.sourceforge.net', -1, 'Doesn''t follow robots.txt'),
('HTTrack', 'HTTrack', NULL, NULL, 0, NULL),
('Ichiro', 'ichiro/', NULL, 'nttr.co.jp', 0, NULL),
('IconSurf', 'IconSurf/', NULL, 'iconsurf.com/robot.html', 0, NULL),
('Industry', 'Industry Program', NULL, NULL, -1, NULL),
('Indy', 'Indy Library', NULL, NULL, -1, 'Originally, the Indy Library is a programming library which is available at http://www.nevrona.com/Indy or http://indy.torry.net under an Open Source license. This library is included with Borland Delphi 6, 7, C++Builder 6, plus all of the Kylix versions. Unfortunately, this library is hi-jacked and abused by some Chinese spam bots. All recent user-agents with the unmodified "Indy Library" string were of Chinese origin.\r\nDoesn''t follow robots.txt'),
('InetURL', 'InetURL/', NULL, NULL, 0, NULL),
('Infocious', 'InfociousBot', NULL, 'corp.infocious.com/tech_crawler.php', 0, NULL),
('Ingrid', 'INGRID', NULL, 'webmaster.ilse.nl/jsp/webmaster.jsp', 0, NULL),
('Interseek', 'InterseekWeb/', NULL, NULL, 0, NULL),
('Ipwalk', 'IpwalkBot/', NULL, NULL, 0, NULL),
('IRL', 'IRLbot', NULL, 'irl.cs.tamu.edu/crawler', 0, NULL),
('Java', 'Java/', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Jyxo', 'Jyxobot/', NULL, NULL, 0, NULL),
('KnowItAll', 'KnowItAll(', NULL, 'cs.washington.edu', 0, NULL),
('Kumm', 'KummHttp/', NULL, NULL, 0, NULL),
('Lapozz', 'LapozzBot', NULL, 'robot.lapozz.hu/', 0, NULL),
('Larbin', 'larbin', NULL, 'larbin.sourceforge.net/index-eng.html', 0, NULL),
('LeechGet', 'LeechGet', NULL, 'leechget.net', 0, NULL),
('libwww-perl', 'libwww-perl/', NULL, NULL, 0, NULL),
('lmspider', 'lmspider', NULL, 'scansoft.com', 0, NULL),
('Local', 'LocalcomBot/', NULL, 'local.com/bot.htm', 0, NULL),
('Looksmart', 'ZyBorg/', '.looksmart.com', 'WISEnutbot.com', 0, NULL),
('LoveSMS', 'LoveSMS Search Engine', NULL, 'cauta.lovesms.ro', 0, NULL),
('Lycos', 'Lycos_Spider', '.lycos.com', NULL, 0, NULL),
('Mac Finder', 'Mac Finder', NULL, NULL, 0, NULL),
('Majestic-12', 'MJ12bot', NULL, 'majestic12.co.uk/bot.php', 0, NULL),
('MapoftheInternet', 'MapoftheInternet.com', NULL, 'mapoftheinternet.com', 0, NULL),
('McBot', 'McBot/', NULL, NULL, 0, NULL),
('Medusa', 'Medusa', NULL, NULL, -1, 'Medusa is a tool for finding images, movie-clips or other kinds of files on webpages and downloading them. You start by entering a starting URL and Medusa searches for the filetypes you are interested in on this page and all pages found up to a given depth.\r\nDoesn''t follow robots.txt'),
('Metaspinner', 'Metaspinner/', NULL, 'meta-spinner.de', 0, NULL),
('MetaTag', 'MetaTagRobot', NULL, 'widexl.com/remote/search-engines/metatag-analyzer.html', 0, NULL),
('Minuteman', 'Minuteman', NULL, NULL, 0, NULL),
('Mirago', 'HenryTheMiragoRobot', NULL, 'miragorobot.com/scripts/mrinfo.asp', 0, NULL),
('Missauga', 'Missauga Locate', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Missigua', 'Missigua Locator', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Mister PiX', 'Mister PiX', NULL, NULL, 0, NULL),
('Mojeek', 'MojeekBot', NULL, 'mojeek.com/bot.html', 0, NULL),
('MSCCDS', 'Microsoft Scheduled Cache Cont', NULL, 'google.com/search?q=Scheduled+Cache+Content+Download+Service', -1, NULL),
('MDAIPP', 'Microsoft Data Access Internet', NULL, 'google.com/search?q=Microsoft+Data+Access+Internet+Publishin', -1, 'This agent is used to exploit your system regarding the following security issue in FrontPage2000: http://lists.grok.org.uk/pipermail/full-disclosure/2004-December/030467.html'),
('MSIECrawler', 'MSIECrawler', NULL, NULL, -1, NULL),
('MSN', 'msnbot', 'msnbot.msn.com', 'search.msn.com/msnbot.htm', 0, NULL),
('MSR', 'MSRBOT/', NULL, NULL, 0, NULL),
('MUC', 'Microsoft URL Control', NULL, NULL, 0, NULL),
('Naver', 'NaverBot', NULL, NULL, 0, NULL),
('NetMechanic', 'NetMechanic', NULL, NULL, 0, NULL),
('nicebot', 'nicebot', NULL, NULL, -1, NULL),
('Ninja', 'Download Ninja', NULL, NULL, 0, NULL),
('Noxtrum', 'noxtrumbot', NULL, 'noxtrum.com', 0, NULL),
('NRS', 'NetResearchServer', NULL, 'loopimprovements.com/robot.html', 0, NULL),
('Nutch', 'Nutch', NULL, 'nutch.org/docs/en/bot.html', 0, NULL),
('NutchCVS', 'NutchCVS/', NULL, 'lucene.apache.org/nutch/bot.html', 0, NULL),
('Nutscrape', 'Nutscrape/', NULL, NULL, 0, NULL),
('oegp', 'oegp', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Offline Explorer', 'Offline Explorer/', NULL, 'metaproducts.com', 0, 'A Windows offline browser that allows you to download an unlimited number of your favorite Web and FTP sites for later offline viewing, editing or browsing.'),
('OmniExplorer', 'OmniExplorer_Bot/', NULL, 'omni-explorer.com', -1, 'Doesn''t follow robots.txt'),
('Onet', 'OnetSzukaj/', NULL, 'szukaj.onet.pl', 0, NULL),
('Openfind', 'Openbot/', NULL, 'openfind.com.tw/robot.html', 0, NULL),
('Orbit', 'Orbiter', NULL, 'dailyorbit.com/bot.htm', 0, NULL),
('P3P Validator', 'P3P Validator', NULL, NULL, 0, NULL),
('Patsearch', 'Patwebbot', NULL, 'herz-power.de/technik.html', 0, NULL),
('PhpDig', 'PhpDig/', NULL, 'phpdig.net/robot.php', 0, NULL),
('PicSearch', 'psbot/', NULL, 'picsearch.com/bot.html', 0, NULL),
('Pipeline', 'pipeLiner', NULL, 'pipeline-search.com/webmaster.html', 0, NULL),
('Pogodak', 'Pogodak', NULL, NULL, 0, NULL),
('Poly', 'polybot', NULL, 'cis.poly.edu/polybot/', 0, NULL),
('Pompos', 'Pompos/', NULL, 'dir.com/pompos.html', 0, NULL),
('Poodle', 'Poodle predictor', NULL, NULL, 0, NULL),
('Powermarks', 'Powermarks/', NULL, 'kaylon.com/power.html', 0, NULL),
('PrivacyFinder', 'PrivacyFinder Cache Bot', NULL, NULL, 0, NULL),
('Privatizer', 'privatizer.net', NULL, 'privatizer.net/whatis.php', 0, NULL),
('Production', 'Production Bot', NULL, NULL, 0, NULL),
('PS', 'Program Shareware', NULL, NULL, 0, NULL),
('PuxaRapido', 'PuxaRapido v1.0', NULL, NULL, 0, NULL),
('Python-urllib', 'Python-urllib/', NULL, NULL, 0, NULL),
('Qweery', 'qweery', NULL, NULL, 0, NULL),
('Rambler', 'StackRambler/', NULL, 'rambler.ru', 0, NULL),
('Roffle', 'Roffle/', NULL, NULL, -1, NULL),
('RPT-HTTP', 'RPT-HTTPClient/', NULL, NULL, -1, NULL),
('rssImages', 'rssImagesBot', NULL, 'herbert.groot.jebbink.nl/?app=rssImages', 0, NULL),
('Ryan', 'Ryanbot/', NULL, NULL, 0, NULL),
('SBIder', 'SBIder/', NULL, 'sitesell.com/sbider.html', 0, NULL),
('schibstedsok', 'schibstedsokbot', NULL, 'schibstedsok.no', 0, NULL),
('Schmozilla', 'Schmozilla/', NULL, NULL, -1, 'Doesn''t follow robots.txt'),
('Scrubby', 'Scrubby', NULL, 'scrubtheweb.com/abs/meta-check.html', 0, NULL),
('ScSpider', 'ScSpider/', NULL, NULL, 0, NULL),
('SearchGuild', 'SearchGuild/', NULL, NULL, 0, 'DMOZ Experiment'),
('Seekbot', 'Seekbot', NULL, 'seekbot.net', 0, NULL),
('Seznam', 'SeznamBot/', NULL, 'fulltext.seznam.cz', 0, NULL),
('Siets', 'SietsCrawler/', NULL, NULL, 0, NULL),
('SitiDi', '/SitiDiBot/', NULL, 'SitiDi.net', 0, NULL),
('Snoopy', 'Snoopy', NULL, 'sourceforge.net/projects/snoopy/', 0, 'Snoopy is a PHP class that simulates a web browser. It automates the task of retrieving web page content and posting forms, for example.'),
('Sohu', 'sohu-search', NULL, 'sogou.com', 0, 'Searchbot of sohu.com'),
('Spambot', NULL, NULL, NULL, -1, 'Global name for bots which try to fill guestbooks and other stuff with garbage\r\nThey don''t follow robots.txt either\r\n\r\nCurrent agents in this list:\r\nMissigua Locator\r\nProduction Bot\r\nFull Web Bot\r\nDemo Bot\r\nEducate Search\r\nFranklin locator\r\nIndustry Program\r\nMac Finder\r\nProgram Shareware\r\nMissauga Locate '),
('Spip', 'SPIP-', NULL, 'spip.net', 0, NULL),
('SurveyBot', 'SurveyBot/', NULL, 'whois.sc', 0, NULL),
('Susie', '!Susie', NULL, 'sync2it.com/susie', 0, NULL),
('Thumbshots', 'thumbshots-de-Bot', NULL, 'thumbshots.de', 0, NULL),
('Turnitin', 'TurnitinBot', NULL, 'turnitin.com/robot/crawlerinfo.html', 0, NULL),
('TutorGig', 'TutorGigBot', NULL, 'tutorgig.info', 0, NULL),
('Twiceler', 'Twiceler', NULL, 'cuill.com/robots.html', 0, NULL),
('Updated', 'updated/', NULL, 'updated.com', 0, NULL),
('Versus', 'versus crawler', NULL, 'eda.baykan@epfl.ch', 0, NULL),
('Vagabondo', 'Vagabondo', NULL, NULL, 0, NULL),
('Virgo', 'Virgo/', NULL, NULL, 0, NULL),
('Voila', 'VoilaBot', NULL, 'voila.com', 0, NULL),
('vspider', 'vspider', NULL, NULL, 0, NULL),
('W3C Checklink', 'W3C-checklink', NULL, NULL, 0, NULL),
('W3C Validator', 'W3C_Validator', NULL, NULL, 0, NULL),
('Walhello', 'appie', NULL, 'walhello.com', 0, NULL),
('WebIndexer', 'WebIndexer/', NULL, NULL, 0, NULL),
('WebReaper', 'WebReaper', NULL, 'webreaper.net', 0, NULL),
('WebStripper', 'WebStripper/', NULL, NULL, 0, NULL),
('Wget', 'Wget/', NULL, NULL, 0, NULL),
('Wire', 'WIRE', NULL, NULL, 0, NULL),
('YaCy', 'yacy', NULL, 'yacy.net/yacy/', -1, 'p2p-based distributed Web Search Engine\r\nDoesn''t follow robots.txt'),
('Yadows', 'YadowsCrawler', NULL, 'yadows.com', 0, NULL),
('Yahoo', 'Yahoo! Slurp', NULL, 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL),
('YahooFS', 'YahooFeedSeeker/', '.yahoo.', 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL),
('YahooMM', 'Yahoo-MMCrawler', NULL, 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL),
('YANDEX', 'YANDEX', NULL, NULL, 0, NULL),
('Zeus', 'Zeus', NULL, NULL, 0, NULL),
('NextGen', 'NextGenSearchBot', NULL, 'about.zoominfo.com/PublicSite/NextGenSearchBot.asp', 0, NULL),
('PoI', 'PictureOfInternet/', NULL, 'malfunction.org/poi', -1, NULL),
('Sensis', 'Sensis Web Crawler', NULL, 'sensis.com.au', 0, NULL),
('IlTrovatore', 'IlTrovatore-Setaccio/', NULL, 'iltrovatore.it/bot.html', -1, NULL),
('Rufus', 'RufusBot', NULL, '64.124.122.252/feedback.html', -1, NULL),
('WebMiner', 'WebMiner', NULL, NULL, -1, 'See RufusBot'),
('Accoona', 'Accoona-AI-Agent/', NULL, 'accoona.com', 0, NULL),
('Xirq', 'xirq/', NULL, 'xirq.com/', 0, NULL),
('Blogpulse', 'Blogpulse', NULL, 'blogpulse.com', 0, 'IntelliSeek service'),
('KnackAttack', 'KnackAttack', NULL, NULL, -1, NULL),
('Miva', 'Miva', NULL, 'miva.com', 0, NULL),
('PictureRipper', 'PictureRipper/', NULL, 'pictureripper.com', -1, NULL),
('Teleport', 'Teleport Pro/', NULL, NULL, -1, NULL),
('NetSprint', 'NetSprint', NULL, NULL, -1, NULL),
('SVSpider', 'SVSpider/', NULL, 'bildkiste.de', -1, NULL),
('SVSearch', 'SVSearchRobot/', NULL, NULL, -1, NULL),
('Lorkyll', 'Lorkyll', NULL, '444.net', -1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_seomodules`
--

DROP TABLE IF EXISTS `nuke_seomodules`;
CREATE TABLE IF NOT EXISTS `nuke_seomodules` (
  `name` text NOT NULL,
  `use` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_seomodules`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_session`
--

DROP TABLE IF EXISTS `nuke_session`;
CREATE TABLE IF NOT EXISTS `nuke_session` (
  `uname` varchar(25) NOT NULL,
  `time` varchar(14) NOT NULL,
  `host_addr` varchar(48) NOT NULL,
  `guest` int(1) NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  KEY `time` (`time`),
  KEY `guest` (`guest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_session`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shopitems`
--

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

--
-- Dumping data for table `nuke_shopitems`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shops`
--

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

--
-- Dumping data for table `nuke_shops`
--

INSERT INTO `nuke_shops` (`id`, `shopname`, `shoptype`, `type`, `restocktime`, `restockedtime`, `restockamount`, `amountearnt`) VALUES
(1, 'Platinum', 'Test', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_censor`
--

DROP TABLE IF EXISTS `nuke_shoutbox_censor`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_censor` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) NOT NULL,
  `replacement` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `nuke_shoutbox_censor`
--

INSERT INTO `nuke_shoutbox_censor` (`id`, `text`, `replacement`) VALUES
(1, '@$$', 'butt'),
(2, 'a$$', 'butt'),
(3, 'anton', '[censored]'),
(4, 'arse', 'butt'),
(5, 'arsehole', '[censored]'),
(6, 'ass', 'butt'),
(7, 'ass muncher', '[censored]'),
(8, 'asshole', '[censored]'),
(9, 'asstooling', '[censored]'),
(10, 'asswipe', '[censored]'),
(11, 'b!tch', '[censored]'),
(12, 'b17ch', '[censored]'),
(13, 'b1tch', '[censored]'),
(14, 'bastard', '[censored]'),
(15, 'beefcurtins', '[censored]'),
(16, 'bi7ch', '[censored]'),
(17, 'bitch', '[censored]'),
(18, 'bitchy', '[censored]'),
(19, 'boiolas', '[censored]'),
(20, 'bollocks', '[censored]'),
(21, 'breasts', '[censored]'),
(22, 'brown nose', '[censored]'),
(23, 'bugger', ' damn'),
(24, 'butt pirate', '[censored]'),
(25, 'c0ck', '[censored]'),
(26, 'cawk', '[censored]'),
(27, 'chink', '[censored]'),
(28, 'clitsaq', '[censored]'),
(29, 'cock', '[censored]'),
(30, 'cockbite', '[censored]'),
(31, 'cockgobbler', '[censored]'),
(32, 'cocksucker', '[censored]'),
(33, 'cum', '[censored]'),
(34, 'cunt', '[censored]'),
(35, 'dago', '[censored]'),
(36, 'daygo', '[censored]'),
(37, 'dego', '[censored]'),
(38, 'dick', '[censored]'),
(39, 'dick wad', '[censored]'),
(40, 'dickhead', '[censored]'),
(41, 'dickweed', '[censored]'),
(42, 'douchebag', '[censored]'),
(43, 'dziwka', '[censored]'),
(44, 'ekto', '[censored]'),
(45, 'enculer', '[censored]'),
(46, 'faen', '[censored]'),
(47, 'fag', '[censored]'),
(48, 'faggot', '[censored]'),
(49, 'fart', '[censored]'),
(50, 'fatass', '[censored]'),
(51, 'feg', '[censored]'),
(52, 'felch', '[censored]'),
(53, 'ficken', '[censored]'),
(54, 'fitta', '[censored]'),
(55, 'fitte', '[censored]'),
(56, 'flikker', '[censored]'),
(57, 'fok', '$#%!'),
(58, 'fuck', '$#%!'),
(59, 'fu(k', '$#%!'),
(60, 'fucker', '[censored]'),
(61, 'fucking', '[censored]'),
(62, 'fuckwit', '[censored]'),
(63, 'fuk', '[censored]'),
(64, 'fuking', '[censored]'),
(65, 'futkretzn', '[censored]'),
(66, 'fux0r', '$#%!'),
(67, 'gook', '[censored]'),
(68, 'h0r', '[censored]'),
(69, 'handjob', '[censored]'),
(70, 'helvete', '[censored]'),
(71, 'honkey', '[censored]'),
(72, 'hore', '[censored]'),
(73, 'hump', '[censored]'),
(74, 'injun', '[censored]'),
(75, 'kawk', '[censored]'),
(76, 'kike', '[censored]'),
(77, 'knulle', '[censored]'),
(78, 'kraut', '[censored]'),
(79, 'kuk', '[censored]'),
(80, 'kuksuger', '[censored]'),
(81, 'kurac', '[censored]'),
(82, 'kurwa', '[censored]'),
(83, 'langer', '[censored]'),
(84, 'masturbation', '[censored]'),
(85, 'merd', '[censored]'),
(86, 'motherfucker', '[censored]'),
(87, 'motherfuckingcocksucker', '[censored]'),
(88, 'mutherfucker', '[censored]'),
(89, 'nepesaurio', '[censored]'),
(90, 'nigga', '[censored]'),
(91, 'nigger', '[censored]'),
(92, 'nonce', '[censored]'),
(93, 'nutsack', '[censored]'),
(94, 'one-eyed-trouser-snake', '[censored]'),
(95, 'penis', '[censored]'),
(96, 'picka', '[censored]'),
(97, 'pissant', '[censored]'),
(98, 'pizda', '[censored]'),
(99, 'politician', '[censored]'),
(100, 'prick', '[censored]'),
(101, 'puckface', '[censored]'),
(102, 'pule', '[censored]'),
(103, 'pussy', '[censored]'),
(104, 'puta', '[censored]'),
(105, 'puto', '[censored]'),
(106, 'rimjob', '[censored]'),
(107, 'rubber', '[censored]'),
(108, 'scheisse', '[censored]'),
(109, 'schlampe', '[censored]'),
(110, 'schlong', '[censored]'),
(111, 'screw', '[censored]'),
(112, 'shit', '****'),
(113, 'shiteater', '[censored]'),
(114, 'shiz', '[censored]'),
(115, 'skribz', '[censored]'),
(116, 'skurwysyn', '[censored]'),
(117, 'slut', '[censored]'),
(118, 'spermburper', '[censored]'),
(119, 'spic', '[censored]'),
(120, 'spierdalaj', '[censored]'),
(121, 'splooge', '[censored]'),
(122, 'spunk', '[censored]'),
(123, 'tatas', '[censored]'),
(124, 'tits', '[censored]'),
(125, 'toss the salad', '[censored]'),
(126, 'twat', '[censored]'),
(127, 'unclefucker', '[censored]'),
(128, 'vagina', '[censored]'),
(129, 'vittu', '[censored]'),
(130, 'votze', '[censored]'),
(131, 'wank', '[censored]'),
(132, 'wanka', '[censored]'),
(133, 'wanker', '[censored]'),
(134, 'wankers', '[censored]'),
(135, 'wankstain', '[censored]'),
(136, 'whore', '[censored]'),
(137, 'wichser', '[censored]'),
(138, 'wop', '[censored]'),
(139, 'yed', '[censored]');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_conf`
--

DROP TABLE IF EXISTS `nuke_shoutbox_conf`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_conf` (
  `id` int(9) NOT NULL DEFAULT '0',
  `color1` varchar(20) NOT NULL,
  `color2` varchar(20) NOT NULL,
  `date` varchar(5) NOT NULL,
  `time` varchar(5) NOT NULL,
  `number` varchar(5) NOT NULL,
  `ipblock` varchar(5) NOT NULL,
  `nameblock` varchar(5) NOT NULL,
  `censor` varchar(5) NOT NULL,
  `tablewidth` char(3) NOT NULL,
  `urlonoff` varchar(5) NOT NULL,
  `delyourlastpost` varchar(5) NOT NULL,
  `anonymouspost` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `themecolors` varchar(5) NOT NULL,
  `textWidth` varchar(4) NOT NULL,
  `nameWidth` varchar(4) NOT NULL,
  `smiliesPerRow` varchar(4) NOT NULL,
  `reversePosts` varchar(4) NOT NULL,
  `timeOffset` varchar(10) NOT NULL,
  `urlanononoff` varchar(10) NOT NULL,
  `pointspershout` varchar(5) NOT NULL,
  `shoutsperpage` varchar(5) NOT NULL,
  `serverTimezone` varchar(5) NOT NULL,
  `blockxxx` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_shoutbox_conf`
--

INSERT INTO `nuke_shoutbox_conf` (`id`, `color1`, `color2`, `date`, `time`, `number`, `ipblock`, `nameblock`, `censor`, `tablewidth`, `urlonoff`, `delyourlastpost`, `anonymouspost`, `height`, `themecolors`, `textWidth`, `nameWidth`, `smiliesPerRow`, `reversePosts`, `timeOffset`, `urlanononoff`, `pointspershout`, `shoutsperpage`, `serverTimezone`, `blockxxx`) VALUES
(1, '#EBEBEB', '#FFFFFF', 'yes', 'yes', '10', 'yes', 'yes', 'yes', '150', 'yes', 'yes', 'yes', '150', 'no', '20', '10', '7', 'no', '0', 'no', '0', '25', '-6', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_date`
--

DROP TABLE IF EXISTS `nuke_shoutbox_date`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_date` (
  `id` int(5) NOT NULL DEFAULT '0',
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_shoutbox_date`
--

INSERT INTO `nuke_shoutbox_date` (`id`, `date`, `time`) VALUES
(1, 'd-m-Y', 'g:i:a');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_emoticons`
--

DROP TABLE IF EXISTS `nuke_shoutbox_emoticons`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_emoticons` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `text` varchar(20) NOT NULL,
  `image` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `nuke_shoutbox_emoticons`
--

INSERT INTO `nuke_shoutbox_emoticons` (`id`, `text`, `image`) VALUES
(1, ':confused:', '<img src=images/blocks/shout_box/confused.gif>'),
(2, ':sigh:', '<img src=images/blocks/shout_box/sigh.gif>'),
(3, ':sleep:', '<img src=images/blocks/shout_box/sleep.gif>'),
(4, ':upset:', '<img src=images/blocks/shout_box/upset.gif>'),
(5, ':none:', '<img src=images/blocks/shout_box/none.gif>'),
(6, ':eek:', '<img src=images/blocks/shout_box/bigeek.gif>'),
(7, ':rolleyes:', '<img src=images/blocks/shout_box/rolleyes.gif>'),
(8, ':mad:', '<img src=images/blocks/shout_box/mad.gif>'),
(9, ':yes:', '<img src=images/blocks/shout_box/yes.gif>'),
(10, ':no:', '<img src=images/blocks/shout_box/no.gif>'),
(11, ':shy:', '<img src=images/blocks/shout_box/shy.gif>'),
(12, ':laugh:', '<img src=images/blocks/shout_box/laugh.gif>'),
(13, ':dead:', '<img src=images/blocks/shout_box/dead.gif>'),
(14, ':cry:', '<img src=images/blocks/shout_box/cry.gif>'),
(15, ':)', '<img src=images/blocks/shout_box/smile.gif>'),
(16, ':(', '<img src=images/blocks/shout_box/sad.gif>'),
(17, ';)', '<img src=images/blocks/shout_box/smilewinkgrin.gif>'),
(18, ':|', '<img src=images/blocks/shout_box/none.gif>'),
(19, ':-)', '<img src=images/blocks/shout_box/smile.gif>'),
(20, ':-(', '<img src=images/blocks/shout_box/sad.gif>'),
(21, ';-)', '<img src=images/blocks/shout_box/smilewinkgrin.gif>'),
(22, ':-|', '<img src=images/blocks/shout_box/none.gif>'),
(23, ':0', '<img src=images/blocks/shout_box/bigeek.gif>'),
(24, 'B)', '<img src=images/blocks/shout_box/cool.gif>'),
(25, ':D', '<img src=images/blocks/shout_box/biggrin.gif>'),
(26, ':P', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(27, ':B', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(28, 'B-)', '<img src=images/blocks/shout_box/cool.gif>'),
(29, ':-D', '<img src=images/blocks/shout_box/biggrin.gif>'),
(30, ':-P', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(31, ':O', '<img src=images/blocks/shout_box/bigeek.gif>'),
(32, 'b)', '<img src=images/blocks/shout_box/cool.gif>'),
(33, ':d', '<img src=images/blocks/shout_box/biggrin.gif>'),
(34, ':p', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(35, ':b', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(36, 'b-)', '<img src=images/blocks/shout_box/cool.gif>'),
(37, ':-d', '<img src=images/blocks/shout_box/biggrin.gif>'),
(38, ':-p', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(39, ':-b', '<img src=images/blocks/shout_box/bigrazz.gif>'),
(40, ':o', '<img src=images/blocks/shout_box/bigeek.gif>'),
(41, 'o_O', '<img src=images/blocks/shout_box/bigeek.gif>'),
(42, 'O_o', '<img src=images/blocks/shout_box/bigeek.gif>'),
(43, 'o_o', '<img src=images/blocks/shout_box/bigeek.gif>'),
(44, 'O_O', '<img src=images/blocks/shout_box/bigeek.gif>');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_ipblock`
--

DROP TABLE IF EXISTS `nuke_shoutbox_ipblock`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_ipblock` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_ipblock`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_manage_count`
--

DROP TABLE IF EXISTS `nuke_shoutbox_manage_count`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_manage_count` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `admin` varchar(25) NOT NULL,
  `aCount` varchar(5) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_manage_count`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_nameblock`
--

DROP TABLE IF EXISTS `nuke_shoutbox_nameblock`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_nameblock` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_nameblock`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_shouts`
--

DROP TABLE IF EXISTS `nuke_shoutbox_shouts`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_shouts` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `timestamp` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_shouts`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_sticky`
--

DROP TABLE IF EXISTS `nuke_shoutbox_sticky`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_sticky` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` varchar(20) NOT NULL,
  `stickySlot` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_shoutbox_sticky`
--

INSERT INTO `nuke_shoutbox_sticky` (`id`, `name`, `comment`, `timestamp`, `stickySlot`) VALUES
(1, 'SgtMudd', 'Thank You for supporting Platinum Nuke!', '1182122869', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_themes`
--

DROP TABLE IF EXISTS `nuke_shoutbox_themes`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_themes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `themeName` varchar(50) DEFAULT NULL,
  `blockColor1` varchar(20) DEFAULT NULL,
  `blockColor2` varchar(20) DEFAULT NULL,
  `border` varchar(20) DEFAULT NULL,
  `menuColor1` varchar(20) DEFAULT NULL,
  `menuColor2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_themes`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_theme_images`
--

DROP TABLE IF EXISTS `nuke_shoutbox_theme_images`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_theme_images` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `themeName` varchar(50) DEFAULT NULL,
  `blockArrowColor` varchar(50) NOT NULL,
  `blockBackgroundImage` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_shoutbox_theme_images`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_shoutbox_version`
--

DROP TABLE IF EXISTS `nuke_shoutbox_version`;
CREATE TABLE IF NOT EXISTS `nuke_shoutbox_version` (
  `id` int(5) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `datechecked` char(2) NOT NULL,
  `versionreported` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_shoutbox_version`
--

INSERT INTO `nuke_shoutbox_version` (`id`, `version`, `datechecked`, `versionreported`) VALUES
(1, '8.5', '21', '8.5');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart`
--

DROP TABLE IF EXISTS `nuke_simplecart`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart` (
  `main` text NOT NULL,
  `referrals` text NOT NULL,
  `policies` text NOT NULL,
  `terms` text NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart`
--

INSERT INTO `nuke_simplecart` (`main`, `referrals`, `policies`, `terms`, `country`) VALUES
('<P ALIGN=LEFT>\r\n</P>\r\n<TABLE WIDTH=550 BORDER=0 CELLPADDING=5 CELLSPACING=0>\r\n	<COL WIDTH=0>\r\n	<COL WIDTH=130>\r\n	<COL WIDTH=540>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Online Store 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=specials"><IMG SRC="images/simplecart/GraphicImage1.jpg" NAME="Graphic1" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><FONT SIZE=2><FONT FACE="Arial, sans-serif">We are\r\n			constantly striving to make [sitename] &quot;America''s Best Online\r\n			Store&quot; for certain products <I>and</I> the best deal for your\r\n			advertising dollar should your site presently be buried in search\r\n			engine hell. We appreciate your business by advertising with us.\r\n			Whether your interests run from the sublime to the bizarre,\r\n			[sitename] will compliment your needs. Low wholesale prices\r\n			everyday on every item or service is the [sitename]\r\n			standard.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic3" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=specials"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Specials</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD WIDTH=540 VALIGN=TOP></TD>\r\n	</TR>\r\n	<TR>\r\n		<TD COLSPAN=3 WIDTH=690>\r\n			<P ALIGN=LEFT>\r\n			</P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Products 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=featured"><IMG SRC="images/simplecart/GraphicImage2.jpg" NAME="Graphic2" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><BR><FONT SIZE=2><FONT FACE="Arial, sans-serif">Shop\r\n			online. The new, modern way to shop. Save time, money, gas and\r\n			energy. Avoid traffic and crowds. Shop at your own pace any hour\r\n			of the day. Super fast delivery to your door with no hassle\r\n			involved. Full product views and complete descriptions. Order for\r\n			friends, relatives and yourself the easy way. Take advantage of\r\n			all the free shipping, discounts and gifts available from our new\r\n			online merchants. Also order great, free catalogs by clicking\r\n			<A HREF="modules.php?name=SimpleCart&op=contact">here</A>.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic6" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=featured"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Featured Products</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n</TABLE>', '<P ALIGN=LEFT>Signing up for a PayPal account is free and there&#039;s no\r\ncharge to send money. PayPal&#039;s low transaction fees are applied when\r\nPremier and Business Account holders receive money. <BR><BR><BR>Choose\r\nthe Right PayPal Account for You \r\n</P>\r\n<UL>\r\n	<LI><P ALIGN=LEFT>Personal Account<BR>Ideal if you shop online. Make\r\n	secure payments on eBay and merchant websites using your credit\r\n	card, debit card, or bank account.</P>\r\n	<LI><P ALIGN=LEFT>Premier Account<BR>Perfect for both buying and\r\n	selling. Make secure payments on eBay and merchant websites. Plus,\r\n	accept credit card, debit card, and bank account payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>.</P>\r\n	<LI><P ALIGN=LEFT>Business Account<BR>The right choice for your\r\n	online business. Accept credit card, debit card, and bank account\r\n	payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>. \r\n	</P>\r\n</UL>\r\n<P ALIGN=LEFT><BR><BR>\r\n</P>\r\n<P ALIGN=CENTER>Sign up is quick and easy &mdash; start using PayPal\r\ntoday !<BR><BR><A HREF="https://www.paypal.com/us/mrb/pal=287WLUA9HHU7W"><IMG SRC="images/simplecart/signup.gif" NAME="signup" ALIGN=BOTTOM WIDTH=112 HEIGHT=21 BORDER=0></A>\r\n</P>', '<DL>\r\n	<DT STYLE="margin-bottom: 0.2in; text-align: left"><U>[sitename]\r\n	is committed to safeguarding your privacy online</U>. We recognize\r\n	your need for reasonable control of personally identifiable\r\n	information that you share with [sitename]. <BR><BR>When you order,\r\n	we need to know your name, e-mail address, mailing address, credit\r\n	card number, and expiration date. This allows us to process and\r\n	fulfill your order. This will be used only for the product/service\r\n	you have sought and would not be under any circumstances passed on\r\n	for any other commercial purpose. [sitename] will not disclose any\r\n	of your personally identifiable information except when we have your\r\n	permission or under special circumstances, such as when we believe\r\n	in good faith that the law requires it. <BR><BR>Although we track\r\n	the total number of visitors to each of our sites in an aggregate\r\n	form to allow us to update an improve our sites, personally\r\n	identifiable information is not extracted in this process. Any\r\n	cookie technology (where our servers deposit special codes on a\r\n	visitor&#039;s computer) will only be used to track non-personal\r\n	information such as type of browser, operating system, and domain\r\n	names to improve our visitor&#039;s online experience. <BR><BR><B>How\r\n	does [sitename] protect customer information?</B> <BR><BR>When you\r\n	place orders, it is through a secure server. The secure server\r\n	software (SSL) encrypts all information you input including your\r\n	credit card number, before it is sent to us. This makes it\r\n	unreadable as it travels across the Internet. Furthermore, all of\r\n	the customer data we collect is protected against unauthorized\r\n	access. <BR><BR><B>Will [sitename] disclose the information it\r\n	collects to outside parties?</B> <BR><BR>[sitename] does not\r\n	sell, trade, or rent your personal information to others. By using\r\n	our web site, you consent to the collection and use of this\r\n	information by [sitename]. If we decide to change our privacy\r\n	policy, we will post those changes on this page so that you are\r\n	always aware of what information we collect, how we use it, and\r\n	under what circumstances we disclose it.</DT></DL>', '<DL>\r\n	<DT STYLE="text-align: left">By using this site the user has,\r\n	unconditionally, accepted the terms and conditions of use as given\r\n	hereunder and/or elsewhere in the site.<BR><BR>1. The user may\r\n	carefully read all the information on products/services as provided\r\n	in relevant sections.<BR><BR>2. This site is owned by [sitename],\r\n	(hereafter referred to as [sitename]). No product/services from this\r\n	site or any other website owned, operated, controlled or licensed by\r\n	[sitename] and/or associates or sister concerns may be copied,\r\n	reproduced, republished, transmitted, downloaded, uploaded or in any\r\n	other manner used for commercial or non-commercial purposes, without\r\n	the written permission of [sitename]. Violation of this condition\r\n	would be treated as a violation of copyright and other proprietary\r\n	rights of [sitename] and/or their associates or sister concerns or\r\n	affiliates.<BR><BR>3. The product/services provided on this site are\r\n	without warranties of any kind either expressed or implied and\r\n	[sitename] disclaims all or any of them to the fullest extent.\r\n	[sitename] makes its best efforts to offer you the best products and\r\n	services but does not warrant that all the products/services offered\r\n	will be error-free, or that the defects will be corrected, or that\r\n	this site or the server that makes it available are or will be free\r\n	of viruses or other harmful components.<BR><BR>4. The product\r\n	specifications (weight, size, color etc.) mentioned with the product\r\n	photos are approximate. There may be a slight variation between the\r\n	real product and product displayed on [sitename] (however unlikely),\r\n	including the pictures &amp; specifications. [sitename], in its\r\n	absolute discretion, may deliver a similar / alternate product for\r\n	reasons or exigencies beyond its control.<BR><BR>5. Under no\r\n	circumstances, whatsoever, [sitename] shall be liable for any loss\r\n	of data, lost profits or any damages whatsoever including, without\r\n	limiting, any indirect, special, incidental, consequential or other\r\n	damages that result from the use of or inability to use the\r\n	products/services offered in the site. Notwithstanding the\r\n	foregoing, in no event shall [sitename] be liable to the user for\r\n	any or all damages, losses, and causes of action (including but not\r\n	limited to, negligence) or otherwise exceeding the amount paid by\r\n	the user to [sitename] for that specific service/product.<BR><BR>6. In\r\n	an effort to provide our customers with the most current\r\n	information, [sitename] will, from time to time, make changes in the\r\n	content and the products or services described on this site. The\r\n	prices advertised on this site are for Internet orders only. Prices\r\n	and the availability of items are subject to change without notice.\r\n	Prices displayed on the site may not be indicative of the actual\r\n	selling price of that product in your area. We reserve the right to\r\n	limit sales, including the right to prohibit sales to re-sellers. We\r\n	are not responsible for typographical or photographic\r\n	errors.<BR><BR>7. Notwithstanding any or all of the Terms, Conditions\r\n	&amp; Disclaimers stated herein above or elsewhere in the site, any\r\n	refund or payment by [sitename] to the user or anyone else acting on\r\n	his behalf for any reason whatsoever, voluntarily or on being\r\n	claimed by any user shall not become a waiver of any or all of the\r\n	Terms, Conditions and Disclaimers made and shall not become a\r\n	precedent for similar future actions/claims or confer any rights on\r\n	the claimant. AND further that all such refunds/payments, if any,\r\n	when made shall be subject to 10% deduction on account of bank\r\n	charges and other processing overheads.<BR><BR>8. If the user has any\r\n	question, doubts or confusion with regard to any of these terms and\r\n	conditions set out herein he should seek clarifications from us by\r\n	<A HREF="modules.php?name=SimpleCart&op=contact">contacting\r\n	the webmaster</A>.<BR><BR>THE USER OF [sitename] IS PRESUMED\r\n	TO HAVE READ ALL THE TERMS AND CONDITIONS HEREIN AND IS DEEMED TO\r\n	HAVE AGREED, UNDERSTOOD AND ACCEPTED UNCONDITIONALLY ALL THE TERMS,\r\n	CONDITIONS, PROCEDURES AND RISKS OF USING THE SERVICES. THE USER\r\n	CANNOT, AT ANY TIME, CLAIM IGNORANCE OF ANY OR ALL OF THEM. ALL\r\n	RELATIONSHIP OF ANY USER WHERESOEVER SITUATED IS GOVERNED BY AND IN\r\n	ACCORDANCE WITH THE LAWS OF [country].</DT></DL>', 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart_config`
--

DROP TABLE IF EXISTS `nuke_simplecart_config`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart_config` (
  `scmail` varchar(255) NOT NULL DEFAULT 'admin@MySite.com',
  `scsubject` varchar(255) NOT NULL DEFAULT 'SimpleCart Catalog Order',
  `sccontact` varchar(255) NOT NULL DEFAULT 'sales@MySite.com',
  `sccontactsubject` varchar(255) NOT NULL DEFAULT 'SimpleCart Product Inquiry',
  `scname` varchar(255) NOT NULL DEFAULT 'SimpleCart Online Store'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart_config`
--

INSERT INTO `nuke_simplecart_config` (`scmail`, `scsubject`, `sccontact`, `sccontactsubject`, `scname`) VALUES
('admin@MySite.com', 'SimpleCart Catalog Order', 'sales@MySite.com', 'SimpleCart Product Inquiry', 'SimpleCart Online Store');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart_featured`
--

DROP TABLE IF EXISTS `nuke_simplecart_featured`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart_featured` (
  `c4_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c4` varchar(50) NOT NULL,
  `c4p1_img` varchar(255) NOT NULL,
  `c4p1_tit` varchar(50) NOT NULL,
  `c4p1_desc` text NOT NULL,
  `c4p1_buy` text NOT NULL,
  `c4p1_cart` text NOT NULL,
  `c4p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p2_img` varchar(255) NOT NULL,
  `c4p2_tit` varchar(50) NOT NULL,
  `c4p2_desc` text NOT NULL,
  `c4p2_buy` text NOT NULL,
  `c4p2_cart` text NOT NULL,
  `c4p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p3_img` varchar(255) NOT NULL,
  `c4p3_tit` varchar(50) NOT NULL,
  `c4p3_desc` text NOT NULL,
  `c4p3_buy` text NOT NULL,
  `c4p3_cart` text NOT NULL,
  `c4p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p4_img` varchar(255) NOT NULL,
  `c4p4_tit` varchar(50) NOT NULL,
  `c4p4_desc` text NOT NULL,
  `c4p4_buy` text NOT NULL,
  `c4p4_cart` text NOT NULL,
  `c4p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p5_img` varchar(255) NOT NULL,
  `c4p5_tit` varchar(50) NOT NULL,
  `c4p5_desc` text NOT NULL,
  `c4p5_buy` text NOT NULL,
  `c4p5_cart` text NOT NULL,
  `c4p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p6_img` varchar(255) NOT NULL,
  `c4p6_tit` varchar(50) NOT NULL,
  `c4p6_desc` text NOT NULL,
  `c4p6_buy` text NOT NULL,
  `c4p6_cart` text NOT NULL,
  `c4p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p7_img` varchar(255) NOT NULL,
  `c4p7_tit` varchar(50) NOT NULL,
  `c4p7_desc` text NOT NULL,
  `c4p7_buy` text NOT NULL,
  `c4p7_cart` text NOT NULL,
  `c4p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c4p8_img` varchar(255) NOT NULL,
  `c4p8_tit` varchar(50) NOT NULL,
  `c4p8_desc` text NOT NULL,
  `c4p8_buy` text NOT NULL,
  `c4p8_cart` text NOT NULL,
  `c4p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart_featured`
--

INSERT INTO `nuke_simplecart_featured` (`c4_desc`, `c4`, `c4p1_img`, `c4p1_tit`, `c4p1_desc`, `c4p1_buy`, `c4p1_cart`, `c4p1_active`, `c4p2_img`, `c4p2_tit`, `c4p2_desc`, `c4p2_buy`, `c4p2_cart`, `c4p2_active`, `c4p3_img`, `c4p3_tit`, `c4p3_desc`, `c4p3_buy`, `c4p3_cart`, `c4p3_active`, `c4p4_img`, `c4p4_tit`, `c4p4_desc`, `c4p4_buy`, `c4p4_cart`, `c4p4_active`, `c4p5_img`, `c4p5_tit`, `c4p5_desc`, `c4p5_buy`, `c4p5_cart`, `c4p5_active`, `c4p6_img`, `c4p6_tit`, `c4p6_desc`, `c4p6_buy`, `c4p6_cart`, `c4p6_active`, `c4p7_img`, `c4p7_tit`, `c4p7_desc`, `c4p7_buy`, `c4p7_cart`, `c4p7_active`, `c4p8_img`, `c4p8_tit`, `c4p8_desc`, `c4p8_buy`, `c4p8_cart`, `c4p8_active`) VALUES
('Insert Category Description Here', 'Featured Products', 'images/simplecart/featured/c4p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<strong>Price: $16.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.99 ">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<strong>Price: $28.88</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PostNuke Content Management">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.88">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<strong>Price: $27.97</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="27.97">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<strong>Price: $16.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<strong>Price: $32.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="32.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<strong>Price: $19.79</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.79">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart_products`
--

DROP TABLE IF EXISTS `nuke_simplecart_products`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart_products` (
  `c1_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c1` varchar(50) NOT NULL,
  `c1p1_img` varchar(255) NOT NULL,
  `c1p1_tit` varchar(50) NOT NULL,
  `c1p1_desc` text NOT NULL,
  `c1p1_buy` text NOT NULL,
  `c1p1_cart` text NOT NULL,
  `c1p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p2_img` varchar(255) NOT NULL,
  `c1p2_tit` varchar(50) NOT NULL,
  `c1p2_desc` text NOT NULL,
  `c1p2_buy` text NOT NULL,
  `c1p2_cart` text NOT NULL,
  `c1p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p3_img` varchar(255) NOT NULL,
  `c1p3_tit` varchar(50) NOT NULL,
  `c1p3_desc` text NOT NULL,
  `c1p3_buy` text NOT NULL,
  `c1p3_cart` text NOT NULL,
  `c1p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p4_img` varchar(255) NOT NULL,
  `c1p4_tit` varchar(50) NOT NULL,
  `c1p4_desc` text NOT NULL,
  `c1p4_buy` text NOT NULL,
  `c1p4_cart` text NOT NULL,
  `c1p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p5_img` varchar(255) NOT NULL,
  `c1p5_tit` varchar(50) NOT NULL,
  `c1p5_desc` text NOT NULL,
  `c1p5_buy` text NOT NULL,
  `c1p5_cart` text NOT NULL,
  `c1p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p6_img` varchar(255) NOT NULL,
  `c1p6_tit` varchar(50) NOT NULL,
  `c1p6_desc` text NOT NULL,
  `c1p6_buy` text NOT NULL,
  `c1p6_cart` text NOT NULL,
  `c1p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p7_img` varchar(255) NOT NULL,
  `c1p7_tit` varchar(50) NOT NULL,
  `c1p7_desc` text NOT NULL,
  `c1p7_buy` text NOT NULL,
  `c1p7_cart` text NOT NULL,
  `c1p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c1p8_img` varchar(255) NOT NULL,
  `c1p8_tit` varchar(50) NOT NULL,
  `c1p8_desc` text NOT NULL,
  `c1p8_buy` text NOT NULL,
  `c1p8_cart` text NOT NULL,
  `c1p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart_products`
--

INSERT INTO `nuke_simplecart_products` (`c1_desc`, `c1`, `c1p1_img`, `c1p1_tit`, `c1p1_desc`, `c1p1_buy`, `c1p1_cart`, `c1p1_active`, `c1p2_img`, `c1p2_tit`, `c1p2_desc`, `c1p2_buy`, `c1p2_cart`, `c1p2_active`, `c1p3_img`, `c1p3_tit`, `c1p3_desc`, `c1p3_buy`, `c1p3_cart`, `c1p3_active`, `c1p4_img`, `c1p4_tit`, `c1p4_desc`, `c1p4_buy`, `c1p4_cart`, `c1p4_active`, `c1p5_img`, `c1p5_tit`, `c1p5_desc`, `c1p5_buy`, `c1p5_cart`, `c1p5_active`, `c1p6_img`, `c1p6_tit`, `c1p6_desc`, `c1p6_buy`, `c1p6_cart`, `c1p6_active`, `c1p7_img`, `c1p7_tit`, `c1p7_desc`, `c1p7_buy`, `c1p7_cart`, `c1p7_active`, `c1p8_img`, `c1p8_tit`, `c1p8_desc`, `c1p8_buy`, `c1p8_cart`, `c1p8_active`) VALUES
('Insert Category Description Here', 'Products', 'images/simplecart/products/c1p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<strong>Price: $16.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.99 ">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<strong>Price: $28.88</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PostNuke Content Management">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.88">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<strong>Price: $26.39</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="26.39">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<strong>Price: $27.97</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="27.97">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<strong>Price: $16.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="16.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<strong>Price: $32.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="32.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<strong>Price: $19.79</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.79">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart_services`
--

DROP TABLE IF EXISTS `nuke_simplecart_services`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart_services` (
  `c2_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c2` varchar(50) NOT NULL,
  `c2p1_img` varchar(255) NOT NULL,
  `c2p1_tit` varchar(50) NOT NULL,
  `c2p1_desc` text NOT NULL,
  `c2p1_buy` text NOT NULL,
  `c2p1_cart` text NOT NULL,
  `c2p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p2_img` varchar(255) NOT NULL,
  `c2p2_tit` varchar(50) NOT NULL,
  `c2p2_desc` text NOT NULL,
  `c2p2_buy` text NOT NULL,
  `c2p2_cart` text NOT NULL,
  `c2p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p3_img` varchar(255) NOT NULL,
  `c2p3_tit` varchar(50) NOT NULL,
  `c2p3_desc` text NOT NULL,
  `c2p3_buy` text NOT NULL,
  `c2p3_cart` text NOT NULL,
  `c2p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p4_img` varchar(255) NOT NULL,
  `c2p4_tit` varchar(50) NOT NULL,
  `c2p4_desc` text NOT NULL,
  `c2p4_buy` text NOT NULL,
  `c2p4_cart` text NOT NULL,
  `c2p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p5_img` varchar(255) NOT NULL,
  `c2p5_tit` varchar(50) NOT NULL,
  `c2p5_desc` text NOT NULL,
  `c2p5_buy` text NOT NULL,
  `c2p5_cart` text NOT NULL,
  `c2p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p6_img` varchar(255) NOT NULL,
  `c2p6_tit` varchar(50) NOT NULL,
  `c2p6_desc` text NOT NULL,
  `c2p6_buy` text NOT NULL,
  `c2p6_cart` text NOT NULL,
  `c2p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p7_img` varchar(255) NOT NULL,
  `c2p7_tit` varchar(50) NOT NULL,
  `c2p7_desc` text NOT NULL,
  `c2p7_buy` text NOT NULL,
  `c2p7_cart` text NOT NULL,
  `c2p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c2p8_img` varchar(255) NOT NULL,
  `c2p8_tit` varchar(50) NOT NULL,
  `c2p8_desc` text NOT NULL,
  `c2p8_buy` text NOT NULL,
  `c2p8_cart` text NOT NULL,
  `c2p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart_services`
--

INSERT INTO `nuke_simplecart_services` (`c2_desc`, `c2`, `c2p1_img`, `c2p1_tit`, `c2p1_desc`, `c2p1_buy`, `c2p1_cart`, `c2p1_active`, `c2p2_img`, `c2p2_tit`, `c2p2_desc`, `c2p2_buy`, `c2p2_cart`, `c2p2_active`, `c2p3_img`, `c2p3_tit`, `c2p3_desc`, `c2p3_buy`, `c2p3_cart`, `c2p3_active`, `c2p4_img`, `c2p4_tit`, `c2p4_desc`, `c2p4_buy`, `c2p4_cart`, `c2p4_active`, `c2p5_img`, `c2p5_tit`, `c2p5_desc`, `c2p5_buy`, `c2p5_cart`, `c2p5_active`, `c2p6_img`, `c2p6_tit`, `c2p6_desc`, `c2p6_buy`, `c2p6_cart`, `c2p6_active`, `c2p7_img`, `c2p7_tit`, `c2p7_desc`, `c2p7_buy`, `c2p7_cart`, `c2p7_active`, `c2p8_img`, `c2p8_tit`, `c2p8_desc`, `c2p8_buy`, `c2p8_cart`, `c2p8_active`) VALUES
('Insert Category Description Here', 'Services', 'images/simplecart/services/c2p1.jpg', 'Motorola Talkabout FV200AA GMRS / FRS Two-way', 'The Motorola Talkabout FV200AA GMRS/FRS Two-way Radios, which replaces the T4500 model, offers active families a simple and affordable way to stay in touch. With an improved outdoor range of up to five miles, these sleek and compact, water-resistant radios can fit in the palm of your hand or into a pocket.\r\n<br>\r\n<br>\r\n<strong>Price: $19.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Motorola Talkabout FV200AA GMRS / FRS Two-way Radio">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="19.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p2.jpg', 'Linksys PAP2 Phone Adapter', 'With Vonage, you can make calls through the Internet, potentially save on long-distance charges, and access a rich assortment of call features. Plans start as low as $14.99 per month, and the Premium Unlimited plan offers unlimited calling to the U.S. and Canada for only $24.99 per month.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Linksys PAP2 Phone Adapter for Vonage Internet Phone Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p3.jpg', 'Apple .Mac 3.5 Online Service', '.Mac provides individuals and families with the Internet experience they?ve come to expect from Apple. The new version of .Mac has extended its services to support the special requirements of groups. Members of clubs, teams, and other organizations can now use .Mac to streamline communication, share photos and movies, and coordinate activities in minutes.\r\n<br>\r\n<br>\r\n<strong>Apple Computer CD-ROM $75.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Apple .Mac 3.5 Online Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="75.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p4.jpg', 'Microsoft Windows XP Professional', 'With Windows XP Professional Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Windows XP is the operating system release that unifies the Microsoft range, with all the desktop versions now built on the NT/2000 code base rather than the shakier foundation of Windows 95, 98, and Me.\r\n<br>\r\n<br>\r\n<strong>Price: $266.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Professional with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="266.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<strong>Price: $28.50</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.50">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<strong>Price: $92.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="92.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<strong>Price: $196.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="196.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_simplecart_specials`
--

DROP TABLE IF EXISTS `nuke_simplecart_specials`;
CREATE TABLE IF NOT EXISTS `nuke_simplecart_specials` (
  `c3_desc` varchar(255) NOT NULL DEFAULT 'Insert Category Description Here',
  `c3` varchar(50) NOT NULL,
  `c3p1_img` varchar(255) NOT NULL,
  `c3p1_tit` varchar(50) NOT NULL,
  `c3p1_desc` text NOT NULL,
  `c3p1_buy` text NOT NULL,
  `c3p1_cart` text NOT NULL,
  `c3p1_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p2_img` varchar(255) NOT NULL,
  `c3p2_tit` varchar(50) NOT NULL,
  `c3p2_desc` text NOT NULL,
  `c3p2_buy` text NOT NULL,
  `c3p2_cart` text NOT NULL,
  `c3p2_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p3_img` varchar(255) NOT NULL,
  `c3p3_tit` varchar(50) NOT NULL,
  `c3p3_desc` text NOT NULL,
  `c3p3_buy` text NOT NULL,
  `c3p3_cart` text NOT NULL,
  `c3p3_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p4_img` varchar(255) NOT NULL,
  `c3p4_tit` varchar(50) NOT NULL,
  `c3p4_desc` text NOT NULL,
  `c3p4_buy` text NOT NULL,
  `c3p4_cart` text NOT NULL,
  `c3p4_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p5_img` varchar(255) NOT NULL,
  `c3p5_tit` varchar(50) NOT NULL,
  `c3p5_desc` text NOT NULL,
  `c3p5_buy` text NOT NULL,
  `c3p5_cart` text NOT NULL,
  `c3p5_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p6_img` varchar(255) NOT NULL,
  `c3p6_tit` varchar(50) NOT NULL,
  `c3p6_desc` text NOT NULL,
  `c3p6_buy` text NOT NULL,
  `c3p6_cart` text NOT NULL,
  `c3p6_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p7_img` varchar(255) NOT NULL,
  `c3p7_tit` varchar(50) NOT NULL,
  `c3p7_desc` text NOT NULL,
  `c3p7_buy` text NOT NULL,
  `c3p7_cart` text NOT NULL,
  `c3p7_active` tinyint(1) NOT NULL DEFAULT '1',
  `c3p8_img` varchar(255) NOT NULL,
  `c3p8_tit` varchar(50) NOT NULL,
  `c3p8_desc` text NOT NULL,
  `c3p8_buy` text NOT NULL,
  `c3p8_cart` text NOT NULL,
  `c3p8_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_simplecart_specials`
--

INSERT INTO `nuke_simplecart_specials` (`c3_desc`, `c3`, `c3p1_img`, `c3p1_tit`, `c3p1_desc`, `c3p1_buy`, `c3p1_cart`, `c3p1_active`, `c3p2_img`, `c3p2_tit`, `c3p2_desc`, `c3p2_buy`, `c3p2_cart`, `c3p2_active`, `c3p3_img`, `c3p3_tit`, `c3p3_desc`, `c3p3_buy`, `c3p3_cart`, `c3p3_active`, `c3p4_img`, `c3p4_tit`, `c3p4_desc`, `c3p4_buy`, `c3p4_cart`, `c3p4_active`, `c3p5_img`, `c3p5_tit`, `c3p5_desc`, `c3p5_buy`, `c3p5_cart`, `c3p5_active`, `c3p6_img`, `c3p6_tit`, `c3p6_desc`, `c3p6_buy`, `c3p6_cart`, `c3p6_active`, `c3p7_img`, `c3p7_tit`, `c3p7_desc`, `c3p7_buy`, `c3p7_cart`, `c3p7_active`, `c3p8_img`, `c3p8_tit`, `c3p8_desc`, `c3p8_buy`, `c3p8_cart`, `c3p8_active`) VALUES
('Insert Category Description Here', 'Specials', 'images/simplecart/specials/c3p1.jpg', 'Invicta Automatic Pro Diver G3', 'Eminently masculine, the Invicta Automatic Pro Diver G3 watch harkens back to a nostalgic time with its classically styled features. This precisely constructed Swiss timepiece for men features a solid stainless steel case that&#039;s 43mm wide (1.7 inches).\r\n<br>\r\n<br>\r\n<strong>List Price: $375.00 Your Price: $97.00</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Invicta Men&#039;s Automatic Pro Diver S2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="97.00">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p2.jpg', 'Apple 20 GB iPod Photo U2 Special Edition', 'The distinctive 20 GB iPod U2 Special Edition for Mac and Windows. Now with a full-color display. Play up to 5,000 songs. Store up to 20,000 photos. Turn it up loud, captain.\r\n<br>\r\n<br>\r\n<strong>Price: $332.49</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Apple 20 GB iPod Photo U2 Special Edition">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="332.49">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p3.jpg', 'T-Mobile Get More 600 Nationwide Minute Plan', '<strong>Calling Range: national with roaming</strong><br><br>\r\nThis cell phone service plan lets you call throughout T-Mobile&#039;s nationwide network, with no additional fees for long distance service or roaming for 600 minutes worth of calls per month.\r\n<br>\r\n<br>\r\n<strong>Plan Price per month: $39.99</strong>\r\n', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="T-Mobile Get More 600 Nationwide Minute Plan with Unlimited Nights and Weekends">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="39.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p4.jpg', 'Fun Hop', 'Every child knows this much about evolution: somewhere, way, way back, we were kangaroos. All you need to satisfy the deep primal desire to get around by hopping is one of these big, heavy-gauge vinyl hopping balls. The slightly stippled surface of the blue vinyl provides plenty of grip, and the ball inflates to over 53 inches in circumference, so it can accommodate different sizes of human Roo.\r\n<br>\r\n<br>\r\n<strong>Price: $12.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Fun Hop">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="12.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<strong>Price: $28.50</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="28.50">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<strong>Price: $92.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="92.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<strong>Price: $196.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="196.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<strong>Price: $49.99</strong>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input type="hidden" name="item_number" value="">\r\n<input type="hidden" name="amount" value="49.99">\r\n<input type="hidden" name="currency_code" value="USD">\r\n<input type="hidden" name="shipping" value="">\r\n<input type="hidden" name="shipping2" value="">\r\n<input type="hidden" name="handling_cart" value="">\r\n<input type="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input type="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input type="hidden" name="cmd" value="_cart">\r\n<input type="hidden" name="business" value="your-email@address.com">\r\n<input type="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input type="hidden" name="display" value="1">\r\n</form>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_sommaire`
--

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

--
-- Dumping data for table `nuke_sommaire`
--

INSERT INTO `nuke_sommaire` (`groupmenu`, `name`, `image`, `lien`, `hr`, `center`, `bgcolor`, `invisible`, `class`, `bold`, `new`, `listbox`, `dynamic`, `date_debut`, `date_fin`, `days`) VALUES
(0, 'Home', 'icon_home.gif', 'index.php', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(1, 'General', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(2, 'Community', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(3, 'Content', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(4, 'Information', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(5, 'Tools', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(6, 'Resources', 'nuke.gif', '', '', '', '', 4, 'storytitle', '', '', '', 'on', 0, 0, ''),
(99, '', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 'on', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_sommaire_categories`
--

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

--
-- Dumping data for table `nuke_sommaire_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_staff`
--

DROP TABLE IF EXISTS `nuke_staff`;
CREATE TABLE IF NOT EXISTS `nuke_staff` (
  `id` int(3) NOT NULL DEFAULT '0',
  `sid` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `des` mediumtext NOT NULL,
  `rank` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_staff`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_staff_cat`
--

DROP TABLE IF EXISTS `nuke_staff_cat`;
CREATE TABLE IF NOT EXISTS `nuke_staff_cat` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_staff_cat`
--

INSERT INTO `nuke_staff_cat` (`id`, `name`) VALUES
(1, 'Staff Member');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_staff_config`
--

DROP TABLE IF EXISTS `nuke_staff_config`;
CREATE TABLE IF NOT EXISTS `nuke_staff_config` (
  `latest` int(3) NOT NULL DEFAULT '0',
  `img_url` mediumtext NOT NULL,
  `staff_join_page` mediumtext NOT NULL,
  `ranks` int(3) NOT NULL DEFAULT '0',
  `index_bl` int(3) NOT NULL DEFAULT '0',
  `copyright_txt` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_staff_config`
--

INSERT INTO `nuke_staff_config` (`latest`, `img_url`, `staff_join_page`, `ranks`, `index_bl`, `copyright_txt`) VALUES
(1, 'images/staff/', 'modules.php?name=Member_Application', 1, 1, '[center][color="#999999" size="1"]Staff v0.3 by [url="http://www.caffeine-junkies.com"]Caffeine Junkies[/url]. &copy; 2004[/colour][/center]');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_date`
--

DROP TABLE IF EXISTS `nuke_stats_date`;
CREATE TABLE IF NOT EXISTS `nuke_stats_date` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `date` tinyint(4) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_stats_date`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_hour`
--

DROP TABLE IF EXISTS `nuke_stats_hour`;
CREATE TABLE IF NOT EXISTS `nuke_stats_hour` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `date` tinyint(4) NOT NULL DEFAULT '0',
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_month`
--

DROP TABLE IF EXISTS `nuke_stats_month`;
CREATE TABLE IF NOT EXISTS `nuke_stats_month` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `month` tinyint(4) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `nuke_stats_year`
--

DROP TABLE IF EXISTS `nuke_stats_year`;
CREATE TABLE IF NOT EXISTS `nuke_stats_year` (
  `year` smallint(6) NOT NULL DEFAULT '0',
  `hits` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `nuke_stories`
--

DROP TABLE IF EXISTS `nuke_stories`;
CREATE TABLE IF NOT EXISTS `nuke_stories` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `aid` varchar(25) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hometext` text,
  `bodytext` text NOT NULL,
  `comments` int(11) DEFAULT '0',
  `counter` mediumint(8) unsigned DEFAULT NULL,
  `topic` int(3) NOT NULL DEFAULT '1',
  `informant` varchar(25) NOT NULL,
  `notes` text NOT NULL,
  `ihome` int(1) NOT NULL DEFAULT '0',
  `alanguage` varchar(30) NOT NULL,
  `acomm` int(1) NOT NULL DEFAULT '0',
  `haspoll` int(1) NOT NULL DEFAULT '0',
  `pollID` int(10) NOT NULL DEFAULT '0',
  `score` int(10) NOT NULL DEFAULT '0',
  `ratings` int(10) NOT NULL DEFAULT '0',
  `associated` text NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `sid` (`sid`),
  KEY `catid` (`catid`),
  KEY `counter` (`counter`),
  KEY `topic` (`topic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_stories`
--

INSERT INTO `nuke_stories` (`sid`, `catid`, `aid`, `title`, `time`, `hometext`, `bodytext`, `comments`, `counter`, `topic`, `informant`, `notes`, `ihome`, `alanguage`, `acomm`, `haspoll`, `pollID`, `score`, `ratings`, `associated`) VALUES
(1, 0, 'sgtmudd', 'Welcome to Platinum Nuke Pro v1!', '2011-01-07 19:28:08', '<p style="text-align: center;">\r\n	<span style="font-size: 16px;"><span style="color: rgb(255, 140, 0);"><strong>Welcome to Platinum Nuke Pro v1!</strong></span></span><br />\r\n	<br />\r\n	Many new features, bug fixes, mods and php5.3+ compliance updates.</p>\r\n<p style="text-align: center;">\r\n	See the changelog for more information.</p>\r\n', '', 2, 225, 17, 'sgtmudd', '', 0, 'english', 0, 0, 0, 4, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_stories_cat`
--

DROP TABLE IF EXISTS `nuke_stories_cat`;
CREATE TABLE IF NOT EXISTS `nuke_stories_cat` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_stories_cat`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_subscriptions`
--

DROP TABLE IF EXISTS `nuke_subscriptions`;
CREATE TABLE IF NOT EXISTS `nuke_subscriptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `subscription_expire` varchar(50) NOT NULL,
  KEY `id` (`id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_subscriptions`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_tags`
--

DROP TABLE IF EXISTS `nuke_tags`;
CREATE TABLE IF NOT EXISTS `nuke_tags` (
  `tag` varchar(25) NOT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `whr` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_tags`
--

INSERT INTO `nuke_tags` (`tag`, `cid`, `whr`) VALUES
('WYSIWYG', 1, 3),
('CMS', 1, 3),
('Nuke', 1, 3),
('Platinum', 1, 3),
('Platinum Nuke', 1, 3),
('clan', 1, 3),
('Pro', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_tags_temp`
--

DROP TABLE IF EXISTS `nuke_tags_temp`;
CREATE TABLE IF NOT EXISTS `nuke_tags_temp` (
  `tag` varchar(25) NOT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `whr` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_tags_temp`
--


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

--
-- Dumping data for table `nuke_themeconsole`
--

INSERT INTO `nuke_themeconsole` (`marq1`, `marq2`, `marq3`, `marq4`, `marq5`, `marqstyle`, `link1text`, `link1`, `link2text`, `link2`, `link3text`, `link3`, `link4text`, `link4`, `link5text`, `link5`, `link6text`, `link6`, `link7text`, `link7`, `sitewidth`, `searchbox`, `flashswitch`, `disrightclick`, `adminright`, `disselectall`, `adminselect`, `themename`, `encrypt`, `pubbox`, `pubboxtext`) VALUES
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 3 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'BB_CFiber', 0, '0', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 3 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'PNP_WB', 0, '0', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 1, 1, 0, 0, 0, 0, 'Impressed_II', 0, '1', ''),
('This is line 1 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 2 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 4 from ThemeConsole mod so you can change and edit this message with simplicity.', 'This is line 5 from ThemeConsole mod so you can change and edit this message with simplicity.', 3, 'Home', 'index.php', 'Forums', 'modules.php?name=Forums', 'Downloads', 'modules.php?name=PrivateDownloads', 'Account', 'modules.php?name=Your_Account', '', '', '', '', '', '', '100%', 0, 1, 0, 0, 0, 0, 'Impressed', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_topics`
--

DROP TABLE IF EXISTS `nuke_topics`;
CREATE TABLE IF NOT EXISTS `nuke_topics` (
  `topicid` int(3) NOT NULL AUTO_INCREMENT,
  `topicname` varchar(20) DEFAULT NULL,
  `topicimage` varchar(20) DEFAULT NULL,
  `topictext` varchar(40) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `nuke_topics`
--

INSERT INTO `nuke_topics` (`topicid`, `topicname`, `topicimage`, `topictext`, `counter`) VALUES
(2, 'Addons', 'addon.jpg', 'Addons', 0),
(4, 'Blocks', 'Blocks.gif', 'Blocks', 0),
(5, 'Calendar', 'Calendar.gif', 'Calendar', 0),
(6, 'Community', 'blank.gif', 'Community', 0),
(7, 'Files', 'Files.gif', 'Files', 0),
(8, 'Hosting', 'Hosting.gif', 'Hosting', 0),
(9, 'Information', 'tutorials.jpg', 'Information', 0),
(10, 'Language', 'Language.gif', 'Language', 0),
(11, 'Modules', 'Modules.gif', 'Modules', 0),
(12, 'News', 'internet.jpg', 'News', 0),
(13, 'Security', 'nuke.jpg', 'Security', 0),
(16, 'Downloads', 'downloads.jpg', 'Downloads', 0),
(15, 'Server', 'hosting.jpg', 'Server', 0),
(17, 'Announcements', 'announcements.jpg', 'Announcements', 0),
(18, 'Themes', 'themes.jpg', 'Themes', 0),
(19, 'Resources', 'resources.jpg', 'Resources', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_top_sites`
--

DROP TABLE IF EXISTS `nuke_top_sites`;
CREATE TABLE IF NOT EXISTS `nuke_top_sites` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `urlban` varchar(100) NOT NULL,
  `imagewidth` int(3) NOT NULL DEFAULT '0',
  `imageheight` int(3) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `linkratingsummary` double(6,1) NOT NULL DEFAULT '0.0',
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `validation` char(1) NOT NULL DEFAULT 'N',
  `mailsent` char(1) NOT NULL DEFAULT 'N',
  `adminrate` varchar(20) NOT NULL,
  `makeweblink` tinyint(1) NOT NULL DEFAULT '0',
  `weblinkcat` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_top_sites`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_top_sites_categories`
--

DROP TABLE IF EXISTS `nuke_top_sites_categories`;
CREATE TABLE IF NOT EXISTS `nuke_top_sites_categories` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`),
  KEY `catname` (`catname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_top_sites_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_top_sites_config`
--

DROP TABLE IF EXISTS `nuke_top_sites_config`;
CREATE TABLE IF NOT EXISTS `nuke_top_sites_config` (
  `autovalidation` tinyint(1) NOT NULL DEFAULT '0',
  `evaluation` tinyint(1) NOT NULL DEFAULT '1',
  `perpage` int(2) NOT NULL DEFAULT '10',
  `linksresults` int(2) NOT NULL DEFAULT '10',
  `anonwaitdays` int(2) NOT NULL DEFAULT '15',
  `outsidewaitdays` int(2) NOT NULL DEFAULT '15',
  `useoutsidevoting` int(2) NOT NULL DEFAULT '1',
  `maxaffichage` int(3) NOT NULL DEFAULT '10',
  `categorie_option` tinyint(1) NOT NULL DEFAULT '1',
  `receivemail` tinyint(1) NOT NULL DEFAULT '1',
  `delafterxdays` tinyint(1) NOT NULL DEFAULT '0',
  `delxdays` int(4) NOT NULL DEFAULT '5',
  `nextdatedeletevote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `latest` int(2) NOT NULL DEFAULT '10',
  `resizeimage` tinyint(1) NOT NULL DEFAULT '0',
  `maxwidth` int(4) NOT NULL DEFAULT '468',
  `maxheight` int(4) NOT NULL DEFAULT '60',
  `altbgcolor1` varchar(7) NOT NULL DEFAULT '#64C1F4',
  `altbgcolor2` varchar(7) NOT NULL DEFAULT '#64C1F4',
  `flashbanoption` tinyint(1) NOT NULL DEFAULT '0',
  `weblinkoption` tinyint(1) NOT NULL DEFAULT '0',
  `notebyjava` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '1.4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_top_sites_config`
--

INSERT INTO `nuke_top_sites_config` (`autovalidation`, `evaluation`, `perpage`, `linksresults`, `anonwaitdays`, `outsidewaitdays`, `useoutsidevoting`, `maxaffichage`, `categorie_option`, `receivemail`, `delafterxdays`, `delxdays`, `nextdatedeletevote`, `latest`, `resizeimage`, `maxwidth`, `maxheight`, `altbgcolor1`, `altbgcolor2`, `flashbanoption`, `weblinkoption`, `notebyjava`, `version`) VALUES
(0, 1, 10, 10, 15, 15, 1, 50, 1, 1, 1, 365, '2011-11-30 00:00:00', 10, 1, 400, 60, '#FFFFFF', '#FFFFFF', 1, 0, 1, '1.4');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_top_sites_votedata`
--

DROP TABLE IF EXISTS `nuke_top_sites_votedata`;
CREATE TABLE IF NOT EXISTS `nuke_top_sites_votedata` (
  `ratingdbid` int(11) NOT NULL AUTO_INCREMENT,
  `ratinglid` int(11) NOT NULL DEFAULT '0',
  `ratinguser` varchar(60) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `ratinghostname` varchar(60) NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_top_sites_votedata`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_categories`
--

DROP TABLE IF EXISTS `nuke_tutorials_categories`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_categories` (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_title` varchar(50) NOT NULL,
  `tc_description` text NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tc_id`),
  KEY `tc_id` (`tc_id`),
  KEY `tc_title` (`tc_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_tutorials_categories`
--

INSERT INTO `nuke_tutorials_categories` (`tc_id`, `tc_title`, `tc_description`, `parentid`) VALUES
(1, 'test', 'testing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_config`
--

DROP TABLE IF EXISTS `nuke_tutorials_config`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_config` (
  `tutsperpage` tinyint(2) NOT NULL DEFAULT '10',
  `hitsforpopular` varchar(5) NOT NULL DEFAULT '5000',
  `toptutorials` tinyint(2) NOT NULL DEFAULT '10',
  `anonwaitdays` tinyint(2) NOT NULL DEFAULT '1',
  `anonweight` tinyint(2) NOT NULL DEFAULT '10',
  `detailvotedecimal` tinyint(1) NOT NULL DEFAULT '2',
  `mainvotedecimal` tinyint(1) NOT NULL DEFAULT '1',
  `mostpoptutorials` tinyint(2) NOT NULL DEFAULT '10',
  `tutorialvotemin` tinyint(3) NOT NULL DEFAULT '25',
  `show_links_num` tinyint(1) NOT NULL DEFAULT '0',
  `maxfavs` tinyint(2) NOT NULL DEFAULT '10',
  `rightblocks` tinyint(1) NOT NULL DEFAULT '1',
  `searchtutorials` tinyint(2) NOT NULL DEFAULT '10',
  `submit_on` tinyint(1) NOT NULL DEFAULT '1',
  `approve_on` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_tutorials_config`
--

INSERT INTO `nuke_tutorials_config` (`tutsperpage`, `hitsforpopular`, `toptutorials`, `anonwaitdays`, `anonweight`, `detailvotedecimal`, `mainvotedecimal`, `mostpoptutorials`, `tutorialvotemin`, `show_links_num`, `maxfavs`, `rightblocks`, `searchtutorials`, `submit_on`, `approve_on`) VALUES
(10, '5000', 10, 1, 10, 2, 1, 10, 25, 0, 10, 1, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_favorites`
--

DROP TABLE IF EXISTS `nuke_tutorials_favorites`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_favorites` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `t_id` int(11) NOT NULL DEFAULT '0',
  `showlist` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_tutorials_favorites`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_levels`
--

DROP TABLE IF EXISTS `nuke_tutorials_levels`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_levels` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `weight` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sid`),
  KEY `title` (`title`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nuke_tutorials_levels`
--

INSERT INTO `nuke_tutorials_levels` (`sid`, `title`, `weight`) VALUES
(1, 'Very Easy', 1),
(2, 'Easy', 2),
(3, 'Intermediate', 3),
(4, 'Difficult', 4),
(5, 'Advanced', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_submit`
--

DROP TABLE IF EXISTS `nuke_tutorials_submit`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_submit` (
  `t_submitid` int(10) NOT NULL AUTO_INCREMENT,
  `tc_id` int(10) NOT NULL DEFAULT '0',
  `t_title` varchar(255) NOT NULL,
  `t_text` longtext NOT NULL,
  `t_submitdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_counter` int(10) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `tutorialsratingsummary` double(6,4) NOT NULL DEFAULT '0.0000',
  `author` varchar(60) NOT NULL,
  `author_email` varchar(60) NOT NULL DEFAULT '0',
  `author_homepage` varchar(200) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `totalcomments` int(11) NOT NULL DEFAULT '0',
  `bbcode_uid` varchar(10) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`t_submitid`),
  KEY `t_submitid` (`t_submitid`),
  KEY `tc_id` (`tc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_tutorials_submit`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_tutorials`
--

DROP TABLE IF EXISTS `nuke_tutorials_tutorials`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_tutorials` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `tc_id` int(10) NOT NULL DEFAULT '0',
  `t_title` varchar(255) NOT NULL,
  `t_text` longtext NOT NULL,
  `t_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_counter` int(10) NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `tutorialsratingsummary` double(6,4) NOT NULL DEFAULT '0.0000',
  `author` varchar(60) NOT NULL,
  `author_email` varchar(60) NOT NULL DEFAULT '0',
  `author_homepage` varchar(200) NOT NULL DEFAULT '0',
  `submitter` varchar(60) NOT NULL,
  `totalvotes` int(11) NOT NULL DEFAULT '0',
  `totalcomments` int(11) NOT NULL DEFAULT '0',
  `bbcode_uid` varchar(10) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `t_id` (`t_id`),
  KEY `tc_id` (`tc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_tutorials_tutorials`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_tutorials_votedata`
--

DROP TABLE IF EXISTS `nuke_tutorials_votedata`;
CREATE TABLE IF NOT EXISTS `nuke_tutorials_votedata` (
  `ratingdbid` int(11) NOT NULL AUTO_INCREMENT,
  `ratinglid` int(11) NOT NULL DEFAULT '0',
  `ratinguser` varchar(60) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `ratinghostname` varchar(60) NOT NULL,
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_tutorials_votedata`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_categories`
--

DROP TABLE IF EXISTS `nuke_universal_categories`;
CREATE TABLE IF NOT EXISTS `nuke_universal_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL,
  `description` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_cfg`
--

DROP TABLE IF EXISTS `nuke_universal_cfg`;
CREATE TABLE IF NOT EXISTS `nuke_universal_cfg` (
  `name` varchar(20) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_universal_cfg`
--

INSERT INTO `nuke_universal_cfg` (`name`, `value`) VALUES
('modtitle', 'Items System'),
('rightblocks', '0'),
('imageon', '1'),
('perpage', '10'),
('allowusersubmit', '1'),
('newpage', '5'),
('popular', '50'),
('popularpage', '5'),
('searchresults', '5'),
('showqueue', '1'),
('onlyregusers', '1'),
('allowmodifyrequest', '1'),
('allowimageupload', '0'),
('restrictimageupload', '0'),
('allowcomments', '1'),
('restrictcomments', '1'),
('toprated', '10'),
('mostpopblock', '1'),
('newblock', '1'),
('maxcatlimit', '3'),
('allowratings', '1'),
('mostwanted', '1'),
('mwpostlevel', '0'),
('sortbytype', '0'),
('mwpages', '20'),
('quickview', '1'),
('quickviewnum', '2'),
('randomquick', '1'),
('qvarticle', '1'),
('qvacharlimit', '250'),
('usedescript', '1'),
('limitmodrequests', '0'),
('jschecking', '0'),
('phpbb_pages', '1'),
('multilinguel', '0'),
('nosubcats', '0'),
('versioncheck', 'Unable to perform version check'),
('lastupdatecheck', '');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_comments`
--

DROP TABLE IF EXISTS `nuke_universal_comments`;
CREATE TABLE IF NOT EXISTS `nuke_universal_comments` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `vid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  UNIQUE KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_items`
--

DROP TABLE IF EXISTS `nuke_universal_items`;
CREATE TABLE IF NOT EXISTS `nuke_universal_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `votes` int(10) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `comments` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `lastdate` datetime DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `youremail` varchar(120) NOT NULL,
  `bbcode_uid` varchar(10) DEFAULT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'english',
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_modify`
--

DROP TABLE IF EXISTS `nuke_universal_modify`;
CREATE TABLE IF NOT EXISTS `nuke_universal_modify` (
  `id` int(11) NOT NULL DEFAULT '0',
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL,
  `youremail` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_universal_modify`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_queue`
--

DROP TABLE IF EXISTS `nuke_universal_queue`;
CREATE TABLE IF NOT EXISTS `nuke_universal_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `submitter` varchar(100) NOT NULL,
  `youremail` varchar(120) NOT NULL,
  `language` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_related`
--

DROP TABLE IF EXISTS `nuke_universal_related`;
CREATE TABLE IF NOT EXISTS `nuke_universal_related` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `rid` (`rid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_related`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_universal_requests`
--

DROP TABLE IF EXISTS `nuke_universal_requests`;
CREATE TABLE IF NOT EXISTS `nuke_universal_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtitle` varchar(120) NOT NULL,
  `submitter` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_universal_requests`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_users`
--

DROP TABLE IF EXISTS `nuke_users`;
CREATE TABLE IF NOT EXISTS `nuke_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `username` varchar(25) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `user_website` varchar(255) NOT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `user_regdate` varchar(20) NOT NULL,
  `user_icq` varchar(15) DEFAULT NULL,
  `user_occ` varchar(100) DEFAULT NULL,
  `user_from` varchar(100) DEFAULT NULL,
  `user_interests` varchar(150) NOT NULL,
  `user_sig` varchar(255) DEFAULT NULL,
  `user_viewemail` tinyint(2) DEFAULT NULL,
  `user_theme` int(3) DEFAULT NULL,
  `user_aim` varchar(18) DEFAULT NULL,
  `user_yim` varchar(25) DEFAULT NULL,
  `user_msnm` varchar(25) DEFAULT NULL,
  `user_password` varchar(40) NOT NULL,
  `storynum` tinyint(4) NOT NULL DEFAULT '10',
  `umode` varchar(10) NOT NULL,
  `uorder` tinyint(1) NOT NULL DEFAULT '0',
  `thold` tinyint(1) NOT NULL DEFAULT '0',
  `noscore` tinyint(1) NOT NULL DEFAULT '0',
  `bio` tinytext NOT NULL,
  `ublockon` tinyint(1) NOT NULL DEFAULT '0',
  `ublock` tinytext NOT NULL,
  `theme` varchar(255) NOT NULL,
  `commentmax` int(11) NOT NULL DEFAULT '4096',
  `counter` int(11) NOT NULL DEFAULT '0',
  `newsletter` int(1) NOT NULL DEFAULT '0',
  `user_posts` int(10) NOT NULL DEFAULT '0',
  `user_attachsig` int(2) NOT NULL DEFAULT '1',
  `user_rank` int(10) NOT NULL DEFAULT '0',
  `user_level` int(10) NOT NULL DEFAULT '1',
  `broadcast` tinyint(1) NOT NULL DEFAULT '1',
  `popmeson` tinyint(1) NOT NULL DEFAULT '0',
  `user_active` tinyint(1) DEFAULT '1',
  `user_session_time` int(11) NOT NULL DEFAULT '0',
  `user_session_page` smallint(5) NOT NULL DEFAULT '0',
  `user_lastvisit` int(11) NOT NULL DEFAULT '0',
  `user_timezone` varchar(6) NOT NULL DEFAULT '2',
  `user_style` tinyint(4) DEFAULT NULL,
  `user_lang` varchar(255) NOT NULL DEFAULT 'english',
  `user_dateformat` varchar(14) NOT NULL DEFAULT 'D M d, Y g:i a',
  `user_new_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_unread_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) NOT NULL DEFAULT '0',
  `user_emailtime` int(11) DEFAULT NULL,
  `user_allowhtml` tinyint(1) DEFAULT '1',
  `user_allowbbcode` tinyint(1) DEFAULT '1',
  `user_allowsmile` tinyint(1) DEFAULT '1',
  `user_allowavatar` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_pm` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) NOT NULL DEFAULT '1',
  `user_notify` tinyint(1) NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_popup_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_avatar_type` tinyint(4) NOT NULL DEFAULT '3',
  `user_sig_bbcode_uid` varchar(10) DEFAULT NULL,
  `user_actkey` varchar(32) DEFAULT NULL,
  `user_newpasswd` varchar(32) DEFAULT NULL,
  `last_ip` varchar(15) NOT NULL DEFAULT '0',
  `user_color_gc` varchar(6) DEFAULT NULL,
  `user_color_gi` text,
  `user_quickreply` tinyint(1) NOT NULL DEFAULT '0',
  `user_allow_arcadepm` tinyint(4) NOT NULL DEFAULT '0',
  `kick_ban` int(2) NOT NULL DEFAULT '0',
  `user_wordwrap` smallint(2) NOT NULL DEFAULT '70',
  `agreedtos` tinyint(1) NOT NULL DEFAULT '0',
  `user_view_log` tinyint(4) NOT NULL DEFAULT '0',
  `user_effects` varchar(255) DEFAULT NULL,
  `user_privs` varchar(255) DEFAULT NULL,
  `user_custitle` text,
  `user_specmsg` text,
  `user_items` text,
  `user_trade` text,
  `points` decimal(11,2) NOT NULL DEFAULT '0.00',
  `user_cash` decimal(11,2) NOT NULL DEFAULT '0.00',
  `last_seen_blocker` int(11) NOT NULL DEFAULT '0',
  `user_login_tries` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_last_login_try` int(11) NOT NULL DEFAULT '0',
  `user_gender` tinyint(4) NOT NULL DEFAULT '0',
  `user_birthday` int(11) NOT NULL DEFAULT '999999',
  `user_next_birthday_greeting` int(11) NOT NULL DEFAULT '0',
  `user_from_flag` varchar(25) DEFAULT NULL,
  `user_group_cp` int(11) NOT NULL DEFAULT '2',
  `user_group_list_cp` varchar(100) NOT NULL DEFAULT '2',
  `user_active_cp` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `user_rank2` int(11) DEFAULT '-1',
  `user_rank3` int(11) DEFAULT '-2',
  `user_rank4` int(11) DEFAULT '-2',
  `user_rank5` int(11) DEFAULT '-2',
  `user_time_mode` tinyint(4) NOT NULL DEFAULT '6',
  `user_dst_time_lag` tinyint(4) NOT NULL DEFAULT '60',
  `user_pc_timeOffsets` varchar(11) NOT NULL DEFAULT '0',
  `user_quickreply_mode` tinyint(1) NOT NULL DEFAULT '1',
  `user_open_quickreply` tinyint(1) NOT NULL DEFAULT '1',
  `user_avatar_dimensions` varchar(255) DEFAULT NULL,
  `user_birthday2` int(8) DEFAULT NULL,
  `birthday_display` tinyint(1) NOT NULL DEFAULT '0',
  `birthday_greeting` tinyint(1) NOT NULL DEFAULT '0',
  `user_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_regip` char(8) NOT NULL DEFAULT '0',
  `lastsitevisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `uid` (`user_id`),
  KEY `uname` (`username`),
  KEY `user_session_time` (`user_session_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_users`
--

INSERT INTO `nuke_users` (`user_id`, `name`, `username`, `user_email`, `femail`, `user_website`, `user_avatar`, `user_regdate`, `user_icq`, `user_occ`, `user_from`, `user_interests`, `user_sig`, `user_viewemail`, `user_theme`, `user_aim`, `user_yim`, `user_msnm`, `user_password`, `storynum`, `umode`, `uorder`, `thold`, `noscore`, `bio`, `ublockon`, `ublock`, `theme`, `commentmax`, `counter`, `newsletter`, `user_posts`, `user_attachsig`, `user_rank`, `user_level`, `broadcast`, `popmeson`, `user_active`, `user_session_time`, `user_session_page`, `user_lastvisit`, `user_timezone`, `user_style`, `user_lang`, `user_dateformat`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_emailtime`, `user_allowhtml`, `user_allowbbcode`, `user_allowsmile`, `user_allowavatar`, `user_allow_pm`, `user_allow_viewonline`, `user_notify`, `user_notify_pm`, `user_popup_pm`, `user_avatar_type`, `user_sig_bbcode_uid`, `user_actkey`, `user_newpasswd`, `last_ip`, `user_color_gc`, `user_color_gi`, `user_quickreply`, `user_allow_arcadepm`, `kick_ban`, `user_wordwrap`, `agreedtos`, `user_view_log`, `user_effects`, `user_privs`, `user_custitle`, `user_specmsg`, `user_items`, `user_trade`, `points`, `user_cash`, `last_seen_blocker`, `user_login_tries`, `user_last_login_try`, `user_gender`, `user_birthday`, `user_next_birthday_greeting`, `user_from_flag`, `user_group_cp`, `user_group_list_cp`, `user_active_cp`, `user_rank2`, `user_rank3`, `user_rank4`, `user_rank5`, `user_time_mode`, `user_dst_time_lag`, `user_pc_timeOffsets`, `user_quickreply_mode`, `user_open_quickreply`, `user_avatar_dimensions`, `user_birthday2`, `birthday_display`, `birthday_greeting`, `user_topics`, `user_regip`, `lastsitevisit`) VALUES
(1, '', 'Anonymous', '', '', '', 'gallery/blank.gif', 'January 10, 2011', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, '', 0, 0, 0, '', 0, '', 'DEFAULT', 4096, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, '0.00', NULL, 'english', 'D M d, Y g:i a', 0, 0, 0, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 3, NULL, NULL, NULL, '0', NULL, NULL, 0, 0, 0, 70, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', 0, 0, 0, 0, 999999, 0, NULL, 3, '3', 'YES', -1, -2, -2, -2, 6, 60, '0', 1, 1, NULL, NULL, 0, 0, 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_config`
--

DROP TABLE IF EXISTS `nuke_users_config`;
CREATE TABLE IF NOT EXISTS `nuke_users_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` longtext,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_users_config`
--

INSERT INTO `nuke_users_config` (`config_name`, `config_value`) VALUES
('allowmailchange', '0'),
('allowuserdelete', '0'),
('allowuserreg', '1'),
('allowusertheme', '1'),
('autosuspend', '0'),
('autosuspendmain', '0'),
('bad_mail', 'mail.ru\r\nmysite.com\r\nyoursite.com'),
('bad_nick', 'adm\r\nadmin\r\nan=nimo\r\nanonimo\r\nanonymous\r\ngod\r\nlinux\r\nnobody\r\noperator\r\nroot\r\nstaff\r\nwebmaster'),
('codesize', '0'),
('cookiecheck', '0'),
('cookiecleaner', '1'),
('cookieinactivity', '-'),
('cookiepath', ''),
('cookietimelife', '31104000'),
('coppa', '0'),
('doublecheckemail', '1'),
('emailvalidate', '1'),
('expiring', '86400'),
('legal_did_TOS', '3'),
('nick_max', '25'),
('nick_min', '4'),
('pass_max', '20'),
('pass_min', '4'),
('perpage', '100'),
('requireadmin', '0'),
('sendaddmail', '0'),
('senddeletemail', '0'),
('servermail', '1'),
('tos', '0'),
('tosall', '1'),
('useactivate', '1'),
('useasreguser', '1'),
('usebirthdate', '0'),
('useextrainfo', '1'),
('usefakeemail', '1'),
('useforumnotifyoptions', '1'),
('usegender', '0'),
('usegfxcheck', '0'),
('usehideonline', '1'),
('useinstantmessaim', '1'),
('useinstantmessicq', '1'),
('useinstantmessmsn', '1'),
('useinstantmessyim', '1'),
('useinterests', '1'),
('uselocation', '1'),
('usenewsletter', '1'),
('useoccupation', '1'),
('usepoints', '1'),
('userealname', '3'),
('usesignature', '1'),
('useviewemail', '1'),
('usewebsite', '1'),
('version', '5.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_fields`
--

DROP TABLE IF EXISTS `nuke_users_fields`;
CREATE TABLE IF NOT EXISTS `nuke_users_fields` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'field',
  `value` varchar(255) DEFAULT NULL,
  `size` int(3) DEFAULT NULL,
  `need` int(1) NOT NULL DEFAULT '1',
  `pos` int(3) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nuke_users_field_values`
--

INSERT INTO `nuke_users_field_values` (`vid`, `uid`, `fid`, `value`) VALUES
(1, 1, 1, 'PNPv1'),
(2, 2, 1, 'v502'),
(3, 3, 1, 'v501'),
(4, 4, 1, '76b5'),
(5, 5, 1, '76b4');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_temp`
--

DROP TABLE IF EXISTS `nuke_users_temp`;
CREATE TABLE IF NOT EXISTS `nuke_users_temp` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(40) NOT NULL DEFAULT '',
  `user_regdate` varchar(20) NOT NULL DEFAULT '',
  `check_num` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `requestor` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_users_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_users_temp_field_values`
--

DROP TABLE IF EXISTS `nuke_users_temp_field_values`;
CREATE TABLE IF NOT EXISTS `nuke_users_temp_field_values` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_users_temp_field_values`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream`
--

DROP TABLE IF EXISTS `nuke_video_stream`;
CREATE TABLE IF NOT EXISTS `nuke_video_stream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flash` int(1) NOT NULL DEFAULT '0',
  `vidname` varchar(100) DEFAULT NULL,
  `description` text,
  `url` text,
  `imgurl` varchar(255) NOT NULL,
  `thumbimg` varchar(255) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_video_stream`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream_broken`
--

DROP TABLE IF EXISTS `nuke_video_stream_broken`;
CREATE TABLE IF NOT EXISTS `nuke_video_stream_broken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brokenvidid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_video_stream_broken`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream_categories`
--

DROP TABLE IF EXISTS `nuke_video_stream_categories`;
CREATE TABLE IF NOT EXISTS `nuke_video_stream_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `parent` int(9) NOT NULL DEFAULT '0',
  `permission` int(1) NOT NULL DEFAULT '0',
  `adult` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nuke_video_stream_categories`
--

INSERT INTO `nuke_video_stream_categories` (`id`, `name`, `imgurl`, `parent`, `permission`, `adult`) VALUES
(3, 'Adult', '', 0, 1, 1),
(1, 'Games', '', 0, 0, 0),
(2, 'Funny', '', 0, 0, 0),
(4, 'Scary', '', 0, 0, 0),
(5, 'Commercials', '', 0, 0, 0),
(6, 'Ouch', '', 0, 0, 0),
(7, 'Music', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream_comments`
--

DROP TABLE IF EXISTS `nuke_video_stream_comments`;
CREATE TABLE IF NOT EXISTS `nuke_video_stream_comments` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `vidid` mediumint(9) NOT NULL DEFAULT '0',
  `user` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nuke_video_stream_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream_points`
--

DROP TABLE IF EXISTS `nuke_video_stream_points`;
CREATE TABLE IF NOT EXISTS `nuke_video_stream_points` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `points` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nuke_video_stream_points`
--

INSERT INTO `nuke_video_stream_points` (`id`, `points`) VALUES
(1, 1),
(2, 5),
(3, 5),
(4, 10),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nuke_video_stream_settings`
--

DROP TABLE IF EXISTS `nuke_video_stream_settings`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nuke_video_stream_settings`
--

INSERT INTO `nuke_video_stream_settings` (`id`, `commentED`, `commentV`, `sendED`, `sendV`, `brokenED`, `brokenV`, `submitED`, `submitV`, `submitC`, `ratingED`, `ratingV`, `viewV`, `downloadED`, `downloadV`, `embededED`, `embededV`, `limitvids`, `avmaxwidth`, `avmaxheight`, `version`) VALUES
(1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 5, 100, 100, '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_webcrawlers`
--

DROP TABLE IF EXISTS `nuke_webcrawlers`;
CREATE TABLE IF NOT EXISTS `nuke_webcrawlers` (
  `webcrawler` varchar(255) NOT NULL,
  `count` varchar(255) NOT NULL,
  PRIMARY KEY (`webcrawler`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nuke_webcrawlers`
--

INSERT INTO nuke_webcrawlers  VALUES ('google', '0');
INSERT INTO nuke_webcrawlers  VALUES ('msn', '0');
INSERT INTO nuke_webcrawlers  VALUES ('yahoo', '0');
INSERT INTO nuke_webcrawlers  VALUES ('jeeves', '0');
INSERT INTO nuke_webcrawlers  VALUES ('excite', '0');
INSERT INTO nuke_webcrawlers  VALUES ('infoseek', '0');
INSERT INTO nuke_webcrawlers  VALUES ('lycos', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nuke_whoiswhere`
--

DROP TABLE IF EXISTS `nuke_whoiswhere`;
CREATE TABLE IF NOT EXISTS `nuke_whoiswhere` (
  `username` varchar(25) NOT NULL,
  `time` varchar(14) NOT NULL,
  `host_addr` varchar(48) NOT NULL,
  `guest` int(1) NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

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

--
-- Dumping data for table `transactions`
--


-- --------------------------------------------------------

--
-- Table structure for table `translog`
--

DROP TABLE IF EXISTS `translog`;
CREATE TABLE IF NOT EXISTS `translog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logentry` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `translog`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_fga_config`
--

DROP TABLE IF EXISTS `nuke_fga_config`;
CREATE TABLE IF NOT EXISTS `nuke_fga_config` (
  `glance_enable` varchar(1) NOT NULL DEFAULT '2',
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
('1', '3', '5', '5', '3', 'Current Site News', 'New Topics', 'true', 'true', 'false', '0', '0', '2.0.0');
