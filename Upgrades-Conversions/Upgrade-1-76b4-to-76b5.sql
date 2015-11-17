#
# DDL START
#
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `name` varchar(25) NOT NULL default '',
  `subtype` varchar(20) NOT NULL default '',
  `value` varchar(200) NOT NULL default '0',
  `text` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `config`
-- 

INSERT INTO `config` VALUES ('receiver_email', '', 'test@myemail.com', '!!!!!!VERY IMPORTANT!!!!!!!\r\nThis is the email address registered\r\nin your PayPal account that you receive\r\nmoney on.  NOTE: Create an email address\r\nspecifically and only for receiving\r\ndonations, i.e. donations@yoursite.com.\r\nThe Donatometer will list any payments\r\nto the email you list here, whether they\r\ncome from this module or not.\r\n');
INSERT INTO `config` VALUES ('goal', 'Jan', '160', 'Enter the dollar amounts for each month''s\r\ndonation goal.');
INSERT INTO `config` VALUES ('goal', 'Feb', '110', '');
INSERT INTO `config` VALUES ('goal', 'Mar', '100', '');
INSERT INTO `config` VALUES ('goal', 'Apr', '100', '');
INSERT INTO `config` VALUES ('goal', 'May', '100', '');
INSERT INTO `config` VALUES ('goal', 'Jun', '100', '');
INSERT INTO `config` VALUES ('goal', 'Jul', '100', '');
INSERT INTO `config` VALUES ('goal', 'Aug', '100', '');
INSERT INTO `config` VALUES ('goal', 'Sep', '100', '');
INSERT INTO `config` VALUES ('goal', 'Oct', '100', '');
INSERT INTO `config` VALUES ('goal', 'Nov', '100', '');
INSERT INTO `config` VALUES ('goal', 'Dec', '100', '');
INSERT INTO `config` VALUES ('swing_day', '', '6', 'The Swing Day determines when the\r\nDonatometer will switch to show the\r\nnext month.  The previous month''s\r\nstats will no longer be displayed.');
INSERT INTO `config` VALUES ('dm_title', '', '<b>HELP KEEP OUR SERVERS ONLINE!</b>', 'Enter a customized title for your\r\nDonatometer.  NOTE: This is not the\r\nNuke Block title.  You can change that\r\nin the Nuke Blocks Admin.');
INSERT INTO `config` VALUES ('ty_url', '', '', 'You can enter a URL here for a web page\r\nthat users will be taken to when they\r\ncomplete a donation.  This is useful for\r\ntaking the user back to your site and\r\ndisplaying a "Thank You".  NOTE: PayPal\r\nwill use this link for cancelled payments\r\nas well. If you use the feature, also\r\ncreate a second web page with appropriate\r\ntext for a cancelled payment.  TIP: Use\r\nNukeWrap to bring your users back into the\r\nNuke site.');
INSERT INTO `config` VALUES ('pp_itemname', '', 'Donation', 'Enter the IPN item name used for your\r\ndonations. This feature is currently\r\nnot used.');
INSERT INTO `config` VALUES ('dm_num_don', '', '10', 'Enter the number of donators that\r\nshould be listed in the Donatometer.\r\n-1 = Don''t list any\r\n 0 = Unlimited\r\n # = The max number to list\r\nDonators are always listed from newest\r\nto oldest from the top down.\r\n');
INSERT INTO `config` VALUES ('dm_show_amt', '', '1', 'Should the Donatometer display the\r\nAmount of each donation?');
INSERT INTO `config` VALUES ('dm_show_date', '', '1', 'Should the Donatometer display the\r\ndate that each donation was made?');
INSERT INTO `config` VALUES ('dm_button', '', 'https://www.paypal.com/en_US/i/btn/x-click-but21.gif', 'Enter a complete URL for the image used\r\nin the Donatometer block');
INSERT INTO `config` VALUES ('don_button_submit', '', 'https://www.paypal.com/en_US/i/btn/x-click-but04.gif', 'Enter a complete URL for the image to use\r\nfor at the bottom of the Donations module\r\nto submit a donation.');
INSERT INTO `config` VALUES ('don_button_top', '', 'https://www.paypal.com/en_US/i/btn/x-click-but21.gif', 'Enter a complete URL for the image to use\r\nfor at the top of the Donations module.');
INSERT INTO `config` VALUES ('pp_image_url', '', '', 'You can have a custom image displayed at\r\nthe top of the PayPal screen when your\r\nusers are donating.  Enter the URL for\r\nthe image to display here.  NOTE: You\r\nshould not enter a non HTTPS:// URL. If\r\nyou enter a URL from a non-secure server\r\nyour users will continually be warned that\r\nthey are about to display secure and\r\nnon-secure information.');
INSERT INTO `config` VALUES ('pp_cancel_url', '', '', 'Enter a URL here for a web page that users\r\nwill be taken to when they cancel their\r\npayment.  You should use this feature if\r\nyou have filled in a "Thank You" URL.\r\nTIP: Use NukeWrap to bring your users back\r\ninto the Nuke site.');
INSERT INTO `config` VALUES ('pp_get_addr', '', '0', 'Would you like PayPal to gather the user''s\r\nshipping address?  Users can opt out of\r\nthis.  This could be useful if you wanted\r\nto send them holiday cards or something.');
INSERT INTO `config` VALUES ('don_amount', '1', '10', 'The Donations module provides a list\r\nof suggested donations amounts.  You\r\ncan customize this list below.  ');
INSERT INTO `config` VALUES ('don_amount', '2', '15', '');
INSERT INTO `config` VALUES ('don_amount', '3', '20', '');
INSERT INTO `config` VALUES ('don_amount', '5', '', '');
INSERT INTO `config` VALUES ('don_amount', '4', '30', '');
INSERT INTO `config` VALUES ('don_amount', '6', '0', '');
INSERT INTO `config` VALUES ('don_amount', '8', '0', '');
INSERT INTO `config` VALUES ('don_amt_checked', '', '1', 'The Donations module provides a list\r\nof suggested donations amounts.  You\r\ncan customize this list below.  In this\r\nbox, specify which of the amounts listed\r\nbelow should be checked by default.');
INSERT INTO `config` VALUES ('pp_item_num', '', '110', 'Enter the IPN item number used for your\r\ndonations. This feature is currently\r\nnot used.');
INSERT INTO `config` VALUES ('dm_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.');
INSERT INTO `config` VALUES ('dm_img_height', '', '', '');
INSERT INTO `config` VALUES ('don_top_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.');
INSERT INTO `config` VALUES ('don_top_img_height', '', '', '');
INSERT INTO `config` VALUES ('don_sub_img_width', '', '', 'Restrict the dimensions for the above\r\nimage.  To use the image''s native size\r\nleave both boxes blank.');
INSERT INTO `config` VALUES ('don_sub_img_height', '', '', '');
INSERT INTO `config` VALUES ('don_text', 'rawtext', '0', 'We are a non-profit organization completely supported by you, the members.  Many organizations have web sites, servers and Internet bandwidth donated by it''s members.  We pride ourselves on being run and owned as a community, and not by a few power-hungry members.  This means that we need you to be a part of that community.  We encourage every member to contribute to the community in any way that they can.  Since we do not have our servers or bandwidth donated, we have pay our bills every month to keep things going.  For those of you who can, we ask that you make a monetary contribution in whatever denomination you''d like.  Every little bit counts.<br>');
INSERT INTO `config` VALUES ('don_show_amt', '', '0', 'Should the Donations module reveal the\r\namount of each donation?');
INSERT INTO `config` VALUES ('don_show_date', '', '0', 'Should the Donations module reveal the\r\ndate of each donation?');
INSERT INTO `config` VALUES ('don_name_prompt', '', 'Do you want your username revealed with your donation?', 'Enter the text for the prompt asking a\r\nuser if they want their name revealed.');
INSERT INTO `config` VALUES ('don_name_yes', '', 'Yes! - Tell the world I gave my hard-earned cash!', 'Enter the text for a "YES" selection');
INSERT INTO `config` VALUES ('don_name_no', '', 'No - List my donation as Anonymous', 'Enter the text for a "NO" selection');
INSERT INTO `config` VALUES ('ipn_dbg_lvl', '', '2', 'There is an IPN logging feature which has\r\nthree log levels:\r\n1) OFF\r\n2) Log only Errors\r\n3) Log everything\r\nThis log is stored in the "translog" table.');
INSERT INTO `config` VALUES ('ipn_log_entries', '', '20', '\r\nEnter the maximum number of log entries to\r\nkeep in the log table.');

-- --------------------------------------------------------

-- 
-- Table structure for table `financial`
-- 

DROP TABLE IF EXISTS `financial`;
CREATE TABLE `financial` (
  `id` int(11) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `num` varchar(16) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `descr` varchar(128) NOT NULL default '',
  `amount` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `financial`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_cache`
-- 

DROP TABLE IF EXISTS `nuke_amazon_cache`;
CREATE TABLE `nuke_amazon_cache` (
  `cid` int(11) NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `url` varchar(60) NOT NULL default '',
  `xml` longtext NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `date_time` (`time`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_cache`
-- 

INSERT INTO `nuke_amazon_cache` VALUES (170, '2007-08-13 00:17:38', '1545563e7acf899244cb0749d12a9aff', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0CAEQRKAJWTGNXBZCF8F" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0002UE1X0" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0002UE1X0%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0002UE1X0</Asin>\n      <ProductName>Seinfeld: Seasons 1, 2 and 3</ProductName>\n      <Catalog>DVD</Catalog>\n      <ReleaseDate>23 November, 2004</ReleaseDate>\n      <Manufacturer>Sony Pictures</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/11RKHQVK6NL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/21CMWEQ3HQL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/51J49CZ5A8L.jpg</ImageUrlLarge>\n      <ListPrice>$119.95</ListPrice>\n      <OurPrice>$75.99</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$37.21</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES (171, '2007-08-13 00:17:39', 'b3c68949ebec2d282f8eea60c642b0dc', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0NCA5W942BWXGD051PZZ" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0007QKN22" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0007QKN22%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0007QKN22</Asin>\n      <ProductName>Canon Digital Rebel XT 8MP Digital SLR Camera with EF-S 18-55mm f3.5-5.6 Lens (Black)</ProductName>\n      <Catalog>Electronics</Catalog>\n      <Manufacturer>Canon</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/1167E9P8AVL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/31RH275ZQ1L.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/512YXSJWB5L.jpg</ImageUrlLarge>\n      <ListPrice>$1,200.00</ListPrice>\n      <OurPrice>$577.60</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$700.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES (172, '2007-08-13 00:17:40', '4cf7736a63c43617c6f5b32c0bace291', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="0XHEQA8BKEVXKPR711XX" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0006399FS" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0006399FS%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0006399FS</Asin>\n      <ProductName>How to Dismantle an Atomic Bomb</ProductName>\n      <Catalog>Music</Catalog>\n      <Artists>\n         <Artist>U2</Artist>\n      </Artists>\n      <ReleaseDate>23 November, 2004</ReleaseDate>\n      <Manufacturer>Interscope Records</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/11M8Z9HAJYL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/31MW5NQYYAL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/51W2D12JV7L.jpg</ImageUrlLarge>\n      <ListPrice>$13.98</ListPrice>\n      <OurPrice>$13.98</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$0.98</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES (173, '2007-08-13 00:17:41', '2db99951286bc8192e375a12fb025f92', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="080VC2Q27H0F627HP7HS" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B00022PTT8" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B00022PTT8%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B00022PTT8</Asin>\n      <ProductName>Microsoft Windows XP Professional UPGRADE with SP2</ProductName>\n      <Catalog>Software</Catalog>\n      <ReleaseDate>28 September, 2004</ReleaseDate>\n      <Manufacturer>Microsoft Software</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/0189289X0ZL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/21JJYYQYCHL.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/41ENE7QMHGL.jpg</ImageUrlLarge>\n      <ListPrice>$199.99</ListPrice>\n      <OurPrice>$197.99</OurPrice>\n      <Availability>Usually ships in 24 hours</Availability>\n      <UsedPrice>$180.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');
INSERT INTO `nuke_amazon_cache` VALUES (174, '2007-08-13 00:17:42', '892f22f8ec8223e3611d9b9f247780f4', '<?xml version="1.0" encoding="UTF-8"?><ProductInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://xml.amazon.com/schemas3/dev-lite.xsd">\n\n<Request><Args><Arg value="1" name="page"></Arg><Arg value="us" name="locale"></Arg><Arg value="" name="UserAgent"></Arg><Arg value="1R78118YF82DKJ82B9VY" name="RequestID"></Arg><Arg value=" salesrank" name="sort"></Arg><Arg value="1ZQT1KGQZ3BAHG3Z22R2" name="dev-t"></Arg><Arg value="B0007TFLLC" name="AsinSearch"></Arg><Arg value="lite" name="type"></Arg><Arg value="xml" name="f"></Arg><Arg value="httpwwwnukepc-20" name="t"></Arg></Args></Request>   <Details url="http://www.amazon.com/gp/product/B0007TFLLC%3ftag=httpwwwnukepc-20%26link_code=xm2%26camp=2025%26dev-t=1ZQT1KGQZ3BAHG3Z22R2">\n      <Asin>B0007TFLLC</Asin>\n      <ProductName>Sony PlayStation Portable (PSP) Value Pack</ProductName>\n      <Catalog>Video Games</Catalog>\n      <ReleaseDate>08 September, 2006</ReleaseDate>\n      <Manufacturer>Sony Computer Entertainment</Manufacturer>\n      <ImageUrlSmall>http://ec1.images-amazon.com/images/I/013ZVWFA1PL.jpg</ImageUrlSmall>\n      <ImageUrlMedium>http://ec1.images-amazon.com/images/I/216W0WDE57L.jpg</ImageUrlMedium>\n      <ImageUrlLarge>http://ec1.images-amazon.com/images/I/41J70RTZHXL.jpg</ImageUrlLarge>\n      <ListPrice>$249.99</ListPrice>\n      <Availability>This item is currently not available.</Availability>\n      <UsedPrice>$146.00</UsedPrice>\n   </Details>\n</ProductInfo>\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_cart`
-- 

DROP TABLE IF EXISTS `nuke_amazon_cart`;
CREATE TABLE `nuke_amazon_cart` (
  `id` int(11) NOT NULL auto_increment,
  `session` tinytext NOT NULL,
  `asin` varchar(10) NOT NULL default '',
  `quantity` int(5) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_cart`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_catalog`
-- 

DROP TABLE IF EXISTS `nuke_amazon_catalog`;
CREATE TABLE `nuke_amazon_catalog` (
  `uid` int(11) NOT NULL auto_increment,
  `catalog` varchar(30) NOT NULL default '',
  `r_catalog` varchar(30) NOT NULL default '',
  `l_catalog` text NOT NULL,
  `mode` varchar(20) NOT NULL default '',
  `button_image` varchar(255) NOT NULL default '',
  `no_image` varchar(255) NOT NULL default '',
  `locale` char(2) NOT NULL default '',
  PRIMARY KEY  (`uid`),
  KEY `catalog` (`catalog`),
  KEY `r_catalog` (`r_catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_catalog`
-- 

INSERT INTO `nuke_amazon_catalog` VALUES (1, 'Apparel', 'apparel', '_AMZAPPAREL', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/apparel-icon.gif', 'http://g-images.amazon.com/images/G/01/apparel/general/apparel-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (2, 'Baby', 'baby product', '_AMZBABY', 'baby', 'http://g-images.amazon.com/images/G/01/icons/icon-baby.gif', 'http://g-images.amazon.com/images/G/01/baby/no-photo-baby.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (3, 'Books', 'book', '_AMZBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/icons/icon-books.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (4, 'Camera & Photo', 'photo', '_AMZCAMERAPHOTO', 'photo', 'http://g-images.amazon.com/images/G/01/icons/icon-photo.gif', 'http://g-images.amazon.com/images/G/01/photo/placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (5, 'Video Games', 'video games', '_AMZCOMPVIDGAMES', 'videogames', 'http://g-images.amazon.com/images/G/01/icons/vg-icon.gif', 'http://g-images.amazon.com/images/G/01/videogames/icons/vg-not-available.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (6, 'Computers', 'personal computer', '_AMZCOMPUTERS', 'pc-hardware', 'http://g-images.amazon.com/images/G/01/icons/icon-computers.gif', 'http://g-images.amazon.com/images/G/01/computer/no-photo-computer.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (7, 'DVD', 'dvd', '_AMZDVD', 'dvd', 'http://g-images.amazon.com/images/G/01/icons/icon-dvd.gif', 'http://g-images.amazon.com/images/G/01/dvd/icons/dvd-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (8, 'Electronics', 'electronics', '_AMZELECTRONICS', 'electronics', 'http://g-images.amazon.com/images/G/01/icons/icon-ce.gif', 'http://g-images.amazon.com/images/G/01/electronics/no-photo-ce.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (9, 'Kitchen & Housewares', 'kitchen', '_AMZKITCHENHOUSEWARES', 'kitchen', 'http://g-images.amazon.com/images/G/01/icons/icon-kitchen.gif', 'http://g-images.amazon.com/images/G/01/kitchen/placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (10, 'Magazines', 'magazine', '_AMZMAGAZINES', 'magazines', 'http://g-images.amazon.com/images/G/01/icons/icon-magazines.gif', 'http://g-images.amazon.com/images/G/01/stores/magazines/no_cover_image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (11, 'Music', 'music', '_AMZMUSIC', 'music', 'http://g-images.amazon.com/images/G/01/icons/icon-music.gif', 'http://g-images.amazon.com/images/G/01/music/icons/music-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (12, 'Outdoor Living', 'lawn & patio', '_AMZOUTLIVING', 'garden', 'http://g-images.amazon.com/images/G/01/icons/icon-garden.gif', 'http://g-images.amazon.com/images/G/01/stores/garden/no-photo-lawn.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (13, 'Software', 'software', '_AMZSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-software.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (14, 'Toys & Games', 'toy', '_AMZTOYSGAMES', 'toys', 'http://g-images.amazon.com/images/G/01/icons/icon-toys.gif', 'http://g-images.amazon.com/images/G/01/v9/icons/no-picture-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (15, 'Tools & Hardware', 'home improvement', '_AMZTOOLS', 'universal', 'http://g-images.amazon.com/images/G/01/icons/home-improvement-icon.gif', 'http://g-images.amazon.com/images/G/01/stores/hi/no-photo-tools.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (16, 'Video', 'video', '_AMZVIDEO', 'vhs', 'http://g-images.amazon.com/images/G/01/icons/icon-vhs.gif', 'http://g-images.amazon.com/images/G/01/video/icons/video-no-image.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (17, 'Furniture', 'furniture', '_AMZFURNITURE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (18, 'Downloadable Software', 'downloadable software', '_AMZDSOFTWARE', 'software', 'http://g-images.amazon.com/images/G/01/icons/icon-sw-downloads.gif', 'http://g-images.amazon.com/images/G/01/software/new-item-1.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (19, 'Office Product', 'office product', '_AMZOFFICE', 'office-products', 'http://g-images.amazon.com/images/G/01/office-products/icons/office-prod-icon.gif', 'http://g-images.amazon.com/images/G/01/office-products/icons/no-photo-office-prod.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (20, 'Home & Garden', 'home', '_AMZHOMEGARDE', 'home-garden', 'http://g-images.amazon.com/images/G/01/icons/target-home-icon.gif', 'http://g-images.amazon.com/images/G/01/icons/product-image-placeholder-icon.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (21, 'Jewelry', 'jewelry', '_AMZJEWELRY', 'apparel', 'http://g-images.amazon.com/images/G/01/icons/small-blue-target-jewelry-icon.gif', 'http://g-images.amazon.com/images/G/01/jewelry/nav/jewelry-icon-no-image-avail.gif', 'us');
INSERT INTO `nuke_amazon_catalog` VALUES (22, 'E-Books', 'ebook', '_AMZEBOOKS', 'books', 'http://g-images.amazon.com/images/G/01/v6/gifts/ebook-icon.gif', 'http://g-images.amazon.com/images/G/01/books/icons/books-no-image.gif', 'us');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_cfg`
-- 

DROP TABLE IF EXISTS `nuke_amazon_cfg`;
CREATE TABLE `nuke_amazon_cfg` (
  `AMZVer` varchar(7) NOT NULL default '',
  `AMZModule_Name` varchar(255) NOT NULL default '',
  `AMZ_id` varchar(30) NOT NULL default 'httpwwwnukepc-20',
  `cache_maxtime` int(6) NOT NULL default '14400',
  `AMZMore` tinyint(1) NOT NULL default '0',
  `AMZSingle` tinyint(1) NOT NULL default '0',
  `AMZQuickAdd` tinyint(1) NOT NULL default '0',
  `AMZShowReview` tinyint(1) NOT NULL default '0',
  `AMZShowSimilar` tinyint(1) NOT NULL default '0',
  `AMZLocale` char(2) NOT NULL default 'us',
  `AMZReviewMod` tinyint(1) NOT NULL default '0',
  `ImageType` char(2) NOT NULL default 'NO',
  `default_asin` varchar(10) NOT NULL default 'B00009TB5G',
  `AMZ_Popular` tinyint(3) NOT NULL default '25',
  `AMZBuyBox` tinyint(1) NOT NULL default '1',
  `AMZShowXML` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_cfg`
-- 

INSERT INTO `nuke_amazon_cfg` VALUES ('2.7.2', 'Amazon', 'httpwwwnukepc-20', 14400, 1, 1, 1, 1, 1, 'us', 1, 'NO', 'B00009TB5G', 25, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_department`
-- 

DROP TABLE IF EXISTS `nuke_amazon_department`;
CREATE TABLE `nuke_amazon_department` (
  `did` int(11) NOT NULL auto_increment,
  `r_catalog` varchar(30) NOT NULL default '',
  `items` int(11) NOT NULL default '0',
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_department`
-- 

INSERT INTO `nuke_amazon_department` VALUES (1, 'apparel', 0);
INSERT INTO `nuke_amazon_department` VALUES (2, 'book', 0);
INSERT INTO `nuke_amazon_department` VALUES (3, 'dvd', 1);
INSERT INTO `nuke_amazon_department` VALUES (4, 'electronics', 7);
INSERT INTO `nuke_amazon_department` VALUES (5, 'lawn & patio', 0);
INSERT INTO `nuke_amazon_department` VALUES (6, 'kitchen', 0);
INSERT INTO `nuke_amazon_department` VALUES (7, 'magazine', 0);
INSERT INTO `nuke_amazon_department` VALUES (8, 'music', 1);
INSERT INTO `nuke_amazon_department` VALUES (9, 'personal computer', 0);
INSERT INTO `nuke_amazon_department` VALUES (10, 'photo', 0);
INSERT INTO `nuke_amazon_department` VALUES (11, 'software', 2);
INSERT INTO `nuke_amazon_department` VALUES (12, 'toy', 0);
INSERT INTO `nuke_amazon_department` VALUES (13, 'home improvement', 0);
INSERT INTO `nuke_amazon_department` VALUES (14, 'video', 0);
INSERT INTO `nuke_amazon_department` VALUES (15, 'video games', 1);
INSERT INTO `nuke_amazon_department` VALUES (16, 'baby', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_items`
-- 

DROP TABLE IF EXISTS `nuke_amazon_items`;
CREATE TABLE `nuke_amazon_items` (
  `iid` int(8) NOT NULL auto_increment,
  `asin` varchar(10) default NULL,
  `hits` mediumint(9) NOT NULL default '0',
  `category` varchar(50) NOT NULL default '',
  `clicks` mediumint(9) NOT NULL default '0',
  `imp` mediumint(9) NOT NULL default '0',
  PRIMARY KEY  (`iid`),
  KEY `asin` (`asin`),
  KEY `category` (`category`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_items`
-- 

INSERT INTO `nuke_amazon_items` VALUES (2, 'B0002XQJFA', 0, 'electronics', 0, 61);
INSERT INTO `nuke_amazon_items` VALUES (3, 'B0007QKN22', 0, 'electronics', 0, 51);
INSERT INTO `nuke_amazon_items` VALUES (4, 'B0007QKMQY', 0, 'electronics', 0, 52);
INSERT INTO `nuke_amazon_items` VALUES (5, 'B0002UM0JW', 0, 'electronics', 0, 39);
INSERT INTO `nuke_amazon_items` VALUES (6, 'B0002WPSBC', 0, 'electronics', 0, 47);
INSERT INTO `nuke_amazon_items` VALUES (7, 'B0007TFLLC', 0, 'video games', 0, 49);
INSERT INTO `nuke_amazon_items` VALUES (8, 'B0007KX4TC', 0, 'electronics', 0, 52);
INSERT INTO `nuke_amazon_items` VALUES (9, 'B0000AKVJC', 0, 'electronics', 0, 49);
INSERT INTO `nuke_amazon_items` VALUES (10, 'B0002UE1X0', 0, 'dvd', 0, 38);
INSERT INTO `nuke_amazon_items` VALUES (11, 'B0006399FS', 0, 'music', 0, 56);
INSERT INTO `nuke_amazon_items` VALUES (12, 'B00006I02Z', 0, 'software', 0, 34);
INSERT INTO `nuke_amazon_items` VALUES (13, 'B00022PTT8', 0, 'software', 0, 45);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_nodes`
-- 

DROP TABLE IF EXISTS `nuke_amazon_nodes`;
CREATE TABLE `nuke_amazon_nodes` (
  `nid` int(11) NOT NULL auto_increment,
  `catalog` varchar(30) NOT NULL default '',
  `description` varchar(50) NOT NULL default '',
  `node` int(10) NOT NULL default '0',
  `pnode` int(10) default NULL,
  `locale` char(2) NOT NULL default '',
  PRIMARY KEY  (`nid`),
  KEY `catalog` (`catalog`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_amazon_nodes`
-- 

INSERT INTO `nuke_amazon_nodes` VALUES (1, 'book', 'Top Selling', 504358, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (2, 'book', 'Bargain', 45, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (3, 'book', 'Audiocassettes', 44, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (4, 'book', 'Audio CDs', 69724, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (5, 'book', 'Business', 3, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (6, 'book', 'Cooking', 6, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (7, 'book', 'Home/Garden', 48, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (8, 'book', 'Literature/Fiction', 17, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (9, 'book', 'Nonfiction', 53, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (10, 'book', 'Technical', 173507, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (11, 'book', 'Romance', 23, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (12, 'book', 'Sports', 26, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (13, 'book', 'Childrens', 4, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (14, 'book', 'Engineering', 13643, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (15, 'book', 'Health', 10, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (16, 'book', 'Reference', 21, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (17, 'book', 'Science', 75, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (18, 'book', 'Biographies', 2, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (19, 'book', 'Computers/Internet', 5, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (20, 'book', 'Entertainment', 86, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (21, 'book', 'History', 9, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (22, 'book', 'Law', 10777, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (23, 'book', 'Mystery', 18, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (24, 'book', 'Religion', 22, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (25, 'book', 'SciFi/Fantasy', 25, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (26, 'book', 'Travel', 27, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (27, 'book', 'Arts & Photography', 1, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (28, 'book', 'e-books', 551440, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (29, 'book', 'Women''s Fiction', 542654, 1000, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (30, 'magazine', 'Top Selling', 599872, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (31, 'magazine', 'Computer/Internet', 602324, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (32, 'magazine', 'Family', 602330, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (33, 'magazine', 'Games', 602336, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (34, 'magazine', 'History', 602342, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (35, 'magazine', 'Lifestyle', 602348, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (36, 'magazine', 'Music', 602354, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (37, 'magazine', 'Pets', 602360, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (38, 'magazine', 'Espanol', 1040158, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (39, 'magazine', 'Travel', 602370, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (40, 'magazine', 'Arts', 602314, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (41, 'magazine', 'Business', 602320, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (42, 'magazine', 'Electronics', 602326, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (43, 'magazine', 'Fashion', 602332, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (44, 'magazine', 'Home/Garden', 602344, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (45, 'magazine', 'Literary', 602350, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (46, 'magazine', 'Newspapers', 1040160, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (47, 'magazine', 'Religion', 602362, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (48, 'magazine', 'Sport', 602366, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (49, 'magazine', 'Womens', 602372, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (50, 'magazine', 'Automotive', 602316, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (51, 'magazine', 'Childrens', 602322, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (52, 'magazine', 'Entertainment', 602328, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (53, 'magazine', 'Food', 602334, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (54, 'magazine', 'Health', 602340, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (55, 'magazine', 'International', 602346, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (56, 'magazine', 'Mens', 602352, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (57, 'magazine', 'News/Politics', 602358, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (58, 'magazine', 'Science/Nature', 602364, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (59, 'magazine', 'Teen', 602368, 599872, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (60, 'dvd', 'Top Selling', 130, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (61, 'dvd', 'New & Future Releases', 404332, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (62, 'dvd', 'Animation', 712256, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (63, 'dvd', 'Classic', 163345, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (64, 'dvd', 'Documentary', 508532, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (65, 'dvd', 'Horror', 163396, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (66, 'dvd', 'SciFi/Fantasy', 163431, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (67, 'dvd', 'Television', 163450, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (68, 'dvd', 'Action/Adventure', 163296, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (69, 'dvd', 'Anime/Manga', 517956, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (70, 'dvd', 'Comedy', 163357, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (71, 'dvd', 'Drama', 163379, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (72, 'dvd', 'Kids/Family', 163414, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (73, 'dvd', 'Music Video', 163420, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (74, 'dvd', 'Special Interest', 163448, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (75, 'dvd', 'Military/War', 586156, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (76, 'dvd', 'Mystery/Suspense', 512030, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (77, 'dvd', 'Sports', 467970, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (78, 'dvd', 'African-American Cinema', 538708, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (79, 'dvd', 'International', 163313, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (80, 'dvd', 'Boxed Sets', 501230, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (81, 'dvd', 'Cult', 466674, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (82, 'dvd', 'Gay & Lesbian', 301667, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (83, 'dvd', 'Hong Kong Action', 464426, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (84, 'dvd', 'Independents', 901596, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (85, 'dvd', 'Musicals', 508528, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (86, 'dvd', 'Westerns', 163312, 130, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (87, 'music', 'Top Selling', 301668, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (88, 'music', 'Classical', 85, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (89, 'music', 'Dance/DJ', 7, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (90, 'music', 'Pop', 37, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (91, 'music', 'Rock', 40, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (92, 'music', 'Alternative', 30, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (93, 'music', 'Classic Rock', 67204, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (94, 'music', 'Jazz', 34, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (95, 'music', 'Rap', 38, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (96, 'music', 'Soundtracks', 42, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (97, 'music', 'Blues', 31, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (98, 'music', 'Christian', 173429, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (99, 'music', 'Country', 16, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (100, 'music', 'Latin', 289122, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (101, 'music', 'R/B', 39, 301668, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (102, 'software', 'Top Selling', 491286, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (103, 'software', 'Communication', 229636, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (104, 'software', 'Graphics', 229614, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (105, 'software', 'Linux', 290562, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (106, 'software', 'Operating Sys', 229653, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (107, 'software', 'Downloadable', 531448, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (108, 'software', 'Utilities', 229672, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (109, 'software', 'Business', 229535, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (110, 'software', 'Education', 229563, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (111, 'software', 'Home/Hobby', 229624, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (112, 'software', 'Mac', 229643, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (113, 'software', 'Finance', 229540, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (114, 'software', 'Handhelds', 229663, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (115, 'software', 'Video', 497022, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (116, 'software', 'Childrens', 229548, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (117, 'software', 'Games', 229575, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (118, 'software', 'Language/Travel', 497026, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (119, 'software', 'Networking', 229637, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (120, 'software', 'Programming', 229667, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (121, 'software', 'Web Dev', 497024, 491286, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (122, 'video', 'Top Selling', 404272, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (123, 'video', 'New & Future Releases', 286747, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (124, 'video', 'Animation', 712260, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (125, 'video', 'Classic', 127, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (126, 'video', 'Documentary', 508530, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (127, 'video', 'Horror', 131, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (128, 'video', 'SciFi/Fantasy', 144, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (129, 'video', 'Television', 136, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (130, 'video', 'Action/Adventure', 141, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (131, 'video', 'Anime/Manga', 281300, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (132, 'video', 'Comedy', 128, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (133, 'video', 'Drama', 129, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (134, 'video', 'Kids/Family', 132, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (135, 'video', 'Music Video', 133, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (136, 'video', 'Special Interest', 135, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (137, 'video', 'Military/War', 586154, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (138, 'video', 'Mystery/Suspense', 512026, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (139, 'video', 'Sports', 169798, 404272, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (140, 'video games', 'Top Selling', 471280, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (141, 'video games', 'Game Cube', 541022, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (142, 'video games', 'Play Station 2', 301712, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (143, 'video games', 'Game Boy', 229783, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (144, 'video games', 'Mac', 229647, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (145, 'video games', 'PC', 229575, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (146, 'video games', 'Game Boy Advance', 541020, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (147, 'video games', 'Xbox', 537504, 471280, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (148, 'kitchen', 'Top Selling', 491864, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (149, 'kitchen', 'Outlet', 526844, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (150, 'kitchen', 'Coffee/Tea', 289742, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (151, 'kitchen', 'Cookware', 289814, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (152, 'kitchen', 'Appliances', 289913, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (153, 'kitchen', 'Baking', 289668, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (154, 'kitchen', 'Housewares', 510080, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (155, 'kitchen', 'Tableware', 289891, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (156, 'kitchen', 'Bar Tools', 289728, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (157, 'kitchen', 'Gadgets', 289754, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (158, 'kitchen', 'Knives', 289851, 491864, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (159, 'toy', 'Top Selling', 491290, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (160, 'toy', 'Crafts', 171859, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (161, 'toy', 'Dolls', 171569, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (162, 'toy', 'Games', 171689, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (163, 'toy', 'Outdoor', 171960, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (164, 'toy', 'Action Figures', 171662, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (165, 'toy', 'Bikes', 569472, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (166, 'toy', 'Electronics', 720366, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (167, 'toy', 'Stuffed Animals', 171992, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (168, 'toy', 'Learning', 171911, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (169, 'toy', 'Building', 171814, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (170, 'toy', 'Furniture', 172790, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (171, 'toy', 'Puzzles', 171744, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (172, 'toy', 'Vehicles', 171600, 491290, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (173, 'lawn & patio', 'Top Selling', 468250, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (174, 'lawn & patio', 'Outlet', 526814, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (175, 'lawn & patio', 'Gifts', 553648, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (176, 'lawn & patio', 'Lawn/Garden Tools', 915484, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (177, 'lawn & patio', 'Pest Control', 553844, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (178, 'lawn & patio', 'Birding', 553632, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (179, 'lawn & patio', 'Grills', 553760, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (180, 'lawn & patio', 'Camping', 892986, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (181, 'lawn & patio', 'D?cor', 553788, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (182, 'lawn & patio', 'Heating & Lighting', 553778, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (183, 'lawn & patio', 'Furniture', 553824, 468250, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (184, 'photo', 'Top Selling', 502394, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (185, 'photo', 'Accessories', 172435, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (186, 'photo', 'Binoculars', 297842, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (187, 'photo', 'Camcorders', 172421, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (188, 'photo', 'Digital Cameras', 281052, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (189, 'photo', 'Film Cameras', 499106, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (190, 'photo', 'Frames & Albums', 499176, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (191, 'photo', 'Printers & Scanners', 499328, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (192, 'photo', 'Projectors', 525462, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (193, 'photo', 'Telescopes & Microscopes', 660408, 502394, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (194, 'personal computer', 'Top Selling', 565118, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (195, 'personal computer', 'AMD', 602286, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (196, 'personal computer', 'Apple', 565124, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (197, 'personal computer', 'HP', 565120, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (198, 'personal computer', 'IBM', 603128, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (199, 'personal computer', 'Intel', 565122, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (200, 'personal computer', 'Sony', 565126, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (201, 'personal computer', 'Toshiba', 598398, 565118, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (202, 'home improvement', 'Top Selling', 468240, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (203, 'home improvement', 'Outlet', 527694, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (204, 'home improvement', 'Electrical', 495266, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (205, 'home improvement', 'Heating & Cooling', 495346, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (206, 'home improvement', 'Lighting', 495224, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (207, 'home improvement', 'Automotive', 553294, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (208, 'home improvement', 'Hand Tools', 551238, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (209, 'home improvement', 'Equipment', 551240, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (210, 'home improvement', 'Power Tools', 551236, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (211, 'home improvement', 'Models', 923468, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (212, 'home improvement', 'Hardware', 511228, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (213, 'home improvement', 'Lawn/Garden', 551242, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (214, 'home improvement', 'Accessories', 552262, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (215, 'home improvement', 'Air Tools', 552684, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (216, 'home improvement', 'Cordless Tools', 552738, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (217, 'home improvement', 'Sanders', 552876, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (218, 'home improvement', 'Saws', 552894, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (219, 'home improvement', 'Painting', 228899, 468240, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (220, 'electronics', 'Top Selling', 172282, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (221, 'electronics', 'Outlet', 301793, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (222, 'electronics', 'Accessories & Supplies', 281407, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (223, 'electronics', 'Car Accessories', 226184, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (224, 'electronics', 'Clocks & Clock Radios', 509280, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (225, 'electronics', 'Computer Add-Ons', 172455, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (226, 'electronics', 'DVD Players', 172514, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (227, 'electronics', 'Gadgets', 172517, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (228, 'electronics', 'GPS & Navigation', 172526, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (229, 'electronics', 'Handhelds & PDAs', 172594, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (230, 'electronics', 'Home Audio', 172531, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (231, 'electronics', 'Home Office', 172574, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (232, 'electronics', 'Home Video', 172592, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (233, 'electronics', 'Phones', 172606, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (234, 'electronics', 'Portable Audio & Video', 172623, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (235, 'electronics', 'Printers', 172635, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (236, 'electronics', 'TVs', 172659, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (237, 'electronics', 'VCRs & DVRs', 172669, 172282, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (238, 'baby product', 'Top Selling', 540744, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (239, 'baby product', 'Backpacks & Carriers', 542456, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (240, 'baby product', 'Car Seats', 541560, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (241, 'baby product', 'Strollers', 541562, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (242, 'baby product', 'Travel Systems', 542442, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (243, 'baby product', 'Playards', 542468, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (244, 'baby product', 'Bedding', 541574, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (245, 'baby product', 'Furniture', 541576, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (246, 'baby product', 'Breast-feeding', 541568, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (247, 'baby product', 'Bottle Feeding', 541566, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (248, 'baby product', 'Solid Feeding', 541570, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (249, 'baby product', 'Highchairs', 542302, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (250, 'baby product', 'Play Centers', 548050, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (251, 'baby product', 'Swings & Bouncers', 542470, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (252, 'baby product', 'Toys: Birth - 12 months', 731816, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (253, 'baby product', 'Toys: 12 - 24 months', 731876, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (254, 'baby product', 'Toys: 2 years', 731924, 540744, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (255, 'office product', 'Office Products', 1064954, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (256, 'apparel', 'Apparel', 1036592, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (257, 'office product', 'Office Supplies', 1069242, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (258, 'office product', 'Office Electronics', 172574, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (259, 'office product', 'Cleaning & Maintenance', 1068798, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (260, 'office product', 'Business Presentation Supplies', 1069254, 1064954, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (261, 'furniture', 'Furniture & Accessories', 1069102, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (262, 'furniture', 'Bookcases & Shelving', 1069108, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (263, 'furniture', 'Carts & Stands', 1069114, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (264, 'furniture', 'Chair Arms, Casters & Chair Mats', 1069144, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (265, 'furniture', 'Chairs & Stools', 1069122, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (266, 'furniture', 'Computer Desks & Hutches', 1069106, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (267, 'furniture', 'Desk Collections (Furniture Systems)', 1069160, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (268, 'furniture', 'Dollies, Caddies & Gliders', 1069184, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (269, 'furniture', 'File Cabinets & Storage', 1069166, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (270, 'furniture', 'Floor Mats', 1069158, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (271, 'furniture', 'Office Accessories & D?cor', 1069190, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (272, 'furniture', 'Panel Systems', 1085666, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (273, 'furniture', 'Computer Armoires', 1069104, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (274, 'furniture', 'Tables', 1069222, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (275, 'furniture', 'Workstations', 1069234, 1069102, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (276, 'apparel', 'Women', 1040660, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (277, 'apparel', 'Men', 1040658, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (278, 'apparel', 'Kids & Baby', 1040662, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (279, 'apparel', 'Shoes', 1040668, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (280, 'apparel', 'Accessories', 1036700, 1036592, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (281, 'jewelry', 'Jewelry', 1046274, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (282, 'jewelry', 'Rings', 1046334, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (283, 'jewelry', 'Earrings', 1046336, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (284, 'jewelry', 'Pendants & Charms', 1046344, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (285, 'jewelry', 'Bracelets', 1046338, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (286, 'jewelry', 'Necklaces', 1046340, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (287, 'jewelry', 'Pins', 1046342, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (288, 'jewelry', 'Anklets', 1077030, 1046274, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (289, 'ebook', 'Top Selling', 551440, NULL, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (290, 'ebook', 'Biographies & Memoirs', 509380, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (291, 'ebook', 'Business & Investing', 509382, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (292, 'ebook', 'Children''s Books', 509384, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (293, 'ebook', 'Comics', 638668, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (294, 'ebook', 'Computers & Internet', 551438, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (295, 'ebook', 'Cooking, Food & Wine', 556952, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (296, 'ebook', 'Health, Mind & Body', 510778, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (297, 'ebook', 'History', 509392, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (298, 'ebook', 'Home & Garden', 556956, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (299, 'ebook', 'Literature & Fiction', 509386, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (300, 'ebook', 'Mystery & Thrillers', 509394, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (301, 'ebook', 'Nonfiction', 518304, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (302, 'ebook', 'Reference', 556958, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (303, 'ebook', 'Religion & Spirituality', 509396, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (304, 'ebook', 'Romance', 509398, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (305, 'ebook', 'Science Fiction & Fantasy', 509406, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (306, 'ebook', 'Science & Technology', 556954, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (307, 'ebook', 'Sports', 518302, 551440, 'us');
INSERT INTO `nuke_amazon_nodes` VALUES (308, 'ebook', 'Travel', 551436, 551440, 'us');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_amazon_not_item`
-- 

DROP TABLE IF EXISTS `nuke_amazon_not_item`;
CREATE TABLE `nuke_amazon_not_item` (
  `iid` int(11) NOT NULL auto_increment,
  `asin` varchar(10) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  PRIMARY KEY  (`iid`),
  KEY `asin` (`asin`)
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `nuke_banned_ip`;
CREATE TABLE `nuke_banned_ip` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(15) NOT NULL default '',
  `reason` varchar(255) NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banned_ip`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner`
-- 

DROP TABLE IF EXISTS `nuke_banner`;
CREATE TABLE `nuke_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `alttext` varchar(255) NOT NULL default '',
  `date` datetime default NULL,
  `dateend` datetime default NULL,
  `position` int(10) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '1',
  `ad_class` varchar(5) NOT NULL default '',
  `ad_code` text NOT NULL,
  `ad_width` int(4) default '0',
  `ad_height` int(4) default '0',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner`
-- 

INSERT INTO `nuke_banner` VALUES (1, 1, 'Art Of Gaming', 0, 1123, 2, 'http://www.artofgaming.co.uk/banners/banner_1.gif', 'http://www.artofgaming.co.uk', 'AOG Themes And Graphics Support For Platinum', '2007-05-17 00:50:14', '0000-00-00 00:00:00', 2, 1, 'image', '', 468, 60);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_campaigns`
-- 

DROP TABLE IF EXISTS `nuke_banner_campaigns`;
CREATE TABLE `nuke_banner_campaigns` (
  `campaigns_body` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_campaigns`
-- 

INSERT INTO `nuke_banner_campaigns` VALUES ('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads â€” they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>');
INSERT INTO `nuke_banner_campaigns` VALUES ('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads â€” they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>');
INSERT INTO `nuke_banner_campaigns` VALUES ('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads â€” they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>');
INSERT INTO `nuke_banner_campaigns` VALUES ('             <div align="center"><p><strong>Your banner campaign \r\n                   can be directed to the following categories:</strong> \r\n                   <br><br>\r\n                   <table width="94%" cellspacing="10" cellpadding="3" border="0">\r\n                    <tr> \r\n                      <td valign="top" align="left"> <ul>\r\n                          <li>  Advertising </li>\r\n                           <li>  Entertainment </li>\r\n                           <li>  Casino </li>\r\n                           <li>  Computers </li>\r\n                           <li>  Games </li>\r\n                           <li>  Webmasters </li>\r\n                           <li>  Health </li>\r\n                           <li>  Recreation</li>\r\n                         </ul></td>\r\n                       <td valign="top" align="left"> <ul>\r\n                          <li> Hobbies </li>\r\n                          <li> Travel </li>\r\n                           <li> Sports </li>\r\n                           <li> Business </li>\r\n                           <li> Gambling </li>\r\n                          <li> Shopping</li>\r\n                           <li> Debt</li>\r\n                          <li> MLM </li>\r\n                       </ul></td>\r\n                     <td valign="top" align="left"> <ul>\r\n                           <li> Beauty </li>\r\n                           <li> Free \r\n                            Stuff </li>\r\n                          <li> Finance </li>\r\n                          <li> Home \r\n                            Biz  </li>\r\n                          <li> Diet </li>\r\n                          <li> Credit \r\n                            Cards</li>\r\n                          <li> Family </li>\r\n                        </ul></td>\r\n                    </tr>\r\n                 </table></p></div>\r\n   <hr>\r\n   <p>1. Stretches your \r\n  ad budget. In general, banner ads cost less to create and place\r\n  than other forms of advertising, including television and print \r\n                   ads, radio spots, and direct mail. In addition, they often deliver \r\n                   a more targeted audience than these advertising methods. \r\n                 </p><p>2. Strategically \r\n                   gets your name where you want it. New Web sites can build strong \r\n                   traffic by strategically placing banner ads on sites that relate \r\n                   to their offerings. For example, a hat vendor can place ads \r\n                   on fashion sites, or an office supply retailer can advertise \r\n                   on business sites. Online ads offer an advantage over announcements \r\n                   in traditional print, direct mail, and television ads â€” they \r\n                  give users immediate satisfaction by allowing them to click \r\n                  to your store right away to learn more about your business. \r\n                </p><p>3. Generates qualified \r\n                   sales leads. If someone clicks on your banner, there''''s a good \r\n                   chance he or she is interested in your offering. This means \r\n                   banners tend to deliver highly targeted sales leads. Even ads \r\n                   with low response rates can be very effective if most respondents \r\n                   end up making a purchase. \r\n                </p><p>4. Establishes your \r\n                   brand. By using the same look and feel for your banners that \r\n                   you use for the rest of your business collateral, you can use \r\n                   these ads to reinforce your company''''s image to customers. Even \r\n                  if they don''''t click on the banner, they are exposed to your \r\n                   message, logo, and company image. Consistently applying company \r\n                  colors, trademarks, and product names in your banner ads will \r\n                   help your brand image stick in viewers'''' minds. \r\n                 </p><p>5. Enables you to \r\n                   measure the results. Technology can be used to measure Web user \r\n                   response to a banner campaign. For example, we provide you with \r\n                   an administration panel so that you can track your the visitors \r\n                   the campaign generated and analyze the effectiveness of your \r\n                   campaign. By tracking ad performance, you can determine which \r\n                 ads and ad placements pull the most customers to your Web store, \r\n                 and tweak your ads, offers, and media buys to improve your response \r\n                  rate.</p>');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_clients`
-- 

DROP TABLE IF EXISTS `nuke_banner_clients`;
CREATE TABLE `nuke_banner_clients` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `contact` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `login` varchar(10) NOT NULL default '',
  `passwd` varchar(10) NOT NULL default '',
  `extrainfo` text NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_clients`
-- 

INSERT INTO `nuke_banner_clients` VALUES (1, 'Art of Gaming', 'Gazzasan', 'gazzasan@googlemail.com', 'Gazzasan', 'qwerty', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_plans`
-- 

DROP TABLE IF EXISTS `nuke_banner_plans`;
CREATE TABLE `nuke_banner_plans` (
  `pid` int(10) NOT NULL auto_increment,
  `active` tinyint(1) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `delivery` varchar(10) NOT NULL default '',
  `delivery_type` varchar(25) NOT NULL default '',
  `price` varchar(25) NOT NULL default '0',
  `buy_links` text NOT NULL,
  `buy_links2` text NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_plans`
-- 

INSERT INTO `nuke_banner_plans` VALUES (6, 1, '2 Month Special', 'SPECIAL: Get 2 months at a reduced rate of $25.00 - Place your ads in either the Side or Center locations. Take out as many advertisements as you like for as long as you choose, just select multiple quantities at the time of your purchase <font size="1" color="#0033ff">(Read notes below)</font>.', '2', '3', '$25.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=2%20Month-Special%20Advert&amp;item_number=PCN%20Advertising&amp;amount=25%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a¤cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=14"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');
INSERT INTO `nuke_banner_plans` VALUES (7, 1, 'Theme Header', 'This Plan is setup at monthly intervals for the Top right  ThemeHeader area. This area, will give you the best advertising locations to show your ads. Purchase multiple months if you would like, during the payment process <font size="1" color="#0033ff">(Read notes below)</font>.  ', '1', '3', '$45.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Monthly%20Ad&amp;item_number=PCN%20Advertising%20%20&amp;amount=45%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a¤cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=15"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');
INSERT INTO `nuke_banner_plans` VALUES (2, 1, 'Monthly Ads', 'This Plan is setup at monthly intervals - Select any type ad (side or center), and they will run in the corresponding areas. Purchase multiple months if you would like, during the payment process <font color="#0033ff">(Read notes below)</font>.', '1', '3', '$15.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Monthly%20Ad&amp;item_number=Monthly%20%2d%20Any%20Ad&amp;amount=15%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a¤cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=16"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');
INSERT INTO `nuke_banner_plans` VALUES (1, 1, 'Impressions', 'This Plan is setup for 10,000 Impression groups - Select any type ad (side or center), and they will run in the corresponding areas.  Purchase multiple impression group quantities if you would like, during the payment process <font size="1" color="#0033ff">(Read notes below)</font>.', '10000', '0', '$10.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=10k%20Impressions&amp;item_number=PCN%20%2d%20Advertising&amp;amount10%2e00&amp;no_shipping=0&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a¤cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=18"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');
INSERT INTO `nuke_banner_plans` VALUES (5, 1, 'Mini-Ads', 'Mini-Ads will get 1,000s of impressions per day &amp; they run under each Side-Block location. Image size is 130x15 only. Purchase as many weeks as you would like, its an excellent deal. Image types can be flash, gif,  jpeg, or scripts. <strong><em><font color="#0033ff">Only $1.00 per Week!</font></em></strong> <font size="1" color="#0033ff">(Read notes below)</font>.', '1', '3', '$4.00', '<div align="center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=pay%40pcnuke%2ecom&amp;undefined_quantity=1&amp;item_name=Weekly%20Mini%20Ads&amp;item_number=PCN%20Advertising&amp;amount=4%2e00&amp;no_shipping=1&amp;return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dthanks&amp;cancel_return=http%3a%2f%2fwww%2epcnuke%2ecom%2fnew%2fmodules%2ephp%3fname%3dAdvertising%26op%3dplans&amp;cn=Note%3a¤cy_code=USD&amp;bn=PP%2dBuyNowBF&amp;charset=UTF%2d8"><img src="modules/Advertising/images/logo-paypal.gif" border="0"><br>Purchase Now!</a></div>', '<div align="center"><a href="https://www.2checkout.com/2co/buyer/purchase?sid=581495&amp;quantity=1&amp;product_id=17"><img src="images/2co_ads.jpg" border="0"><br>Purchase Now!</a></div>');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_positions`
-- 

DROP TABLE IF EXISTS `nuke_banner_positions`;
CREATE TABLE `nuke_banner_positions` (
  `apid` int(10) NOT NULL auto_increment,
  `position_number` int(5) NOT NULL default '0',
  `position_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`apid`),
  KEY `position_number` (`position_number`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_positions`
-- 

INSERT INTO `nuke_banner_positions` VALUES (1, 0, 'Page Top');
INSERT INTO `nuke_banner_positions` VALUES (2, 1, 'Block Side');
INSERT INTO `nuke_banner_positions` VALUES (3, 2, 'Block Center');
INSERT INTO `nuke_banner_positions` VALUES (5, 4, 'Block Middle');
INSERT INTO `nuke_banner_positions` VALUES (4, 3, 'Page Bottom');
INSERT INTO `nuke_banner_positions` VALUES (6, 5, 'Page Footer');
INSERT INTO `nuke_banner_positions` VALUES (7, 6, 'All Pages Lower');
INSERT INTO `nuke_banner_positions` VALUES (8, 7, 'Themeheader');
INSERT INTO `nuke_banner_positions` VALUES (9, 8, 'Text Ads');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_stats`
-- 

DROP TABLE IF EXISTS `nuke_banner_stats`;
CREATE TABLE `nuke_banner_stats` (
  `stats_body` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_stats`
-- 

INSERT INTO `nuke_banner_stats` VALUES ('<strong>Site Demographics:</strong><br />\r\nWe are an online community that offers valuable information that allows\r\nyou to make intelligent decisions towards the purchase of or use of\r\nyour advertising interests. They offer daily news, reviews, software\r\ndownloads, forums, polls, hardware and other product accessories. It is\r\na valuable resource for any Online User. By an internal audit we can\r\nprovide you with the following non exact numbers about our audience:<br />\r\n<br /> <li>85% are male </li><li>15% are female </li><li>93% own a computer </li><li>23% provide product or services to the Online Economy<br /> </li>\r\n<br /><br />\r\n\r\n<strong>Server Statistics:</strong><br />\r\nOur server is installed in a secure environment by a big private hosting company. Some features of this service are:<br />\r\n<br /> <li>Bandwidth usage (data transfer): <strong>150+ GB/month</strong><br /></li><li>Connection type: <strong>Multiple OC3 (155 Mbps)</strong><br /></li><li>Average Uptime: <strong>99.9%</strong><br /> </li>\r\n<br /><br />');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_terms`
-- 

DROP TABLE IF EXISTS `nuke_banner_terms`;
CREATE TABLE `nuke_banner_terms` (
  `terms_body` text NOT NULL,
  `country` varchar(255) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_terms`
-- 

INSERT INTO `nuke_banner_terms` VALUES ('<div align="justify"><strong>Introduction:</strong> This Agreement between you and [sitename] consists of these Terms and Conditions. "You" or "Advertiser" means the entity identified in this enrollment form, and/or any agency acting on its behalf, which shall also be bound by the terms of this Agreement. Please read very carefully these Terms and Conditions.<br /><strong><br />Uses:</strong> You agree that your ads may be placed on (i) [sitename] web site and (ii) Any ads may be modified without your consent to comply with any policy of [sitename]. [sitename] reserves the right to, and in its sole discretion may, at any time review, reject, modify, or remove any ad. No liability of [sitename] and/or its owner(s) shall result from any such decision.<br /><br /></div><div align="justify"><strong>Parties'' Responsibilities:</strong> You are responsible of your own site and/or service advertised in [sitename] web site. You are solely responsible for the advertising image creation, advertising text and for the content of your ads, including URL links. [sitename] is not responsible for anything regarding your Web site(s) including, but not limited to, maintenance of your Web site(s), order entry, customer service, payment processing, shipping, cancellations or returns.<br /><br /></div><div align="justify"><strong>Impressions Count:</strong> Any hit to [sitename] web site is counted as an impression. Due to our advertising price we don''t discriminate from users or automated robots. Even if you access to [sitename] web site and see your own banner ad it will be counted as a valid impression. Only in the case of [sitename] web site administrator, the impressions will not be counted.<br /><br /></div><div align="justify"><strong>Termination, Cancellation:</strong> [sitename] may at any time, in its sole discretion, terminate the Campaign, terminate this Agreement, or cancel any ad(s) or your use of any Target. [sitename] will notify you via email of any such termination or cancellation, which shall be effective immediately. No refund will be made for any reason. Remaining impressions will be stored in a database and you''ll be able to request another campaign to complete your inventory. You may cancel any ad and/or terminate this Agreement with or without cause at any time. Termination of your account shall be effective when [sitename] receives your notice via email. No refund will be made for any reason. Remaining impressions will be stored in a database for future uses by you and/or your company.<br /><br /></div><div align="justify"><strong>Content:</strong> [sitename] web site doesn''t accepts advertising that contains: (i) pornography, (ii) explicit adult content, (iii) moral questionable content, (iv) illegal content of any kind, (v) illegal drugs promotion, (vi) racism, (vii) politics content, (viii) religious content, and/or (ix) fraudulent suspicious content. If your advertising and/or target web site has any of this content and you purchased an advertising package, you''ll not receive refund of any kind but your banners ads impressions will be stored for future use.<br /><br /></div><div align="justify"><strong>Confidentiality:</strong> Each party agrees not to disclose Confidential Information of the other party without prior written consent except as provided herein. "Confidential Information" includes (i) ads, prior to publication, (ii) submissions or modifications relating to any advertising campaign, (iii) clickthrough rates or other statistics (except in an aggregated form that includes no identifiable information about you), and (iv) any other information designated in writing as "Confidential." It does not include information that has become publicly known through no breach by a party, or has been (i) independently developed without access to the other party''s Confidential Information; (ii) rightfully received from a third party; or (iii) required to be disclosed by law or by a governmental authority.<br /><br /></div><div align="justify"><strong>No Guarantee:</strong> [sitename] makes no guarantee regarding the levels of clicks for any ad on its site. [sitename] may offer the same Target to more than one advertiser. You may not receive exclusivity unless special private contract between [sitename] and you.<br /><br /></div><div align="justify"><strong>No Warranty:</strong> [sitename] MAKES NO WARRANTY, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION WITH RESPECT TO ADVERTISING AND OTHER SERVICES, AND EXPRESSLY DISCLAIMS THE WARRANTIES OR CONDITIONS OF NONINFRINGEMENT, MERCHANTABILITY AND FITNESS FOR ANY PARTICULAR PURPOSE.<br /><br /></div><div align="justify"><strong>Limitations of Liability:</strong> In no event shall [sitename] be liable for any act or omission, or any event directly or indirectly resulting from any act or omission of Advertiser, Partner, or any third parties (if any). EXCEPT FOR THE PARTIES'' INDEMNIFICATION AND CONFIDENTIALITY OBLIGATIONS HEREUNDER, (i) IN NO EVENT SHALL EITHER PARTY BE LIABLE UNDER THIS AGREEMENT FOR ANY CONSEQUENTIAL, SPECIAL, INDIRECT, EXEMPLARY, PUNITIVE, OR OTHER DAMAGES WHETHER IN CONTRACT, TORT OR ANY OTHER LEGAL THEORY, EVEN IF SUCH PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES AND NOTWITHSTANDING ANY FAILURE OF ESSENTIAL PURPOSE OF ANY LIMITED REMEDY AND (ii) [sitename] AGGREGATE LIABILITY TO ADVERTISER UNDER THIS AGREEMENT FOR ANY CLAIM IS LIMITED TO THE AMOUNT PAID TO [sitename] BY ADVERTISER FOR THE AD GIVING RISE TO THE CLAIM. Each party acknowledges that the other party has entered into this Agreement relying on the limitations of liability stated herein and that those limitations are an essential basis of the bargain between the parties. Without limiting the foregoing and except for payment obligations, neither party shall have any liability for any failure or delay resulting from any condition beyond the reasonable control of such party, including but not limited to governmental action or acts of terrorism, earthquake or other acts of God, labor conditions, and power failures.<br /><br /></div><div align="justify"><strong>Payment:</strong> You agree to pay in advance the cost of the advertising. [sitename] will not setup any banner ads campaign(s) unless the payment process is complete. [sitename] may change its pricing at any time without prior notice. If you have an advertising campaign running and/or impressions stored for future use for any mentioned cause and [sitename] changes its pricing, you''ll not need to pay any difference. Your purchased banners fee will remain the same. Charges shall be calculated solely based on records maintained by [sitename]. No other measurements or statistics of any kind shall be accepted by [sitename] or have any effect under this Agreement.<br /><br /></div><div align="justify"><strong>Representations and Warranties:</strong> You represent and warrant that (a) all of the information provided by you to [sitename] to enroll in the Advertising Campaign is correct and current; (b) you hold all rights to permit [sitename] and any Partner(s) to use, reproduce, display, transmit and distribute your ad(s); and (c) [sitename] and any Partner(s) Use, your Target(s), and any site(s) linked to, and products or services to which users are directed, will not, in any state or country where the ad is displayed (i) violate any criminal laws or third party rights giving rise to civil liability, including but not limited to trademark rights or rights relating to the performance of music; or (ii) encourage conduct that would violate any criminal or civil law. You further represent and warrant that any Web site linked to your ad(s) (i) complies with all laws and regulations in any state or country where the ad is displayed; (ii) does not breach and has not breached any duty toward or rights of any person or entity including, without limitation, rights of publicity or privacy, or rights or duties under consumer protection, product liability, tort, or contract theories; and (iii) is not false, misleading, defamatory, libelous, slanderous or threatening.<br /><br /></div><div align="justify"><strong>Your Obligation to Indemnify:</strong> You agree to indemnify, defend and hold [sitename], its agents, affiliates, subsidiaries, directors, officers, employees, and applicable third parties (e.g., all relevant Partner(s), licensors, licensees, consultants and contractors) ("Indemnified Person(s)") harmless from and against any and all third party claims, liability, loss, and expense (including damage awards, settlement amounts, and reasonable legal fees), brought against any Indemnified Person(s), arising out of, related to or which may arise from your use of the Advertising Program, your Web site, and/or your breach of any term of this Agreement. Customer understands and agrees that each Partner, as defined herein, has the right to assert and enforce its rights under this Section directly on its own behalf as a third party beneficiary.<br /><br /></div><div align="justify"><strong>Information Rights:</strong> [sitename] may retain and use for its own purposes all information you provide, including but not limited to Targets, URLs, the content of ads, and contact and billing information. [sitename] may share this information about you with business partners and/or sponsors. [sitename] will not sell your information. Your name, web site''s URL and related graphics shall be used by [sitename] in its own web site at any time as a sample to the public, even if your Advertising Campaign has been finished.<br /><br /></div><div align="justify"><strong>Miscellaneous:</strong> Any decision made by [sitename] under this Agreement shall be final. [sitename] shall have no liability for any such decision. You will be responsible for all reasonable expenses (including attorneys'' fees) incurred by [sitename] in collecting unpaid amounts under this Agreement. This Agreement shall be governed by the laws of [country]. Any dispute or claim arising out of or in connection with this Agreement shall be adjudicated in [country]. This constitutes the entire agreement between the parties with respect to the subject matter hereof. Advertiser may not resell, assign, or transfer any of its rights hereunder. Any such attempt may result in termination of this Agreement, without liability to [sitename] and without any refund. The relationship(s) between [sitename] and the "Partners" is not one of a legal partnership relationship, but is one of independent contractors. This Agreement shall be construed as if both parties jointly wrote it.</div>', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_banner_thanks`
-- 

DROP TABLE IF EXISTS `nuke_banner_thanks`;
CREATE TABLE `nuke_banner_thanks` (
  `thanks_body` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_banner_thanks`
-- 

INSERT INTO `nuke_banner_thanks` VALUES (' - To finish processing your order quickly please complete these final\r\nsteps in uploading & providing your banner information. <br>\r\n<br>\r\nNotes: make sure the banner image size uploaded... matches the plan you\r\nselected during your purchase.\r\n<br>\r\nExample, if you purchased one 468x60 banner, then this is the size of banner you would upload and provide us a link to.\r\n');

DROP TABLE IF EXISTS `nuke_bbadmin_pm`;
CREATE TABLE `nuke_bbadmin_pm` (
    `admin_id` int(10) NULL DEFAULT '0',
    `admin_redirect_id` int(10) NULL DEFAULT '0',
    `admin_deny` int(1) NULL DEFAULT '0'
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_bbfavorites`;
CREATE TABLE `nuke_bbfavorites` (
  `fav_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `topic_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`fav_id`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_bbproxies`;
CREATE TABLE `nuke_bbproxies` (
    `ip_address` char(8) NOT NULL DEFAULT '0',
    `status` tinyint(2) NOT NULL DEFAULT '0',
    `port` char(4) NULL DEFAULT '0',
    `last_checked` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`ip_address`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_blocked`;
CREATE TABLE `nuke_blocked` (
  `id` int(11) NOT NULL auto_increment,
  `ip_from` int(11) unsigned NOT NULL default '0',
  `ip_to` int(11) unsigned NOT NULL default '0',
  `date` int(11) default NULL,
  `info` text,
  `pers_info` varchar(255) default NULL,
  `hits` int(4) NOT NULL default '0',
  `user` varchar(40) default NULL,
  `range` int(3) default NULL,
  `time_limit` varchar(20) NOT NULL default 'NO',
  `banned` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ip_from` (`ip_from`,`banned`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_agent`
-- 

DROP TABLE IF EXISTS `nuke_blocked_agent`;
CREATE TABLE `nuke_blocked_agent` (
  `agent` varchar(150) NOT NULL default '',
  `cookie` varchar(50) NOT NULL default '',
  `scan` varchar(50) NOT NULL default '',
  `type` varchar(15) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_agent`
-- 

INSERT INTO `nuke_blocked_agent` VALUES ('', 'admin', '', 'cookie');
INSERT INTO `nuke_blocked_agent` VALUES ('', 'user', '', 'cookie');
INSERT INTO `nuke_blocked_agent` VALUES ('', 'lang', '', 'cookie');
INSERT INTO `nuke_blocked_agent` VALUES ('', 'phpbb2mysql_data', '', 'cookie');
INSERT INTO `nuke_blocked_agent` VALUES ('Alexibot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('asterias', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BackDoorBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Black.Hole', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BlackWidow', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BlowFish', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BotALot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BuiltBotTough', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('BunnySlippers', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Cegbfeieh', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('CheeseBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('CherryPicker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ChinaClaw', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('CopyRightCheck', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('cosmos', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Crescent', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Custo', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Alexibot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('DISCo', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Download Demon', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('eCatch', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EirGrabber', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EmailCollector', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EmailSiphon', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EmailWolf', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EroCrawler', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Express WebPictures', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ExtractorPro', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('EyeNetIE', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('FlashGet', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Foobot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('GetRight', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('GetWeb!', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Go-Ahead-Got-It', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Googlebot-Image', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Go!Zilla', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Grafula', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Harvest', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('hloader', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('HMView', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('httplib', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('HTTrack', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('humanlinks', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ia_archiver', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Indy Library', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Image Stripper', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NetSpider', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NetMechanic', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NetAnts', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NearSite', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Navroad', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mozilla.*NEWT', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mozilla/3.Mozilla/2.01', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mozilla/2', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('moget', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mister PiX', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mister.PiX', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('MIIxpc', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('MIDown tool', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Microsoft.URL', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mata.Hari', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Mass Downloader', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('lwp-trivial', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('LinkWalker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('LinkScan/8.1a.Unix', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('LinkextractorPro', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('libWeb/clsHTTP', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('LexiBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('LeechFTP', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('larbin', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Keyword.Density', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Kenjin.Spider', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('JOC Web Spider', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('JetCar', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('JennyBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Internet Ninja', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('InterGET', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('InfoNaviRobot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Net Vampire', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NetZIP', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NICErsPRO', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NICErsPRO', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('NPBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Octopus', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Offline.Explorer', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Offline Explorer', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Offline Navigator', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Openfind', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('PageGrabber', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Papa Foto', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('pavuk', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('pcBrowser', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ProPowerBot/2.14', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ProWebWalker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ProWebWalker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('QueryN.Metasearch', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('ReGet', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('RepoMonkey', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('RMA', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SiteSnagger', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SlySearch', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SmartDownload', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SpankBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('spanner', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebmasterWorldForumBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebLeacher', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Web Image Collector', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Web.Image.Collector', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebGo IS', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebFetch', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebEnhancer', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebEMailExtrac.*', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebCopier', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebBandit', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebAuto', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('VoidEYE', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('VCI', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('URLy.Warning', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('TurnitinBot/1.5', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('turingos', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('True_Robot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('toCrawl/UrlDispatcher', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Titan', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('TightTwatBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('TheNomad', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('The.Intraformant', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Telesoft', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Teleport Pro', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Teleport', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Szukacz/1.4', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Surfbot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SuperHTTP', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('SuperBot', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebReaper', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebSauger', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Website eXtractor', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Website.Quester', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Website Quester', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Webster.Pro', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebStripper', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Web Sucker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebWhacker', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WebZip', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Wget', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Widow', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('[Ww]eb[Bb]andit', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WWW-Collector-E', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('WWWOFFLE', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Xaldon WebSpider', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Xenu', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('Zeus', '', '', 'bad');
INSERT INTO `nuke_blocked_agent` VALUES ('', 'Fusion', '', 'cookie');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_config`
-- 

DROP TABLE IF EXISTS `nuke_blocked_config`;
CREATE TABLE `nuke_blocked_config` (
  `system_version` varchar(40) NOT NULL default '',
  `auto_prune` int(11) NOT NULL default '0',
  `tracker_max` varchar(10) default NULL,
  `rem_url` varchar(100) default NULL,
  `rem_url_on` int(11) NOT NULL default '0',
  `tracker_del` int(11) NOT NULL default '0',
  `prune_method` int(11) NOT NULL default '0',
  `optimize_date` varchar(14) NOT NULL default '',
  `mail_admin` int(11) NOT NULL default '0',
  `inactive_time` int(11) NOT NULL default '0',
  `error_report` int(3) NOT NULL default '0',
  `sec_cookie` int(3) NOT NULL default '0',
  `sec_get` int(3) NOT NULL default '0',
  `sec_post` int(3) NOT NULL default '0',
  `query_site` varchar(100) default NULL,
  `prune_date` varchar(14) default NULL,
  `own_mail` varchar(50) default NULL,
  `sec_code` varchar(50) default NULL,
  `conf_host` int(11) default NULL,
  `god_only` int(11) NOT NULL default '1',
  `sound_alert` int(11) NOT NULL default '0',
  `mail_module` int(11) NOT NULL default '0',
  `real_path` varchar(150) NOT NULL default '',
  `ps_time_zone` float NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_config`
-- 

INSERT INTO `nuke_blocked_config` VALUES ('2.0', 0, '50', 'www.fbi.gov', 0, 0, 0, '1186956069', 0, 0, 0, 1, 1, 1, 'http://www.whois.sc/', '7', 'me@myemail.com', '149209SdFk*fa28367-dm56w69.3a2fDS+e9', 1, 0, 1, 0, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_denymod`
-- 

DROP TABLE IF EXISTS `nuke_blocked_denymod`;
CREATE TABLE `nuke_blocked_denymod` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(30) default NULL,
  `d_mod` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user` (`user`,`d_mod`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_denymod`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_files`
-- 

DROP TABLE IF EXISTS `nuke_blocked_files`;
CREATE TABLE `nuke_blocked_files` (
  `id` int(11) NOT NULL auto_increment,
  `file` varchar(100) NOT NULL default '',
  `size` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `file` (`file`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_free`
-- 

DROP TABLE IF EXISTS `nuke_blocked_free`;
CREATE TABLE `nuke_blocked_free` (
  `id` int(11) NOT NULL auto_increment,
  `ip` int(11) unsigned NOT NULL default '0',
  `user` varchar(50) default NULL,
  `info` varchar(250) default NULL,
  `date` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_free`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_hammer`
-- 

DROP TABLE IF EXISTS `nuke_blocked_hammer`;
CREATE TABLE `nuke_blocked_hammer` (
  `id` int(11) NOT NULL auto_increment,
  `hammer_time` int(11) default NULL,
  `hammer_limit` int(11) default NULL,
  `hammer_protect` int(3) default NULL,
  `close_site_blocked` int(3) default NULL,
  `close_site_logo` int(3) default NULL,
  `hammer_hit` int(3) default NULL,
  `site_p_info` varchar(250) default NULL,
  `site_protect_admin` int(3) default NULL,
  `refuse_proxy` int(3) default '1',
  `auto_protect` int(3) NOT NULL default '0',
  `auto_protect_hard` int(3) NOT NULL default '0',
  `protect_admin_hard` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_hammer`
-- 

INSERT INTO `nuke_blocked_hammer` VALUES (1, 180, 90, 1, 0, 1, 30, 'Sorry the site is currently being upgraded.', 1, 0, 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_help`
-- 

DROP TABLE IF EXISTS `nuke_blocked_help`;
CREATE TABLE `nuke_blocked_help` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(30) NOT NULL default '',
  `text` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_help`
-- 

INSERT INTO `nuke_blocked_help` VALUES (1, 'Hammer Protection', 'This function prevent users to hitting your site too often in a short time period! (brute force attacks)\r\n\r\n<b>Time Limit</b> is the time you give a user. \r\n<b>Max Hits</b> is the max hits a user is allowed to hit your site during the time you set in Time Limit.\r\nIf the user hits your site to many times they will get blocked from your site and must wait so many seconds that you set in the Block Time.\r\n\r\n\r\n<b>Close the Site</b> \r\nHere can you "close" your Platinum site. All users that are trying to access your site will only come to a page with that info you write in the text box.\r\n\r\nAs admin you can go every where on your site and a big text is displayd on top of your site that the site is closed and only admins can be there.\r\n\r\nIf you want to show your sites logo set the option to yes.\r\nIf not then can you put this option to off and use a custom images. Upload any images to <b>images/blocked/custom.gif (or jpg)</b> and that images will then show. If no images is there then will no images will be shown. (not even a red cross)\r\n\r\nIf you hit the preview button can you take a look in how your close the site page will look.\r\n');
INSERT INTO `nuke_blocked_help` VALUES (2, 'IP Protection', '<b>Auto Protection</b>\r\n\r\nThis function will add a new IP to the protected ip list if you login as admin and your username exists in the protected list.\r\n\r\n<b>Hard Protection</b>\r\n\r\nIf you set Auto Protect IP to hard all IP''s that are in your name will be removed. Only the IP you are on RIGHT NOW will be protected!\r\n\r\n<b>Protect Admin</b>\r\n\r\nIf set this to on, it will redirect all users hitting the admin page that are not protected and logged in as admin (cookie) to index.php');
INSERT INTO `nuke_blocked_help` VALUES (3, 'Pro Mod', 'This function lets you protect any module on your site and just grant individual user access.\r\n\r\ni.e: You can add user Loki with any ip or just let him access if he is on ip 123.123.123.123\r\n\r\nYou can set each user on individual modules or grant him access to all protected modules. You can fetch info on each module to see which user who has access to that specific module\r\n\r\nYou can compare the protected modules as groups and then just add the user in that gruop to add access to him\r\n\r\n<u><i>Note: If a user is in the Protect List that user  automatically has access to ALL protected modules therefore there is no need for adding such user </u></i>\r\n\r\nJust some tip:\r\n<ul>\r\n<li>Remember that if you remove a protected module all users that is in that module will be removed (Fairly obvious).\r\n<li>Want to see what users are granted to that module? Just use the Pro Mod Info panel.\r\n<li>Want to see what that particularly user''s access is? Use the Pro Mod Info panel again and click on Access on a user and all modules will be listed that they have access to.\r\n<li>If you dont want to get mail everytime a person enter the protected module. Set mail admin to no on this page.\r\n</ul>');
INSERT INTO `nuke_blocked_help` VALUES (4, 'Locate Panel', 'This is the ''HQ''. It''s here where you track, read notes and just watch what your visitors are doing on your site.\r\n\r\nEvery icon has it''s own purpose, just read in the Icon Legend to find out what they do.\r\nOr just hover over the image/icon to read what they do.\r\n\r\nClick on the <b>username</b> to get to that users information page. That window will give you more options for each user!\r\n\r\nIf the row is a orange color then that user has a special note attached. Click on the name to bring up the User Central window.\r\n\r\nUse the Query icon to use an external query script.\r\nThe [A,C,R] tags after a user names have these values:\r\n[A] = User is logged in as [A]dmin\r\n[R] = User is logged in as [R]egistered\r\n[C] = User does exist but has [C]hanged his name or has been deleted and therefore doesn''t exist with this username anymore.');
INSERT INTO `nuke_blocked_help` VALUES (5, 'Block Bad Bots', 'Hate those bot that hits your server multiply times and just ignores your robot.txt?\r\nBlock them from your site and just display text to them so that they dont steal bandwidth from you!\r\n\r\nTo block them must you search for a <b>unique</b> word in their User Agent header and insert that word in this BBB function\r\n\r\nOk so how do i know whats unique? \r\nWell thats hard to know but try this.\r\nA normal user_agent can be: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)\r\n\r\nAnd if your on a windows machine then the word <b>(Windows)</b> is there. So putting the word windows will not be that good. Most of the visitors are on systems like that.\r\n\r\nBut if we look in a Google bots user agent then will it looks like this <b>Googlebot/2.1 (+http://www.googlebot.com/bot.html)</b>\r\n\r\nSo the word <b>Googlebot</b> can be unique for that one. What bots you want to add is up to you but a good thing is to look in Pro Sys log for ip/user that hits your site ofthen and ALOT of times in a short period.\r\n');
INSERT INTO `nuke_blocked_help` VALUES (6, 'IP 2 Country Install', 'This is where you install the ip-to-country.csv file\r\nThere is 2 method in doing this.\r\n\r\n1. Browse for the file ip-to-country.csv and click on the Update button. This will try to upload the file and then insert the data.\r\n2. Upload the file ip-to-country.csv to the folder <b>includes/ps_upload</b> by ftp, then press the Use Ftp Method button.\r\n\r\nThis is ALOT of data so if your using the second method can it take a while. So don''t stop it , wait until it''s done.\r\n\r\nThe first method is faster but requires that your mySQL server is configured with the right things.\r\n\r\nAnd as this ip-to-country file grows in size after each release of it you might have a problem uploading due to your php servers max allowed file size.\r\nSo if the first method doesnt work. Use the second where you manually upload the file and then press the Use Ftp Method.');
INSERT INTO `nuke_blocked_help` VALUES (7, 'Cookie Information', 'Here is the list of cookies that is sent by this site.\r\nIf you want to scan other cookies then admin & user for any UNION attacks then add them here.\r\n\r\nBut you MUST know that some cookies sends values that this scan will block like the forum cookie.\r\nSo you must first disable this function and refresh your site and/or go to your new module to see if it sends any cookie value. \r\nYou will then here below see which cookie thats not in the accepted list.\r\nIf they pass the scan as orginal cookie can you add them. You will then have an ADD button after. If you hover over the cookie name can you see the value of the cookie\r\n\r\n\r\n');
INSERT INTO `nuke_blocked_help` VALUES (8, 'Class A,C,B Network Ban', '<ul>\r\n<li>Class A: 255.0.0.0 <i>(will ban 16777215 ip)</i>\r\n<li>Class B: 255.255.0.0 <i>(will ban 65535 ip)</i>\r\n<li>Class C: 255.255.255.0 <i>(will ban 255 ip)</i>\r\n</ul>\r\n\r\nIf you want to ban a whole *-Class net just insert in this format.\r\nClass C: 123.123.123.0 - 123.123.123.255\r\nClass B: 123.123.0.0 - 123.123.255.255\r\nClass A: 123.0.0.0 - 123.255.255.255\r\n\r\n<b>Note:</b>\r\nAdding a range will NOT insert 255 ip or so just one row!\r\nAll singel ip will also be removed that belong to any new added range!');
INSERT INTO `nuke_blocked_help` VALUES (9, 'Misc Tools', '<b>Auto Exclude:</b>\r\nHere can you disable the autoupdate feature.\r\nThis is good if your running a large site with alot of visiting user.\r\nThe auto update feature uses the <a href=http://www.php.net/manual/en/function.gethostbyaddr.php target=_blank>getHostByAddr()</a> which takes some resurses\r\n\r\n<b>Robots Management:</b>\r\nThis tool let you edit your robots.txt file and also a validation of the file can be done.');
INSERT INTO `nuke_blocked_help` VALUES (10, 'Deny Mod', 'This function lets you deny access to any user on any Module that you have on your site.\r\nChoose a username (if you dont know exact name then click on find)\r\nChoose which module.\r\nOn the right side can you see which module(s) have denied users. Choose one to see which user is denied where\r\n\r\nWell thats it =)');
INSERT INTO `nuke_blocked_help` VALUES (11, 'God Only', 'If you set this option to yes then only God admin can edit admin info and or add new admins.\r\nSo not even superusers can edit.');
INSERT INTO `nuke_blocked_help` VALUES (12, 'HTTP Referers', 'Here is list of sites that link to us. In here can you see date what ip and/or user that came from what site.\r\n\r\nYou can alos deny that domain to link to you. \r\nClick on the ">>" to add them to the bad referer list or click on "X" to remove them.\r\nIp number has a serch icon and you can use it to search for that ip in our Locate Panel.\r\nUse the globe to view the full ref link.');
INSERT INTO `nuke_blocked_help` VALUES (13, 'About exclude function', 'Every ip that in this list will not be listed in the locate panel and therefore not monitored by Fusion System\r\n\r\nThe system works like this:\r\nWhen your first bot (i.e.. Google 111.111.111.111/crawler01.googlebot.com) enters your site, add that bot but not the whole host name just add\r\ngooglebot.com. And then will every Google crawler be added automatically.');
INSERT INTO `nuke_blocked_help` VALUES (14, 'User Pruner', 'This function is not completed.');
INSERT INTO `nuke_blocked_help` VALUES (15, 'Secure POST', 'Here can you deactivate the method of scanning\r\nany POST methods sent to your server.\r\n');
INSERT INTO `nuke_blocked_help` VALUES (16, 'Secure GET', 'Here can you deactivate the method of scanning\r\nany GET methods sent to your server.\r\n');
INSERT INTO `nuke_blocked_help` VALUES (17, 'Free Scan', 'This is where you can put in ''bad'' POST or GET strings\r\nyou dont want user to use agains your site.\r\n\r\nThis is good if any new hack is discovered and\r\nFusion don''t scan for that! \r\n\r\nThey will NOT be banned just blocked and informed about it.\r\nAnd as usual you who are in the Protected Ip List will not be affected.\r\n\r\n<b>Warning!!</b>\r\nRemember that inserting common word ie: Hi, hello and so on will prevent all user to post news, in forums so you MUST be pretty sure what "BAD" words,string you put in here.');
INSERT INTO `nuke_blocked_help` VALUES (18, 'Htaccess Info', 'This file can cause your server to stop response if edited in wrong way. \r\nWhoever an backup of the original .htaccess is made in the first time you use this tool and it''s placed in <b>/includes/ps_upload</b> named <b>htaccess_backup.txt</b>.\r\n\r\nSo if you encounter any error just ftp and replace your orignal .htaccess located in your server root / whit the backup file. Just rename it back to .htaccess\r\n\r\nThe main use of this tool is to add your ip from the database to your .htacess file.\r\n\r\nIf you want to find out more just <a href=http://www.google.se/search?hl=sv&q=.htaccess target=_blank><u>GOOGLE</u></a> after .htaccess or visit this page <a href=http://httpd.apache.org/docs/howto/htaccess.html target=_blank><u>Apache Tutorial: .htaccess files</u></a>');
INSERT INTO `nuke_blocked_help` VALUES (19, 'Prune Fusion List', 'Here can you prune the list of logged user. \r\nJust click on any of the 2 button above and a pop up windows with more info will come up. \r\n\r\nIf you press the hard button will you get the choice to remove all users else only the anonymous)');
INSERT INTO `nuke_blocked_help` VALUES (20, 'Block Domains / ISP', 'xxxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (21, 'Block ISP', 'I have inserted 26000+ on my server it took about 145 sec for the page to load. So you must know it can tak awhile the first time you run this scrip. This only works if your server dont have safe_mode set to on in your php.ini.\r\n');
INSERT INTO `nuke_blocked_help` VALUES (22, 'Protect List', 'All admins must protect their IP.  You can enter them here.');
INSERT INTO `nuke_blocked_help` VALUES (23, 'RESERVED', '******************');
INSERT INTO `nuke_blocked_help` VALUES (24, 'Page Tracker settings', '************************');
INSERT INTO `nuke_blocked_help` VALUES (25, 'Disable error reporting', 'You can turn off error reporting here....');
INSERT INTO `nuke_blocked_help` VALUES (26, 'Choose site to query', '****************************');
INSERT INTO `nuke_blocked_help` VALUES (27, 'Mail Admin', '*************************');
INSERT INTO `nuke_blocked_help` VALUES (28, 'Time Offset', '***********************');
INSERT INTO `nuke_blocked_help` VALUES (29, 'RESERVED', '*******************');
INSERT INTO `nuke_blocked_help` VALUES (30, 'Add IP number to Ban', '**********************');
INSERT INTO `nuke_blocked_help` VALUES (31, 'Sound Alert to a banned IP', 'xxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (32, 'Deny Proxy', 'xxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (33, 'Get Domain Name', 'xxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (34, 'Block Bad Referer (BBR)', 'xxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (35, 'Redirect banned IP', 'xxxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (36, 'Ban Page', 'xxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (37, 'RESERVED', 'xxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (38, 'Security Overview', 'This might be the heart where you in a fast way can see the security of your site. How secure are you?');
INSERT INTO `nuke_blocked_help` VALUES (39, 'Latest activity', 'Here can you view the lastest bans by Fusion\r\n(ban made by you or other admins is not listed here) and also any activity from UMS is displayed here');
INSERT INTO `nuke_blocked_help` VALUES (40, 'Empty Protector System Tables', 'If your database grows in size then can you use this to quickly remove Logged IP or tracked page. Remember once removed will it be gone. So take care if you want to remove Banned IP then will all banned users be able to access your site again');
INSERT INTO `nuke_blocked_help` VALUES (41, 'RESERVED', 'xxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (42, 'RESERVED', 'xxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (43, 'RESERVED', 'xxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (44, 'EXTENDED UMS INFO', 'xxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (45, 'Fusion Version advisor', 'Here can you see if your running latest version of Fusion and a release date of latest ip-2-country cvs file.');
INSERT INTO `nuke_blocked_help` VALUES (46, 'USER MONITOR SYSTEM', 'xxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `nuke_blocked_help` VALUES (47, 'htaccess Management', '<u>Read .htaccess</u>\r\nThis let you list all .htaccess files found on your server and open them for manual editing.\r\n\r\n<u>Add Single</u>\r\nInsert any ip of your choice to block them from your site with .htaccess file. (note if the ip is bloced by ,htaccess will Fusion not be aware if they get back.\r\n\r\n<u>Del Single</u>\r\nThis will let you remove any ip you insert here from the .htaccess file.\r\n\r\n<u>Add all db</u>\r\nThis just fetch all IP stored in your Ban List and add them to .htaccess file\r\n\r\n<u>Del all htaccess IP</u>\r\nThis will remove all IP in your .htaccess file and leave anything else in the file.\r\n\r\n<u>Protect Img</u>\r\nThis function will insert a .htaccess ruele to prevent other site to use your images (hot linking)\r\n\r\n<u>User/Group Admin</u>\r\nThis toll let you manage users and groups used by .htacces restricted areas!\r\n\r\n<u>Protect Areas/Files</u>\r\nWhen you have addded uses/groups can you on this page protect areas/files and add your users/groups to this areas/files. If you want to remove the protection must you go to edit .htaccess and brows tho the path where you have any protection, and amually remove the lines.\r\nLines looks like this:\r\n<b>\r\n#Protecting: C:\\webserver\\xampp\\htdocs\\nuke\\77\\.htaccess\r\nOrder allow,deny\r\nAllow from all\r\nAuthType Basic\r\nAuthUserFile "C:\\webserver\\xampp\\htdocs\\nuke\\admin\\sec\\.htpasswd"\r\nAuthGroupFile "C:\\webserver\\xampp\\htdocs\\nuke\\admin\\sec\\.groups"\r\nAuthName "Internal area"\r\nRequire user mister\r\n</b>\r\n<u>Error Pages</u>\r\nHere can you make your own error page that the server uses. If a user misspell a link or a page cant be found on your server then will the user not just see a boring white 404 page. Insted can you use your own and the user will still be on your page!\r\n\r\n<u>Info!</u>\r\nSmart tips in how to use .htaccess and some warnings!');
INSERT INTO `nuke_blocked_help` VALUES (48, 'Personal Settings', 'Here each admin can set their own preferences.\r\n\r\n<u>Max Banned IP:</u>\r\nHere can you set how many rows of banned ip you want to list on each page.\r\n\r\n<u>Max IP:</u>\r\nHere can you set how many rows of ip/referers you want to list on each page. (Log Center & referers page)\r\n\r\n<b>Layout Settings:</b>\r\n\r\nJava: Stands for if you want the contents of each function will be able to expand/contract\r\n\r\nCollapse: Stands for if you expand one setting all other will collapse: (so you can only have one function open at the time)\r\n\r\nCookie: Stands for that the system will remember which functions you have open so when you arrive to the page all functions that you had open before will be remembered.\r\n\r\nIcon Color: Here can you change from light to dark icons on Fusion (depends on if your running a dark or light themes on your site)');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_iplist`
-- 

DROP TABLE IF EXISTS `nuke_blocked_iplist`;
CREATE TABLE `nuke_blocked_iplist` (
  `id` int(11) NOT NULL auto_increment,
  `ip` int(11) unsigned NOT NULL default '0',
  `ip_proxy` int(11) unsigned NOT NULL default '0',
  `user` varchar(40) default NULL,
  `last_seen` int(11) unsigned NOT NULL default '0',
  `reg_date` int(11) unsigned NOT NULL default '0',
  `notes` int(3) NOT NULL default '0',
  `hammer_now` int(11) unsigned NOT NULL default '0',
  `hammer_hits` int(11) NOT NULL default '0',
  `as_isp` int(3) NOT NULL default '0',
  `admin_access` int(11) NOT NULL default '0',
  `admin_access_date` int(11) NOT NULL default '0',
  `admin_access_hits` int(11) NOT NULL default '0',
  `blocker_time` int(11) unsigned NOT NULL default '0',
  `ps_adm` int(11) NOT NULL default '0',
  `ps_tot_hits` int(11) NOT NULL default '0',
  `ps_referer` varchar(150) default NULL,
  `agent_fetch` varchar(100) default NULL,
  `first_page` varchar(250) default NULL,
  `blocker_host` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `blocker_host` (`blocker_host`),
  KEY `ip` (`ip`,`user`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_iplist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_iptoc`
-- 

DROP TABLE IF EXISTS `nuke_blocked_iptoc`;
CREATE TABLE `nuke_blocked_iptoc` (
  `ip_from` int(10) unsigned zerofill NOT NULL default '0000000000',
  `ip_to` int(10) unsigned zerofill NOT NULL default '0000000000',
  `country_code2` char(2) NOT NULL default '',
  `country_code3` char(3) NOT NULL default '',
  `country_name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`ip_from`,`ip_to`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_iptoc`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_isp`
-- 

DROP TABLE IF EXISTS `nuke_blocked_isp`;
CREATE TABLE `nuke_blocked_isp` (
  `isp` varchar(150) NOT NULL default '',
  `type` varchar(10) NOT NULL default 'isp',
  UNIQUE KEY `isp` (`isp`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_isp`
-- 

INSERT INTO `nuke_blocked_isp` VALUES ('dialup.mindspring.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('asianet.co.th', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('m1.fti.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612562.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612303.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612252.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612232.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612201.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612103.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612100.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612097.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612075.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612032.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612023.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612003.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611971.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611959.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611924.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611905.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611877.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611854.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611848.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611828.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611822.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611815.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611810.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611750.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611742.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611653.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611652.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611637.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611603.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611600.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611594.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611578.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611481.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611450.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611449.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611392.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611317.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611276.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611229.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611218.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611208.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611207.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611184.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611176.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611172.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611166.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611135.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611114.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611067.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611042.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611024.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611013.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602346.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602344.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602286.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602259.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602236.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602193.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('search.live.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501170.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501093.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawl-66-249-66-49.googlebot.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dyn.idknet.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.green.ch', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dialog.net.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('bta.net.cn', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('k193.webspeed.dk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('asd.tj.cn', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('www.whois.sc', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('www.sallyridestore.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('sjtu.edu.cn', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('www.clanspum.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('hr.cox.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('informatik.uni-leipzig.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('corp.yahoo.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('wireless-gw.sksyu.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('wireless-69-10-160-101.shasta.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.wanadoo.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('vps25ua.prostohost.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('vpn.gwinnettpl.org', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('vip.dnsprotect.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('64-179-162.iw.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('du.onolab.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('user140.skyhelp.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pol.co.uk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.mindspring.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('202.uscolo.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('unknown.traderonline.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('net.reach.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('al.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('koalanet.ne.jp', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tutzing.ccc.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('turu7.ee', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('Tuira-P1.suomi.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('atl.ga.us', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tmhaos04b.imsbiz.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tmf.co.in', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tm.net.my', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('terra-prime.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('codetel.net.do', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('supercache6.qualitynet.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('super.net.pk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('nl.aliant.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('clients.your-server.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('epm.net.co', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static-89-148-66-118.dunaweb.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('fbx.proxad.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('st-217-129-75-207.netvisao.pt', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('szukaj.onet.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('softbank220057180088.bbtec.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('softbank219049100139.bbtec.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('softbank219009184052.bbtec.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('softbank219007134007.bbtec.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('sfc-cr01.healthline.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('searchstat.rambler.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('s23057.evanzo-server.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('du.shawcable.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('biz.rr.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('reverse47.reserver.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('server.ntli.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('redman.ladoshki.ua', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rba-cache1-vif0.saix.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('193.in-addr.arpa', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dh.suddenlink.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cg.shawcable.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('prx.blockmenotnetwork.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('visp.net.lb', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('89-adsl.spbnit.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pppoe.avangard-dsl.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.forthnet.gr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('stlsmo.swbell.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rcsntx.swbell.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('toldoh.ameritech.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dialup.tiscali.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.qsc.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('fios.verizon.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('east.verizon.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl-w.verizon.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cis.UPENN.EDU', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('icm.edu.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pear17.comunitaesviluppo-busano.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pc208-22-lan.dabnet.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pass9.dizinc.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dip.t-dialin.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dip0.t-ipconnect.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('os10-priv-85-11-216-35.ornskoldsvik.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dyn.optonline.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km23144-19.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ns1.rootfolder.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ns1.hostingt.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km23108-04.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km22659-01.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km20935-13.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km20802-01.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km10329.keymachine.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('kv.wnet.ua', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ng4.cproxy.cz', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('netblock-66-245-233-162.dslextreme.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp.embarqhsd.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.tropolys.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('re3.yahoo.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mq.edu.au', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mc.videotron.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.videotron.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('MH-ESR1-72-49-61-74.fuse.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('meteoritov.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('netvision.net.il', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rrafn.rainyday.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.tds.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mail.way2find.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('sonaisali.com.fj', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lsearch01.griotte.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('localhost', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.proxad.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lm502039.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj910460.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj910457.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612590.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612589.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612588.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612587.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612585.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612584.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612583.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612582.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612581.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612579.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612578.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612577.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612576.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612575.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612574.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612573.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612572.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612569.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612568.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612565.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612564.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612561.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612559.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612558.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612557.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612555.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612554.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612553.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612552.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612551.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612550.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612549.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612548.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612547.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612546.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612537.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612526.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612515.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612514.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612389.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612367.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612355.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612340.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612339.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612335.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612334.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612333.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612331.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612330.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612328.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612327.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612326.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612325.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612324.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612323.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612322.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612320.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612318.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612317.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612316.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612315.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612312.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612311.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612310.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612308.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612307.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612305.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612304.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612302.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612301.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612298.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612297.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612296.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612295.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612294.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612293.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612292.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612291.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612290.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612289.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612288.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612287.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612286.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612284.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612283.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612281.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612279.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612278.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612277.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612276.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612275.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612274.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612273.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612272.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612271.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612270.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612269.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612268.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612267.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612265.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612264.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612263.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612262.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612261.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612260.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612258.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612257.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612254.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612253.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612251.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612250.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612249.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612248.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612247.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612246.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612245.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612244.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612242.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612241.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612240.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612239.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612238.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612237.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612236.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612235.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612233.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612231.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612230.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612227.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612226.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612224.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612223.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612222.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612220.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612219.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612218.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612216.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612215.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612214.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612211.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612210.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612209.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612208.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612207.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612206.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612205.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612204.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612202.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612200.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612199.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612197.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612196.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612195.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612194.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612193.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612191.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612189.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612188.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612187.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612184.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612183.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612182.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612181.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612178.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612177.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612176.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612175.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612173.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612172.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612171.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612170.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612169.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612168.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612167.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612165.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612164.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612163.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612162.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612161.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612160.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612159.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612158.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612157.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612153.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612152.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612149.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612148.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612146.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612145.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612144.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612143.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612142.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612141.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612140.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612139.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612137.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612133.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612132.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612131.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612130.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612129.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612128.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612127.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612126.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612125.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612124.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612123.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612122.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612121.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612120.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612119.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612118.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612116.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612115.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612114.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612113.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612111.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612110.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612108.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612107.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612106.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612105.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612104.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612102.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612099.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612098.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612096.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612095.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612094.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612093.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612092.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612091.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612090.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612088.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612087.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612086.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612083.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612082.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612080.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612079.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612076.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612074.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612072.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612071.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612070.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612069.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612068.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612066.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612063.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612062.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612061.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612057.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612056.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612055.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612053.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612052.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612051.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612047.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612045.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612044.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612043.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612041.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612039.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612038.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612037.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612036.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612033.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612030.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612029.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612028.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612027.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612024.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612022.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612021.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612020.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612019.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612018.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612016.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612015.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612014.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612013.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612011.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612010.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612009.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612004.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612001.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj612000.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611999.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611998.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611997.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611996.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611995.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611994.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611992.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611991.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611990.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611985.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611984.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611983.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611982.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611981.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611980.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611979.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611978.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611977.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611976.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611975.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611974.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611973.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611972.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611969.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611968.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611967.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611966.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611965.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611964.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611963.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611962.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611961.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611958.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611957.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611956.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611955.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611954.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611953.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611951.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611950.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611947.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611946.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611944.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611942.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611940.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611938.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611937.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611936.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611935.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611934.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611933.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611931.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611930.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611929.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611928.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611927.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611926.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611925.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611923.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611922.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611921.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611920.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611919.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611917.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611916.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611915.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611912.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611911.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611909.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611908.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611907.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611906.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611904.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611903.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611902.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611901.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611900.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611899.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611897.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611895.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611894.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611893.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611892.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611891.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611890.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611889.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611888.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611887.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611886.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611884.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611882.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611880.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611879.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611878.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611876.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611875.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611873.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611872.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611871.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611870.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611869.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611868.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611867.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611866.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611865.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611863.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611862.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611861.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611860.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611859.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611858.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611857.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611856.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611855.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611853.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611852.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611851.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611850.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611847.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611846.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611845.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611844.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611843.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611842.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611841.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611840.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611839.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611836.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611834.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611833.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611832.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611831.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611829.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611827.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611826.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611825.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611821.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611820.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611819.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611818.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611817.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611816.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611814.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611811.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611809.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611808.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611807.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611806.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611803.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611802.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611800.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611799.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611798.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611797.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611795.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611794.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611793.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611792.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611791.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611790.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611789.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611786.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611785.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611784.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611783.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611782.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611781.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611779.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611778.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611777.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611775.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611772.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611771.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611770.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611769.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611768.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611767.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611762.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611758.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611756.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611754.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611752.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611751.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611749.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611748.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611747.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611746.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611745.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611744.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611741.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611740.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611739.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611737.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611736.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611735.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611734.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611731.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611728.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611727.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611725.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611724.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611723.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611722.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611721.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611720.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611719.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611718.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611717.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611716.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611714.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611711.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611709.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611708.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611707.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611706.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611705.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611703.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611702.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611701.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611700.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611699.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611698.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611697.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611696.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611695.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611694.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611693.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611692.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611690.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611689.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611688.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611687.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611686.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611685.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611684.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611683.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611682.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611681.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611680.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611679.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611678.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611677.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611676.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611675.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611674.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611673.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611672.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611671.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611670.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611669.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611668.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611665.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611664.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611663.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611662.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611661.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611660.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611659.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611658.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611657.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611656.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611655.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611654.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611651.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611650.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611649.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611648.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611647.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611645.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611644.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611643.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611642.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611641.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611640.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611639.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611636.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611634.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611633.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611632.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611631.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611630.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611629.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611628.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611627.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611626.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611624.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611622.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611621.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611620.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611618.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611617.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611616.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611615.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611614.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611613.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611612.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611610.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611609.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611608.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611607.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611606.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611604.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611602.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611601.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611599.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611598.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611597.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611596.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611595.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611593.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611592.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611591.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611590.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611589.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611588.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611587.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611586.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611584.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611583.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611581.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611580.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611577.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611576.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611575.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611573.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611572.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611570.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611568.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611567.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611565.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611564.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611563.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611562.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611561.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611560.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611559.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611558.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611556.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611554.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611553.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611551.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611550.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611549.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611548.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611547.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611546.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611545.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611544.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611543.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611542.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611541.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611540.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611538.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611537.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611536.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611535.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611534.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611533.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611531.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611530.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611529.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611528.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611527.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611525.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611524.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611523.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611522.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611520.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611519.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611517.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611516.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611515.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611513.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611512.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611511.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611509.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611507.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611506.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611505.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611504.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611503.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611501.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611500.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611499.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611497.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611496.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611495.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611493.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611492.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611491.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611490.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611489.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611488.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611487.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611486.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611485.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611484.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611483.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611482.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611479.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611478.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611477.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611476.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611474.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611473.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611471.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611470.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611469.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611468.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611467.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611466.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611464.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611462.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611461.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611460.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611459.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611458.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611457.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611455.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611454.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611452.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611451.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611448.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611447.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611446.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611445.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611444.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611443.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611442.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611440.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611439.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611438.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611435.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611434.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611432.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611431.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611430.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611429.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611428.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611427.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611425.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611424.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611422.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611421.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611420.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611418.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611417.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611416.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611415.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611412.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611410.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611409.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611408.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611407.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611406.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611405.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611404.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611402.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611400.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611399.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611398.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611396.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611395.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611394.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611393.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611391.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611390.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611389.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611388.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611387.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611386.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611385.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611384.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611383.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611382.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611381.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611380.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611379.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611378.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611377.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611376.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611375.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611374.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611373.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611372.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611370.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611369.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611367.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611366.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611365.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611363.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611362.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611360.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611359.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611357.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611356.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611355.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611354.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611353.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611352.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611351.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611350.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611349.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611348.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611347.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611346.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611345.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611344.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611343.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611342.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611341.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611339.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611337.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611335.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611333.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611332.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611331.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611330.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611329.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611328.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611327.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611326.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611325.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611324.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611323.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611322.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611320.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611318.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611316.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611315.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611314.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611313.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611311.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611310.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611309.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611308.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611307.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611306.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611305.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611303.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611301.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611300.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611299.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611298.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611295.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611291.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611290.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611289.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611288.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611287.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611286.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611285.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611284.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611283.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611282.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611281.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611280.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611279.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611278.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611277.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611275.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611274.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611273.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611271.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611270.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611269.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611267.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611266.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611265.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611264.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611263.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611262.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611260.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611259.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611258.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611257.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611256.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611255.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611254.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611251.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611250.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611249.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611247.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611245.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611244.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611243.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611242.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611241.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611240.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611238.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611237.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611235.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611233.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611232.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611231.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611230.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611228.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611227.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611226.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611225.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611224.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611223.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611222.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611221.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611220.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611219.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611217.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611216.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611215.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611214.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611213.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611212.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611211.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611210.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611209.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611206.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611205.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611204.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611203.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611202.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611201.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611200.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611199.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611198.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611197.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611196.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611195.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611194.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611193.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611192.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611191.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611190.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611189.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611188.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611187.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611186.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611185.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611183.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611182.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611181.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611180.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611179.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611178.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611175.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611174.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611171.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611170.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611169.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611168.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611167.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611165.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611164.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611163.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611161.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611160.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611158.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611157.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611155.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611154.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611153.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611152.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611151.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611150.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611149.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611148.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611147.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611146.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611145.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611143.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611142.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611141.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611140.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611139.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611138.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611137.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611136.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611134.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611132.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611131.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611130.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611129.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611128.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611127.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611126.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611125.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611124.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611123.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611122.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611121.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611120.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611119.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611118.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611117.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611116.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611115.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611113.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611112.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611111.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611110.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611109.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611108.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611107.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611106.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611105.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611104.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611103.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611102.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611101.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611100.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611099.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611098.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611097.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611096.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611095.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611094.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611093.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611092.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611091.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611090.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611088.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611087.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611086.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611085.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611084.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611083.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611082.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611081.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611080.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611079.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611078.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611077.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611075.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611074.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611073.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611072.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611071.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611070.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611069.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611068.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611066.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611065.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611064.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611063.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611062.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611061.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611060.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611059.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611058.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611056.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611054.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611053.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611052.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611051.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611050.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611049.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611048.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611047.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611046.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611045.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611041.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611039.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611038.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611037.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611036.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611035.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611034.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611033.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611032.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611031.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611030.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611028.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611027.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611026.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611025.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611023.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611022.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611021.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611020.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611019.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611017.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611016.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611015.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611014.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611012.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611011.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611010.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611009.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611008.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611007.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611006.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611005.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611004.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611003.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611002.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611001.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj611000.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602341.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602340.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602339.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602335.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602330.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602328.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602324.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602323.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602322.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602318.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602315.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602314.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602307.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602305.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602304.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602302.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602301.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602299.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602298.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602296.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602294.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602292.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602291.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602290.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602285.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602284.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602283.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602282.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602279.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602275.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602274.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602273.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602272.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602269.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602268.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602267.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602266.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602264.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602261.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602258.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602257.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602256.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602255.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602253.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602248.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602247.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602244.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602239.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602238.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602234.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602231.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602230.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602227.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602223.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602221.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602219.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602217.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602214.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602210.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602207.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602205.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602198.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602194.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602192.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lj602190.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('net.microlink.lv', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('linux2000.plus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('comsat.net.ar', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pacific.net.in', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('km3.favo.tv', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('streaming.cesnet.cz', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('upc-j.chello.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ok.cox.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ks.cox.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ph.cox.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('at.cox.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('customer.algx.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl2.versatel.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip5457580f.direct-adsl.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('speed.planet.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip35.oriole.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('1413H-CUD12K-01.ish.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('1311C-CUD12K-03.ish.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('72.go-concepts.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('colo.iinet.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('metro.digiweb.ie', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rev.numericable.fr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('nyc.megapath.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip-122-152-129-14.asianetcom.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('euroexpert.tvnet.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('io.x-echo.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('i577BD5CA.versanet.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('i577ACFEC.versanet.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ki.iif.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('n.tc-exe.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('hsi.kabelbw.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('hrbc.hrblock.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dyn.oakland.edu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('retail.telecomitalia.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('business.telecomitalia.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range86-151.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range86-147.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range86-146.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range81-155.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range81-152.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('in-addr.btopenworld.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range81-129.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pool80180.interbusiness.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('range217-43.btcentralplus.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pool62211.interbusiness.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pool8291.interbusiness.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('216.atrianetworks.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('host-86-106-214-240.moldtelecom.md', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('host-84-9-95-144.bulldogdsl.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('host-84-9-81-87.bulldogdsl.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cust-adsl.tiscali.it', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('190.su29.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gdynia.mm.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('alestra.net.mx', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('link.com.eg', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('host-196-201-87-163.afnet.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('host-12-196-68-36.warpspeed1.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp.vt.edu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.speedlinq.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dial.ufamts.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gtcust.grouptelecom.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip.alltel.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('edu.on.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('upc-h.chello.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cust.port80.se', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gw12.virtues.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gw07.wh-stuttgart.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gw.karolyrobert.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gateway.sdnhm.org', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('64.krugle.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('fibernet.bacs-net.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('felzinga.demon.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('fandpmfg.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('jeeves.ask.info', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ev1s-209-85-54-147.ev1servers.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ev1s-207-44-180-92.ev1servers.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('egspd42414.ask.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('egspd42281.ask.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('egspd42207.ask.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('e82-103-132-227s.easyspeedy.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('upc-e.chello.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.alicedsl.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dynamic-acs-24-154-141-42.zoominternet.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('spy.dnainternet.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ppp.tiscali.fr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pools.arcor-ip.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ttnet.net.tr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pool.t-online.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('203.airtelbroadband.in', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp.inet.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('prod-empresarial.com.mx', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('prod-infinitum.com.mx', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ds701-002.eltel.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('compute.amazonaws.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp-209-159-229-93.bhfc.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('point.ne.jp', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cust.tele2.es', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('optusnet.com.au', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('access.telenet.be', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('try.wideopenwest.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('d-65-175-247-201.metrocast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('atnet.com.al', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('customer-side-elbasan-telecomalbania.al', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('customer-side-durres-telecomalbania.al', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('bos-static.gis.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501317.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501316.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501315.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501314.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501313.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501312.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501308.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501306.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501305.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501304.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501303.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501301.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501300.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501299.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501298.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501297.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501296.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501295.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501294.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501291.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501290.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501288.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501287.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501285.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501284.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501283.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501282.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501280.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501279.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501278.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501277.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501276.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501274.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501273.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501272.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501270.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501269.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501268.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501267.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501266.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501265.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501263.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501262.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501261.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501260.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501259.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501258.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501257.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501256.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501255.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501254.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501252.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501251.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501249.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501245.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501241.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501240.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501238.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501237.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501236.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501235.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501234.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501232.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501230.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501229.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501228.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501227.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501226.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501225.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501223.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501222.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501220.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501219.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501217.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501216.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501215.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501214.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501213.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501212.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501211.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501210.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501209.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501208.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501206.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501205.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501204.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501203.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501202.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501201.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501197.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501196.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501195.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501194.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501193.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501192.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501191.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501190.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501189.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501188.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501187.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501185.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501184.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501183.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501182.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501181.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501180.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501179.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501178.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501177.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501176.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501175.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501173.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501171.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501168.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501166.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501165.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501164.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501163.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501160.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501158.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501157.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501156.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501155.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501153.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501151.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501150.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501149.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501148.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501147.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501146.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501145.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501144.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501143.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501142.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501141.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501140.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501137.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501136.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501135.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501134.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501132.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501130.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501129.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501128.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501127.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501126.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501125.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501124.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501123.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501122.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501121.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501119.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501118.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501117.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501116.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501115.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501114.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501113.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501111.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501110.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501109.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501108.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501106.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501103.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501100.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501099.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501098.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501097.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501096.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501095.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501094.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501092.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501091.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501089.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501087.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501086.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501084.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501082.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501080.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501079.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501078.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501077.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501076.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501075.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501073.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501072.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501071.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501070.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501069.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501068.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501067.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501066.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501065.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501064.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501063.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501062.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501059.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501058.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501057.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501056.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501055.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501054.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501053.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501052.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501051.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501048.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501045.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501043.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501042.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501041.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501039.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501038.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501036.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501035.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501034.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501033.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501032.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501030.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501029.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501028.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501026.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501025.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501024.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501023.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501022.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501021.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501020.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501017.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501015.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501014.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501013.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501012.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501009.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501007.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501006.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501005.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501004.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501003.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501002.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501001.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ct501000.inktomisearch.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('csknet-83-142-57-246.csk.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cs-tor.bu.edu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('goo.ne.jp', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawler100.ask.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawl9.exabot.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawl-66-249-66-99.googlebot.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawl-66-249-65-50.googlebot.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('crawl-66-249-65-167.googlebot.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.rogers.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('customer.tele.dk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('res.rr.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('bigpond.net.au', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.ntl.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('colo-198-147.hostbizua.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('hkcable.com.hk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cm226-194.liwest.at', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('133.chello.no', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('187.chello.no', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('vie.surfer.at', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('celplay.com.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gr.home.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ov.home.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('catv.broadband.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cache1.morva.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cache.wanadoo.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('proxy.aol.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('kablonet.com.tr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable-static-87-245-102-36.shinternet.ch', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('virtua.com.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp.bluecom.no', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.wanadoo.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('upc-c.chello.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cust.bredbandsbolaget.se', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('nh.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tn.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('wv.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pa.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mi.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('il.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mo.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('va.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ky.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('al.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('fl.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('md.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('co.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ca.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mn.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ma.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('in.comcast.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('by1sch4030312.phx.gbl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.siol.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('alcom.aland.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('blk-89-198-173.eastlink.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.telepac.pt', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('internode.on.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.bell.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('abo.wanadoo.fr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('authorized_proxy4.cogeco.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.club-internet.fr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('arpa-jxq-ct-bj.sohu.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('arkady.indymedia.org', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('anonymizer.ccc.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('anonymisierungsdienst2.foebud.org', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('anon-tor-proxy.wuschelpuschel.org', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('iam.net.ma', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mia.bellsouth.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ipltin.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('applwi.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('emhril.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rcsntx.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('chcgil.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('sgnwmi.sbcglobal.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('irvnca.pacbell.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('chcgil.ameritech.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lgtpmi.ameritech.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('emhril.ameritech.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ipltin.ameritech.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('monradsl.monornet.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('shv.bellsouth.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('owb.bellsouth.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('asm.bellsouth.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('pns.bellsouth.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('addr-212-50-138-204.suomi.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gd.vnet.cn', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.tpnet.pl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ipt.aol.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('a81-197-54-47.elisa-laajakaista.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('upc-a.chello.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ipy.dnainternet.fi', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('staticIP.rima-tde.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('87.donpac.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('reverse.layeredtech.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('DED-DSL.fuse.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.theplanet.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('88-134-147-137-dynip.superkabel.de', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('bethere.co.uk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('no-dns-yet.enta.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('210.satgate.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.corbina.ru', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.t-2.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('gotadsl.co.uk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('zen.co.uk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('blueyonder.co.uk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.quicknet.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dynamic.orange.es', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.pipex.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tbcn.telia.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('user.ono.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('kj.up.ee', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('user.auna.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('nc.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dhcp.insightbb.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dyn.centurytel.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('tn.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('spkn.qwest.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('hlrn.qwest.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('albq.qwest.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip.ukrtel.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('san2.attens.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.snet.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mo.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ca.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('telkom.net.id', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.twtelecom.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('80.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('79.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('78.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('77.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('76.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('75.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('74.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('73.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('72.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('71.become.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dynamic.hinet.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rev.stofanet.dk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.enternet.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cable.casema.nl', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('west.asu.edu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('broadband6.iol.cz', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('customer.lyse.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('lkwnny.adelphia.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('mi.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('wi.charter.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dynamic.jazztel.es', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ucom.ne.jp', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('221-135-134-140.sify.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.exatt.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ds.nac.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('vsnl.net.in', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('reverse.newskies.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.as9105.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('211-232-85-241.nexg.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ebix.net.tw', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('144.svabuse.info', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('190.svabuse.info', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('109.svabuse.info', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.izoom.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ptr.primarydns.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('rev.gaoland.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dynamicIP.rima-tde.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('telemar.net.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('veloxzone.com.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('telesp.net.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('brasiltelecom.net.br', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.cantv.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static-ip.oleane.fr', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('cust.bluewin.ch', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip.adsl.hu', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('69-92-cpe.cableone.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('isp.belgacom.be', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('static.varnamo.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('net203.skekraft.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('123-web-host.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('client.mchsi.com', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dr.cgocable.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('217.in-addr.arpa', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ap.zero-isp.net', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('dsl.velcom.ca', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('acesso.oni.pt', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('iprimus.net.au', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl-dhcp.tele.dk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('adsl.cybercity.dk', 'isp');
INSERT INTO `nuke_blocked_isp` VALUES ('ip.net.ua', 'isp');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_isp_ban`
-- 

DROP TABLE IF EXISTS `nuke_blocked_isp_ban`;
CREATE TABLE `nuke_blocked_isp_ban` (
  `id` int(3) NOT NULL auto_increment,
  `isp` varchar(50) NOT NULL default '',
  `reason` text NOT NULL,
  `time` varchar(20) default NULL,
  `hits` int(11) NOT NULL default '0',
  `time_limit` varchar(20) default 'NO',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `isp` (`isp`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_isp_ban`
-- 

INSERT INTO `nuke_blocked_isp_ban` VALUES (1, 'search.live.com', 'mail.ru', '1171838071', 0, 'NO');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_notes`
-- 

DROP TABLE IF EXISTS `nuke_blocked_notes`;
CREATE TABLE `nuke_blocked_notes` (
  `id` int(11) NOT NULL auto_increment,
  `spec_notes` text,
  `id_locate` int(11) default NULL,
  `submitter` varchar(30) default NULL,
  `date` int(11) default NULL,
  `edited` varchar(250) default NULL,
  PRIMARY KEY  (`id`),
  KEY `id_locate` (`id_locate`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_notes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_pagetracker`
-- 

DROP TABLE IF EXISTS `nuke_blocked_pagetracker`;
CREATE TABLE `nuke_blocked_pagetracker` (
  `id` int(11) NOT NULL auto_increment,
  `id_tracker` int(11) default NULL,
  `last_page` varchar(250) default NULL,
  `page_date` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id_tracker` (`id_tracker`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_pagetracker`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_promod`
-- 

DROP TABLE IF EXISTS `nuke_blocked_promod`;
CREATE TABLE `nuke_blocked_promod` (
  `id` int(11) NOT NULL auto_increment,
  `promod` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_promod`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_promodip`
-- 

DROP TABLE IF EXISTS `nuke_blocked_promodip`;
CREATE TABLE `nuke_blocked_promodip` (
  `id` int(11) NOT NULL auto_increment,
  `promodip` varchar(40) default NULL,
  `promod_user` varchar(20) default NULL,
  `promod_user_mod` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `promodip` (`promodip`,`promod_user`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_promodip`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_protected`
-- 

DROP TABLE IF EXISTS `nuke_blocked_protected`;
CREATE TABLE `nuke_blocked_protected` (
  `id` int(11) NOT NULL auto_increment,
  `ip_protect` int(11) unsigned NOT NULL default '0',
  `user` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_protected`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_ref`
-- 

DROP TABLE IF EXISTS `nuke_blocked_ref`;
CREATE TABLE `nuke_blocked_ref` (
  `referer` varchar(150) NOT NULL default '',
  `type` varchar(15) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_ref`
-- 

INSERT INTO `nuke_blocked_ref` VALUES ('EmailSiphon', 'bad');
INSERT INTO `nuke_blocked_ref` VALUES ('Microsoft', 'bad');
INSERT INTO `nuke_blocked_ref` VALUES ('InternetSeer', 'bad');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_reflist`
-- 

DROP TABLE IF EXISTS `nuke_blocked_reflist`;
CREATE TABLE `nuke_blocked_reflist` (
  `id` int(11) NOT NULL auto_increment,
  `ps_referer` varchar(150) default NULL,
  `user` varchar(50) default NULL,
  `ip` int(11) unsigned NOT NULL default '0',
  `date` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_reflist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_robot`
-- 

DROP TABLE IF EXISTS `nuke_blocked_robot`;
CREATE TABLE `nuke_blocked_robot` (
  `id` int(11) NOT NULL auto_increment,
  `robot_ip` varchar(40) default NULL,
  `robot_host` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `robot_ip` (`robot_ip`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_robot`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_settings`
-- 

DROP TABLE IF EXISTS `nuke_blocked_settings`;
CREATE TABLE `nuke_blocked_settings` (
  `id` int(11) NOT NULL auto_increment,
  `banned_rows` tinyint(3) default NULL,
  `iplist_rows` tinyint(3) default NULL,
  `collapseprevious` char(3) NOT NULL default 'no',
  `enablepersist` char(3) NOT NULL default 'on',
  `java` tinyint(3) NOT NULL default '1',
  `enable_menu` tinyint(3) NOT NULL default '0',
  `radminblocker` tinyint(3) NOT NULL default '0',
  `s_user` varchar(30) default NULL,
  `img_color` varchar(10) NOT NULL default 'dark',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_settings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_ums`
-- 

DROP TABLE IF EXISTS `nuke_blocked_ums`;
CREATE TABLE `nuke_blocked_ums` (
  `id` int(11) NOT NULL auto_increment,
  `us_id` varchar(20) default NULL,
  `name` varchar(50) NOT NULL default '',
  `ua` varchar(150) NOT NULL default '',
  `us_ip` int(11) unsigned NOT NULL default '0',
  `us_ip_p` int(11) unsigned NOT NULL default '0',
  `last_seen` int(11) unsigned NOT NULL default '0',
  `ua_host` varchar(150) NOT NULL default '',
  `somthing` varchar(150) NOT NULL default '',
  `track` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `us_id` (`us_id`),
  UNIQUE KEY `us_id_2` (`us_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_ums`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocked_ums_page`
-- 

DROP TABLE IF EXISTS `nuke_blocked_ums_page`;
CREATE TABLE `nuke_blocked_ums_page` (
  `id` int(11) NOT NULL auto_increment,
  `us_id` int(11) NOT NULL default '0',
  `us_ip` int(11) unsigned NOT NULL default '0',
  `us_ip_p` int(11) unsigned NOT NULL default '0',
  `last_seen` int(11) unsigned NOT NULL default '0',
  `get` varchar(250) NOT NULL default '',
  `post` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocked_ums_page`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_blocks`
-- 

DROP TABLE IF EXISTS `nuke_blocks`;
CREATE TABLE `nuke_blocks` (
  `bid` int(10) NOT NULL auto_increment,
  `bkey` varchar(15) NOT NULL default '',
  `title` varchar(60) NOT NULL default '',
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `bposition` char(1) NOT NULL default '',
  `weight` int(10) NOT NULL default '1',
  `active` int(1) NOT NULL default '1',
  `refresh` int(10) NOT NULL default '0',
  `time` varchar(14) NOT NULL default '0',
  `blanguage` varchar(30) NOT NULL default '',
  `blockfile` varchar(255) NOT NULL default '',
  `view` int(1) NOT NULL default '0',
  `groups` text NOT NULL,
  `expire` varchar(14) NOT NULL default '0',
  `action` char(1) NOT NULL default '',
  `subscription` int(1) NOT NULL default '0',
  `display` varchar(255) NOT NULL default 'All',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_blocks`
-- 

INSERT INTO `nuke_blocks` VALUES (52, '', 'Navigation', '', '', 'l', 1, 1, 3600, '', 'english', 'block-Sommaire.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (3, '', 'Submissions', '', '', 'l', 3, 1, 1800, '', '', 'block-Admin_Submissions.php', 2, '', '0', 'd', 1, 'All');
INSERT INTO `nuke_blocks` VALUES (6, '', 'Support Platinum', '', '', 'r', 1, 1, 1800, '', '', 'block-Platinum_Support.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (8, '', 'Survey', '', '', 'r', 5, 1, 1800, '', '', 'block-Survey.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (9, '', 'Shout Box', '', '', 'l', 4, 1, 0, '', '', 'block-Shout_Box.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (12, '', 'PHP-Nuke Platinum Installed!', '', '', 'c', 1, 1, 1800, '', '', 'block-Install.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (13, '', 'Supporters', '', '', 'c', 3, 1, 0, '', '', 'block-Supporters_Rt.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (15, 'userbox', 'User''s Custom Box', '', '', 'r', 2, 1, 0, '', '', '', 1, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (20, '', 'Visitor''s Location', '', '', 'r', 4, 1, 1800, '', 'english', 'block-Who-is-Where.php', 1, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (56, '', 'Hacker Beware', '', '', 'd', 1, 1, 3600, '', 'english', 'block-Hacker_Beware.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (57, '', 'Latest Discussions', '', '', 'c', 4, 1, 3600, '', 'english', 'block-ForumsCollapsing.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (32, '', 'Member Info', '', '', 'r', 3, 1, 0, '', '', 'block-CZUser-Info.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (37, '', 'Tutorials', '', '', 'l', 6, 1, 3600, '', '', 'block-SimpleTutorials.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (39, '', 'Bans', '', '', 'l', 5, 1, 0, '', '', 'block-fusionban.php', 0, '', '0', 'd', 1, 'All');
INSERT INTO `nuke_blocks` VALUES (54, '', 'Link Us', '', '', 'r', 7, 1, 3600, '', 'english', 'block-Link-us.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (45, '', 'Theme Design', '', '', 'c', 2, 1, 0, '', 'english', 'block-Advertising_Block_Center_22.php', 0, '', '0', 'd', 0, 'All');
INSERT INTO `nuke_blocks` VALUES (49, '', 'Admin Navigation', '', '', 'l', 2, 1, 3600, '', 'english', 'block-Advanced_Administration.php', 2, '', '0', 'd', 0, 'All');

DROP TABLE IF EXISTS `nuke_cnbya_config`;
CREATE TABLE `nuke_cnbya_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` longtext,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_cnbya_config`
-- 

INSERT INTO `nuke_cnbya_config` VALUES ('sendaddmail', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('senddeletemail', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('allowuserdelete', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('allowusertheme', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('allowuserreg', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('allowmailchange', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('emailvalidate', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('requireadmin', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('servermail', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('useactivate', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('usegfxcheck', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('autosuspend', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('perpage', '100');
INSERT INTO `nuke_cnbya_config` VALUES ('expiring', '86400');
INSERT INTO `nuke_cnbya_config` VALUES ('nick_min', '3');
INSERT INTO `nuke_cnbya_config` VALUES ('nick_max', '20');
INSERT INTO `nuke_cnbya_config` VALUES ('pass_min', '3');
INSERT INTO `nuke_cnbya_config` VALUES ('pass_max', '25');
INSERT INTO `nuke_cnbya_config` VALUES ('bad_mail', 'mysite.com\r\nyoursite.com');
INSERT INTO `nuke_cnbya_config` VALUES ('bad_nick', 'adm\r\nadmin\r\nan?nimo\r\nanonimo\r\nanonymous\r\ngod\r\nlinux\r\nnobody\r\noperator\r\nroot\r\nstaff\r\nwebmaster');
INSERT INTO `nuke_cnbya_config` VALUES ('coppa', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('tos', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('cookiecheck', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('cookietimelife', '31104000');
INSERT INTO `nuke_cnbya_config` VALUES ('cookiepath', '');
INSERT INTO `nuke_cnbya_config` VALUES ('cookieinactivity', '-');
INSERT INTO `nuke_cnbya_config` VALUES ('autosuspendmain', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('version', '4.4.3');
INSERT INTO `nuke_cnbya_config` VALUES ('codesize', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('cookiecleaner', '1');
INSERT INTO `nuke_cnbya_config` VALUES ('tosall', '0');
INSERT INTO `nuke_cnbya_config` VALUES ('doublecheckemail', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_cnbya_field`
-- 

DROP TABLE IF EXISTS `nuke_cnbya_field`;
CREATE TABLE `nuke_cnbya_field` (
  `fid` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default 'field',
  `value` varchar(255) default NULL,
  `size` int(3) default NULL,
  `need` int(1) NOT NULL default '1',
  `pos` int(3) default NULL,
  `public` int(1) NOT NULL default '1',
  PRIMARY KEY  (`fid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_cnbya_field`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_cnbya_tos`
-- 

DROP TABLE IF EXISTS `nuke_cnbya_tos`;
CREATE TABLE `nuke_cnbya_tos` (
  `id` int(11) NOT NULL auto_increment,
  `data` text NOT NULL,
  `status` tinyint(4) NOT NULL default '0',
  `des` text NOT NULL,
  `language` varchar(25) NOT NULL default '',
  `time` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_cnbya_tos`
-- 

INSERT INTO `nuke_cnbya_tos` VALUES (1, '<p><font class="content"><b>1. Acceptance of Terms of Use and Amendments</b><br>\r\nEach time you use or cause access to this web site, you agree to be bound by \r\nthese Terms of Use, and as amended from time to time with or without notice to \r\nyou. In addition, if you are using a particular service on or through this web \r\nsite, you will be subject to any rules or guidelines applicable to those \r\nservices and they shall be incorporated by reference into these Terms of Use. \r\nPlease see our\r\n<a href="modules.php?name=Docs&file=privacy" target="_blank">\r\nPrivacy Statement</a>, which is incorporated into these Terms of Use by \r\nreference.<br>\r\n<br>\r\n<b>2. Our Service</b><br>\r\nOur web site and services provided to you on and through our web site on an AS \r\nIS basis.You agree that the owners of this web site exclusively reserve the \r\nright and may, at any time and without notice and any liability to you, modify \r\nor discontinue this web site and its services or delete the data you provide, \r\nwhether temporarily or permanently. We shall have no responsibilty or liability \r\nfor the timeliness, deletion, failure to store, inaccuracy, or improper delivery \r\nof any data or information.<br>\r\n<br>\r\n<b>3. Your Responsibilities and Registration Obligations</b><br>\r\nIn order to use this web site, you must register on our site, agree to provide \r\ntruthful information when requested, and be at least the age of thirteen (13) or \r\nolder. When registering, you explicitly agree to our Terms of Use and as may be \r\nmodified by us from time to time and available here.<br>\r\n<br>\r\n<b>4. Privacy Policy</b><br>\r\nRegistration data and other personally identifiable information that we may \r\ncollect is subject to the terms of our\r\n<a href="modules.php?name=Docs&file=privacy" target="_blank">\r\nPrivacy Statement</a>.<br>\r\n<br>\r\n<b>5. Registration and Password</b><br>\r\nYou are responsible to maintain the confidentiality of your password and shall \r\nbe responsible for all uses via your registration and/or login, whether \r\nauthorized or unauthorized by you. You agree to immediately notify us of any \r\nunauthorized use or your registration, user account or password.<br>\r\n<br>\r\n<b>6. Your Conduct</b><br>\r\nYou agree that all information or data of any kind, whether text, software, \r\ncode, music or sound, photographs or graphics, video or other materials \r\n(Content), publicly or privately provided, shall be the sole responsibility of \r\nthe person providing the Content or the person whose user account is used. You \r\nagree that our web site may expose you to Content that may be objectionable or \r\noffensive. We shall not be responsible to you in any way for the Content that \r\nappears on this web site nor for any error or omission.<br>\r\n<br>\r\nYou explicitly agree, in using this web site or any service provided, that you \r\nshall not:<br>\r\n<br>\r\n<b>(a)</b> Provide any Content or perform any conduct that may be unlawful, \r\nillegal, threatening, harmful, abusive, harassing, stalking, tortious, \r\ndefamatory, libelous, vulgar, obscene, offensive, objectionable, pornographic, \r\ndesigned to or does interfere or interrupt this web site or any service \r\nprovided, infected with a virus or other destructive or deleterious programming \r\nroutine, give rise to civil or criminal liability, or which may violate an \r\napplicable local, national or international law;<br>\r\n<b>(b)</b> Impersonate or misrepresent your association with any person or \r\nentity, or forge or otherwise seek to conceal or misrepresent the origin of any \r\nContent provided by you;<br>\r\n<b>(c)</b> Collect or harvest any data about other users;<br>\r\n<b>(d)</b> Provide or use this web site and any Content or service in any \r\ncommercial manner or in any manner that would involve junk mail, spam, chain \r\nletters, pyramid schemes, or any other form of unauthorized advertising without \r\nour prior written consent;<br>\r\n<b>(e)</b> Provide any Co\r\n\r\nnt\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nent that may give rise to our civil or criminal \r\nliability or which may consititue or be considered a violation of any local, \r\nnational or international law, including but not limited to laws relating to \r\ncopyright, trademark, patent, or trade secrets.<br>\r\n<br>\r\n<b>7. Submission of Content on this Web Site</b><br>\r\nBy providing any Content to our web site:<br>\r\n<b>(a)</b> you agree to grant to us a worldwide, royalty-free, perpetual, \r\nnon-exclusive right and license (including any moral rights or other necessary \r\nrights) to use, display, reproduce, modify, adapt, publish, distribute, perform, \r\npromote, archive, translate, and to create derivative works and compilations, in \r\nwhole or in part. Such license will apply with respect to any form, media, \r\ntechnology known or later developed;<br>\r\n<b>(b)</b> you warrant and represent that you have all legal, moral, and other \r\nrights that may be necessary to grant us with the license set forth in this \r\nSection 7;<br>\r\n<b>(c)</b> you acknowledge and agree that we shall have the right (but not \r\nobligation), in our sole discretion, to refuse to publish or to remove or block \r\naccess to any Content you provide at any time and for any reason, with or \r\nwithout notice.<br>\r\n<br>\r\n<b>8. Third Party Services</b><br>\r\nGoods and services of third parties may be advertised and/or made available on \r\nor through this web site. Representations made regarding products and services \r\nprovided by third parties are governed by the policies and representations made \r\nby these third parties. We shall not be liable for or responsible in any manner \r\nfor any of your dealings or interaction with third parties.<br>\r\n<br>\r\n<b>9. Indemnification</b><br>\r\nYou agree to indemnify and hold us harmless, our subsidiaries, affiliates, \r\nrelated parties, officers, directors, employees, agents, independent \r\ncontractors, advertisers, partners, and co-branders from any claim or demand, \r\nincluding reasonable attorney''s fees, that may be made by any third party, that \r\nis due to or arising out of your conduct or connection with this web site or \r\nservice, your provision of Content, your violation of this Terms of Use or any \r\nother violation of the rights of another person or party.<br>\r\n<br>\r\n<b>10. DISCLAIMER OF WARRANTIES</b><br>\r\nYOU UNDERSTAND AND AGREE THAT YOUR USE OF THIS WEB SITE AND ANY SERVICES OR \r\nCONTENT PROVIDED (THE SERVICE) IS MADE AVAILABLE AND PROVIDED TO YOU AT YOUR OWN \r\nRISK. IT IS PROVIDED TO YOU AS IS AND WE EXPRESSLY DISCLAIM ALL WARRANTIES OF \r\nANY KIND, IMPLIED OR EXPRESS, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF \r\nMERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.<br>\r\n<br>\r\nWE MAKE NO WARRANTY, IMPLIED OR EXPRESS, THAT ANY PART OF THE SERVICE WILL BE \r\nUNINTERRUPTED, ERROR-FREE, VIRUS-FREE, TIMELY, SECURE, ACCURATE, RELIABLE, OF \r\nANY QUALITY, NOR THAT ANY CONTENT IS SAFE IN ANY MANNER FOR DOWNLOAD. YOU \r\nUNDERSTAND AND AGREE THAT NEITHER US NOR ANY PARTICIPANT IN THE SERVICE PROVIDES \r\nPROFESSIONAL ADVICE OF ANY KIND AND THAT USE OF SUCH ADVICE OR ANY OTHER \r\nINFORMATION IS SOLELY AT YOUR OWN RISK AND WITHOUT OUR LIABILITY OF ANY KIND.<br>\r\n<br>\r\nSome jurisdictions may not allow disclaimers of implied warranties and the above \r\ndisclaimer may not apply to you only as it relates to implied warranties.<br>\r\n<br>\r\n<b>11. LIMITATION OF LIABILITY</b><br>\r\nYOU EXPRESSLY UNDERSTAND AND AGREE THAT WE SHALL NOT BE LIABLE FOR ANY DIRECT, \r\nINDIRECT, SPECIAL, INDICENTAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES, INCLUDING BUT \r\nNOT LIMITED TO, DAMAGES FOR LOSS OF PROFITS, GOODWILL, USE, DATA OR OTHER \r\nINTANGIBLE LOSS (EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH \r\nDAMAGES), RESULTING FROM OR ARISING OUT OF (I) THE USE OF OR THE INABILITY TO \r\nUSE THE SERVICE, (II) THE COST TO OBTAIN SUBSTITUTE GOODS AND/OR SERVICES \r\nRESULTING FROM ANY TRANSACTION ENTERED INTO ON THROUGH THE SERVICE, (III) \r\nUNAUTHORIZED ACCESS TO OR ALTER\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nATIO\r\n\r\n\r\n\r\n\r\nN OF YOUR DATA TRANSMISSIONS, (IV) STATEMENTS \r\nOR CONDUCT OF ANY THIRD PARTY ON THE SERVICE, OR (V) ANY OTHER MATTER RELATING \r\nTO THE SERVICE.<br>\r\n<br>\r\nIn some jurisdictions, it is not permitted to limit liability and therefore such \r\nlimitations may not apply to you.<br>\r\n<br>\r\n<b>12. Reservation of Rights</b><br>\r\nWe reserve all of our rights, including but not limited to any and all \r\ncopyrights, trademarks, patents, trade secrets, and any other proprietary right \r\nthat we may have in our web site, its content, and the goods and services that \r\nmay be provided. The use of our rights and property requires our prior written \r\nconsent. We are not providing you with any implied or express licenses or rights \r\nby making services available to you and you will have no rights to make any \r\ncommercial uses of our web site or service without our prior written consent.<br>\r\n<br>\r\n<b>13. Applicable Law</b><br>\r\nYou agree that this Terms of Use and any dispute arising out of your use of this \r\nweb site or our products or services shall be governed by and construed in \r\naccordance with local laws where the headquarters of the owner of this web site \r\nis located, without regard to its conflict of law provisions. By registering or \r\nusing this web site and service you consent and submit to the exclusive \r\njurisdiction and venue of the county or city where the headquarters of the owner \r\nof this web site is located.<br>\r\n<br>\r\n<b>14. Miscellaneous Information</b><br>\r\n<b>(i)</b> In the event that this Terms of Use conflicts with any law under \r\nwhich any provision may be held invalid by a court with jurisdiction over the \r\nparties, such provision will be interpreted to reflect the original intentions \r\nof the parties in accordance with applicable law, and the remainder of this \r\nTerms of Use will remain valid and intact;<br>\r\n<b>(ii)</b> The failure of either party to assert any right under this Terms of \r\nUse shall not be considered a waiver of any that party''s right and that right \r\nwill remain in full force and effect;<br>\r\n<b>(iii)</b> You agree that without regard to any statue or contrary law that \r\nany claim or cause arising out of this web site or its services must be filed \r\nwithin one (1) year after such claim or cause arose or the claim shall be \r\nforever barred;<br>\r\n<b>(iv)</b> We may assign our rights and obligations under this Terms of Use and \r\nwe shall be relieved of any further obligation.<br>\r\n </font></p>\r\n', 1, 'Default TOS', 'english', '2004-12-06 06:10');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_cnbya_value`
-- 

DROP TABLE IF EXISTS `nuke_cnbya_value`;
CREATE TABLE `nuke_cnbya_value` (
  `vid` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `fid` int(10) NOT NULL default '0',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`vid`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_cnbya_value`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_cnbya_value_temp`
-- 

DROP TABLE IF EXISTS `nuke_cnbya_value_temp`;
CREATE TABLE `nuke_cnbya_value_temp` (
  `vid` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `fid` int(10) NOT NULL default '0',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`vid`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_credits`;
CREATE TABLE `nuke_credits` (
  `credit_id` int(11) NOT NULL auto_increment,
  `credit_name` varchar(60) default NULL,
  `credit_author` varchar(20) default NULL,
  `credit_link` varchar(30) default NULL,
  `credit_description` text,
  PRIMARY KEY  (`credit_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_credits`
-- 

INSERT INTO `nuke_credits` VALUES (1, 'Site Credits', 'Telli', 'http://codezwiz.com', 'Site Credits version 1.0. Add all your site credits in one spot. Give credit to the people who work to give you great add-on''s and support for them. ');
INSERT INTO `nuke_credits` VALUES (2, 'Original Platinum 7.6 Core', 'TechGFX-Graeme Allen', 'No Longer Available', 'The PHP-Nuke Platinum project is a package of PHP-Nuke default  with over 100 preinstalled mods and security fixes all in one  free package.');
INSERT INTO `nuke_credits` VALUES (3, 'Platinum 7.6.b +', 'Loki-Scott Partee', 'http://www.futurenuke.com', 'Heavily updated version of Platinum with added security and  several updated Mods.');
INSERT INTO `nuke_credits` VALUES (4, 'New Themes', 'Gazzasan', 'http://www.artofgaming.co.uk', 'A very nice Fast loading themes designed specifically for the latest release of Platinum.  The AOG themes were designed by Gazzasan at http://www.artofgaming.co.uk');
INSERT INTO `nuke_credits` VALUES (5, 'Updated Link Us Mod', 'Killigan&Lonestar', 'http://www.darkforgegfx.com', 'This mod allows you to add your favorite links along with images through its own admin control panel.  Very Nice layout.  This mod was created by Lonestar & Killigan  @  www.darkforgegfx.com.');
INSERT INTO `nuke_credits` VALUES (6, 'Coding and Beta Testing', 'Loki', 'http://www.futurenuke.com', 'I want to thank all the coders and support from the Futurenuke team without which this project would have died out long ago.  Thank you Killigan, Gazzasan, Lonestar, F13Eagle, R3viv0r, sdmeir, djantty, jtf, Keith, S4pp3r, Dauthus, SnowSFO, Bayler and Bort.     Also for the members to helped in the bug tracking and support.');
INSERT INTO `nuke_credits` VALUES (7, 'New Fields addition', 'arnoldkrg', 'http://www.ulsoft.scarbridge.c', 'A special thanks to Kenneth Arnold aka arnoldkrg  @  http://www.ulsoft.scarbridge.co.uk for his assistance in integrating his Add Fields mod into the Forum posts, profile area, Your Account Module and registration area.  This was a much needed addition.    ');
INSERT INTO `nuke_credits` VALUES (8, 'New Security Code', 'Raven & Technocrat.', 'http://ravenphpscripts.com/ind', 'Thanks to Raven and Technocrat for creating a new security code system that actually works on newer version of PHP .  ');
INSERT INTO `nuke_credits` VALUES (9, 'Nuke SEO and WYSIWYG Editors', 'Kevin Guske', 'http://nukeseo.com', 'Thanks to Kevin Guske    http://nukeseo.com for his work on these excellent addons.');
INSERT INTO `nuke_credits` VALUES (10, 'CZUser Members Block and Control Panel', 'Lonestar', 'http://www.xxxbrigade.us', 'Thanks to Telli for the initial mod and to Lonestar for his extreme modifications and administration panel for it.');
INSERT INTO `nuke_credits` VALUES (11, 'Ajax-Modules_admin_V04_Platinum_beta', 'aman', 'http://www.aman.38.com/phpnuke', 'This is an awsum mod that integrates Ajax coding into the Modules Administration.  This addon was designed by aman from http://www.aman.38.com/phpnuke/    aman also integrated the NSN groups mod so all modules can now be assigned protected access to any groups you create.  A much needed addition.   ');
INSERT INTO `nuke_credits` VALUES (12, 'Admin Control Panel Icons', 'Vahid216', 'http://afagh.biz/', 'Thanks to Vahid216 for his admin icons he contributed for 7.6.b.5.  ');
INSERT INTO `nuke_credits` VALUES (13, 'All other addons', 'Loki', 'http://www.nukeplanet.com', 'There are so many more addons that it would take me all day to list them. Thanks for all the other mod creators. I apologize for not listing you if I have included your mod.');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_czuser`
-- 

DROP TABLE IF EXISTS `nuke_czuser`;
CREATE TABLE `nuke_czuser` (
  `id` int(9) NOT NULL auto_increment,
  `show_lost_pw` varchar(10) NOT NULL default '',
  `show_online_total` varchar(10) NOT NULL default '',
  `show_pm` varchar(10) NOT NULL default '',
  `waiting` varchar(10) NOT NULL default '',
  `user_gc` varchar(10) NOT NULL default '',
  `groups` varchar(10) NOT NULL default '',
  `posts` varchar(10) NOT NULL default '',
  `avatars` varchar(10) NOT NULL default '',
  `bbranks` varchar(10) NOT NULL default '',
  `showmost` varchar(10) NOT NULL default '',
  `showstaffonline` varchar(10) NOT NULL default '',
  `show_hits` varchar(10) NOT NULL default '',
  `show_ip` varchar(10) NOT NULL default '',
  `shortnames` varchar(10) NOT NULL default '',
  `tooltip` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_czuser`
-- 

INSERT INTO `nuke_czuser` VALUES (1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_czuser_botlist`
-- 

DROP TABLE IF EXISTS `nuke_czuser_botlist`;
CREATE TABLE `nuke_czuser_botlist` (
  `bot_id` int(5) unsigned zerofill NOT NULL auto_increment,
  `bot_ip` varchar(15) NOT NULL default '',
  `bot_name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`bot_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_czuser_botlist`
-- 

INSERT INTO `nuke_czuser_botlist` VALUES (00001, '128.177.243', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00002, '128.177.244.100', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00003, '128.177.244.86', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00004, '194.112.94.250', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00005, '194.112.94.251', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00006, '194.112.94.252', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00007, '194.201.146.1', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00008, '194.201.146.24', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00009, '194.221.84.11', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00010, '194.221.84.15', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00011, '194.221.84.31', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00012, '194.221.84.32', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00013, '194.221.84.33', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00014, '194.221.84.34', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00015, '194.221.84.38', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00016, '194.221.84.39', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00017, '194.221.84.40', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00018, '194.221.84.41', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00019, '194.51.33.72', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00020, '204.123.13.36', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00021, '204.123.13.65', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00022, '204.123.13.66', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00023, '204.123.2', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00024, '204.123.28.10', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00025, '204.123.28.11', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00026, '204.123.28.20', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00027, '204.123.28.21', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00028, '204.123.28.27', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00029, '204.123.28.30', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00030, '204.123.28.31', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00031, '204.123.28.32', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00032, '204.123.28.33', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00033, '204.123.9', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00034, '204.152.190', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00035, '204.152.191', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00036, '205.229.83.18', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00037, '208.185.243.148', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00038, '208.221.32', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00039, '208.221.35.200', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00040, '208.221.35.201', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00041, '208.221.35.202', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00042, '208.221.35.203', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00043, '208.221.35.204', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00044, '208.221.35.205', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00045, '208.221.35.206', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00046, '208.221.35.207', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00047, '209.247.40.246', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00048, '209.73.160.1', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00049, '209.73.160.250', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00050, '209.73.160.254', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00051, '209.73.162', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00052, '209.73.164', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00053, '209.73.174.250', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00054, '209.73.174.251', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00055, '209.73.180', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00056, '212.187.213.171', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00057, '212.187.213.172', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00058, '212.187.213.173', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00059, '212.187.213.174', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00060, '212.187.213.175', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00061, '212.187.226', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00062, '212.187.226.42', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00063, '212.187.226.83', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00064, '212.187.226.84', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00065, '212.187.226.85', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00066, '212.187.226.87', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00067, '212.187.226.88', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00068, '212.187.226.93', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00069, '212.187.226.99', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00070, '212.187.227', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00071, '216.39.48', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00072, '216.39.50', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00073, '216.39.51', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00074, '216.198.200.119', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00075, '64.152.75', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00076, '66.17.148.128', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00077, '66.17.148.129', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00078, '66.17.148.130', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00079, '66.17.148.131', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00080, '66.17.148.132', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00081, '66.17.148.133', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00082, '66.17.148.134', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00083, '66.17.148.135', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00084, '66.17.148.136', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00085, '66.17.148.137', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00086, '66.17.148.138', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00087, '66.17.148.139', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00088, '66.17.148.140', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00089, '66.17.148.141', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00090, '66.17.148.142', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00091, '66.17.148.143', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00092, '66.17.148.144', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00093, '66.17.148.145', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00094, '66.17.148.146', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00095, '66.17.148.147', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00096, '66.17.148.148', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00097, '66.17.148.149', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00098, '66.17.148.150', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00099, '66.17.148.151', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00100, '66.17.148.152', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00101, '66.17.148.153', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00102, '66.17.148.154', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00103, '66.17.148.155', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00104, '66.17.148.156', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00105, '66.17.148.157', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00106, '66.17.148.158', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00107, '66.17.148.159', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00108, '66.17.148.160', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00109, '66.17.148.161', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00110, '66.17.148.162', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00111, '66.17.148.163', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00112, '66.17.148.164', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00113, '66.17.148.165', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00114, '66.17.148.166', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00115, '66.17.148.167', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00116, '66.17.148.168', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00117, '66.17.148.169', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00118, '66.17.148.170', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00119, '66.17.148.171', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00120, '66.17.148.172', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00121, '66.17.148.173', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00122, '66.17.148.174', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00123, '66.17.148.175', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00124, '66.17.148.176', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00125, '66.17.148.177', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00126, '66.17.148.178', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00127, '66.17.148.179', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00128, '66.17.148.180', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00129, '66.17.148.181', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00130, '66.17.148.182', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00131, '66.17.148.183', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00132, '66.17.148.184', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00133, '66.17.148.185', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00134, '66.17.148.186', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00135, '66.17.148.187', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00136, '66.17.148.188', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00137, '66.17.148.189', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00138, '66.17.148.190', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00139, '66.17.148.191', 'Alta Vista');
INSERT INTO `nuke_czuser_botlist` VALUES (00140, '140.239.126.13', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00141, '140.239.251.220', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00142, '140.239.251.221', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00143, '140.239.251.222', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00144, '140.239.251.223', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00145, '140.239.251.224', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00146, '140.239.251.230', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00147, '207.204.132.233', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00148, '207.204.132.234', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00149, '208.178.104.55', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00150, '209.67.252.197', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00151, '209.67.252.199', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00152, '209.67.252.211', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00153, '209.67.252.212', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00154, '209.67.252.213', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00155, '209.67.252.214', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00156, '209.67.252.215', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00157, '209.67.252.216', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00158, '211.13.230.249', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00159, '216.200.130.200', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00160, '216.200.130.201', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00161, '216.200.130.202', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00162, '216.200.130.203', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00163, '216.200.130.204', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00164, '216.200.130.205', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00165, '216.200.130.206', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00166, '216.200.130.207', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00167, '216.200.130.208', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00168, '216.200.130.209', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00169, '216.200.130.210', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00170, '216.200.130.242', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00171, '216.200.130.244', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00172, '216.200.130.245', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00173, '216.200.130.246', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00174, '216.200.130.248', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00175, '216.200.130.249', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00176, '216.200.130.26', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00177, '216.200.130.77', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00178, '216.200.130.78', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00179, '216.200.130.79', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00180, '216.200.130.85', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00181, '216.200.130.86', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00182, '216.200.130.87', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00183, '216.200.130.88', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00184, '216.200.130.89', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00185, '216.34.121.100', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00186, '216.34.121.18', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00187, '216.34.121.19', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00188, '216.34.121.31', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00189, '216.34.121.32', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00190, '216.34.121.33', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00191, '216.34.121.34', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00192, '216.34.121.67', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00193, '216.34.121.68', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00194, '63.236.92.143', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00195, '63.236.92.144', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00196, '63.236.92.145', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00197, '63.236.92.146', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00198, '63.236.92.147', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00199, '63.236.92.148', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00200, '63.236.92.149', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00201, '63.236.92.150', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00202, '63.236.92.151', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00203, '63.236.92.152', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00204, '63.236.92.153', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00205, '64.55.148.37', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00206, '64.55.148.38', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00207, '64.55.148.39', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00208, '64.55.148.43', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00209, '64.55.148.44', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00210, '64.55.148.45', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00211, '64.55.148.50', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00212, '64.55.148.51', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00213, '64.55.148.52', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00214, '64.55.148.53', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00215, '64.55.148.54', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00216, '65.192.195.0', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00217, '65.192.195.1', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00218, '65.192.195.10', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00219, '65.192.195.11', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00220, '65.192.195.12', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00221, '65.192.195.13', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00222, '65.192.195.14', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00223, '65.192.195.15', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00224, '65.192.195.16', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00225, '65.192.195.17', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00226, '65.192.195.18', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00227, '65.192.195.19', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00228, '65.192.195.2', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00229, '65.192.195.20', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00230, '65.192.195.21', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00231, '65.192.195.22', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00232, '65.192.195.23', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00233, '65.192.195.24', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00234, '65.192.195.25', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00235, '65.192.195.26', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00236, '65.192.195.27', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00237, '65.192.195.28', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00238, '65.192.195.29', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00239, '65.192.195.3', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00240, '65.192.195.30', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00241, '65.192.195.31', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00242, '65.192.195.4', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00243, '65.192.195.5', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00244, '65.192.195.6', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00245, '65.192.195.7', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00246, '65.192.195.8', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00247, '65.192.195.9', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00248, '65.214.32.173', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00249, '65.214.36.100', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00250, '65.214.36.101', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00251, '65.214.36.102', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00252, '65.214.36.103', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00253, '65.214.36.104', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00254, '65.214.36.105', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00255, '65.214.36.106', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00256, '65.214.36.107', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00257, '65.214.36.108', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00258, '65.214.36.109', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00259, '65.214.36.110', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00260, '65.214.36.111', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00261, '65.214.36.112', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00262, '65.214.36.113', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00263, '65.214.36.114', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00264, '65.214.36.115', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00265, '65.214.36.116', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00266, '65.214.36.117', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00267, '65.214.36.118', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00268, '65.214.36.119', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00269, '65.214.36.12', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00270, '65.214.36.120', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00271, '65.214.36.121', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00272, '65.214.36.122', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00273, '65.214.36.123', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00274, '65.214.36.125', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00275, '65.214.36.126', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00276, '65.214.36.127', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00277, '65.214.36.128', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00278, '65.214.36.129', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00279, '65.214.36.140', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00280, '65.214.36.141', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00281, '65.214.36.142', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00282, '65.214.36.143', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00283, '65.214.36.144', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00284, '65.214.36.145', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00285, '65.214.36.146', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00286, '65.214.36.147', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00287, '65.214.36.148', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00288, '65.214.36.149', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00289, '65.214.36.150', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00290, '65.214.36.151', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00291, '65.214.36.152', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00292, '65.214.36.153', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00293, '65.214.36.154', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00294, '65.214.36.155', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00295, '65.214.36.156', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00296, '65.214.36.157', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00297, '65.214.36.158', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00298, '65.214.36.159', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00299, '65.214.36.160', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00300, '65.214.36.161', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00301, '65.214.36.162', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00302, '65.214.36.163', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00303, '65.214.36.164', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00304, '65.214.36.165', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00305, '65.214.36.166', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00306, '65.214.36.167', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00307, '65.214.36.168', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00308, '65.214.36.169', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00309, '65.214.36.175', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00310, '65.214.36.176', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00311, '65.214.36.177', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00312, '65.214.36.178', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00313, '65.214.36.179', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00314, '65.214.36.185', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00315, '65.214.36.196', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00316, '65.214.36.197', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00317, '65.214.36.198', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00318, '65.214.36.199', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00319, '65.214.36.20', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00320, '65.214.36.201', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00321, '65.214.36.203', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00322, '65.214.36.205', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00323, '65.214.36.206', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00324, '65.214.36.207', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00325, '65.214.36.21', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00326, '65.214.36.210', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00327, '65.214.36.211', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00328, '65.214.36.212', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00329, '65.214.36.215', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00330, '65.214.36.216', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00331, '65.214.36.217', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00332, '65.214.36.218', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00333, '65.214.36.219', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00334, '65.214.36.22', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00335, '65.214.36.221', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00336, '65.214.36.222', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00337, '65.214.36.23', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00338, '65.214.36.233', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00339, '65.214.36.24', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00340, '65.214.36.240', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00341, '65.214.36.241', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00342, '65.214.36.242', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00343, '65.214.36.243', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00344, '65.214.36.244', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00345, '65.214.36.245', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00346, '65.214.36.246', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00347, '65.214.36.248', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00348, '65.214.36.249', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00349, '65.214.36.25', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00350, '65.214.36.250', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00351, '65.214.36.251', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00352, '65.214.36.252', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00353, '65.214.36.26', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00354, '65.214.36.27', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00355, '65.214.36.28', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00356, '65.214.36.29', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00357, '65.214.36.30', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00358, '65.214.36.31', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00359, '65.214.36.32', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00360, '65.214.36.33', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00361, '65.214.36.34', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00362, '65.214.36.42', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00363, '65.214.36.43', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00364, '65.214.36.44', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00365, '65.214.36.45', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00366, '65.214.36.46', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00367, '65.214.36.50', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00368, '65.214.36.51', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00369, '65.214.36.52', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00370, '65.214.36.53', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00371, '65.214.36.54', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00372, '65.214.36.55', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00373, '65.214.36.58', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00374, '65.214.36.59', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00375, '65.214.36.7', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00376, '65.214.36.8', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00377, '65.214.36.80', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00378, '65.214.36.81', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00379, '65.214.36.82', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00380, '65.214.36.83', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00381, '65.214.36.84', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00382, '65.214.36.85', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00383, '65.214.36.86', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00384, '65.214.36.87', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00385, '65.214.36.88', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00386, '65.214.36.89', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00387, '65.214.36.9', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00388, '65.214.38.10', 'Ask Jeeves / Teoma');
INSERT INTO `nuke_czuser_botlist` VALUES (00389, '146.101.142.222', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00390, '146.101.142.223', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00391, '146.101.142.224', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00392, '146.101.142.225', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00393, '146.101.142.226', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00394, '146.101.142.227', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00395, '146.101.142.228', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00396, '146.101.142.229', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00397, '146.101.142.230', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00398, '146.101.142.231', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00399, '146.101.142.232', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00400, '146.101.142.233', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00401, '146.101.142.234', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00402, '146.101.142.235', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00403, '146.101.142.236', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00404, '146.101.142.237', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00405, '146.101.142.238', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00406, '146.101.142.239', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00407, '146.101.142.240', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00408, '146.101.142.241', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00409, '146.101.142.242', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00410, '146.101.142.243', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00411, '146.101.142.244', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00412, '146.101.142.245', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00413, '146.101.142.246', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00414, '146.101.142.247', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00415, '146.101.142.248', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00416, '146.101.142.249', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00417, '146.101.142.250', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00418, '146.101.142.251', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00419, '146.101.142.252', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00420, '146.101.142.253', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00421, '200.221.10.240', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00422, '207.201.123.246', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00423, '208.186.202.28', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00424, '209.202.148', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00425, '209.67.247', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00426, '213.188.8.2', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00427, '213.188.8.4', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00428, '213.188.8.76', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00429, '216.35.112.141', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00430, '216.35.112.142', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00431, '216.35.112.143', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00432, '216.35.112.50', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00433, '216.35.112.51', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00434, '62.41.154', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00435, '64.41.254.23', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00436, '64.41.254.24', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00437, '64.41.254.25', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00438, '66.77.73', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00439, '66.77.74', 'FAST');
INSERT INTO `nuke_czuser_botlist` VALUES (00440, '164.71.1.146', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00441, '164.71.1.147', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00442, '164.71.1.148', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00443, '164.71.1.149', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00444, '192.51.44.10', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00445, '192.51.44.13', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00446, '192.51.44.18', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00447, '192.51.44.19', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00448, '209.185.108', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00449, '209.185.253', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00450, '210.131.75.80', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00451, '210.131.75.81', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00452, '210.131.75.82', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00453, '210.131.75.83', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00454, '210.131.75.84', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00455, '216.33.229.163', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00456, '216.239.33.96', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00457, '216.239.33.97', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00458, '216.239.33.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00459, '216.239.33.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00460, '216.239.37.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00461, '216.239.37.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00462, '216.239.39.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00463, '216.239.39.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00464, '216.239.41.96', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00465, '216.239.41.97', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00466, '216.239.41.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00467, '216.239.41.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00468, '216.239.45.4', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00469, '216.239.46', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00470, '216.239.51.96', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00471, '216.239.51.97', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00472, '216.239.51.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00473, '216.239.51.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00474, '216.239.53.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00475, '216.239.53.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00476, '216.239.57.96', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00477, '216.239.57.97', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00478, '216.239.57.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00479, '216.239.57.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00480, '216.239.59.98', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00481, '216.239.59.99', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00482, '62.27.59.227', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00483, '63.83.186.67', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00484, '64.208.32.11', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00485, '64.208.32.12', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00486, '64.208.32.4', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00487, '64.208.33.33', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00488, '64.208.36', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00489, '64.208.37', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00490, '64.68.80', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00491, '64.68.81', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00492, '64.68.82', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00493, '64.68.83', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00494, '64.68.84', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00495, '64.68.85', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00496, '64.68.86', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00497, '64.68.87', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00498, '64.68.88', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00499, '64.68.90.1', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00500, '64.68.90.10', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00501, '64.68.90.11', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00502, '64.68.90.12', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00503, '64.68.90.129', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00504, '64.68.90.13', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00505, '64.68.90.130', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00506, '64.68.90.131', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00507, '64.68.90.132', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00508, '64.68.90.133', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00509, '64.68.90.134', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00510, '64.68.90.135', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00511, '64.68.90.136', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00512, '64.68.90.137', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00513, '64.68.90.138', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00514, '64.68.90.139', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00515, '64.68.90.14', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00516, '64.68.90.140', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00517, '64.68.90.141', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00518, '64.68.90.142', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00519, '64.68.90.143', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00520, '64.68.90.144', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00521, '64.68.90.145', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00522, '64.68.90.146', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00523, '64.68.90.147', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00524, '64.68.90.148', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00525, '64.68.90.149', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00526, '64.68.90.15', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00527, '64.68.90.150', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00528, '64.68.90.151', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00529, '64.68.90.152', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00530, '64.68.90.153', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00531, '64.68.90.154', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00532, '64.68.90.155', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00533, '64.68.90.156', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00534, '64.68.90.157', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00535, '64.68.90.158', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00536, '64.68.90.159', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00537, '64.68.90.16', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00538, '64.68.90.160', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00539, '64.68.90.161', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00540, '64.68.90.162', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00541, '64.68.90.163', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00542, '64.68.90.164', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00543, '64.68.90.165', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00544, '64.68.90.166', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00545, '64.68.90.167', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00546, '64.68.90.168', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00547, '64.68.90.169', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00548, '64.68.90.17', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00549, '64.68.90.170', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00550, '64.68.90.171', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00551, '64.68.90.172', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00552, '64.68.90.173', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00553, '64.68.90.174', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00554, '64.68.90.175', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00555, '64.68.90.176', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00556, '64.68.90.177', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00557, '64.68.90.178', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00558, '64.68.90.179', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00559, '64.68.90.18', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00560, '64.68.90.180', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00561, '64.68.90.181', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00562, '64.68.90.182', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00563, '64.68.90.183', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00564, '64.68.90.184', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00565, '64.68.90.185', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00566, '64.68.90.186', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00567, '64.68.90.187', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00568, '64.68.90.188', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00569, '64.68.90.189', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00570, '64.68.90.19', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00571, '64.68.90.190', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00572, '64.68.90.191', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00573, '64.68.90.192', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00574, '64.68.90.193', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00575, '64.68.90.194', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00576, '64.68.90.195', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00577, '64.68.90.196', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00578, '64.68.90.197', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00579, '64.68.90.198', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00580, '64.68.90.199', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00581, '64.68.90.2', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00582, '64.68.90.20', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00583, '64.68.90.200', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00584, '64.68.90.201', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00585, '64.68.90.202', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00586, '64.68.90.203', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00587, '64.68.90.204', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00588, '64.68.90.205', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00589, '64.68.90.206', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00590, '64.68.90.207', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00591, '64.68.90.208', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00592, '64.68.90.21', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00593, '64.68.90.22', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00594, '64.68.90.23', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00595, '64.68.90.24', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00596, '64.68.90.25', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00597, '64.68.90.26', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00598, '64.68.90.27', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00599, '64.68.90.28', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00600, '64.68.90.29', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00601, '64.68.90.3', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00602, '64.68.90.30', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00603, '64.68.90.31', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00604, '64.68.90.32', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00605, '64.68.90.33', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00606, '64.68.90.34', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00607, '64.68.90.35', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00608, '64.68.90.36', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00609, '64.68.90.37', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00610, '64.68.90.38', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00611, '64.68.90.39', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00612, '64.68.90.4', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00613, '64.68.90.40', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00614, '64.68.90.41', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00615, '64.68.90.42', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00616, '64.68.90.43', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00617, '64.68.90.44', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00618, '64.68.90.45', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00619, '64.68.90.46', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00620, '64.68.90.47', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00621, '64.68.90.48', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00622, '64.68.90.49', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00623, '64.68.90.5', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00624, '64.68.90.50', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00625, '64.68.90.51', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00626, '64.68.90.52', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00627, '64.68.90.53', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00628, '64.68.90.54', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00629, '64.68.90.55', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00630, '64.68.90.56', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00631, '64.68.90.57', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00632, '64.68.90.58', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00633, '64.68.90.59', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00634, '64.68.90.6', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00635, '64.68.90.60', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00636, '64.68.90.61', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00637, '64.68.90.62', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00638, '64.68.90.63', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00639, '64.68.90.64', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00640, '64.68.90.65', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00641, '64.68.90.66', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00642, '64.68.90.67', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00643, '64.68.90.68', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00644, '64.68.90.69', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00645, '64.68.90.7', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00646, '64.68.90.70', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00647, '64.68.90.71', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00648, '64.68.90.72', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00649, '64.68.90.73', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00650, '64.68.90.74', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00651, '64.68.90.75', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00652, '64.68.90.76', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00653, '64.68.90.77', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00654, '64.68.90.78', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00655, '64.68.90.79', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00656, '64.68.90.8', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00657, '64.68.90.80', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00658, '64.68.90.9', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00659, '64.68.92', 'Google');
INSERT INTO `nuke_czuser_botlist` VALUES (00660, '141.185.209', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00661, '169.207.238', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00662, '199.177.18.9', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00663, '202.212.5.30', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00664, '202.212.5.32', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00665, '202.212.5.33', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00666, '202.212.5.34', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00667, '202.212.5.35', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00668, '202.212.5.36', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00669, '202.212.5.37', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00670, '202.212.5.38', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00671, '202.212.5.39', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00672, '202.212.5.47', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00673, '202.212.5.48', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00674, '203.255.234.102', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00675, '203.255.234.103', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00676, '203.255.234.105', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00677, '203.255.234.106', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00678, '209.1.12', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00679, '209.1.13.101', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00680, '209.1.13.231', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00681, '209.1.13.232', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00682, '209.1.32.122', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00683, '209.1.38', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00684, '209.131.40', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00685, '209.131.48', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00686, '209.131.49.37', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00687, '209.131.50.153', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00688, '209.131.51.166', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00689, '209.131.60.19', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00690, '209.131.60.169', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00691, '209.131.60.170', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00692, '209.131.60.171', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00693, '209.131.62.107', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00694, '209.131.62.108', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00695, '209.131.62.109', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00696, '209.131.62.214', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00697, '209.185.122', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00698, '209.185.141', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00699, '209.185.143', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00700, '209.185.143.96', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00701, '209.185.143.98', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00702, '209.67.206.126', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00703, '209.67.206.127', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00704, '209.67.206.133', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00705, '211.169.241.21', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00706, '213.216.143.37', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00707, '213.216.143.38', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00708, '213.216.143.39', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00709, '216.155.200', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00710, '216.155.204.40', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00711, '216.198.200.123', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00712, '216.239.193.71', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00713, '216.239.193.72', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00714, '216.239.193.73', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00715, '216.239.193.74', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00716, '216.239.193.75', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00717, '216.239.193.76', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00718, '216.239.193.77', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00719, '216.239.193.78', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00720, '216.239.193.79', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00721, '216.239.193.80', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00722, '216.239.193.81', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00723, '216.239.193.82', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00724, '216.239.193.83', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00725, '216.239.193.84', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00726, '216.239.193.85', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00727, '216.239.193.86', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00728, '216.32.237.1', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00729, '216.32.237.10', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00730, '216.32.237.11', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00731, '216.32.237.12', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00732, '216.32.237.13', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00733, '216.32.237.14', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00734, '216.32.237.15', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00735, '216.32.237.16', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00736, '216.32.237.17', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00737, '216.32.237.18', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00738, '216.32.237.19', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00739, '216.32.237.20', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00740, '216.32.237.21', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00741, '216.32.237.22', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00742, '216.32.237.23', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00743, '216.32.237.24', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00744, '216.32.237.25', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00745, '216.32.237.26', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00746, '216.32.237.27', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00747, '216.32.237.28', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00748, '216.32.237.29', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00749, '216.32.237.30', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00750, '216.32.237.7', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00751, '216.32.237.8', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00752, '216.32.237.9', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00753, '62.172.199.20', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00754, '62.172.199.21', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00755, '62.172.199.22', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00756, '62.172.199.23', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00757, '62.172.199.24', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00758, '62.27.59.245', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00759, '64.75.36.42', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00760, '64.75.36.43', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00761, '64.75.36.44', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00762, '64.75.36.45', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00763, '64.75.36.47', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00764, '64.75.36.77', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00765, '64.75.36.79', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00766, '64.75.36.80', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00767, '66.196.65', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00768, '66.196.72', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00769, '66.196.73', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00770, '66.196.74', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00771, '66.196.78', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00772, '66.196.81.10', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00773, '66.196.81.102', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00774, '66.196.81.103', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00775, '66.196.81.104', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00776, '66.196.81.105', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00777, '66.196.81.106', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00778, '66.196.81.107', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00779, '66.196.81.108', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00780, '66.196.81.109', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00781, '66.196.81.11', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00782, '66.196.81.110', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00783, '66.196.81.111', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00784, '66.196.81.112', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00785, '66.196.81.113', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00786, '66.196.81.114', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00787, '66.196.81.115', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00788, '66.196.81.116', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00789, '66.196.81.117', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00790, '66.196.81.118', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00791, '66.196.81.119', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00792, '66.196.81.12', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00793, '66.196.81.120', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00794, '66.196.81.121', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00795, '66.196.81.122', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00796, '66.196.81.123', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00797, '66.196.81.124', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00798, '66.196.81.125', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00799, '66.196.81.126', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00800, '66.196.81.127', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00801, '66.196.81.128', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00802, '66.196.81.129', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00803, '66.196.81.13', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00804, '66.196.81.130', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00805, '66.196.81.131', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00806, '66.196.81.132', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00807, '66.196.81.133', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00808, '66.196.81.134', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00809, '66.196.81.135', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00810, '66.196.81.136', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00811, '66.196.81.137', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00812, '66.196.81.138', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00813, '66.196.81.139', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00814, '66.196.81.14', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00815, '66.196.81.140', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00816, '66.196.81.141', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00817, '66.196.81.142', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00818, '66.196.81.143', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00819, '66.196.81.144', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00820, '66.196.81.145', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00821, '66.196.81.146', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00822, '66.196.81.147', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00823, '66.196.81.148', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00824, '66.196.81.149', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00825, '66.196.81.15', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00826, '66.196.81.150', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00827, '66.196.81.151', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00828, '66.196.81.152', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00829, '66.196.81.153', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00830, '66.196.81.154', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00831, '66.196.81.155', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00832, '66.196.81.156', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00833, '66.196.81.157', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00834, '66.196.81.158', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00835, '66.196.81.159', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00836, '66.196.81.16', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00837, '66.196.81.160', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00838, '66.196.81.161', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00839, '66.196.81.162', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00840, '66.196.81.163', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00841, '66.196.81.164', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00842, '66.196.81.165', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00843, '66.196.81.166', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00844, '66.196.81.167', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00845, '66.196.81.168', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00846, '66.196.81.169', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00847, '66.196.81.17', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00848, '66.196.81.170', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00849, '66.196.81.171', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00850, '66.196.81.172', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00851, '66.196.81.173', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00852, '66.196.81.174', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00853, '66.196.81.175', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00854, '66.196.81.176', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00855, '66.196.81.177', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00856, '66.196.81.178', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00857, '66.196.81.179', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00858, '66.196.81.18', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00859, '66.196.81.180', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00860, '66.196.81.181', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00861, '66.196.81.182', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00862, '66.196.81.183', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00863, '66.196.81.184', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00864, '66.196.81.185', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00865, '66.196.81.187', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00866, '66.196.81.188', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00867, '66.196.81.189', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00868, '66.196.81.19', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00869, '66.196.81.190', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00870, '66.196.81.191', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00871, '66.196.81.192', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00872, '66.196.81.193', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00873, '66.196.81.194', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00874, '66.196.81.195', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00875, '66.196.81.196', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00876, '66.196.81.197', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00877, '66.196.81.198', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00878, '66.196.81.199', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00879, '66.196.81.20', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00880, '66.196.81.200', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00881, '66.196.81.201', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00882, '66.196.81.202', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00883, '66.196.81.203', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00884, '66.196.81.204', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00885, '66.196.81.205', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00886, '66.196.81.206', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00887, '66.196.81.207', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00888, '66.196.81.208', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00889, '66.196.81.209', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00890, '66.196.81.21', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00891, '66.196.81.210', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00892, '66.196.81.211', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00893, '66.196.81.212', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00894, '66.196.81.213', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00895, '66.196.81.214', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00896, '66.196.81.215', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00897, '66.196.81.216', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00898, '66.196.81.217', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00899, '66.196.81.218', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00900, '66.196.81.219', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00901, '66.196.81.22', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00902, '66.196.81.23', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00903, '66.196.81.86', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00904, '66.196.81.87', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00905, '66.196.81.88', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00906, '66.196.81.93', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00907, '66.196.81.94', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00908, '66.196.81.95', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00909, '66.196.81.96', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00910, '66.196.90', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00911, '66.196.97', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00912, '66.196.99.20', 'Inktomi');
INSERT INTO `nuke_czuser_botlist` VALUES (00913, '166.48.225.254', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00914, '202.232.118.40', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00915, '202.232.118.51', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00916, '206.79.171', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00917, '207.77.90', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00918, '207.77.91.184', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00919, '208.146.26', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00920, '208.146.27.123', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00921, '208.146.27.124', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00922, '208.146.27.57', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00923, '208.146.27.58', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00924, '208.146.27.59', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00925, '208.146.27.60', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00926, '208.146.27.62', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00927, '208.146.27.89', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00928, '208.146.27.90', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00929, '208.146.27.91', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00930, '208.146.27.92', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00931, '208.146.27.93', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00932, '208.146.27.94', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00933, '208.146.27.95', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00934, '208.146.27.96', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00935, '209.202.192', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00936, '209.202.192.147', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00937, '209.202.193', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00938, '209.202.194.237', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00939, '209.202.194.238', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00940, '209.202.240.109', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00941, '209.202.240.8', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00942, '209.67.228', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00943, '209.67.229', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00944, '211.51.63.4', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00945, '213.193.19.35', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00946, '64.89.33', 'Lycos');
INSERT INTO `nuke_czuser_botlist` VALUES (00947, '206.253.217.18', '100hot');
INSERT INTO `nuke_czuser_botlist` VALUES (00948, '63.222.37.101', '2kcity.com');
INSERT INTO `nuke_czuser_botlist` VALUES (00949, '63.222.37.105', '2kcity.com');
INSERT INTO `nuke_czuser_botlist` VALUES (00950, '195.3.97.3', 'A-Online');
INSERT INTO `nuke_czuser_botlist` VALUES (00951, '193.110.40.93', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00952, '194.231.30.86', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00953, '194.231.30.87', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00954, '194.231.30.88', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00955, '194.231.30.89', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00956, '194.231.30.90', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00957, '194.231.30.91', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00958, '194.231.30.92', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00959, '194.231.30.93', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00960, '194.231.30.108', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00961, '194.231.30.109', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00962, '194.231.68.166', 'Abacho');
INSERT INTO `nuke_czuser_botlist` VALUES (00963, '209.68.2.36', 'Abadoor');
INSERT INTO `nuke_czuser_botlist` VALUES (00964, '194.117.133.180', 'Abrexa.co.uk');
INSERT INTO `nuke_czuser_botlist` VALUES (00965, '194.231.42.185', 'Acoon');
INSERT INTO `nuke_czuser_botlist` VALUES (00966, '208.204.161.8', 'Ah-Ha');
INSERT INTO `nuke_czuser_botlist` VALUES (00967, '216.250.141.186', 'Ah-Ha');
INSERT INTO `nuke_czuser_botlist` VALUES (00968, '207.126.112.254', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00969, '209.120.206.178', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00970, '212.91.134.190', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00971, '216.178.189.230', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00972, '130.225.20.4', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00973, '64.247.218.197', 'Aeiwi');
INSERT INTO `nuke_czuser_botlist` VALUES (00974, '140.142.13.196', 'Ahoy!');
INSERT INTO `nuke_czuser_botlist` VALUES (00975, '194.231.30.14', 'Aladin');
INSERT INTO `nuke_czuser_botlist` VALUES (00976, '194.231.0.71', 'Aladin');
INSERT INTO `nuke_czuser_botlist` VALUES (00977, '194.231.30.11', 'Aladin');
INSERT INTO `nuke_czuser_botlist` VALUES (00978, '195.37.68.3', 'Allesklar');
INSERT INTO `nuke_czuser_botlist` VALUES (00979, '195.37.68.65', 'Allesklar');
INSERT INTO `nuke_czuser_botlist` VALUES (00980, '195.37.68.180', 'Allesklar');
INSERT INTO `nuke_czuser_botlist` VALUES (00981, '195.37.68.181', 'Allesklar');
INSERT INTO `nuke_czuser_botlist` VALUES (00982, '209.239.48.69', 'AllFreak.com');
INSERT INTO `nuke_czuser_botlist` VALUES (00983, '194.231.42.178', 'ANAGRAROBOT');
INSERT INTO `nuke_czuser_botlist` VALUES (00984, '167.160.195.61', 'Ananzi');
INSERT INTO `nuke_czuser_botlist` VALUES (00985, '80.16.145.187', 'AnnoMille');
INSERT INTO `nuke_czuser_botlist` VALUES (00986, '64.246.36.123', 'Ano-Kato.com (Greek)');
INSERT INTO `nuke_czuser_botlist` VALUES (00987, '134.96.104.226', 'AnswerBus');
INSERT INTO `nuke_czuser_botlist` VALUES (00988, '62.210.155.50', 'AntiSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (00989, '62.210.155.56', 'AntiSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (00990, '62.210.155.58', 'AntiSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (00991, '62.210.155.59', 'AntiSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (00992, '192.41.9.30', 'Apidom (Guadeloupe)');
INSERT INTO `nuke_czuser_botlist` VALUES (00993, '192.41.9.30', 'Apidom (Guadeloupe)');
INSERT INTO `nuke_czuser_botlist` VALUES (00994, '208.237.120.82', 'Apidom (Guadeloupe)');
INSERT INTO `nuke_czuser_botlist` VALUES (00995, '195.210.89.11', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (00996, '195.210.91.24', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (00997, '195.210.91.80', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (00998, '195.210.91.112', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (00999, '195.210.91.113', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01000, '195.210.91.187', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01001, '195.210.91.212', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01002, '195.210.91.213', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01003, '195.210.91.214', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01004, '195.210.91.235', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01005, '195.210.91.215', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01006, '192.92.126.4', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01007, '192.92.126.5', 'Arianna');
INSERT INTO `nuke_czuser_botlist` VALUES (01008, '171.64.68.80', 'Backrub');
INSERT INTO `nuke_czuser_botlist` VALUES (01009, '171.64.75.100', 'Backrub');
INSERT INTO `nuke_czuser_botlist` VALUES (01010, '171.64.75.104', 'Backrub');
INSERT INTO `nuke_czuser_botlist` VALUES (01011, '162.105.207.185', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01012, '162.105.207.192', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01013, '202.103.134.196', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01014, '202.108.249.184', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01015, '202.108.249.185', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01016, '202.108.249.186', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01017, '202.108.249.187', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01018, '202.108.249.188', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01019, '202.108.249.189', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01020, '202.108.249.190', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01021, '202.108.250.195', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01022, '202.108.250.196', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01023, '202.108.250.197', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01024, '202.108.250.198', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01025, '202.108.250.199', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01026, '202.108.250.206', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01027, '202.108.250.207', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01028, '202.108.250.226', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01029, '202.108.250.241', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01030, '202.108.250.242', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01031, '202.108.250.243', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01032, '211.100.24.90', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01033, '211.100.24.91', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01034, '211.100.24.92', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01035, '211.100.24.93', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01036, '211.100.24.94', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01037, '211.100.24.95', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01038, '211.100.24.96', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01039, '211.100.24.97', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01040, '211.100.25.196', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01041, '211.100.25.197', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01042, '211.100.25.198', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01043, '211.100.25.199', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01044, '211.100.25.200', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01045, '211.100.25.202', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01046, '211.100.25.204', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01047, '211.101.48.53', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01048, '61.149.2.221', 'Baidu');
INSERT INTO `nuke_czuser_botlist` VALUES (01049, '204.251.93.10', 'Batsch');
INSERT INTO `nuke_czuser_botlist` VALUES (01050, '208.28.152.71', 'Bellnet');
INSERT INTO `nuke_czuser_botlist` VALUES (01051, '194.198.230.36', 'BizSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01052, '210.159.73.36', 'BlackSpider');
INSERT INTO `nuke_czuser_botlist` VALUES (01053, '210.159.73.35', 'BlackSpider');
INSERT INTO `nuke_czuser_botlist` VALUES (01054, '140.190.65.', 'BlackWidow');
INSERT INTO `nuke_czuser_botlist` VALUES (01055, '194.231.30.106', 'Blitzsuche');
INSERT INTO `nuke_czuser_botlist` VALUES (01056, '194.231.30.107', 'Blitzsuche');
INSERT INTO `nuke_czuser_botlist` VALUES (01057, '194.231.30.108', 'Blitzsuche');
INSERT INTO `nuke_czuser_botlist` VALUES (01058, '217.118.38.226', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01059, '217.118.38.227', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01060, '217.118.38.228', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01061, '217.118.38.229', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01062, '217.118.38.230', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01063, '217.118.38.231', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01064, '217.118.38.232', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01065, '217.118.38.233', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01066, '217.118.38.234', 'Boitho');
INSERT INTO `nuke_czuser_botlist` VALUES (01067, '151.189.96.99', 'Brainbot (Gigabaz)');
INSERT INTO `nuke_czuser_botlist` VALUES (01068, '134.93.7.97', 'Brainbot (Gigabaz)');
INSERT INTO `nuke_czuser_botlist` VALUES (01069, '134.93.7.98', 'Brainbot (Gigabaz)');
INSERT INTO `nuke_czuser_botlist` VALUES (01070, '64.57.64.90', 'Brainysearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01071, '200.215.16.125', 'Brazilian Research Network');
INSERT INTO `nuke_czuser_botlist` VALUES (01072, '131.188.128.229', 'CACTVS Chemistry Spider');
INSERT INTO `nuke_czuser_botlist` VALUES (01073, '194.199.4.2', 'CACTVS Chemistry Spider');
INSERT INTO `nuke_czuser_botlist` VALUES (01074, '192.115.137.202', 'Chimera (eSense)');
INSERT INTO `nuke_czuser_botlist` VALUES (01075, '192.115.136.15', 'Chimera (eSense)');
INSERT INTO `nuke_czuser_botlist` VALUES (01076, '64.28.94.71', 'Chimera (eSense)');
INSERT INTO `nuke_czuser_botlist` VALUES (01077, '203.122.61.30', 'Cipinet');
INSERT INTO `nuke_czuser_botlist` VALUES (01078, '198.138.63.1', 'Claymont');
INSERT INTO `nuke_czuser_botlist` VALUES (01079, '198.138.63.22', 'Claymont');
INSERT INTO `nuke_czuser_botlist` VALUES (01080, '198.139.155.10', 'Claymont');
INSERT INTO `nuke_czuser_botlist` VALUES (01081, '209.10.61.5', 'Colorstamps');
INSERT INTO `nuke_czuser_botlist` VALUES (01082, '130.235.86.152', 'Combine System');
INSERT INTO `nuke_czuser_botlist` VALUES (01083, '195.76.40.251', 'Comunet');
INSERT INTO `nuke_czuser_botlist` VALUES (01084, '66.47.255.121', 'ConceptBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01085, '80.182.226.190', 'Crawler.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01086, '195.20.224.72', 'Crawler.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01087, '195.20.224.73', 'Crawler.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01088, '143.89.40.159', 'CS Hkust Wise');
INSERT INTO `nuke_czuser_botlist` VALUES (01089, '192.41.34.245', 'CurryGuide');
INSERT INTO `nuke_czuser_botlist` VALUES (01090, '192.41.43.146', 'CurryGuide');
INSERT INTO `nuke_czuser_botlist` VALUES (01091, '192.41.49.235', 'CurryGuide');
INSERT INTO `nuke_czuser_botlist` VALUES (01092, '208.185.131.219', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01093, '208.185.131.220', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01094, '208.185.131.221', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01095, '208.185.131.222', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01096, '216.200.195.53', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01097, '216.200.195.58', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01098, '216.200.195.60', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01099, '216.200.195.57', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01100, '216.200.195.59', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01101, '216.200.195.61', 'DavesEngine');
INSERT INTO `nuke_czuser_botlist` VALUES (01102, '62.212.117.198', 'DeepIndex');
INSERT INTO `nuke_czuser_botlist` VALUES (01103, '217.160.94.14', 'DIE-KRAEHE');
INSERT INTO `nuke_czuser_botlist` VALUES (01104, '217.146.97.27', 'Domanova');
INSERT INTO `nuke_czuser_botlist` VALUES (01105, '210.199.215.54', 'DragonNext');
INSERT INTO `nuke_czuser_botlist` VALUES (01106, '208.186.202.21', 'eFamily');
INSERT INTO `nuke_czuser_botlist` VALUES (01107, '62.57.74.14', 'Egoto.com Spain');
INSERT INTO `nuke_czuser_botlist` VALUES (01108, '210.16.10.40', 'EDSA Phillipines');
INSERT INTO `nuke_czuser_botlist` VALUES (01109, '193.15.210.29', 'entireweb.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01110, '193.15.210.29', 'entireweb.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01111, '62.13.25.201', 'entireweb.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01112, '62.13.25.209', 'entireweb.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01113, '209.198.242.61', 'Esoterica');
INSERT INTO `nuke_czuser_botlist` VALUES (01114, '194.231.76.158', 'Eule');
INSERT INTO `nuke_czuser_botlist` VALUES (01115, '194.168.54.6', 'EuroFerret (MuscatFerret)');
INSERT INTO `nuke_czuser_botlist` VALUES (01116, '194.168.54.11', 'EuroFerret (MuscatFerret)');
INSERT INTO `nuke_czuser_botlist` VALUES (01117, '195.95.124.3', 'EuroOne');
INSERT INTO `nuke_czuser_botlist` VALUES (01118, '195.95.124.7', 'EuroOne');
INSERT INTO `nuke_czuser_botlist` VALUES (01119, '212.209.54.40', 'EuroSeek');
INSERT INTO `nuke_czuser_botlist` VALUES (01120, '212.209.54.134', 'EuroSeek');
INSERT INTO `nuke_czuser_botlist` VALUES (01121, '195.242.46.55', 'EuroSeek');
INSERT INTO `nuke_czuser_botlist` VALUES (01122, '207.36.47.237', 'ExactSeek.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01123, '216.110.167.157', 'ExactSeek.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01124, '195.154.174.164', 'Exalead (NG/1.0)');
INSERT INTO `nuke_czuser_botlist` VALUES (01125, '195.154.174.167', 'Exalead (NG/1.0)');
INSERT INTO `nuke_czuser_botlist` VALUES (01126, '213.174.84.195', 'Exalead (NG/1.0)');
INSERT INTO `nuke_czuser_botlist` VALUES (01127, '198.3.103', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01128, '199.172.148.105', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01129, '199.172.148.11', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01130, '199.172.148.37', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01131, '199.172.149', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01132, '199.172.152.238', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01133, '199.172.152.34', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01134, '199.172.152.54', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01135, '199.172.152.56', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01136, '199.172.152.57', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01137, '199.172.152.95', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01138, '199.172.153.174', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01139, '199.172.153.178', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01140, '199.172.156.168', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01141, '199.172.156.169', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01142, '199.172.156.170', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01143, '199.172.156.219', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01144, '199.172.157.28', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01145, '204.62.245.167', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01146, '204.62.245.169', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01147, '204.62.245.178', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01148, '204.62.245.187', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01149, '204.62.245.32', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01150, '216.131.41.1', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01151, '216.131.41.10', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01152, '216.131.41.2', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01153, '216.131.41.3', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01154, '216.131.41.4', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01155, '216.131.41.5', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01156, '216.131.41.6', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01157, '216.131.41.7', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01158, '216.131.41.8', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01159, '216.131.41.9', 'Excite');
INSERT INTO `nuke_czuser_botlist` VALUES (01160, '209.67.252.214', 'Exodus.Net');
INSERT INTO `nuke_czuser_botlist` VALUES (01161, '64.14.66.11', 'EZResult');
INSERT INTO `nuke_czuser_botlist` VALUES (01162, '64.14.66.100', 'EZResult');
INSERT INTO `nuke_czuser_botlist` VALUES (01163, '192.41.15.30', 'FetchRover');
INSERT INTO `nuke_czuser_botlist` VALUES (01164, '207.86.79.6', 'FindLink.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01165, '207.86.79.12', 'FindLink.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01166, '207.153.57.51', 'findquick.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01167, '193.7.255.21', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01168, '193.7.255.33', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01169, '193.7.255.90', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01170, '193.7.255.121', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01171, '193.7.255.122', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01172, '193.7.255.130', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01173, '193.7.255.142', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01174, '193.7.255.22', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01175, '193.7.255.241', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01176, '193.7.255.242', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01177, '193.7.255.244', 'Fireball');
INSERT INTO `nuke_czuser_botlist` VALUES (01178, '217.75.104.26', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01179, '63.121.41.166', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01180, '63.121.41.172', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01181, '63.121.41.173', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01182, '63.121.41.174', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01183, '63.121.41.176', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01184, '63.121.41.177', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01185, '208.131.25.166', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01186, '208.131.25.167', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01187, '208.131.25.169', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01188, '198.173.35.169', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01189, '198.173.35.170', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01190, '198.173.35.171', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01191, '63.121.41.175', 'First-Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01192, '131.155.70.189', 'Fish search');
INSERT INTO `nuke_czuser_botlist` VALUES (01193, '195.190.21.70', 'Flix');
INSERT INTO `nuke_czuser_botlist` VALUES (01194, '132.218.30.216', 'Francoroute');
INSERT INTO `nuke_czuser_botlist` VALUES (01195, '205.179.93.66', 'FreeFind');
INSERT INTO `nuke_czuser_botlist` VALUES (01196, '151.196.224.70', 'Funkycat Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01197, '209.176.27.63', 'Funkycat Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01198, '64.208.104.2', 'Funkycat Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01199, '203.21.15.10', 'FunnelWeb');
INSERT INTO `nuke_czuser_botlist` VALUES (01200, '208.131.25.6', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01201, '216.206.178.81', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01202, '216.206.178.83', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01203, '216.206.178.85', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01204, '208.131.25.168', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01205, '63.121.41.178', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01206, '63.121.41.179', 'Galaxy');
INSERT INTO `nuke_czuser_botlist` VALUES (01207, '140.123.101.14', 'Gais');
INSERT INTO `nuke_czuser_botlist` VALUES (01208, '194.46.8.25', 'gasta');
INSERT INTO `nuke_czuser_botlist` VALUES (01209, '216.127.80.23', 'Geobot');
INSERT INTO `nuke_czuser_botlist` VALUES (01210, '69.59.142.172', 'Geona');
INSERT INTO `nuke_czuser_botlist` VALUES (01211, '216.93.161.126', 'Geona');
INSERT INTO `nuke_czuser_botlist` VALUES (01212, '208.254.87.133', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01213, '216.243.113.1', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01214, '216.243.113.81', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01215, '216.243.113.82', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01216, '216.243.113.83', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01217, '216.243.113.84', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01218, '216.243.113.86', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01219, '216.243.113.87', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01220, '217.75.103.130', 'Gigablast');
INSERT INTO `nuke_czuser_botlist` VALUES (01221, '210.150.25.156', 'Goo');
INSERT INTO `nuke_czuser_botlist` VALUES (01222, '202.229.31.13', 'Goo');
INSERT INTO `nuke_czuser_botlist` VALUES (01223, '202.229.31.14', 'Goo');
INSERT INTO `nuke_czuser_botlist` VALUES (01224, '202.229.31.15', 'Goo');
INSERT INTO `nuke_czuser_botlist` VALUES (01225, '210.150.10.100', 'Goo');
INSERT INTO `nuke_czuser_botlist` VALUES (01226, '216.181.122.11', 'GoZero Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01227, '216.181.122.110', 'GoZero Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01228, '212.125.68.30', 'GoZilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01229, '206.30.142.100', 'Grub');
INSERT INTO `nuke_czuser_botlist` VALUES (01230, '193.62.81.96', 'Harvest');
INSERT INTO `nuke_czuser_botlist` VALUES (01231, '193.62.81.96', 'Harvest');
INSERT INTO `nuke_czuser_botlist` VALUES (01232, '64.246.15.61', 'HiddenStreet.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01233, '192.41.170.17', 'HI (HTML Index) Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01234, '208.232.223.80', 'Hitbox');
INSERT INTO `nuke_czuser_botlist` VALUES (01235, '216.55.4.15', 'Hitsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01236, '209.1.12.2', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01237, '209.1.12.220', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01238, '209.1.12.221', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01239, '209.1.12.222', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01240, '209.1.12.224', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01241, '209.1.12.225', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01242, '209.1.12.226', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01243, '209.1.12.227', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01244, '209.1.12.228', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01245, '209.1.12.229', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01246, '209.1.12.230', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01247, '209.1.12.231', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01248, '209.1.12.232', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01249, '209.1.12.233', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01250, '209.1.12.234', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01251, '209.1.12.235', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01252, '209.1.12.236', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01253, '209.1.12.237', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01254, '209.1.12.238', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01255, '209.1.12.239', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01256, '209.1.12.240', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01257, '209.1.12.241', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01258, '209.1.12.242', 'HotBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01259, '204.62.132.20', 'HotWired');
INSERT INTO `nuke_czuser_botlist` VALUES (01260, '209.75.193.22', 'HTDig');
INSERT INTO `nuke_czuser_botlist` VALUES (01261, '209.114.176.250', 'Hubat');
INSERT INTO `nuke_czuser_botlist` VALUES (01262, '204.146.80.99', 'IBM_Planetwide');
INSERT INTO `nuke_czuser_botlist` VALUES (01263, '204.146.81.99', 'IBM_Planetwide');
INSERT INTO `nuke_czuser_botlist` VALUES (01264, '209.239.36.253', 'icorus.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01265, '205.188.147.53', 'ICQ');
INSERT INTO `nuke_czuser_botlist` VALUES (01266, '205.188.147.56', 'ICQ');
INSERT INTO `nuke_czuser_botlist` VALUES (01267, '205.188.252.121', 'ICQ');
INSERT INTO `nuke_czuser_botlist` VALUES (01268, '212.123.67.70', 'Ideare');
INSERT INTO `nuke_czuser_botlist` VALUES (01269, '193.120.253.2', 'IErachnid');
INSERT INTO `nuke_czuser_botlist` VALUES (01270, '213.244.181.190', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01271, '212.72.39.2', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01272, '194.134.109.3', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01273, '194.134.109.7', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01274, '194.134.109.17', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01275, '194.134.109.21', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01276, '212.72.39.8', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01277, '212.72.39.3', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01278, '212.72.39.4', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01279, '212.72.39.5', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01280, '212.72.39.6', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01281, '212.72.39.7', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01282, '212.72.39.9', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01283, '212.72.39.10', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01284, '212.72.39.11', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01285, '212.72.39.12', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01286, '212.72.39.13', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01287, '212.72.39.14', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01288, '212.72.39.15', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01289, '212.72.39.16', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01290, '212.72.39.17', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01291, '212.72.39.18', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01292, '212.72.39.19', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01293, '212.72.39.20', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01294, '212.72.39.21', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01295, '212.72.39.22', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01296, '212.72.39.23', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01297, '212.72.39.24', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01298, '212.72.39.27', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01299, '212.72.39.28', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01300, '212.72.39.29', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01301, '212.72.39.30', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01302, '212.72.39.194', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01303, '212.72.39.195', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01304, '212.72.39.196', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01305, '212.72.39.197', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01306, '212.72.39.198', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01307, '212.72.39.199', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01308, '212.72.39.200', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01309, '212.72.39.201', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01310, '212.72.39.202', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01311, '212.72.39.203', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01312, '212.72.39.204', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01313, '212.72.39.205', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01314, '212.72.39.206', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01315, '212.72.39.207', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01316, '212.72.39.208', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01317, '212.72.39.209', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01318, '212.72.39.210', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01319, '212.72.39.211', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01320, '212.72.39.212', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01321, '212.72.39.213', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01322, '212.72.39.214', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01323, '212.72.39.215', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01324, '212.72.39.216', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01325, '212.72.39.217', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01326, '212.72.39.218', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01327, '212.72.39.219', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01328, '212.72.39.220', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01329, '212.72.39.221', 'ILSE');
INSERT INTO `nuke_czuser_botlist` VALUES (01330, '213.215.201.204', 'Iltrovatore.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01331, '213.215.201.234', 'Iltrovatore.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01332, '210.165.39.216', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01333, '210.165.39.217', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01334, '210.165.39.216', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01335, '210.165.39.244', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01336, '210.165.39.245', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01337, '210.165.39.246', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01338, '210.165.39.247', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01339, '210.165.39.248', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01340, '210.165.39.249', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01341, '210.165.39.250', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01342, '210.165.39.252', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01343, '210.165.39.254', 'Infobee');
INSERT INTO `nuke_czuser_botlist` VALUES (01344, '165.254.215.60', 'Infomak');
INSERT INTO `nuke_czuser_botlist` VALUES (01345, '165.254.215.61', 'Infomak');
INSERT INTO `nuke_czuser_botlist` VALUES (01346, '165.254.215.62', 'Infomak');
INSERT INTO `nuke_czuser_botlist` VALUES (01347, '165.254.215.63', 'Infomak');
INSERT INTO `nuke_czuser_botlist` VALUES (01348, '129.170.24.57', 'Informant');
INSERT INTO `nuke_czuser_botlist` VALUES (01349, '195.145.119.24', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01350, '195.145.119.25', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01351, '198.5.208', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01352, '198.5.210', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01353, '202.33.250.146', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01354, '202.33.250.147', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01355, '202.33.250.148', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01356, '202.33.250.149', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01357, '202.33.250.150', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01358, '202.33.250.151', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01359, '202.33.250.152', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01360, '202.33.250.153', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01361, '202.33.250.154', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01362, '204.162.96', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01363, '204.162.97.1', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01364, '204.162.97.152', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01365, '204.162.97.17', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01366, '204.162.97.2', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01367, '204.162.97.205', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01368, '204.162.97.228', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01369, '204.162.97.231', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01370, '204.162.97.3', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01371, '204.162.97.32', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01372, '204.162.98.11', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01373, '204.162.98.12', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01374, '204.162.98.124', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01375, '204.162.98.126', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01376, '204.162.98.151', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01377, '204.162.98.161', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01378, '204.162.98.168', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01379, '204.162.98.18', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01380, '204.162.98.192', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01381, '204.162.98.2', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01382, '204.162.98.237', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01383, '204.162.98.27', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01384, '204.162.98.3', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01385, '204.162.98.36', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01386, '204.162.98.38', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01387, '204.162.98.4', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01388, '204.162.98.45', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01389, '204.162.98.48', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01390, '204.162.98.49', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01391, '204.162.98.5', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01392, '204.162.98.6', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01393, '204.162.98.7', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01394, '204.162.98.8', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01395, '204.162.98.80', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01396, '204.162.98.88', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01397, '204.162.98.9', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01398, '204.162.98.91', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01399, '204.162.98.98', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01400, '204.202.132.19', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01401, '205.226.201', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01402, '205.226.203.186', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01403, '205.226.203.35', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01404, '205.226.203.56', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01405, '205.226.203.62', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01406, '205.226.204.238', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01407, '206.3.30.196', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01408, '206.3.30.250', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01409, '206.3.30.251', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01410, '210.148.160.157', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01411, '210.155.157', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01412, '210.155.159', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01413, '210.236.233.130', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01414, '210.236.233.131', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01415, '210.236.233.132', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01416, '210.236.233.133', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01417, '210.236.233.135', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01418, '210.236.233.136', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01419, '210.236.233.137', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01420, '210.236.233.139', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01421, '210.236.233.150', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01422, '210.236.233.151', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01423, '210.236.233.155', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01424, '210.236.233.160', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01425, '210.236.233.161', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01426, '211.13.222.230', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01427, '211.18.214.194', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01428, '212.185.44.10', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01429, '212.185.44.11', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01430, '212.185.44.12', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01431, '212.185.44.15', 'Infoseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01432, '128.255.244.88', 'InfoSpiders');
INSERT INTO `nuke_czuser_botlist` VALUES (01433, '195.57.152.80', 'Inter-Fux');
INSERT INTO `nuke_czuser_botlist` VALUES (01434, '206.132.56.130', 'Internet Archiver');
INSERT INTO `nuke_czuser_botlist` VALUES (01435, '209.133.111.132', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01436, '216.200.196.8', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01437, '216.200.196.9', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01438, '216.200.196.10', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01439, '216.200.196.11', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01440, '216.200.196.12', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01441, '216.200.196.13', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01442, '216.200.196.14', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01443, '216.200.196.15', 'Internet Portal 3000');
INSERT INTO `nuke_czuser_botlist` VALUES (01444, '194.232.15.65', 'Intersearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01445, '133.194.226.226', 'ISIZE (jp)');
INSERT INTO `nuke_czuser_botlist` VALUES (01446, '193.195.19.10', 'iSparkle');
INSERT INTO `nuke_czuser_botlist` VALUES (01447, '207.82.104.100', 'ISpi Crawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01448, '66.240.140.190', 'it LOOX');
INSERT INTO `nuke_czuser_botlist` VALUES (01449, '216.33.59.61', 'iWon');
INSERT INTO `nuke_czuser_botlist` VALUES (01450, '208.239.240.102', 'JAYDE.COM');
INSERT INTO `nuke_czuser_botlist` VALUES (01451, '66.28.139.66', 'JAYDE.COM');
INSERT INTO `nuke_czuser_botlist` VALUES (01452, '195.226.160.249', 'JAYDE.DE');
INSERT INTO `nuke_czuser_botlist` VALUES (01453, '216.234.161.144', 'jblue');
INSERT INTO `nuke_czuser_botlist` VALUES (01454, '195.211.11.50', 'Jippii.fi');
INSERT INTO `nuke_czuser_botlist` VALUES (01455, '216.148.213.150', 'Job Robot (Jobot)');
INSERT INTO `nuke_czuser_botlist` VALUES (01456, '212.112.128.30', 'The Jubii Indexing Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01457, '139.153.13.200', 'JumpStation');
INSERT INTO `nuke_czuser_botlist` VALUES (01458, '216.33.119.136', 'Kanoodle');
INSERT INTO `nuke_czuser_botlist` VALUES (01459, '216.33.119.138', 'Kanoodle');
INSERT INTO `nuke_czuser_botlist` VALUES (01460, '38.170.72.194', 'Kanoodle');
INSERT INTO `nuke_czuser_botlist` VALUES (01461, '24.57.240.53', 'Keywen Encyclopedia');
INSERT INTO `nuke_czuser_botlist` VALUES (01462, '151.189.12.140', 'Kolibri');
INSERT INTO `nuke_czuser_botlist` VALUES (01463, '66.90.81.41', 'Kuloko');
INSERT INTO `nuke_czuser_botlist` VALUES (01464, '66.227.104.196', 'Kuloko');
INSERT INTO `nuke_czuser_botlist` VALUES (01465, '209.87.232.5', 'Look.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01466, '209.177.62.135', 'Lookseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01467, '207.138.42.212', 'Looksmart');
INSERT INTO `nuke_czuser_botlist` VALUES (01468, '64.241.242.160', 'Looksmart');
INSERT INTO `nuke_czuser_botlist` VALUES (01469, '64.241.242.18', 'Looksmart');
INSERT INTO `nuke_czuser_botlist` VALUES (01470, '64.241.242.34', 'Looksmart');
INSERT INTO `nuke_czuser_botlist` VALUES (01471, '195.20.224.66', 'Lotse');
INSERT INTO `nuke_czuser_botlist` VALUES (01472, '195.153.48.120', 'Magpie');
INSERT INTO `nuke_czuser_botlist` VALUES (01473, '216.94.9.119', 'mande');
INSERT INTO `nuke_czuser_botlist` VALUES (01474, '195.44.0.150', 'Mcmail');
INSERT INTO `nuke_czuser_botlist` VALUES (01475, '195.44.0.104', 'Mcmail');
INSERT INTO `nuke_czuser_botlist` VALUES (01476, '195.44.0.152', 'Mcmail');
INSERT INTO `nuke_czuser_botlist` VALUES (01477, '195.44.0.153', 'Mcmail');
INSERT INTO `nuke_czuser_botlist` VALUES (01478, '207.158.203.71', 'MerzScope');
INSERT INTO `nuke_czuser_botlist` VALUES (01479, '130.75.2.24', 'Metager');
INSERT INTO `nuke_czuser_botlist` VALUES (01480, '130.75.6.10', 'Metager');
INSERT INTO `nuke_czuser_botlist` VALUES (01481, '194.202.39.44', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01482, '217.154.244.217', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01483, '217.154.244.228', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01484, '217.154.244.229', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01485, '217.154.244.230', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01486, '217.154.244.231', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01487, '217.154.244.232', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01488, '217.154.244.233', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01489, '217.154.244.234', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01490, '217.154.244.235', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01491, '217.154.244.239', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01492, '217.154.244.240', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01493, '217.154.244.241', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01494, '217.154.244.251', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01495, '217.205.60', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01496, '217.205.61', 'Mirago');
INSERT INTO `nuke_czuser_botlist` VALUES (01497, '195.200.163.250', 'Mister-Jack');
INSERT INTO `nuke_czuser_botlist` VALUES (01498, '195.200.169.193', 'Mister-Jack');
INSERT INTO `nuke_czuser_botlist` VALUES (01499, '198.31.135.245', 'MixCat');
INSERT INTO `nuke_czuser_botlist` VALUES (01500, '65.54.188.14', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01501, '65.54.188.15', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01502, '65.54.188.16', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01503, '65.54.188.21', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01504, '65.54.188.22', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01505, '65.54.188.26', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01506, '65.54.188.29', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01507, '65.54.188.30', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01508, '65.54.188.31', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01509, '65.54.188.32', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01510, '65.54.188.33', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01511, '65.54.188.35', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01512, '65.54.188.38', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01513, '65.54.188.40', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01514, '65.54.188.41', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01515, '131.107.3.91', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01516, '131.107.137.37', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01517, '131.107.137.47', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01518, '131.107.137.165', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01519, '131.107.137.166', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01520, '131.107.163.47', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01521, '131.107.163.48', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01522, '131.107.163.49', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01523, '131.107.163.57', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01524, '131.107.163.58', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01525, '204.4.80.10', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01526, '204.95.98.251', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01527, '204.95.98.252', 'MSN');
INSERT INTO `nuke_czuser_botlist` VALUES (01528, '213.41.71.18', 'MotionBridge');
INSERT INTO `nuke_czuser_botlist` VALUES (01529, '24.42.211.66', 'myEfinder.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01530, '194.221.102.137', 'Nathan');
INSERT INTO `nuke_czuser_botlist` VALUES (01531, '66.27.55.14', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01532, '209.116.58.140', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01533, '199.184.188.143', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01534, '199.184.188.151', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01535, '199.184.188.160', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01536, '204.210.31.231', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01537, '209.116.58.143', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01538, '209.191.102.228', 'NationalDirectory');
INSERT INTO `nuke_czuser_botlist` VALUES (01539, '218.23.2.122', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01540, '218.145.25.11', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01541, '218.145.25.43', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01542, '218.145.25.45', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01543, '218.145.25.78', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01544, '218.145.25.83', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01545, '218.145.25.109', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01546, '218.145.25.111', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01547, '218.145.25.113', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01548, '220.73.165.12', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01549, '220.73.165.14', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01550, '220.73.165.141', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01551, '220.73.165.206', 'Naver');
INSERT INTO `nuke_czuser_botlist` VALUES (01552, '194.231.30.16', 'NDV');
INSERT INTO `nuke_czuser_botlist` VALUES (01553, '195.188.192.23', 'Netcraft');
INSERT INTO `nuke_czuser_botlist` VALUES (01554, '208.222.98.150', 'NetMind');
INSERT INTO `nuke_czuser_botlist` VALUES (01555, '199.35.98.30', 'NetNose');
INSERT INTO `nuke_czuser_botlist` VALUES (01556, '150.59.20.63', 'NetScoop');
INSERT INTO `nuke_czuser_botlist` VALUES (01557, '150.59.20.20', 'NetScoop');
INSERT INTO `nuke_czuser_botlist` VALUES (01558, '216.71.78.11', 'Netseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01559, '212.63.155.1', 'Nit-Net');
INSERT INTO `nuke_czuser_botlist` VALUES (01560, '195.228.240.177', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01561, '204.166.111.29', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01562, '205.181.75.130', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01563, '205.181.75.60', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01564, '205.181.75.66', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01565, '205.181.75.75', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01566, '205.181.75.76', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01567, '208.219.77', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01568, '216.34.102', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01569, '216.34.109.190', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01570, '216.34.109.191', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01571, '216.34.109.192', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01572, '64.95.79.195', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01573, '64.95.79.40', 'NorthernLight');
INSERT INTO `nuke_czuser_botlist` VALUES (01574, '129.110.16.16', 'The NorthStar Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01575, '129.110.10.1', 'The NorthStar Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01576, '130.235.86.136', 'The NWI Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01577, '130.235.86.137', 'The NWI Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01578, '210.165.39.210', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01579, '210.165.39.211', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01580, '210.165.39.212', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01581, '210.165.39.213', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01582, '210.165.39.214', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01583, '210.165.39.215', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01584, '210.165.39.253', 'Cyberspace Labs');
INSERT INTO `nuke_czuser_botlist` VALUES (01585, '62.121.105.75', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01586, '66.113.7.112', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01587, '66.113.76.111', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01588, '66.113.76.112', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01589, '128.208.6.201', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01590, '131.114.2.96', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01591, '150.140.4.162', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01592, '193.42.229.8', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01593, '209.25.87.38', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01594, '209.237.227.229', 'Nutch');
INSERT INTO `nuke_czuser_botlist` VALUES (01595, '202.36.240.1', 'Nzexplorer');
INSERT INTO `nuke_czuser_botlist` VALUES (01596, '194.221.132.133', 'Oberland Net');
INSERT INTO `nuke_czuser_botlist` VALUES (01597, '128.95.1.184', 'Occam');
INSERT INTO `nuke_czuser_botlist` VALUES (01598, '128.95.1.208', 'Occam');
INSERT INTO `nuke_czuser_botlist` VALUES (01599, '128.95.1.84', 'Occam');
INSERT INTO `nuke_czuser_botlist` VALUES (01600, '195.20.225.123', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01601, '212.227.109.241', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01602, '195.20.225.112', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01603, '195.20.225.115', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01604, '212.227.109.14', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01605, '212.227.109.57', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01606, '212.227.109.58', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01607, '212.227.109.197', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01608, '212.227.109.225', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01609, '212.227.109.229', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01610, '212.227.118.9', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01611, '212.227.118.25', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01612, '212.227.118.130', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01613, '212.227.119.5', 'onlinepilot.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01614, '64.23.82.44', 'Only');
INSERT INTO `nuke_czuser_botlist` VALUES (01615, '210.59.144.148', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01616, '210.59.144.149', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01617, '211.72.252.182', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01618, '209.133.111.58', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01619, '211.72.252.49', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01620, '212.98.78.29', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01621, '205.158.61.194', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01622, '205.158.61.197', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01623, '205.158.61.198', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01624, '205.158.61.200', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01625, '205.158.61.201', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01626, '205.158.61.202', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01627, '205.158.61.207', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01628, '209.133.111.56', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01629, '209.133.111.57', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01630, '216.250.80.67', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01631, '66.7.131.130', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01632, '66.7.131.131', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01633, '66.7.131.132', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01634, '66.7.131.133', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01635, '66.7.131.134', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01636, '66.7.131.135', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01637, '66.7.131.136', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01638, '66.7.131.137', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01639, '66.7.131.138', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01640, '66.7.131.139', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01641, '66.7.131.140', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01642, '66.7.131.141', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01643, '66.7.131.142', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01644, '66.7.131.143', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01645, '66.7.131.144', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01646, '66.7.131.145', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01647, '66.7.131.146', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01648, '66.7.131.147', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01649, '66.7.131.148', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01650, '66.7.131.149', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01651, '66.7.131.150', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01652, '66.7.131.151', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01653, '66.7.131.152', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01654, '66.7.131.153', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01655, '66.7.131.154', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01656, '66.7.131.155', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01657, '66.7.131.156', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01658, '66.7.131.157', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01659, '66.7.131.158', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01660, '66.7.131.159', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01661, '66.7.131.160', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01662, '66.7.131.161', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01663, '66.7.131.162', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01664, '66.7.131.163', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01665, '66.7.131.164', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01666, '66.7.131.165', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01667, '66.237.60', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01668, '211.72.252.150', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01669, '211.72.252.243', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01670, '211.155.160.2', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01671, '211.155.160.5', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01672, '211.155.160.12', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01673, '140.123.103.4', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01674, '211.72.252.147', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01675, '211.72.252.242', 'Openfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01676, '204.138.115.2', 'Open Text');
INSERT INTO `nuke_czuser_botlist` VALUES (01677, '213.215.133.19', 'Physics.org');
INSERT INTO `nuke_czuser_botlist` VALUES (01678, '213.242.179.43', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01679, '217.75.104.23', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01680, '217.75.104.26', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01681, '62.119.21.136', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01682, '62.119.21.132', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01683, '62.119.21.135', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01684, '62.119.21.137', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01685, '62.119.21.138', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01686, '62.119.21.139', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01687, '62.119.21.150', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01688, '62.119.21.157', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01689, '62.119.133.12', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01690, '62.119.133.14', 'Picsearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01691, '128.109.136.132', 'Pioneer');
INSERT INTO `nuke_czuser_botlist` VALUES (01692, '195.120.233.1', 'PGP Key Agent');
INSERT INTO `nuke_czuser_botlist` VALUES (01693, '209.116.70.46', 'Pinpoint');
INSERT INTO `nuke_czuser_botlist` VALUES (01694, '161.58.207.17', 'Pizilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01695, '216.218.130.79', 'Pizilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01696, '216.218.155.2', 'Pizilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01697, '216.218.197.2', 'Pizilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01698, '207.87.8.78', 'PlanetClick');
INSERT INTO `nuke_czuser_botlist` VALUES (01699, '207.87.10.33', 'PlanetClick');
INSERT INTO `nuke_czuser_botlist` VALUES (01700, '212.27.33.160', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01701, '212.27.33.161', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01702, '212.27.33.162', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01703, '212.27.33.163', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01704, '212.27.33.164', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01705, '212.27.33.165', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01706, '212.27.33.166', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01707, '212.27.33.167', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01708, '212.27.33.168', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01709, '212.27.33.169', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01710, '212.27.41.11', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01711, '212.27.41.14', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01712, '212.27.41.22', 'Pompos');
INSERT INTO `nuke_czuser_botlist` VALUES (01713, '195.186.149.91', 'Pop.gr');
INSERT INTO `nuke_czuser_botlist` VALUES (01714, '209.10.169.15', 'PortalB');
INSERT INTO `nuke_czuser_botlist` VALUES (01715, '209.10.169.16', 'PortalB');
INSERT INTO `nuke_czuser_botlist` VALUES (01716, '209.10.169.17', 'PortalB');
INSERT INTO `nuke_czuser_botlist` VALUES (01717, '209.20.44.236', 'Portal Juice');
INSERT INTO `nuke_czuser_botlist` VALUES (01718, '154.15.28.143', 'psi.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01719, '212.78.64.35', 'Qango');
INSERT INTO `nuke_czuser_botlist` VALUES (01720, '217.158.17.25', 'Qango');
INSERT INTO `nuke_czuser_botlist` VALUES (01721, '216.104.145.71', 'Questfinder');
INSERT INTO `nuke_czuser_botlist` VALUES (01722, '64.40.105.197', 'Queue');
INSERT INTO `nuke_czuser_botlist` VALUES (01723, '63.251.238.8', 'Realnames');
INSERT INTO `nuke_czuser_botlist` VALUES (01724, '216.86.229.85', 'Realnames');
INSERT INTO `nuke_czuser_botlist` VALUES (01725, '216.86.229.86', 'Realnames');
INSERT INTO `nuke_czuser_botlist` VALUES (01726, '212.172.94.128', 'Rex');
INSERT INTO `nuke_czuser_botlist` VALUES (01727, '206.215.122.20', 'Rex');
INSERT INTO `nuke_czuser_botlist` VALUES (01728, '209.254.2.2', 'SafetyNet Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01729, '64.140.165.133', 'Scrub the web');
INSERT INTO `nuke_czuser_botlist` VALUES (01730, '208.234.1.83', 'Scrub the web');
INSERT INTO `nuke_czuser_botlist` VALUES (01731, '208.145.190.250', 'Scrub the web');
INSERT INTO `nuke_czuser_botlist` VALUES (01732, '208.145.190.251', 'Scrub the web');
INSERT INTO `nuke_czuser_botlist` VALUES (01733, '208.145.190.254', 'Scrub the web');
INSERT INTO `nuke_czuser_botlist` VALUES (01734, '195.141.85.142', 'Search.ch');
INSERT INTO `nuke_czuser_botlist` VALUES (01735, '195.141.85.146', 'Search.ch');
INSERT INTO `nuke_czuser_botlist` VALUES (01736, '206.40.146.58', 'SearchHippo');
INSERT INTO `nuke_czuser_botlist` VALUES (01737, '208.148.122.27', 'SearchHippo');
INSERT INTO `nuke_czuser_botlist` VALUES (01738, '208.148.122.28', 'SearchHippo');
INSERT INTO `nuke_czuser_botlist` VALUES (01739, '208.148.122.29', 'SearchHippo');
INSERT INTO `nuke_czuser_botlist` VALUES (01740, '208.165.96.26', 'SearchKing');
INSERT INTO `nuke_czuser_botlist` VALUES (01741, '206.129.98.7', 'SearchMil.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01742, '206.129.98.16', 'SearchMil.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01743, '206.129.98.19', 'SearchMil.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01744, '206.129.0.3', 'Searchopolis');
INSERT INTO `nuke_czuser_botlist` VALUES (01745, '206.129.0.131', 'Searchopolis');
INSERT INTO `nuke_czuser_botlist` VALUES (01746, '206.129.0.132', 'Searchopolis');
INSERT INTO `nuke_czuser_botlist` VALUES (01747, '206.129.1.24', 'Searchopolis');
INSERT INTO `nuke_czuser_botlist` VALUES (01748, '206.129.1.27', 'Searchopolis');
INSERT INTO `nuke_czuser_botlist` VALUES (01749, '24.90.243.203', 'SearchSpider');
INSERT INTO `nuke_czuser_botlist` VALUES (01750, '216.205.148.106', 'SearchWho');
INSERT INTO `nuke_czuser_botlist` VALUES (01751, '133.9.222.37', 'Senrigan');
INSERT INTO `nuke_czuser_botlist` VALUES (01752, '194.201.93.6', 'searchengine.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01753, '194.201.93.18', 'searchengine.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01754, '194.201.93.118', 'searchengine.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01755, '68.166.53.158', 'Semantic Discovery');
INSERT INTO `nuke_czuser_botlist` VALUES (01756, '69.3.78.160', 'Semantic Discovery');
INSERT INTO `nuke_czuser_botlist` VALUES (01757, '63.251.10.139', 'Singing Fish');
INSERT INTO `nuke_czuser_botlist` VALUES (01758, '63.251.169.236', 'Singing Fish');
INSERT INTO `nuke_czuser_botlist` VALUES (01759, '206.253.222.233', 'Singing Fish');
INSERT INTO `nuke_czuser_botlist` VALUES (01760, '216.188.26.203', 'Slider');
INSERT INTO `nuke_czuser_botlist` VALUES (01761, '128.121.225.20', 'SmartDesk');
INSERT INTO `nuke_czuser_botlist` VALUES (01762, '207.16.241', 'Smart Spider');
INSERT INTO `nuke_czuser_botlist` VALUES (01763, '203.89.255.8', 'Sofcom');
INSERT INTO `nuke_czuser_botlist` VALUES (01764, '194.197.68.46', 'Sonera');
INSERT INTO `nuke_czuser_botlist` VALUES (01765, '194.97.8.162', 'speedfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01766, '194.97.8.163', 'speedfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01767, '192.109.251.26', 'speedfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01768, '194.221.132.56', 'speedfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01769, '194.221.132.139', 'speedfind');
INSERT INTO `nuke_czuser_botlist` VALUES (01770, '128.211.213.117', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01771, '207.44.130.81', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01772, '207.44.142.84', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01773, '209.150.128.145', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01774, '216.71.84.57', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01775, '216.71.84.212', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01776, '216.71.187.134', 'Splat! Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01777, '198.147.135.13', 'Spry Wizard Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01778, '165.121.1.77', 'Spry Wizard Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01779, '165.121.2.77', 'Spry Wizard Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01780, '198.185.1.224', 'Spry Wizard Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01781, '194.231.30.15', 'Spider');
INSERT INTO `nuke_czuser_botlist` VALUES (01782, '209.203.234.4', 'SpiderBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01783, '207.77.90.17', 'SpiderBot');
INSERT INTO `nuke_czuser_botlist` VALUES (01784, '66.163.18.197', 'Spider Monkey');
INSERT INTO `nuke_czuser_botlist` VALUES (01785, '195.20.227.67', 'Spider Monkey');
INSERT INTO `nuke_czuser_botlist` VALUES (01786, '207.8.212.162', 'SuperSnooper');
INSERT INTO `nuke_czuser_botlist` VALUES (01787, '207.8.212.163', 'SuperSnooper');
INSERT INTO `nuke_czuser_botlist` VALUES (01788, '162.33.251.50', 'SuperSnooper');
INSERT INTO `nuke_czuser_botlist` VALUES (01789, '66.28.248.146', 'surfnomore');
INSERT INTO `nuke_czuser_botlist` VALUES (01790, '81.208.26.55', 'Sygol');
INSERT INTO `nuke_czuser_botlist` VALUES (01791, '62.181.185.37', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01792, '62.181.185.44', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01793, '193.218.115.6', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01794, '193.218.115.81', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01795, '193.218.115.254', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01796, '194.181.35.5', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01797, '194.181.35.6', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01798, '213.134.142.22', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01799, '213.134.142.50', 'Szukacz.pl');
INSERT INTO `nuke_czuser_botlist` VALUES (01800, '212.97.42.229', 'Tecnoseek.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01801, '198.49.220.81', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01802, '207.218.150.79', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01803, '63.251.4.43', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01804, '208.51.0.20', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01805, '208.51.0.74', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01806, '208.51.0.79', 'Thunderstone');
INSERT INTO `nuke_czuser_botlist` VALUES (01807, '195.130.233.22', 'Tiscalinet.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01808, '195.130.233.30', 'Tiscalinet.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01809, '195.130.233.60', 'Tiscalinet.it');
INSERT INTO `nuke_czuser_botlist` VALUES (01810, '161.53.120.3', 'TitIn');
INSERT INTO `nuke_czuser_botlist` VALUES (01811, '212.185.44.13', 'T-Online');
INSERT INTO `nuke_czuser_botlist` VALUES (01812, '194.151.1.60', 'Track');
INSERT INTO `nuke_czuser_botlist` VALUES (01813, '146.82.72.23', 'Tygo');
INSERT INTO `nuke_czuser_botlist` VALUES (01814, '132.239.50.245', 'UCSD Crawl');
INSERT INTO `nuke_czuser_botlist` VALUES (01815, '217.151.96.52', 'UKSearchPages');
INSERT INTO `nuke_czuser_botlist` VALUES (01816, '209.67.119.9', 'Valkyrie');
INSERT INTO `nuke_czuser_botlist` VALUES (01817, '133.9.215.72', 'Verno');
INSERT INTO `nuke_czuser_botlist` VALUES (01818, '133.9.215.87', 'Verno');
INSERT INTO `nuke_czuser_botlist` VALUES (01819, '193.172.236.108', 'Vindex');
INSERT INTO `nuke_czuser_botlist` VALUES (01820, '193.172.237.17', 'Vindex');
INSERT INTO `nuke_czuser_botlist` VALUES (01821, '193.172.236.114', 'Vindex');
INSERT INTO `nuke_czuser_botlist` VALUES (01822, '193.172.237.16', 'Vindex');
INSERT INTO `nuke_czuser_botlist` VALUES (01823, '193.172.236.8', 'Vindex');
INSERT INTO `nuke_czuser_botlist` VALUES (01824, '128.2.206.215', 'vision-search');
INSERT INTO `nuke_czuser_botlist` VALUES (01825, '195.101.94.80', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01826, '195.101.94.81', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01827, '195.101.94.15', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01828, '195.101.94.101', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01829, '195.101.94.166', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01830, '195.101.94.208', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01831, '195.101.94.209', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01832, '209.185.188.207', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01833, '216.35.76.11', 'voila.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01834, '216.13.169.244', 'VWbot');
INSERT INTO `nuke_czuser_botlist` VALUES (01835, '64.95.2.212', 'W3matter.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01836, '216.104.145.2', 'W8 Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01837, '216.104.145.160', 'W8 Search');
INSERT INTO `nuke_czuser_botlist` VALUES (01838, '212.127.141.18', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01839, '212.58.162.42', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01840, '212.58.162.78', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01841, '212.58.169.133', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01842, '212.58.169.181', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01843, '213.73.161.41', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01844, '213.73.197.30', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01845, '213.10.10.117', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01846, '213.10.10.118', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01847, '80.60.35.143', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01848, '81.205.39.64', 'Walhello');
INSERT INTO `nuke_czuser_botlist` VALUES (01849, '206.253.217.18', 'Web21');
INSERT INTO `nuke_czuser_botlist` VALUES (01850, '199.182.120.206', 'WebBandit Web Spider');
INSERT INTO `nuke_czuser_botlist` VALUES (01851, '193.136.20.2', 'Web Core');
INSERT INTO `nuke_czuser_botlist` VALUES (01852, '193.136.20.250', 'Web Core');
INSERT INTO `nuke_czuser_botlist` VALUES (01853, '198.3.99.101', 'WebCrawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01854, '204.62.245.77', 'WebCrawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01855, '204.62.245.88', 'WebCrawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01856, '194.45.170.120', 'Web.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01857, '65.105.223.11', 'WebFind');
INSERT INTO `nuke_czuser_botlist` VALUES (01858, '61.139.65.222', 'WebGather');
INSERT INTO `nuke_czuser_botlist` VALUES (01859, '144.214.122.55', 'WebGather');
INSERT INTO `nuke_czuser_botlist` VALUES (01860, '203.51.46.83', 'Websearch.com.au');
INSERT INTO `nuke_czuser_botlist` VALUES (01861, '203.51.44.181', 'Websearch.com.au');
INSERT INTO `nuke_czuser_botlist` VALUES (01862, '217.73.164.106', 'WebsearchUS');
INSERT INTO `nuke_czuser_botlist` VALUES (01863, '62.96.181.197', 'Webseek.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01864, '212.111.41.2', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01865, '212.111.41.33', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01866, '212.111.41.34', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01867, '212.111.41.35', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01868, '212.111.41.36', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01869, '212.111.41.52', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01870, '212.111.41.53', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01871, '212.111.41.151', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01872, '212.111.41.154', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01873, '212.111.41.153', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01874, '212.111.41.152', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01875, '212.135.14.4', 'Webtop');
INSERT INTO `nuke_czuser_botlist` VALUES (01876, '202.139.99.130', 'Web Wombat');
INSERT INTO `nuke_czuser_botlist` VALUES (01877, '202.139.99.131', 'Web Wombat');
INSERT INTO `nuke_czuser_botlist` VALUES (01878, '202.139.99.131', 'Web Wombat');
INSERT INTO `nuke_czuser_botlist` VALUES (01879, '210.8.18.66', 'Web Wombat');
INSERT INTO `nuke_czuser_botlist` VALUES (01880, '203.9.252.2', 'Web Wombat');
INSERT INTO `nuke_czuser_botlist` VALUES (01881, '67.67.130.238', 'WhatchaSeek');
INSERT INTO `nuke_czuser_botlist` VALUES (01882, '209.69.255.132', 'whatUseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01883, '209.69.255.131', 'whatUseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01884, '209.69.255.160', 'whatUseek');
INSERT INTO `nuke_czuser_botlist` VALUES (01885, '63.173.190.2', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01886, '63.173.190.16', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01887, '63.173.190.30', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01888, '63.173.190.152', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01889, '63.225.238.7', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01890, '63.225.238.11', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01891, '216.250.143.106', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01892, '216.250.143.102', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01893, '208.1.109.130', 'WhizBang');
INSERT INTO `nuke_czuser_botlist` VALUES (01894, '63.140.184.187', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01895, '192.41.47.46', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01896, '209.19.244.162', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01897, '63.140.184.168', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01898, '63.140.184.171', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01899, '63.140.184.172', 'WholeWeb.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01900, '205.230.7.23', 'WhoWhere Robot');
INSERT INTO `nuke_czuser_botlist` VALUES (01901, '207.178.193.51', 'Wild Ferret Web Hopper');
INSERT INTO `nuke_czuser_botlist` VALUES (01902, '212.19.205.147', 'wise-guys.nl');
INSERT INTO `nuke_czuser_botlist` VALUES (01903, '212.172.247.162', 'Witch');
INSERT INTO `nuke_czuser_botlist` VALUES (01904, '209.78.25.59', 'wolong.de');
INSERT INTO `nuke_czuser_botlist` VALUES (01905, '207.153.39.132', 'World Search Center');
INSERT INTO `nuke_czuser_botlist` VALUES (01906, '207.153.23.8', 'World Search Center');
INSERT INTO `nuke_czuser_botlist` VALUES (01907, '128.138.236.20', 'The WWW Worm');
INSERT INTO `nuke_czuser_botlist` VALUES (01908, '81.5.184.25', 'Wotbox');
INSERT INTO `nuke_czuser_botlist` VALUES (01909, '203.96.111.201', 'XTRA');
INSERT INTO `nuke_czuser_botlist` VALUES (01910, '208.197.37.29', 'Yeehaa');
INSERT INTO `nuke_czuser_botlist` VALUES (01911, '130.245.134.62', 'Yuntis');
INSERT INTO `nuke_czuser_botlist` VALUES (01912, '130.245.134.63', 'Yuntis');
INSERT INTO `nuke_czuser_botlist` VALUES (01913, '130.245.134.64', 'Yuntis');
INSERT INTO `nuke_czuser_botlist` VALUES (01914, '133.11.36.24', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01915, '133.11.36.25', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01916, '133.11.36.26', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01917, '133.11.36.28', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01918, '133.11.36.34', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01919, '133.11.36.36', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01920, '133.11.36.37', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01921, '133.11.36.39', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01922, '133.11.36.41', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01923, '133.11.36.42', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01924, '133.11.36.45', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01925, '133.11.36.46', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01926, '133.11.36.50', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01927, '133.11.36.52', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01928, '133.11.36.54', 'Zao - Kototoi Project');
INSERT INTO `nuke_czuser_botlist` VALUES (01929, '216.55.128.47', 'zSearch.net');
INSERT INTO `nuke_czuser_botlist` VALUES (01930, '12.148.209.196', 'NameProtect');
INSERT INTO `nuke_czuser_botlist` VALUES (01931, '12.40.85', 'NameProtect');
INSERT INTO `nuke_czuser_botlist` VALUES (01932, '138.15.164.9', 'ScoutAbout');
INSERT INTO `nuke_czuser_botlist` VALUES (01933, '146.48.78.32', 'UbiCrawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01934, '146.48.78.38', 'UbiCrawler');
INSERT INTO `nuke_czuser_botlist` VALUES (01935, '147.208.15.13', 'NetMechanic');
INSERT INTO `nuke_czuser_botlist` VALUES (01936, '195.166.231.3', 'Microsoft URL control');
INSERT INTO `nuke_czuser_botlist` VALUES (01937, '198.139.155.32', 'Internetseer.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01938, '198.139.155.7', 'Internetseer.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01939, '198.185.18.207', 'Lexis-Nexis.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01940, '198.4.83.49', 'Almaden');
INSERT INTO `nuke_czuser_botlist` VALUES (01941, '204.62.226.36', 'MarkWatch.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01942, '206.190.171.174', 'MarkWatch.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01943, '206.190.171.175', 'MarkWatch.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01944, '207.140.168.143', 'Tivra');
INSERT INTO `nuke_czuser_botlist` VALUES (01945, '207.140.168.146', 'Tivra');
INSERT INTO `nuke_czuser_botlist` VALUES (01946, '207.200.81.145', 'Robozilla');
INSERT INTO `nuke_czuser_botlist` VALUES (01947, '207.235.6.157', 'Webrank');
INSERT INTO `nuke_czuser_botlist` VALUES (01948, '208.128.7.215', 'Grub.org');
INSERT INTO `nuke_czuser_botlist` VALUES (01949, '209.167.50.22', 'LinkWalker');
INSERT INTO `nuke_czuser_botlist` VALUES (01950, '209.167.50.25', 'LinkWalker');
INSERT INTO `nuke_czuser_botlist` VALUES (01951, '209.247.40.99', 'Alexa');
INSERT INTO `nuke_czuser_botlist` VALUES (01952, '209.61.182.37', 'Tracerlock');
INSERT INTO `nuke_czuser_botlist` VALUES (01953, '209.73.228.163', 'Webclipping.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01954, '209.73.228.167', 'Webclipping.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01955, '211.101.236.162', 'Indy Library');
INSERT INTO `nuke_czuser_botlist` VALUES (01956, '211.101.236.91', 'Indy Library');
INSERT INTO `nuke_czuser_botlist` VALUES (01957, '211.154.211.209', 'Google Fake');
INSERT INTO `nuke_czuser_botlist` VALUES (01958, '212.1.26.100', 'Indy Library');
INSERT INTO `nuke_czuser_botlist` VALUES (01959, '212.253.129.11', 'Spidersoft');
INSERT INTO `nuke_czuser_botlist` VALUES (01960, '212.73.246.71', 'Xyleme.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01961, '212.73.246.73', 'Xyleme.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01962, '213.97.108.143', 'Inria.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01963, '216.145.50.40', 'Yahoo.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01964, '216.182.214.7', 'NetMechanic');
INSERT INTO `nuke_czuser_botlist` VALUES (01965, '24.126.133.124', 'Lite Bot');
INSERT INTO `nuke_czuser_botlist` VALUES (01966, '62.58.2.5', 'Eidetica.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01967, '63.148.99.224', 'Cyveillance');
INSERT INTO `nuke_czuser_botlist` VALUES (01968, '63.148.99.255', 'Cyveillance');
INSERT INTO `nuke_czuser_botlist` VALUES (01969, '63.173.190.19', 'Whizbang');
INSERT INTO `nuke_czuser_botlist` VALUES (01970, '63.212.171.171', 'Inria.fr');
INSERT INTO `nuke_czuser_botlist` VALUES (01971, '64.133.109.250', 'IncyWincy');
INSERT INTO `nuke_czuser_botlist` VALUES (01972, '64.14.241.54', 'websmostlinked.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01973, '64.210.196.195', 'Girafa');
INSERT INTO `nuke_czuser_botlist` VALUES (01974, '64.210.196.198', 'Girafa');
INSERT INTO `nuke_czuser_botlist` VALUES (01975, '64.222.18.44', 'DTSearch');
INSERT INTO `nuke_czuser_botlist` VALUES (01976, '64.241.242.11', 'Zealbot');
INSERT INTO `nuke_czuser_botlist` VALUES (01977, '64.241.243.32', 'Zealbot');
INSERT INTO `nuke_czuser_botlist` VALUES (01978, '64.241.243.65', 'Zealbot');
INSERT INTO `nuke_czuser_botlist` VALUES (01979, '64.241.243.66', 'Zealbot');
INSERT INTO `nuke_czuser_botlist` VALUES (01980, '64.69.79.210', 'Teradex Mapper');
INSERT INTO `nuke_czuser_botlist` VALUES (01981, '64.81.243.66', 'IncyWincy');
INSERT INTO `nuke_czuser_botlist` VALUES (01982, '66.221.171.1', 'Websquash.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01983, '66.28.20.194', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01984, '66.28.44.122', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01985, '66.28.44.123', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01986, '66.28.44.125', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01987, '66.28.68.234', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01988, '66.28.68.235', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01989, '66.28.68.236', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01990, '66.28.68.237', 'Metacarta.com');
INSERT INTO `nuke_czuser_botlist` VALUES (01991, '64.241.243.123', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01992, '64.241.242.177', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01993, '64.241.243.65', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01994, '64.241.243.124', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01995, '65.116.145.141', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01996, '65.113.96.174', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01997, '65.116.145', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01998, '66.35.208.59', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (01999, '66.35.208.60', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02000, '66.35.208.112', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02001, '66.35.208.158', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02002, '66.35.208.160', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02003, '66.35.208.206', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02004, '66.35.208.210', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02005, '66.35.208.211', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02006, '208.232.154.64', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02007, '209.249.66.10', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02008, '209.249.66.26', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02009, '209.249.66.36', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02010, '209.249.67.101', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02011, '209.249.67.102', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02012, '209.249.67.103', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02013, '209.249.67.104', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02014, '209.249.67.105', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02015, '209.249.67.106', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02016, '209.249.67.107', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02017, '209.249.67.108', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02018, '209.249.67.109', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02019, '209.249.67.110', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02020, '209.249.67.111', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02021, '209.249.67.112', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02022, '209.249.67.113', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02023, '209.249.67.114', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02024, '209.249.67.115', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02025, '209.249.67.116', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02026, '209.249.67.117', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02027, '209.249.67.118', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02028, '209.249.67.119', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02029, '209.249.67.120', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02030, '209.249.67.121', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02031, '209.249.67.122', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02032, '209.249.67.125', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02033, '209.249.67.126', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02034, '209.249.67.127', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02035, '209.249.67.128', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02036, '209.249.67.129', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02037, '209.249.67.130', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02038, '209.249.67.131', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02039, '209.249.67.132', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02040, '209.249.67.133', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02041, '209.249.67.134', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02042, '209.249.67.135', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02043, '209.249.67.136', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02044, '209.249.67.137', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02045, '209.249.67.138', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02046, '209.249.67.139', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02047, '209.249.67.140', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02048, '209.249.67.141', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02049, '209.249.67.142', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02050, '209.249.67.143', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02051, '209.249.67.144', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02052, '210.109.141.5', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02053, '216.34.42.12', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02054, '216.34.42.14', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02055, '216.34.42.36', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02056, '216.34.42.38', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02057, '216.34.42.42', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02058, '216.34.42.47', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02059, '216.34.42.54', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02060, '216.34.42.55', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02061, '216.34.42.56', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02062, '216.34.42.57', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02063, '216.34.42.59', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02064, '216.34.42.110', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02065, '216.34.42.111', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02066, '216.34.42.112', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02067, '216.34.42.113', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02068, '216.34.42.114', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02069, '216.34.42.115', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02070, '216.34.42.116', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02071, '216.34.42.117', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02072, '216.34.42.171', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02073, '216.34.42.172', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02074, '216.34.42.173', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02075, '216.34.42.176', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02076, '216.34.42.210', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02077, '216.34.42.211', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02078, '216.34.42.212', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02079, '216.34.42.213', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02080, '216.34.42.214', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02081, '216.34.42.215', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02082, '216.34.42.216', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02083, '216.34.42.217', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02084, '216.88.158.142', 'WISEnut');
INSERT INTO `nuke_czuser_botlist` VALUES (02085, '127.0.0.1', 'Lone Bot');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_czuser_conf`
-- 

DROP TABLE IF EXISTS `nuke_czuser_conf`;
CREATE TABLE `nuke_czuser_conf` (
  `user_ip` varchar(24) NOT NULL default '',
  `pms` varchar(24) NOT NULL default '',
  `spoint` varchar(24) NOT NULL default '',
  `user_posts` varchar(24) NOT NULL default '',
  `avatar` varchar(24) NOT NULL default '',
  `bbranks` varchar(24) NOT NULL default '',
  `most` varchar(24) NOT NULL default '',
  `hits` varchar(24) NOT NULL default '',
  `groups` varchar(24) NOT NULL default '',
  `tooltip` varchar(24) NOT NULL default '',
  `online` varchar(24) NOT NULL default '',
  `guests` varchar(24) NOT NULL default '',
  `chopped` varchar(24) NOT NULL default '',
  `pick` varchar(24) NOT NULL default '',
  `ordermode` varchar(24) NOT NULL default '',
  `charnum` varchar(24) NOT NULL default '',
  `davatar` varchar(24) NOT NULL default '',
  `duser` varchar(24) NOT NULL default '',
  `demail` varchar(24) NOT NULL default '',
  `dreg` varchar(24) NOT NULL default '',
  `dgender` varchar(24) NOT NULL default '',
  `dpost` varchar(24) NOT NULL default '',
  `dtheme` varchar(24) NOT NULL default '',
  `dwhere` varchar(24) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_czuser_conf`
-- 

INSERT INTO `nuke_czuser_conf` VALUES ('1', '1', '0', '1', '1', '1', '1', '0', '1', '1', '0', '1', '1', '0', '0', '10', '1', '1', '0', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_czuser_info`
-- 

DROP TABLE IF EXISTS `nuke_czuser_info`;
CREATE TABLE `nuke_czuser_info` (
  `pic` varchar(40) NOT NULL default '',
  `view` varchar(40) NOT NULL default '',
  `king` tinyint(2) NOT NULL default '0',
  `gname` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`view`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_czuser_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_czuser_mostonline`
-- 

DROP TABLE IF EXISTS `nuke_czuser_mostonline`;
CREATE TABLE `nuke_czuser_mostonline` (
  `total` int(10) NOT NULL default '0',
  `members` int(10) NOT NULL default '0',
  `spiders` int(10) NOT NULL default '0',
  `nonmembers` int(10) NOT NULL default '0',
  PRIMARY KEY  (`total`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_google_bot_detector`;
CREATE TABLE `nuke_google_bot_detector` (
  `detect_id` int(8) NOT NULL auto_increment,
  `detect_time` int(11) NOT NULL default '0',
  `detect_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`detect_id`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_hnl_categories`;
CREATE TABLE `nuke_hnl_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `ctitle` varchar(50) NOT NULL default '',
  `cdescription` text NOT NULL,
  `cblocklimit` int(4) NOT NULL default '10',
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_hnl_categories`
-- 

INSERT INTO `nuke_hnl_categories` VALUES (1, '*Unassigned*', 'This is a catch-all category where newsletters can default to or if all other categories are removed.  Do NOT remove this category!  This category of newsletters are only shown to the Admins.  ', 5);
INSERT INTO `nuke_hnl_categories` VALUES (2, 'Archived Newsletters', 'This category is for newsletter subscribers.', 5);
INSERT INTO `nuke_hnl_categories` VALUES (3, 'Archived Mass Mails', 'This category is used for mass mails.', 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_hnl_cfg`
-- 

DROP TABLE IF EXISTS `nuke_hnl_cfg`;
CREATE TABLE `nuke_hnl_cfg` (
  `cfg_nm` varchar(255) NOT NULL default '',
  `cfg_val` longtext NOT NULL,
  PRIMARY KEY  (`cfg_nm`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_hnl_cfg`
-- 

INSERT INTO `nuke_hnl_cfg` VALUES ('debug_mode', 'OFF');
INSERT INTO `nuke_hnl_cfg` VALUES ('debug_output', 'DISPLAY');
INSERT INTO `nuke_hnl_cfg` VALUES ('show_blocks', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('dl_module', 'downloads');
INSERT INTO `nuke_hnl_cfg` VALUES ('blk_lmt', '10');
INSERT INTO `nuke_hnl_cfg` VALUES ('scroll', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('scroll_height', '180');
INSERT INTO `nuke_hnl_cfg` VALUES ('scroll_amt', '2');
INSERT INTO `nuke_hnl_cfg` VALUES ('scroll_delay', '100');
INSERT INTO `nuke_hnl_cfg` VALUES ('version', '1.3.0');
INSERT INTO `nuke_hnl_cfg` VALUES ('show_hits', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('show_dates', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('show_sender', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('show_categories', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('nsn_groups', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('latest_news', '5');
INSERT INTO `nuke_hnl_cfg` VALUES ('latest_downloads', '5');
INSERT INTO `nuke_hnl_cfg` VALUES ('latest_links', '5');
INSERT INTO `nuke_hnl_cfg` VALUES ('latest_forums', '5');
INSERT INTO `nuke_hnl_cfg` VALUES ('latest_reviews', '5');
INSERT INTO `nuke_hnl_cfg` VALUES ('wysiwyg_on', '1');
INSERT INTO `nuke_hnl_cfg` VALUES ('wysiwyg_rows', '30');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_hnl_newsletters`
-- 

DROP TABLE IF EXISTS `nuke_hnl_newsletters`;
CREATE TABLE `nuke_hnl_newsletters` (
  `nid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '1',
  `topic` varchar(100) NOT NULL default '',
  `sender` varchar(20) NOT NULL default '',
  `filename` varchar(32) NOT NULL default '',
  `datesent` date default NULL,
  `view` int(1) NOT NULL default '0',
  `groups` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_hnl_newsletters`
-- 

INSERT INTO `nuke_hnl_newsletters` VALUES (1, 1, 'PREVIEW Newsletter File', 'Admin', 'tmp.php', '0000-00-00', 99, '', 0);
INSERT INTO `nuke_hnl_newsletters` VALUES (2, 1, 'Tested Email Temporary File', 'Admin', 'testemail.php', '0000-00-00', 99, '', 0);


DROP TABLE IF EXISTS `nuke_lastseen`;
CREATE TABLE `nuke_lastseen` (
  `id` int(15) NOT NULL auto_increment,
  `username` text NOT NULL,
  `date` int(15) NOT NULL default '0',
  `ip` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_linkus`;
CREATE TABLE `nuke_linkus` (
  `id` int(255) NOT NULL auto_increment,
  `image` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_linkus`
-- 

INSERT INTO `nuke_linkus` VALUES (1, 'http://www.futurenuke.com/1/np.gif', 'http://www.futurenuke.com');
INSERT INTO `nuke_linkus` VALUES (2, 'http://www.darkforgegfx.com/images/CZlinks/dark1.gif', 'http://www.darkforgegfx.com');
INSERT INTO `nuke_linkus` VALUES (3, 'http://www.artofgaming.co.uk/images/btn.gif', 'http://www.artofgaming.co.uk');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_linkus_conf`
-- 

DROP TABLE IF EXISTS `nuke_linkus_conf`;
CREATE TABLE `nuke_linkus_conf` (
  `fade` varchar(255) NOT NULL default '',
  `marquee` varchar(255) NOT NULL default '',
  `amount` varchar(255) NOT NULL default '',
  `direction` varchar(255) NOT NULL default '',
  `height` varchar(255) NOT NULL default '',
  `seperation` varchar(50) NOT NULL default '',
  `site_image` varchar(255) NOT NULL default 'your site image here'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_linkus_conf`
-- 

INSERT INTO `nuke_linkus_conf` VALUES ('1', '1', '2', 'up', '220', '', 'http://www.futurenuke.com/1/np.gif');

DROP TABLE IF EXISTS `nuke_modules`;
CREATE TABLE `nuke_modules` (
  `mid` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `custom_title` varchar(255) NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  `view` int(1) NOT NULL default '0',
  `groups` text NOT NULL,
  `inmenu` tinyint(1) NOT NULL default '1',
  `mod_group` int(10) default '0',
  `mcid` int(11) NOT NULL default '1',
  `admins` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`mid`),
  KEY `mid` (`mid`),
  KEY `title` (`title`),
  KEY `custom_title` (`custom_title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_modules`
-- 

INSERT INTO `nuke_modules` VALUES (1, 'AvantGo', 'AvantGo', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (2, 'Ban_Request', 'Request Ban', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (3, 'Banner_Ads', 'Banner Ads', 1, 0, '', 1, 0, 3, '');
INSERT INTO `nuke_modules` VALUES (4, 'Calendar', 'Calendar', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (5, 'NukeC30', 'Classifieds', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (6, 'Contact', 'Contact', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (7, 'Content', 'Content', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (8, 'Docs', 'Documents', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (9, 'Donations', 'Donations', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (10, 'Downloads', 'Downloads', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (11, 'Encyclopedia', 'Encyclopedia', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (12, 'FAQ', 'FAQ', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (13, 'Forums', 'Forums', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (14, 'Groups', 'Groups', 1, 0, '', 1, 0, 3, '');
INSERT INTO `nuke_modules` VALUES (15, 'Members_List', 'Members List', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (16, 'News', 'News', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (17, 'PHP-Nuke_Tools', 'Tools', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (18, 'Private_Messages', 'My Messages', 1, 0, '', 1, 0, 3, '');
INSERT INTO `nuke_modules` VALUES (50, 'NukeSentinel', 'NukeSentinel', 1, 0, '', 0, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (20, 'Recommend_Us', 'Refer Us', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (21, 'Reviews', 'Reviews', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (22, 'Search', 'Search', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (41, 'Work_Probe', 'Work Probe', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (24, 'Shout_Box', 'Shout Box', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (25, 'Staff', 'Staff', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (26, 'Statistics', 'Statistics', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (27, 'Stories_Archive', 'News Archive', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (28, 'Submit_News', 'Submit News', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (29, 'Supporters', 'Supporters', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (30, 'Surveys', 'Surveys', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (32, 'Top', 'Top 10', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (33, 'Top_Sites', 'Top Sites', 1, 0, '', 1, 0, 2, 'Jimmy,');
INSERT INTO `nuke_modules` VALUES (34, 'Topics', 'News Topics', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (35, 'Universal', 'Universal', 1, 0, '', 1, 0, 4, '');
INSERT INTO `nuke_modules` VALUES (36, 'Web_Links', 'Web Links', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (37, 'Work_Board', 'Work Board', 1, 0, '', 1, 0, 2, 'Jimmy,');
INSERT INTO `nuke_modules` VALUES (38, 'Your_Account', 'Account', 1, 0, '', 1, 0, 3, '');
INSERT INTO `nuke_modules` VALUES (40, 'Mailing_List', 'Mailing List', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (42, 'Work_Request', 'Requests', 1, 0, '', 1, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (45, 'Cancel', 'Cancel', 1, 0, '', 0, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (46, 'Thanks', 'Thanks', 1, 0, '', 0, 0, 2, '');
INSERT INTO `nuke_modules` VALUES (47, 'Shopping_Cart', 'Store', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (49, 'Who-is-Where', 'Who is Where', 1, 1, '', 0, 0, 3, '');
INSERT INTO `nuke_modules` VALUES (54, 'Journal', 'Journal', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (70, 'Sitemap', 'Sitemap', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (56, 'Amazon', 'Amazon', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (57, 'Arcade_Tweaks', 'Arcade_Tweaks', 1, 2, '', 0, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (59, 'CZNews', 'CZNews', 0, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (64, 'Supporters_2', 'Affiliates', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (61, 'Fusion', 'Fusion', 1, 0, '', 0, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (62, 'Whats_New', 'Whats_New', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (63, 'Resend_Email', 'Resend_Email', 1, 2, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (65, 'Tutorials', 'Tutorials', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (66, 'Advertising', 'Advertising', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (67, 'Credits', 'Credits', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (73, 'HTML_Newsletter', 'Newsletter', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (72, 'Member_Application', 'Member Application', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (75, 'MetAuthors', 'MetAuthors', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (76, 'SimpleCart', 'SimpleCart', 1, 0, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (77, 'PrivateDownloads', 'Private Downloads', 1, 1, '', 1, 0, 1, '');
INSERT INTO `nuke_modules` VALUES (78, 'Submit_Downloads', 'Submit_Downloads', 0, 0, '', 1, 0, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_modules_categories`
-- 

DROP TABLE IF EXISTS `nuke_modules_categories`;
CREATE TABLE `nuke_modules_categories` (
  `mcid` int(11) NOT NULL auto_increment,
  `mcname` varchar(60) NOT NULL default '',
  `visible` int(1) NOT NULL default '1',
  PRIMARY KEY  (`mcid`),
  KEY `mcid` (`mcid`),
  KEY `mcname` (`mcname`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_modules_categories`
-- 

INSERT INTO `nuke_modules_categories` VALUES (1, 'General', 1);
INSERT INTO `nuke_modules_categories` VALUES (2, 'Community', 1);
INSERT INTO `nuke_modules_categories` VALUES (3, 'Members', 1);
INSERT INTO `nuke_modules_categories` VALUES (4, 'Information', 1);

DROP TABLE IF EXISTS `nuke_ns_downloads_add_modify`;
CREATE TABLE `nuke_ns_downloads_add_modify` (
  `ns_dl_add` tinyint(1) NOT NULL default '1',
  `ns_dl_anon_add` tinyint(1) NOT NULL default '0',
  `ns_dl_auto_add` tinyint(1) NOT NULL default '0',
  `ns_dl_allow_html` tinyint(1) NOT NULL default '1',
  `ns_dl_affiliate_links` tinyint(1) NOT NULL default '1',
  `ns_dl_add_email` tinyint(1) NOT NULL default '1',
  `ns_dl_add_filesize` tinyint(1) NOT NULL default '1',
  `ns_dl_add_compat` tinyint(1) NOT NULL default '0',
  `ns_dl_mod` tinyint(1) NOT NULL default '1',
  `ns_dl_mod_anon` tinyint(1) NOT NULL default '1',
  `ns_dl_owner_mod` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_add_modify`
-- 

INSERT INTO `nuke_ns_downloads_add_modify` VALUES (1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_auth`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_auth`;
CREATE TABLE `nuke_ns_downloads_auth` (
  `ns_dl_auth_list` tinyint(1) NOT NULL default '0',
  `ns_dl_auth_lim` tinyint(2) NOT NULL default '0',
  `ns_dl_auth_pp` int(3) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_auth`
-- 

INSERT INTO `nuke_ns_downloads_auth` VALUES (1, 5, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_blocks`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_blocks`;
CREATE TABLE `nuke_ns_downloads_blocks` (
  `ns_dl_show_block` tinyint(1) NOT NULL default '0',
  `ns_dl_show_all` tinyint(1) NOT NULL default '0',
  `ns_dl_show_num` int(2) NOT NULL default '0',
  `ns_dl_left_block` tinyint(1) NOT NULL default '0',
  `ns_dl_right_block` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_blocks`
-- 

INSERT INTO `nuke_ns_downloads_blocks` VALUES (0, 0, 5, 1, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_desc_img`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_desc_img`;
CREATE TABLE `nuke_ns_downloads_desc_img` (
  `ns_dl_des_img` tinyint(1) NOT NULL default '0',
  `ns_dl_des_img_pos` char(2) NOT NULL default '',
  `ns_dl_des_img_width` int(3) NOT NULL default '0',
  `ns_dl_des_img_height` int(3) NOT NULL default '0',
  `ns_dl_pop_win` tinyint(1) NOT NULL default '0',
  `ns_dl_pop_win_width` int(4) NOT NULL default '0',
  `ns_dl_pop_win_height` int(4) NOT NULL default '0',
  `ns_dl_pop_conform` tinyint(1) NOT NULL default '0',
  `ns_dl_use_standard` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_desc_img`
-- 

INSERT INTO `nuke_ns_downloads_desc_img` VALUES (0, 'l', 60, 60, 1, 600, 600, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_fetch`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_fetch`;
CREATE TABLE `nuke_ns_downloads_fetch` (
  `ns_getit` tinyint(1) NOT NULL default '0',
  `ns_getit_image` tinyint(1) NOT NULL default '0',
  `ns_getit_color` varchar(10) NOT NULL default '',
  `ns_getit_msg` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_fetch`
-- 

INSERT INTO `nuke_ns_downloads_fetch` VALUES (1, 0, 'CC0000', 'We are sorry for the inconvenience to all users, but this change to our System is necessary because of a few people leeching our Files. We have made significant attempts to make our Files easier to Download for each user, compared to the mass downloading applications... But our last resort will be to force Registration to download any files.');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_field`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_field`;
CREATE TABLE `nuke_ns_downloads_field` (
  `fid` int(5) NOT NULL auto_increment,
  `fname` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_field`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_field_perm`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_field_perm`;
CREATE TABLE `nuke_ns_downloads_field_perm` (
  `ns_dl_field_vers` tinyint(1) NOT NULL default '0',
  `ns_dl_field_comp` tinyint(1) NOT NULL default '0',
  `ns_dl_field_file` tinyint(1) NOT NULL default '0',
  `ns_dl_field_date` tinyint(1) NOT NULL default '0',
  `ns_dl_field_hits` tinyint(1) NOT NULL default '0',
  `ns_dl_field_rate` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_field_perm`
-- 

INSERT INTO `nuke_ns_downloads_field_perm` VALUES (1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_general`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_general`;
CREATE TABLE `nuke_ns_downloads_general` (
  `ns_download_image` varchar(255) NOT NULL default '',
  `ns_download_image_pos` int(3) NOT NULL default '0',
  `ns_dl_show_sub_cats` tinyint(1) NOT NULL default '1',
  `ns_dl_show_num` tinyint(1) NOT NULL default '0',
  `ns_dl_show_full` tinyint(1) NOT NULL default '0',
  `ns_dl_num_per_page` tinyint(2) NOT NULL default '10',
  `ns_dl_num_results` tinyint(2) NOT NULL default '10',
  `ns_dl_sort_order` tinyint(2) NOT NULL default '1',
  `ns_dl_down_button` tinyint(1) NOT NULL default '1',
  `ns_dl_foot_button` tinyint(1) NOT NULL default '1',
  `ns_dl_reg_down` tinyint(1) NOT NULL default '0',
  `ns_dl_right_blocks` tinyint(1) NOT NULL default '1',
  `ns_dl_link_bar` tinyint(1) NOT NULL default '1',
  `ns_dl_show_engines` tinyint(1) NOT NULL default '0',
  `ns_cat_image` varchar(255) NOT NULL default '',
  `ns_cat_image_pos` int(3) NOT NULL default '0',
  `ns_subcat_image` varchar(255) NOT NULL default '',
  `ns_subcat_image_pos` int(3) NOT NULL default '0',
  `ns_featured_image` varchar(255) NOT NULL default '',
  `ns_featured_image_pos` int(3) NOT NULL default '0',
  `ns_dl_main_note` text NOT NULL,
  `ns_dl_main_note_show` tinyint(1) NOT NULL default '0',
  `prbgcolor1` varchar(10) NOT NULL default '',
  `prbgcolor2` varchar(10) NOT NULL default '',
  `tttextcolor` varchar(10) NOT NULL default '',
  `tbtextcolor` varchar(10) NOT NULL default '',
  `ns_dl_open_new` tinyint(1) NOT NULL default '0',
  `ns_dl_mirror_link` tinyint(1) NOT NULL default '0',
  `ns_dl_view_dis` tinyint(1) NOT NULL default '0',
  `ns_dl_empty_cat` tinyint(1) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_general`
-- 

INSERT INTO `nuke_ns_downloads_general` VALUES ('', 0, 1, 0, 1, 10, 10, 1, 0, 0, 1, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', '', '', '', 0, 0, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_new_pop`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_new_pop`;
CREATE TABLE `nuke_ns_downloads_new_pop` (
  `ns_dl_num_new_one` tinyint(2) NOT NULL default '7',
  `ns_dl_num_new_two` tinyint(2) NOT NULL default '14',
  `ns_dl_num_new_three` tinyint(2) NOT NULL default '30',
  `ns_dl_newimage_on` tinyint(1) NOT NULL default '0',
  `ns_dl_new_one` int(3) NOT NULL default '1',
  `ns_dl_new_two` int(3) NOT NULL default '3',
  `ns_dl_new_three` int(3) NOT NULL default '7',
  `ns_dl_num_top` int(3) NOT NULL default '25',
  `ns_dl_num_top_num` tinyint(2) NOT NULL default '10',
  `ns_dl_num_top_per` tinyint(1) NOT NULL default '0',
  `ns_dl_num_pop` int(4) NOT NULL default '200',
  `ns_dl_num_pop_num` tinyint(2) NOT NULL default '10',
  `ns_dl_num_pop_per` tinyint(1) NOT NULL default '0',
  `ns_dl_popimage_on` tinyint(1) NOT NULL default '0',
  `ns_dl_num_pop_image` varchar(100) NOT NULL default '',
  `ns_dl_new_image1` varchar(100) NOT NULL default '',
  `ns_dl_new_image2` varchar(100) NOT NULL default '',
  `ns_dl_new_image3` varchar(100) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_new_pop`
-- 

INSERT INTO `nuke_ns_downloads_new_pop` VALUES (7, 14, 30, 1, 1, 3, 7, 25, 10, 0, 200, 10, 0, 1, 'popular.gif', 'new_1.gif', 'new_3.gif', 'new_7.gif');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_nfeatured`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_nfeatured`;
CREATE TABLE `nuke_ns_downloads_nfeatured` (
  `fdid` int(5) NOT NULL auto_increment,
  `lid` int(5) NOT NULL default '0',
  `ns_dl_feat_det` tinyint(1) NOT NULL default '0',
  `ns_dl_feat_dlength` varchar(10) NOT NULL default '',
  `ns_dl_feat_dimg` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`fdid`),
  KEY `fdid` (`fdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_nfeatured`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_rating`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_rating`;
CREATE TABLE `nuke_ns_downloads_rating` (
  `ns_dl_outside_vote` tinyint(1) NOT NULL default '1',
  `ns_dl_anon_wait_days` int(6) NOT NULL default '7',
  `ns_dl_outside_wait_days` int(6) NOT NULL default '7',
  `ns_dl_anon_weight` int(6) NOT NULL default '5',
  `ns_dl_outside_weight` int(6) NOT NULL default '20',
  `ns_dl_main_dec` tinyint(1) NOT NULL default '2',
  `ns_dl_detail_dec` tinyint(1) NOT NULL default '4'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_rating`
-- 

INSERT INTO `nuke_ns_downloads_rating` VALUES (1, 7, 7, 5, 20, 2, 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_recom_dlstats`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_recom_dlstats`;
CREATE TABLE `nuke_ns_downloads_recom_dlstats` (
  `rdid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `ns_dl_rec_title` varchar(255) NOT NULL default '',
  `ns_dl_rec_num` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rdid`),
  KEY `rdid` (`rdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_recom_dlstats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_recom_usrstats`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_recom_usrstats`;
CREATE TABLE `nuke_ns_downloads_recom_usrstats` (
  `rduid` int(11) NOT NULL auto_increment,
  `rdid` int(11) NOT NULL default '0',
  `lid` int(11) NOT NULL default '0',
  `ns_dl_rec_rname` varchar(255) NOT NULL default '',
  `ns_dl_rec_remail` varchar(255) NOT NULL default '',
  `ns_dl_rec_uip` varchar(25) NOT NULL default '',
  `ns_dl_rec_rnum` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rduid`),
  KEY `rduid` (`rduid`),
  KEY `rdid` (`rdid`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_recom_usrstats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_recommend`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_recommend`;
CREATE TABLE `nuke_ns_downloads_recommend` (
  `ns_dl_rec` tinyint(1) NOT NULL default '0',
  `ns_dl_rec_num` tinyint(1) NOT NULL default '0',
  `ns_dl_rec_msg` tinyint(1) NOT NULL default '0',
  `ns_dl_rec_stats` tinyint(1) NOT NULL default '0',
  `ns_dl_rec_stats_user` tinyint(1) NOT NULL default '0',
  `ns_dl_rec_email` text NOT NULL,
  `ns_dl_rec_subject` varchar(255) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_recommend`
-- 

INSERT INTO `nuke_ns_downloads_recommend` VALUES (1, 3, 1, 1, 1, 'You have to take a look at this great download! Just click the link below to view the Downloads details.', 'Check out this GREAT Download!');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_table_form`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_table_form`;
CREATE TABLE `nuke_ns_downloads_table_form` (
  `tid` int(5) NOT NULL auto_increment,
  `id` int(5) NOT NULL default '0',
  `width` int(3) NOT NULL default '0',
  `cpad` int(3) NOT NULL default '0',
  `cspace` int(3) NOT NULL default '0',
  `align` int(3) NOT NULL default '0',
  `bdr` int(3) NOT NULL default '0',
  `bdrclr` varchar(10) NOT NULL default '',
  `trclr` varchar(10) NOT NULL default '',
  `tdclr` varchar(10) NOT NULL default '',
  `bgclr` varchar(10) NOT NULL default '',
  `bgimg` varchar(100) NOT NULL default '',
  `act` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `id` (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_table_form`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_table_html`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_table_html`;
CREATE TABLE `nuke_ns_downloads_table_html` (
  `thid` int(5) NOT NULL auto_increment,
  `id` int(5) NOT NULL default '0',
  `html_open` text NOT NULL,
  `html_close` text NOT NULL,
  `act` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`thid`),
  KEY `thid` (`thid`),
  KEY `id` (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_table_html`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_theme`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_theme`;
CREATE TABLE `nuke_ns_downloads_theme` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_theme`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_theme_mode`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_theme_mode`;
CREATE TABLE `nuke_ns_downloads_theme_mode` (
  `id` int(5) NOT NULL default '0',
  `mode` tinyint(1) NOT NULL default '0',
  `mset` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_theme_mode`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_ns_downloads_upload`
-- 

DROP TABLE IF EXISTS `nuke_ns_downloads_upload`;
CREATE TABLE `nuke_ns_downloads_upload` (
  `ns_dl_file_dir` varchar(150) NOT NULL default '',
  `ns_dl_image_dir` varchar(150) NOT NULL default '',
  `ns_dl_allow_file` tinyint(1) NOT NULL default '0',
  `ns_dl_allow_img` tinyint(1) NOT NULL default '0',
  `ns_dl_file_size` int(15) NOT NULL default '0',
  `ns_dl_image_size` int(15) NOT NULL default '0',
  `ns_dl_file_ext` varchar(255) NOT NULL default '',
  `ns_dl_image_ext` varchar(255) NOT NULL default '',
  `ns_dl_use_resize` tinyint(1) NOT NULL default '0',
  `ns_dl_netpath` varchar(150) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_ns_downloads_upload`
-- 

INSERT INTO `nuke_ns_downloads_upload` VALUES ('dl', 'dl', 0, 0, 2560000, 25600, 'zip tar tgz doc pdf gz rar', 'gif jpg jpeg png bmp tif', 1, 'includes/netpbm/');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnba_banners`
-- 

DROP TABLE IF EXISTS `nuke_nsnba_banners`;
CREATE TABLE `nuke_nsnba_banners` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `pid` tinyint(1) NOT NULL default '0',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(200) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `alttext` varchar(255) NOT NULL default '',
  `code` tinyint(1) NOT NULL default '0',
  `flash` tinyint(1) NOT NULL default '0',
  `height` int(4) NOT NULL default '60',
  `width` int(4) NOT NULL default '468',
  `datestr` date NOT NULL default '0000-00-00',
  `dateend` date NOT NULL default '0000-00-00',
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnba_banners`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnba_clients`
-- 

DROP TABLE IF EXISTS `nuke_nsnba_clients`;
CREATE TABLE `nuke_nsnba_clients` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `login` varchar(25) NOT NULL default '',
  `passwd` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnba_clients`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnba_config`
-- 

DROP TABLE IF EXISTS `nuke_nsnba_config`;
CREATE TABLE `nuke_nsnba_config` (
  `id` tinyint(1) NOT NULL auto_increment,
  `ipp` tinyint(4) NOT NULL default '20',
  `impamnt` int(6) NOT NULL default '1000',
  `usegfxcheck` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnba_config`
-- 

INSERT INTO `nuke_nsnba_config` VALUES (1, 20, 1000, 0);

DROP TABLE IF EXISTS `nuke_nsngd_accesses`;
CREATE TABLE `nuke_nsngd_accesses` (
  `username` varchar(60) NOT NULL default '',
  `downloads` int(11) NOT NULL default '0',
  `uploads` int(11) NOT NULL default '0',
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_accesses`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_categories`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_categories`;
CREATE TABLE `nuke_nsngd_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  `whoadd` tinyint(2) NOT NULL default '0',
  `uploaddir` varchar(255) NOT NULL default '',
  `canupload` tinyint(2) NOT NULL default '0',
  `active` tinyint(2) NOT NULL default '1',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_categories`
-- 

INSERT INTO `nuke_nsngd_categories` VALUES (1, 'Files', 'This is a test Category', 0, 3, 'modules/PrivateDownloads/loads', 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_config`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_config`;
CREATE TABLE `nuke_nsngd_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL,
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_config`
-- 

INSERT INTO `nuke_nsngd_config` VALUES ('admperpage', '50');
INSERT INTO `nuke_nsngd_config` VALUES ('blockunregmodify', '1');
INSERT INTO `nuke_nsngd_config` VALUES ('dateformat', 'D M j G:i:s T Y');
INSERT INTO `nuke_nsngd_config` VALUES ('mostpopular', '25');
INSERT INTO `nuke_nsngd_config` VALUES ('mostpopulartrig', '0');
INSERT INTO `nuke_nsngd_config` VALUES ('perpage', '10');
INSERT INTO `nuke_nsngd_config` VALUES ('popular', '500');
INSERT INTO `nuke_nsngd_config` VALUES ('results', '10');
INSERT INTO `nuke_nsngd_config` VALUES ('show_links_num', '0');
INSERT INTO `nuke_nsngd_config` VALUES ('usegfxcheck', '0');
INSERT INTO `nuke_nsngd_config` VALUES ('show_download', '0');
INSERT INTO `nuke_nsngd_config` VALUES ('version_number', '1.0.0');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_downloads`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_downloads`;
CREATE TABLE `nuke_nsngd_downloads` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) NOT NULL default '',
  `sub_ip` varchar(16) NOT NULL default '0.0.0.0',
  `filesize` bigint(20) NOT NULL default '0',
  `version` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  `active` tinyint(2) NOT NULL default '1',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_downloads`
-- 

INSERT INTO `nuke_nsngd_downloads` VALUES (1, 1, 0, 'test', 'modules/PrivateDownloads/loads/arcade_install.zip', 'This is a test upload', '2007-06-19 01:07:05', 'Loki', 'loki@nukeplanet.com', 1, 'Loki', '127.0.0.1', 3204, '1', '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_extensions`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_extensions`;
CREATE TABLE `nuke_nsngd_extensions` (
  `eid` int(11) NOT NULL auto_increment,
  `ext` varchar(6) NOT NULL default '',
  `file` tinyint(1) NOT NULL default '0',
  `image` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`eid`),
  KEY `ext` (`eid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_extensions`
-- 

INSERT INTO `nuke_nsngd_extensions` VALUES (1, '.ace', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (2, '.arj', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (3, '.bz', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (4, '.bz2', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (5, '.cab', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (6, '.exe', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (7, '.gif', 0, 1);
INSERT INTO `nuke_nsngd_extensions` VALUES (8, '.gz', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (9, '.iso', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (10, '.jpeg', 0, 1);
INSERT INTO `nuke_nsngd_extensions` VALUES (11, '.jpg', 0, 1);
INSERT INTO `nuke_nsngd_extensions` VALUES (12, '.lha', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (13, '.lzh', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (14, '.png', 0, 1);
INSERT INTO `nuke_nsngd_extensions` VALUES (15, '.rar', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (16, '.tar', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (17, '.tgz', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (18, '.uue', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (19, '.zip', 1, 0);
INSERT INTO `nuke_nsngd_extensions` VALUES (20, '.zoo', 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_mods`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_mods`;
CREATE TABLE `nuke_nsngd_mods` (
  `rid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `modifier` varchar(60) NOT NULL default '',
  `sub_ip` varchar(16) NOT NULL default '0.0.0.0',
  `brokendownload` int(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `filesize` bigint(20) NOT NULL default '0',
  `version` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  UNIQUE KEY `rid` (`rid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_mods`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngd_new`
-- 

DROP TABLE IF EXISTS `nuke_nsngd_new`;
CREATE TABLE `nuke_nsngd_new` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `submitter` varchar(60) NOT NULL default '',
  `sub_ip` varchar(16) NOT NULL default '0.0.0.0',
  `filesize` bigint(20) NOT NULL default '0',
  `version` varchar(20) NOT NULL default '',
  `homepage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngd_new`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngr_config`
-- 

DROP TABLE IF EXISTS `nuke_nsngr_config`;
CREATE TABLE `nuke_nsngr_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL,
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngr_config`
-- 

INSERT INTO `nuke_nsngr_config` VALUES ('perpage', '50');
INSERT INTO `nuke_nsngr_config` VALUES ('date_format', 'Y-m-d');
INSERT INTO `nuke_nsngr_config` VALUES ('send_notice', '1');
INSERT INTO `nuke_nsngr_config` VALUES ('version_number', '1.7.1');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngr_groups`
-- 

DROP TABLE IF EXISTS `nuke_nsngr_groups`;
CREATE TABLE `nuke_nsngr_groups` (
  `gid` int(11) NOT NULL auto_increment,
  `gname` varchar(32) NOT NULL default '',
  `gdesc` text NOT NULL,
  `gpublic` tinyint(1) NOT NULL default '0',
  `glimit` int(11) NOT NULL default '0',
  `phpBB` int(11) NOT NULL default '0',
  `muid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngr_groups`
-- 

INSERT INTO `nuke_nsngr_groups` VALUES (1, 'Moderators', 'Moderators of this Forum', 0, 0, 3, 2);
INSERT INTO `nuke_nsngr_groups` VALUES (4, 'Test Groupie', 'This is a test group for the modules', 0, 0, 0, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsngr_users`
-- 

DROP TABLE IF EXISTS `nuke_nsngr_users`;
CREATE TABLE `nuke_nsngr_users` (
  `gid` int(11) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `uname` varchar(25) NOT NULL default '',
  `trial` tinyint(1) NOT NULL default '0',
  `notice` tinyint(1) NOT NULL default '0',
  `sdate` int(14) NOT NULL default '0',
  `edate` int(14) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsngr_users`
-- 

INSERT INTO `nuke_nsngr_users` VALUES (1, 2, '', 0, 0, 2007, 0);


DROP TABLE IF EXISTS `nuke_nsnsp_2_config`;
CREATE TABLE `nuke_nsnsp_2_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL,
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnsp_2_config`
-- 

INSERT INTO `nuke_nsnsp_2_config` VALUES ('require_user', '1');
INSERT INTO `nuke_nsnsp_2_config` VALUES ('image_type', '0');
INSERT INTO `nuke_nsnsp_2_config` VALUES ('max_width', '88');
INSERT INTO `nuke_nsnsp_2_config` VALUES ('max_height', '31');
INSERT INTO `nuke_nsnsp_2_config` VALUES ('version_number', '2.0');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnsp_2_sites`
-- 

DROP TABLE IF EXISTS `nuke_nsnsp_2_sites`;
CREATE TABLE `nuke_nsnsp_2_sites` (
  `site_id` int(11) NOT NULL auto_increment,
  `site_name` varchar(60) NOT NULL default '',
  `site_url` varchar(255) NOT NULL default '',
  `site_image` varchar(255) NOT NULL default '',
  `site_status` int(1) NOT NULL default '0',
  `site_hits` int(10) NOT NULL default '0',
  `site_date` date NOT NULL default '0000-00-00',
  `site_description` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `user_name` varchar(60) NOT NULL default '',
  `user_email` varchar(60) NOT NULL default '',
  `user_ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`site_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnsp_2_sites`
-- 

INSERT INTO `nuke_nsnsp_2_sites` VALUES (1, 'UDesign PHP Nuke Themes', 'http://udesign.me.uk', 'modules/Supporters_2/images/banners/udesign.gif', 1, 0, '2006-08-21', 'Creating custom and individual PHP Nuke themes for the community', 0, 'Admin', 'admin@udesign.me.uk', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (2, 'Php Themes', 'http://phpthemes.net', 'modules/Supporters_2/images/banners/phpthemes.jpg', 1, 0, '2006-08-21', 'Source for all the best themes out there, No registration required', 156, 'rlgnak', 'rlgnak@gmail.com', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (3, 'Gamer Themes', 'http://gamerthemes.com', 'modules/Supporters_2/images/banners/gamerthemes.gif', 1, 0, '2006-08-21', 'Making custom PHP Nuke themes', 0, 'Ghostspirit', 'Ghostspirit@gamerthemes.com', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (4, 'Destine Designs', 'http://destinedesigns.com/home/index.php', 'modules/Supporters_2/images/banners/destinedesigns.gif', 1, 0, '2006-08-21', 'Home of the famous destine designs themes', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (5, 'Warped Designs', 'http://warpeddesignz.com/', 'modules/Supporters_2/images/banners/warpeddesign.gif', 1, 0, '2006-08-21', 'A place for free and commercial PHP Nuke themes', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (6, 'Art Of Gaming', 'http://www.artofgaming.co.uk/', 'modules/Supporters_2/images/banners/artofgaming.gif', 1, 0, '2006-08-21', 'Providing Platinum PHPNuke Graphics Help Support And Theme Upgrades', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (7, 'All Themes', 'http://www.all-themes.com', 'modules/Supporters_2/images/banners/allthemes.gif', 1, 0, '2006-08-21', 'A Place for all theme developers free themes to be downloaded from', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (8, 'King Networks', 'http://www.kingnetworks.co.uk/', 'modules/Supporters_2/images/banners/kingnetworks.gif', 1, 0, '2006-08-21', 'The online resource site for phpnuke graphics, Vbulletin, phpbb and zentri!', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (10, 'SD Design', 'http://www.sddesign.biz', 'modules/Supporters_2/images/banners/sddesign.gif', 1, 0, '2006-08-21', 'PHP Nuke, Zen Cart, PHPBB and more', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (11, 'Clan Themes', 'http://www.clanthemes.biz', 'modules/Supporters_2/images/banners/clanthemes.jpg', 1, 0, '2006-08-21', 'Clan themes never looked so good ?', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (12, 'TestZone Themes', 'http://www.clanbrands.com/testzone/index.php', 'modules/Supporters_2/images/banners/testzone.gif', 1, 0, '2006-08-21', 'Creating custom and individual PHP Nuke themes for the community', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (13, 'Shadow Designs', 'http://www.shadowdesigns.co.uk', 'modules/Supporters_2/images/banners/shadowdesigns.gif', 1, 0, '2006-08-21', 'PHP Nuke themes', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (14, 'Xtrato Designs', 'http://www.xtrato.com', 'modules/Supporters_2/images/banners/xtrato.gif', 1, 0, '2006-08-21', 'PHP Nuke, PHPBB, VBulletin and many more', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (15, 'Kalgash Themes', 'http://www.kalgash.com/', 'modules/Supporters_2/images/banners/kalgashthemes.gif', 1, 0, '2006-08-21', 'An online Design Shop that provides PHP-Nuke Themes & PHPBB ready to add to your own website.', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (16, 'Theme Freeks', 'http://www.themefreaks.com/index.php', 'modules/Supporters_2/images/banners/themefreeks.gif', 1, 0, '2006-08-21', 'PHP Nuke themes in various styles and designs', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (17, 'Disipal Designs', 'http://www.disipal.net', 'modules/Supporters_2/images/banners/disipaldesigns.gif', 1, 0, '2006-08-21', 'PHP Nuke themes and more !!', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (18, 'The Themes.cc', 'http://www.thethemes.cc', 'modules/Supporters_2/images/banners/themes.cc.gif', 1, 1, '2006-08-21', 'Loads of custom PHP Nuke themes', 0, '', '', '');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (19, 'Future Nuke', 'http://www.futurenuke.com', 'http://www.futurenuke.com/1/np.gif', 1, 0, '2007-05-01', 'Home of Phpnuke Platinum 7.6.b.5.', 2, 'Loki', 'loki@nukeplanet.com', '0.0.0.0');
INSERT INTO `nuke_nsnsp_2_sites` VALUES (20, 'DarkForgeGFX', 'http://www.darkforgegfx.com', 'http://darkforgegfx.com/images/CZlinks/dark1.gif', 1, 0, '2007-05-19', 'Graphic Design, Theme Design, Web Hosting. ', 4, 'killigan', 'killigan@darkforgegfx.com', '0.0.0.0');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnsp_config`
-- 

DROP TABLE IF EXISTS `nuke_nsnsp_config`;
CREATE TABLE `nuke_nsnsp_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` text NOT NULL,
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnsp_config`
-- 

INSERT INTO `nuke_nsnsp_config` VALUES ('image_type', '1');
INSERT INTO `nuke_nsnsp_config` VALUES ('max_height', '31');
INSERT INTO `nuke_nsnsp_config` VALUES ('max_width', '88');
INSERT INTO `nuke_nsnsp_config` VALUES ('require_user', '1');
INSERT INTO `nuke_nsnsp_config` VALUES ('version_check', '1186984800');
INSERT INTO `nuke_nsnsp_config` VALUES ('version_newest', '1.4.00');
INSERT INTO `nuke_nsnsp_config` VALUES ('version_number', '1.4.00');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnsp_sites`
-- 

DROP TABLE IF EXISTS `nuke_nsnsp_sites`;
CREATE TABLE `nuke_nsnsp_sites` (
  `site_id` int(11) NOT NULL auto_increment,
  `site_name` varchar(60) NOT NULL default '',
  `site_url` varchar(255) NOT NULL default '',
  `site_image` varchar(255) NOT NULL default '',
  `site_status` int(1) NOT NULL default '0',
  `site_hits` int(10) NOT NULL default '0',
  `site_date` date NOT NULL default '0000-00-00',
  `site_description` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `user_name` varchar(60) NOT NULL default '',
  `user_email` varchar(60) NOT NULL default '',
  `user_ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`site_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnsp_sites`
-- 

INSERT INTO `nuke_nsnsp_sites` VALUES (1, 'Futurenuke', 'http://www.futurenuke.com', 'modules/Supporters/images/supporters/fn.gif', 1, 0, '2007-07-30', 'Futurenuke is the Home of PHP-Nuke Platinum. ', 2, 'Loki', 'loki@nukeplanet.com', '127.0.0.1');
INSERT INTO `nuke_nsnsp_sites` VALUES (2, 'Nuke Planet', 'http://www.nukeplanet.com', 'modules/Supporters/images/supporters/np.gif', 1, 0, '2007-07-30', 'Nuke Planet is a support site for PHPNuke and is a testing site for various mods.', 2, 'Loki', 'loki@nukeplanet.com', '127.0.0.1');

DROP TABLE IF EXISTS `nuke_nsnst_admins`;
CREATE TABLE `nuke_nsnst_admins` (
  `aid` varchar(25) NOT NULL default '',
  `login` varchar(25) NOT NULL default '',
  `password` varchar(20) NOT NULL default '',
  `password_md5` varchar(60) NOT NULL default '',
  `password_crypt` varchar(60) NOT NULL default '',
  `protected` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_admins`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_blocked_ips`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_blocked_ips`;
CREATE TABLE `nuke_nsnst_blocked_ips` (
  `ip_addr` varchar(15) NOT NULL default '',
  `user_id` int(11) NOT NULL default '1',
  `username` varchar(60) NOT NULL default 'Anonymous',
  `user_agent` text NOT NULL,
  `date` int(20) NOT NULL default '0',
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL default '0',
  `query_string` text NOT NULL,
  `get_string` text NOT NULL,
  `post_string` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL default 'None',
  `client_ip` varchar(32) NOT NULL default 'None',
  `remote_addr` varchar(32) NOT NULL default '',
  `remote_port` varchar(11) NOT NULL default 'Unknown',
  `request_method` varchar(10) NOT NULL default '',
  `expires` int(20) NOT NULL default '0',
  `c2c` char(2) NOT NULL default '00',
  PRIMARY KEY  (`ip_addr`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_blocked_ips`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_blocked_ranges`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_blocked_ranges`;
CREATE TABLE `nuke_nsnst_blocked_ranges` (
  `ip_lo` int(10) unsigned NOT NULL default '0',
  `ip_hi` int(10) unsigned NOT NULL default '0',
  `date` int(20) NOT NULL default '0',
  `notes` text NOT NULL,
  `reason` tinyint(1) NOT NULL default '0',
  `expires` int(20) NOT NULL default '0',
  `c2c` char(2) NOT NULL default '00',
  KEY `code` (`ip_lo`,`ip_hi`,`c2c`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_blocked_ranges`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_blockers`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_blockers`;
CREATE TABLE `nuke_nsnst_blockers` (
  `blocker` int(4) NOT NULL default '0',
  `block_name` varchar(20) NOT NULL default '',
  `activate` int(4) NOT NULL default '0',
  `block_type` int(4) NOT NULL default '0',
  `email_lookup` int(4) NOT NULL default '0',
  `forward` varchar(255) NOT NULL default '',
  `reason` varchar(20) NOT NULL default '',
  `template` varchar(255) NOT NULL default '',
  `duration` int(20) NOT NULL default '0',
  `htaccess` int(4) NOT NULL default '0',
  `list` longtext NOT NULL,
  PRIMARY KEY  (`blocker`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_blockers`
-- 

INSERT INTO `nuke_nsnst_blockers` VALUES (0, 'other', 0, 0, 0, '', 'Abuse-Other', 'abuse_default.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (1, 'union', 4, 0, 0, '', 'Abuse-Union', 'abuse_union.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (2, 'clike', 4, 0, 0, '', 'Abuse-CLike', 'abuse_clike.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (3, 'harvester', 0, 0, 0, '', 'Abuse-Harvest', 'abuse_harvester.tpl', 0, 0, '@yahoo.com\r\nalexibot\r\nalligator\r\nanonymiz\r\nasterias\r\nbackdoorbot\r\nblack hole\r\nblackwidow\r\nblowfish\r\nbotalot\r\nbuiltbottough\r\nbullseye\r\nbunnyslippers\r\ncatch\r\ncegbfeieh\r\ncharon\r\ncheesebot\r\ncherrypicker\r\nchinaclaw\r\ncombine\r\ncopyrightcheck\r\ncosmos\r\ncrescent\r\ncurl\r\ndbrowse\r\ndisco\r\ndittospyder\r\ndlman\r\ndnloadmage\r\ndownload\r\ndreampassport\r\ndts agent\r\necatch\r\neirgrabber\r\nerocrawler\r\nexpress webpictures\r\nextractorpro\r\neyenetie\r\nfantombrowser\r\nfantomcrew browser\r\nfileheap\r\nfilehound\r\nflashget\r\nfoobot\r\nfranklin locator\r\nfreshdownload\r\nfscrawler\r\ngamespy_arcade\r\ngetbot\r\ngetright\r\ngetweb\r\ngo!zilla\r\ngo-ahead-got-it\r\ngrab\r\ngrafula\r\ngsa-crawler\r\nharvest\r\nhloader\r\nhmview\r\nhttplib\r\nhttpresume\r\nhttrack\r\nhumanlinks\r\nigetter\r\nimage stripper\r\nimage sucker\r\nindustry program\r\nindy library\r\ninfonavirobot\r\ninstallshield digitalwizard\r\ninterget\r\niria\r\nirvine\r\niupui research bot\r\njbh agent\r\njennybot\r\njetcar\r\njobo\r\njoc\r\nkapere\r\nkenjin spider\r\nkeyword density\r\nlarbin\r\nleechftp\r\nleechget\r\nlexibot\r\nlibweb/clshttp\r\nlibwww-perl\r\nlightningdownload\r\nlincoln state web browser\r\nlinkextractorpro\r\nlinkscan/8.1a.unix\r\nlinkwalker\r\nlwp-trivial\r\nlwp::simple\r\nmac finder\r\nmata hari\r\nmediasearch\r\nmetaproducts\r\nmicrosoft url control\r\nmidown tool\r\nmiixpc\r\nmissauga locate\r\nmissouri college browse\r\nmister pix\r\nmoget\r\nmozilla.*newt\r\nmozilla/3.0 (compatible)\r\nmozilla/3.mozilla/2.01\r\nmsie 4.0 (win95)\r\nmultiblocker browser\r\nmydaemon\r\nmygetright\r\nnabot\r\nnavroad\r\nnearsite\r\nnet vampire\r\nnetants\r\nnetmechanic\r\nnetpumper\r\nnetspider\r\nnewsearchengine\r\nnicerspro\r\nninja\r\nnitro downloader\r\nnpbot\r\noctopus\r\noffline explorer\r\noffline navigator\r\nopenfind\r\npagegrabber\r\npapa foto\r\npavuk\r\npbrowse\r\npcbrowser\r\npeval\r\npompos/\r\nprogram shareware\r\npropowerbot\r\nprowebwalker\r\npsurf\r\npuf\r\npuxarapido\r\nqueryn metasearch\r\nrealdownload\r\nreget\r\nrepomonkey\r\nrsurf\r\nrumours-agent\r\nsakura\r\nscan4mail\r\nsemanticdiscovery\r\nsitesnagger\r\nslysearch\r\nspankbot\r\nspanner \r\nspiderzilla\r\nsq webscanner\r\nstamina\r\nstar downloader\r\nsteeler\r\nsteeler\r\nstrip\r\nsuperbot\r\nsuperhttp\r\nsurfbot\r\nsuzuran\r\nswbot\r\nszukacz\r\ntakeout\r\nteleport\r\ntelesoft\r\ntest spider\r\nthe intraformant\r\nthenomad\r\ntighttwatbot\r\ntitan\r\ntocrawl/urldispatcher\r\ntrue_robot\r\ntsurf\r\nturing machine\r\nturingos\r\nurlblaze\r\nurlgetfile\r\nurly warning\r\nutilmind\r\nvci\r\nvoideye\r\nweb image collector\r\nweb sucker\r\nwebauto\r\nwebbandit\r\nwebcapture\r\nwebcollage\r\nwebcopier\r\nwebenhancer\r\nwebfetch\r\nwebgo\r\nwebleacher\r\nwebmasterworldforumbot\r\nwebql\r\nwebreaper\r\nwebsite extractor\r\nwebsite quester\r\nwebster\r\nwebstripper\r\nwebwhacker\r\nwep search\r\nwget\r\nwhizbang\r\nwidow\r\nwildsoft surfer\r\nwww-collector-e\r\nwww.netwu.com\r\nwwwoffle\r\nxaldon\r\nxenu\r\nzeus\r\nziggy\r\nzippy');
INSERT INTO `nuke_nsnst_blockers` VALUES (4, 'script', 0, 0, 0, '', 'Abuse-Script', 'abuse_script.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (5, 'author', 4, 0, 0, '', 'Abuse-Author', 'abuse_author.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (6, 'referer', 0, 0, 0, '', 'Abuse-Referer', 'abuse_referer.tpl', 0, 0, '121hr.com\r\n1st-call.net\r\n1stcool.com\r\n5000n.com\r\n69-xxx.com\r\n9irl.com\r\n9uy.com\r\na-day-at-the-party.com\r\naccessthepeace.com\r\nadult-model-nude-pictures.com\r\nadult-sex-toys-free-porn.com\r\nagnitum.com\r\nalfonssackpfeiffe.com\r\nalongwayfrommars.com\r\nanime-sex-1.com\r\nanorex-sf-stimulant-free.com\r\nantibot.net\r\nantique-tokiwa.com\r\napotheke-heute.com\r\narmada31.com\r\nartark.com\r\nartlilei.com\r\nascendbtg.com\r\naschalaecheck.com\r\nasian-sex-free-sex.com\r\naslowspeeker.com\r\nassasinatedfrogs.com\r\nathirst-for-tranquillity.net\r\naubonpanier.com\r\navalonumc.com\r\nayingba.com\r\nbayofnoreturn.com\r\nbbw4phonesex.com\r\nbeersarenotfree.com\r\nbierikiuetsch.com\r\nbilingualannouncements.com\r\nblack-pussy-toon-clip-anal-lover-single.com\r\nblownapart.com\r\nblueroutes.com\r\nboasex.com\r\nbooksandpages.com\r\nbootyquake.com\r\nbossyhunter.com\r\nboyz-sex.com\r\nbrokersaandpokers.com\r\nbrowserwindowcleaner.com\r\nbudobytes.com\r\nbusiness2fun.com\r\nbuymyshitz.com\r\nbyuntaesex.com\r\ncaniputsomeloveintoyou.com\r\ncartoons.net.ru\r\ncaverunsailing.com\r\ncertainhealth.com\r\nclantea.com\r\nclose-protection-services.com\r\nclubcanino.com\r\nclubstic.com\r\ncobrakai-skf.com\r\ncollegefucktour.co.uk\r\ncommanderspank.com\r\ncoolenabled.com\r\ncrusecountryart.com\r\ncrusingforsex.co.uk\r\ncunt-twat-pussy-juice-clit-licking.com\r\ncustomerhandshaker.com\r\ncyborgrama.com\r\ndarkprofits.co.uk\r\ndatingforme.co.uk\r\ndatingmind.com\r\ndegree.org.ru\r\ndelorentos.com\r\ndiggydigger.com\r\ndinkydonkyaussie.com\r\ndjpritchard.com\r\ndjtop.com\r\ndraufgeschissen.com\r\ndreamerteens.co.uk\r\nebonyarchives.co.uk\r\nebonyplaya.co.uk\r\necobuilder2000.com\r\nemailandemail.com\r\nemedici.net\r\nengine-on-fire.com\r\nerocity.co.uk\r\nesport3.com\r\neteenbabes.com\r\neurofreepages.com\r\neurotexans.com\r\nevolucionweb.com\r\nfakoli.com\r\nfe4ba.com\r\nferienschweden.com\r\nfindly.com\r\nfirsttimeteadrinker.com\r\nfishing.net.ru\r\nflatwonkers.com\r\nflowershopentertainment.com\r\nflymario.com\r\nfree-xxx-pictures-porno-gallery.com\r\nfreebestporn.com\r\nfreefuckingmovies.co.uk\r\nfreexxxstuff.co.uk\r\nfruitologist.net\r\nfruitsandbolts.com\r\nfuck-cumshots-free-midget-movie-clips.com\r\nfuck-michaelmoore.com\r\nfundacep.com\r\ngadless.com\r\ngallapagosrangers.com\r\ngalleries4free.co.uk\r\ngalofu.com\r\ngaypixpost.co.uk\r\ngeomasti.com\r\ngirltime.co.uk\r\nglassrope.com\r\ngodjustblessyouall.com\r\ngoldenageresort.com\r\ngonnabedaddies.com\r\ngranadasexi.com\r\ngranadasexi.com\r\nguardingtheangels.com\r\nguyprofiles.co.uk\r\nhappy1225.com\r\nhappychappywacky.com\r\nhealth.org.ru\r\nhexplas.com\r\nhighheelsmodels4fun.com\r\nhillsweb.com\r\nhiptuner.com\r\nhistoryintospace.com\r\nhoa-tuoi.com\r\nhomebuyinginatlanta.com\r\nhorizonultra.com\r\nhorseminiature.net\r\nhotkiss.co.uk\r\nhotlivegirls.co.uk\r\nhotmatchup.co.uk\r\nhusler.co.uk\r\niaentertainment.com\r\niamnotsomeone.com\r\niconsofcorruption.com\r\nihavenotrustinyou.com\r\ninformat-systems.com\r\ninteriorproshop.com\r\nintersoftnetworks.com\r\ninthecrib.com\r\ninvestment4cashiers.com\r\niti-trailers.com\r\njackpot-hacker.com\r\njacks-world.com\r\njamesthesailorbasher.com\r\njesuislemonds.com\r\njustanotherdomainname.com\r\nkampelicka.com\r\nkanalrattenarsch.com\r\nkatzasher.com\r\nkerosinjunkie.com\r\nkillasvideo.com\r\nkoenigspisser.com\r\nkontorpara.com\r\nl8t.com\r\nlaestacion101.com\r\nlambuschlamppen.com\r\nlankasex.co.uk\r\nlaser-creations.com\r\nle-tour-du-monde.com\r\nlecraft.com\r\nledo-design.com\r\nleftregistration.com\r\nlekkikoomastas.com\r\nlepommeau.com\r\nlibr-animal.com\r\nlibraries.org.ru\r\nlikewaterlikewind.com\r\nlimbojumpers.com\r\nlink.ru\r\nlockportlinks.com\r\nloiproject.com\r\nlongtermalternatives.com\r\nlottoeco.com\r\nlucalozzi.com\r\nmaki-e-pens.com\r\nmalepayperview.co.uk\r\nmangaxoxo.com\r\nmaps.org.ru\r\nmarcofields.com\r\nmasterofcheese.com\r\nmasteroftheblasterhill.com\r\nmastheadwankers.com\r\nmega\r\n\r\nfr\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nontier.com\r\nmeinschuppen.com\r\nmercurybar.com\r\nmetapannas.com\r\nmicelebre.com\r\nmidnightlaundries.com\r\nmikeapartment.co.uk\r\nmillenniumchorus.com\r\nmimundial2002.com\r\nminiaturegallerymm.com\r\nmixtaperadio.com\r\nmondialcoral.com\r\nmonja-wakamatsu.com\r\nmonstermonkey.net\r\nmouthfreshners.com\r\nmullensholiday.com\r\nmusilo.com\r\nmyhollowlog.com\r\nmyhomephonenumber.com\r\nmykeyboardisbroken.com\r\nmysofia.net\r\nnaked-cheaters.com\r\nnaked-old-women.com\r\nnastygirls.co.uk\r\nnationclan.net\r\nnatterratter.com\r\nnaughtyadam.com\r\nnestbeschmutzer.com\r\nnetwu.com\r\nnewrealeaseonline.com\r\nnewrealeasesonline.com\r\nnextfrontiersonline.com\r\nnikostaxi.com\r\nnotorious7.com\r\nnrecruiter.com\r\nnursingdepot.com\r\nnustramosse.com\r\nnuturalhicks.com\r\noccaz-auto49.com\r\nocean-db.net\r\noilburnerservice.net\r\nomburo.com\r\noneoz.com\r\nonepageahead.net\r\nonlinewithaline.com\r\norganizate.net\r\nourownweddingsong.com\r\nowen-music.com\r\np-partners.com\r\npaginadeautor.com\r\npakistandutyfree.com\r\npamanderson.co.uk\r\nparentsense.net\r\nparticlewave.net\r\npay-clic.com\r\npay4link.net\r\npcisp.com\r\npersist-pharma.com\r\npeteband.com\r\npetplusindia.com\r\npickabbw.co.uk\r\npicture-oral-position-lesbian.com\r\npl8again.com\r\nplaneting.net\r\npopusky.com\r\nporn-expert.com\r\npromoblitza.com\r\nproproducts-usa.com\r\nptcgzone.com\r\nptporn.com\r\npublishmybong.com\r\nputtingtogether.com\r\nqualifiedcancelations.com\r\nrahost.com\r\nrainbow21.com\r\nrakkashakka.com\r\nrandomfeeding.com\r\nrape-art.com\r\nrd-brains.com\r\nrealestateonthehill.net\r\nrebuscadobot\r\nrequested-stuff.com\r\nretrotrasher.com\r\nricopositive.com\r\nrisorseinrete.com\r\nrotatingcunts.com\r\nrunawayclicks.com\r\nrutalibre.com\r\ns-marche.com\r\nsabrosojazz.com\r\nsamuraidojo.com\r\nsanaldarbe.com\r\nsasseminars.com\r\nschlampenbruzzler.com\r\nsearchmybong.com\r\nseckur.com\r\nsex-asian-porn-interracial-photo.com\r\nsex-porn-fuck-hardcore-movie.com\r\nsexa3.net\r\nsexer.com\r\nsexintention.com\r\nsexnet24.tv\r\nsexomundo.com\r\nsharks.com.ru\r\nshells.com.ru\r\nshop-ecosafe.com\r\nshop-toon-hardcore-fuck-cum-pics.com\r\nsilverfussions.com\r\nsin-city-sex.net\r\nsluisvan.com\r\nsmutshots.com\r\nsnagglersmaggler.com\r\nsomethingtoforgetit.com\r\nsophiesplace.net\r\nsoursushi.com\r\nsouthernxstables.com\r\nspeed467.com\r\nspeedpal4you.com\r\nsporty.org.ru\r\nstopdriving.net\r\nstw.org.ru\r\nsufficientlife.com\r\nsussexboats.net\r\nswinger-party-free-dating-porn-sluts.com\r\nsydneyhay.com\r\nszmjht.com\r\nteninchtrout.com\r\nthebalancedfruits.com\r\ntheendofthesummit.com\r\nthiswillbeit.com\r\nthosethosethose.com\r\nticyclesofindia.com\r\ntits-gay-fagot-black-tits-bigtits-amateur.com\r\ntonius.com\r\ntoohsoft.com\r\ntoolvalley.com\r\ntooporno.net\r\ntoosexual.com\r\ntorngat.com\r\ntour.org.ru\r\ntowneluxury.com\r\ntrafficmogger.com\r\ntriacoach.net\r\ntrottinbob.com\r\ntttframes.com\r\ntvjukebox.net\r\nundercvr.com\r\nunfinished-desires.com\r\nunicornonero.com\r\nunionvillefire.com\r\nupsandowns.com\r\nupthehillanddown.com\r\nvallartavideo.com\r\nvietnamdatingservices.com\r\nvinegarlemonshots.com\r\nvizy.net.ru\r\nvnladiesdatingservices.com\r\nvomitandbusted.com\r\nwalkingthewalking.com\r\nwell-I-am-the-type-of-boy.com\r\nwhales.com.ru\r\nwhincer.net\r\nwhitpagesrippers.com\r\nwhois.sc\r\nwipperrippers.com\r\nwordfilebooklets.com\r\nworld-sexs.com\r\nxsay.com\r\nxxxchyangel.com\r\nxxxx:\r\nxxxzips.com\r\nyouarelostintransit.com\r\nyuppieslovestocks.com\r\nyuzhouhuagong.com\r\nzhaori-food.com\r\nzwiebelbacke.com');
INSERT INTO `nuke_nsnst_blockers` VALUES (7, 'filter', 0, 0, 0, '', 'Abuse-Filter', 'abuse_filter.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (8, 'request', 0, 0, 0, '', 'Abuse-Request', 'abuse_request.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (9, 'string', 0, 0, 0, '', 'Abuse-String', 'abuse_string.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (10, 'admin', 4, 0, 0, '', 'Abuse-Admin', 'abuse_admin.tpl', 0, 0, '');
INSERT INTO `nuke_nsnst_blockers` VALUES (11, 'flood', 0, 0, 0, '', 'Abuse-Flood', 'abuse_flood.tpl', 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_cidrs`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_cidrs`;
CREATE TABLE `nuke_nsnst_cidrs` (
  `cidr` int(2) NOT NULL default '0',
  `hosts` int(10) NOT NULL default '0',
  `mask` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`cidr`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_cidrs`
-- 

INSERT INTO `nuke_nsnst_cidrs` VALUES (1, 2147483647, '127.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (2, 1073741824, '63.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (3, 536870912, '31.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (4, 268435456, '15.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (5, 134217728, '7.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (6, 67108864, '3.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (7, 33554432, '1.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (8, 16777216, '0.255.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (9, 8388608, '0.127.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (10, 4194304, '0.63.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (11, 2097152, '0.31.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (12, 1048576, '0.15.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (13, 524288, '0.7.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (14, 262144, '0.3.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (15, 131072, '0.1.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (16, 65536, '0.0.255.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (17, 32768, '0.0.127.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (18, 16384, '0.0.63.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (19, 8192, '0.0.31.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (20, 4096, '0.0.15.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (21, 2048, '0.0.7.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (22, 1024, '0.0.3.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (23, 512, '0.0.1.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (24, 256, '0.0.0.255');
INSERT INTO `nuke_nsnst_cidrs` VALUES (25, 128, '0.0.0.127');
INSERT INTO `nuke_nsnst_cidrs` VALUES (26, 64, '0.0.0.63');
INSERT INTO `nuke_nsnst_cidrs` VALUES (27, 32, '0.0.0.31');
INSERT INTO `nuke_nsnst_cidrs` VALUES (28, 16, '0.0.0.15');
INSERT INTO `nuke_nsnst_cidrs` VALUES (29, 8, '0.0.0.7');
INSERT INTO `nuke_nsnst_cidrs` VALUES (30, 4, '0.0.0.3');
INSERT INTO `nuke_nsnst_cidrs` VALUES (31, 2, '0.0.0.1');
INSERT INTO `nuke_nsnst_cidrs` VALUES (32, 1, '0.0.0.0');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_config`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_config`;
CREATE TABLE `nuke_nsnst_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` longtext NOT NULL,
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_config`
-- 

INSERT INTO `nuke_nsnst_config` VALUES ('admin_contact', 'admin@email.con');
INSERT INTO `nuke_nsnst_config` VALUES ('block_perpage', '50');
INSERT INTO `nuke_nsnst_config` VALUES ('block_sort_column', 'date');
INSERT INTO `nuke_nsnst_config` VALUES ('block_sort_direction', 'desc');
INSERT INTO `nuke_nsnst_config` VALUES ('crypt_salt', 'N$');
INSERT INTO `nuke_nsnst_config` VALUES ('disable_switch', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('display_link', '3');
INSERT INTO `nuke_nsnst_config` VALUES ('display_reason', '3');
INSERT INTO `nuke_nsnst_config` VALUES ('flood_delay', '1');
INSERT INTO `nuke_nsnst_config` VALUES ('flood_delay_get', '3');
INSERT INTO `nuke_nsnst_config` VALUES ('flood_delay_post', '5');
INSERT INTO `nuke_nsnst_config` VALUES ('force_nukeurl', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('ftaccess_path', '');
INSERT INTO `nuke_nsnst_config` VALUES ('help_switch', '1');
INSERT INTO `nuke_nsnst_config` VALUES ('htaccess_path', '');
INSERT INTO `nuke_nsnst_config` VALUES ('http_auth', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('lookup_link', 'http://www.DNSstuff.com/tools/whois.ch?ip=');
INSERT INTO `nuke_nsnst_config` VALUES ('page_delay', '5');
INSERT INTO `nuke_nsnst_config` VALUES ('prevent_dos', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('proxy_reason', 'abuse_admin.tpl');
INSERT INTO `nuke_nsnst_config` VALUES ('proxy_switch', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('santy_protection', '1');
INSERT INTO `nuke_nsnst_config` VALUES ('self_expire', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('site_reason', 'admin_site_reason.tpl');
INSERT INTO `nuke_nsnst_config` VALUES ('site_switch', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('staccess_path', '');
INSERT INTO `nuke_nsnst_config` VALUES ('track_active', '0');
INSERT INTO `nuke_nsnst_config` VALUES ('track_max', '604800');
INSERT INTO `nuke_nsnst_config` VALUES ('track_perpage', '50');
INSERT INTO `nuke_nsnst_config` VALUES ('track_sort_column', 'ip_long');
INSERT INTO `nuke_nsnst_config` VALUES ('track_sort_direction', 'desc');
INSERT INTO `nuke_nsnst_config` VALUES ('version_check', '1186984800');
INSERT INTO `nuke_nsnst_config` VALUES ('version_newest', '2.5.11');
INSERT INTO `nuke_nsnst_config` VALUES ('version_number', '2.5.11');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_countries`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_countries`;
CREATE TABLE `nuke_nsnst_countries` (
  `c2c` char(2) NOT NULL default '',
  `country` varchar(60) NOT NULL default '',
  KEY `c2c` (`c2c`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_countries`
-- 

INSERT INTO `nuke_nsnst_countries` VALUES ('00', 'Unknown');
INSERT INTO `nuke_nsnst_countries` VALUES ('01', 'IANA Reserved');
INSERT INTO `nuke_nsnst_countries` VALUES ('02', 'UnAllocated');
INSERT INTO `nuke_nsnst_countries` VALUES ('ad', 'Andorra');
INSERT INTO `nuke_nsnst_countries` VALUES ('ae', 'United Arab Emirates');
INSERT INTO `nuke_nsnst_countries` VALUES ('af', 'Afghanistan');
INSERT INTO `nuke_nsnst_countries` VALUES ('ag', 'Antigua And Barbuda');
INSERT INTO `nuke_nsnst_countries` VALUES ('ai', 'Anguilla');
INSERT INTO `nuke_nsnst_countries` VALUES ('al', 'Albania');
INSERT INTO `nuke_nsnst_countries` VALUES ('am', 'Armenia');
INSERT INTO `nuke_nsnst_countries` VALUES ('an', 'Netherlands Antilles');
INSERT INTO `nuke_nsnst_countries` VALUES ('ao', 'Angola');
INSERT INTO `nuke_nsnst_countries` VALUES ('aq', 'Antartica');
INSERT INTO `nuke_nsnst_countries` VALUES ('ar', 'Argentina');
INSERT INTO `nuke_nsnst_countries` VALUES ('as', 'Samoa, American');
INSERT INTO `nuke_nsnst_countries` VALUES ('at', 'Austria');
INSERT INTO `nuke_nsnst_countries` VALUES ('au', 'Australia');
INSERT INTO `nuke_nsnst_countries` VALUES ('aw', 'Aruba');
INSERT INTO `nuke_nsnst_countries` VALUES ('az', 'Azerbaijan');
INSERT INTO `nuke_nsnst_countries` VALUES ('ba', 'Bosnia And Herzegovina');
INSERT INTO `nuke_nsnst_countries` VALUES ('bb', 'Barbados');
INSERT INTO `nuke_nsnst_countries` VALUES ('bd', 'Bangladesh');
INSERT INTO `nuke_nsnst_countries` VALUES ('be', 'Belgium');
INSERT INTO `nuke_nsnst_countries` VALUES ('bf', 'Burkina Faso');
INSERT INTO `nuke_nsnst_countries` VALUES ('bg', 'Bulgaria');
INSERT INTO `nuke_nsnst_countries` VALUES ('bh', 'Bahrain');
INSERT INTO `nuke_nsnst_countries` VALUES ('bi', 'Burundi');
INSERT INTO `nuke_nsnst_countries` VALUES ('bj', 'Benin');
INSERT INTO `nuke_nsnst_countries` VALUES ('bm', 'Bermuda');
INSERT INTO `nuke_nsnst_countries` VALUES ('bn', 'Brunei');
INSERT INTO `nuke_nsnst_countries` VALUES ('bo', 'Bolivia');
INSERT INTO `nuke_nsnst_countries` VALUES ('br', 'Brazil');
INSERT INTO `nuke_nsnst_countries` VALUES ('bs', 'Bahamas');
INSERT INTO `nuke_nsnst_countries` VALUES ('bt', 'Bhutan');
INSERT INTO `nuke_nsnst_countries` VALUES ('bv', 'Bouvet Island');
INSERT INTO `nuke_nsnst_countries` VALUES ('bw', 'Botswana');
INSERT INTO `nuke_nsnst_countries` VALUES ('by', 'Belarus');
INSERT INTO `nuke_nsnst_countries` VALUES ('bz', 'Belize');
INSERT INTO `nuke_nsnst_countries` VALUES ('ca', 'Canada');
INSERT INTO `nuke_nsnst_countries` VALUES ('cc', 'Cocos (Keeling) Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('cd', 'Congo, Democratic Republic Of The');
INSERT INTO `nuke_nsnst_countries` VALUES ('cf', 'Central African Republic');
INSERT INTO `nuke_nsnst_countries` VALUES ('cg', 'Congo, Republic Of The');
INSERT INTO `nuke_nsnst_countries` VALUES ('ch', 'Switzerland');
INSERT INTO `nuke_nsnst_countries` VALUES ('ci', 'Cote D''ivoire');
INSERT INTO `nuke_nsnst_countries` VALUES ('ck', 'Cook Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('cl', 'Chile');
INSERT INTO `nuke_nsnst_countries` VALUES ('cm', 'Cameroon');
INSERT INTO `nuke_nsnst_countries` VALUES ('cn', 'China');
INSERT INTO `nuke_nsnst_countries` VALUES ('co', 'Colombia');
INSERT INTO `nuke_nsnst_countries` VALUES ('cr', 'Costa Rica');
INSERT INTO `nuke_nsnst_countries` VALUES ('cs', 'Czechoslovakia (Former)');
INSERT INTO `nuke_nsnst_countries` VALUES ('cu', 'Cuba');
INSERT INTO `nuke_nsnst_countries` VALUES ('cv', 'Cape Verde');
INSERT INTO `nuke_nsnst_countries` VALUES ('cx', 'Christmas Island');
INSERT INTO `nuke_nsnst_countries` VALUES ('cy', 'Cyprus');
INSERT INTO `nuke_nsnst_countries` VALUES ('cz', 'Czech Republic');
INSERT INTO `nuke_nsnst_countries` VALUES ('de', 'Germany');
INSERT INTO `nuke_nsnst_countries` VALUES ('dj', 'Djibouti');
INSERT INTO `nuke_nsnst_countries` VALUES ('dk', 'Denmark');
INSERT INTO `nuke_nsnst_countries` VALUES ('dm', 'Dominica');
INSERT INTO `nuke_nsnst_countries` VALUES ('do', 'Dominican Republic');
INSERT INTO `nuke_nsnst_countries` VALUES ('dz', 'Algeria');
INSERT INTO `nuke_nsnst_countries` VALUES ('ec', 'Ecuador');
INSERT INTO `nuke_nsnst_countries` VALUES ('ee', 'Estonia');
INSERT INTO `nuke_nsnst_countries` VALUES ('eg', 'Egypt');
INSERT INTO `nuke_nsnst_countries` VALUES ('eh', 'Western Sahara');
INSERT INTO `nuke_nsnst_countries` VALUES ('er', 'Eritrea');
INSERT INTO `nuke_nsnst_countries` VALUES ('es', 'Spain');
INSERT INTO `nuke_nsnst_countries` VALUES ('et', 'Ethiopia');
INSERT INTO `nuke_nsnst_countries` VALUES ('eu', 'European Union');
INSERT INTO `nuke_nsnst_countries` VALUES ('fi', 'Finland');
INSERT INTO `nuke_nsnst_countries` VALUES ('fj', 'Fiji');
INSERT INTO `nuke_nsnst_countries` VALUES ('fk', 'Falkland Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('fm', 'Micronesia, Federated States Of');
INSERT INTO `nuke_nsnst_countries` VALUES ('fo', 'Faroe Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('fr', 'France');
INSERT INTO `nuke_nsnst_countries` VALUES ('fx', 'France, Metropolitan');
INSERT INTO `nuke_nsnst_countries` VALUES ('ga', 'Gabon');
INSERT INTO `nuke_nsnst_countries` VALUES ('gb', 'United Kingdom');
INSERT INTO `nuke_nsnst_countries` VALUES ('gd', 'Grenada');
INSERT INTO `nuke_nsnst_countries` VALUES ('ge', 'Georgia');
INSERT INTO `nuke_nsnst_countries` VALUES ('gf', 'French Guiana');
INSERT INTO `nuke_nsnst_countries` VALUES ('gh', 'Ghana');
INSERT INTO `nuke_nsnst_countries` VALUES ('gi', 'Gibraltar');
INSERT INTO `nuke_nsnst_countries` VALUES ('gl', 'Greenland');
INSERT INTO `nuke_nsnst_countries` VALUES ('gm', 'Gambia, The');
INSERT INTO `nuke_nsnst_countries` VALUES ('gn', 'Guinea');
INSERT INTO `nuke_nsnst_countries` VALUES ('gp', 'Guadeloupe');
INSERT INTO `nuke_nsnst_countries` VALUES ('gq', 'Equatorial Guinea');
INSERT INTO `nuke_nsnst_countries` VALUES ('gr', 'Greece');
INSERT INTO `nuke_nsnst_countries` VALUES ('gs', 'South Georgia and The Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('gt', 'Guatemala');
INSERT INTO `nuke_nsnst_countries` VALUES ('gu', 'Guam');
INSERT INTO `nuke_nsnst_countries` VALUES ('gw', 'Guinea-Bissau');
INSERT INTO `nuke_nsnst_countries` VALUES ('gy', 'Guyana');
INSERT INTO `nuke_nsnst_countries` VALUES ('hk', 'Hong Kong');
INSERT INTO `nuke_nsnst_countries` VALUES ('hm', 'Heard and Mc Donald Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('hn', 'Honduras');
INSERT INTO `nuke_nsnst_countries` VALUES ('hr', 'Croatia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ht', 'Haiti');
INSERT INTO `nuke_nsnst_countries` VALUES ('hu', 'Hungary');
INSERT INTO `nuke_nsnst_countries` VALUES ('id', 'Indonesia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ie', 'Ireland');
INSERT INTO `nuke_nsnst_countries` VALUES ('il', 'Israel');
INSERT INTO `nuke_nsnst_countries` VALUES ('in', 'India');
INSERT INTO `nuke_nsnst_countries` VALUES ('io', 'British Indian Ocean Territory');
INSERT INTO `nuke_nsnst_countries` VALUES ('iq', 'Iraq');
INSERT INTO `nuke_nsnst_countries` VALUES ('ir', 'Iran');
INSERT INTO `nuke_nsnst_countries` VALUES ('is', 'Iceland');
INSERT INTO `nuke_nsnst_countries` VALUES ('it', 'Italy');
INSERT INTO `nuke_nsnst_countries` VALUES ('jm', 'Jamaica');
INSERT INTO `nuke_nsnst_countries` VALUES ('jo', 'Jordan');
INSERT INTO `nuke_nsnst_countries` VALUES ('jp', 'Japan');
INSERT INTO `nuke_nsnst_countries` VALUES ('ke', 'Kenya');
INSERT INTO `nuke_nsnst_countries` VALUES ('kg', 'Kyrgyzstan');
INSERT INTO `nuke_nsnst_countries` VALUES ('kh', 'Cambodia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ki', 'Kiribati');
INSERT INTO `nuke_nsnst_countries` VALUES ('km', 'Comoros');
INSERT INTO `nuke_nsnst_countries` VALUES ('kn', 'Saint Kitts And Nevis');
INSERT INTO `nuke_nsnst_countries` VALUES ('kp', 'Korea, North');
INSERT INTO `nuke_nsnst_countries` VALUES ('kr', 'Korea, South');
INSERT INTO `nuke_nsnst_countries` VALUES ('kw', 'Kuwait');
INSERT INTO `nuke_nsnst_countries` VALUES ('ky', 'Cayman Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('kz', 'Kazakhstan');
INSERT INTO `nuke_nsnst_countries` VALUES ('la', 'Laos');
INSERT INTO `nuke_nsnst_countries` VALUES ('lb', 'Lebanon');
INSERT INTO `nuke_nsnst_countries` VALUES ('lc', 'Saint Lucia');
INSERT INTO `nuke_nsnst_countries` VALUES ('li', 'Liechtenstein');
INSERT INTO `nuke_nsnst_countries` VALUES ('lk', 'Sri Lanka');
INSERT INTO `nuke_nsnst_countries` VALUES ('lr', 'Liberia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ls', 'Lesotho');
INSERT INTO `nuke_nsnst_countries` VALUES ('lt', 'Lithuania');
INSERT INTO `nuke_nsnst_countries` VALUES ('lu', 'Luxembourg');
INSERT INTO `nuke_nsnst_countries` VALUES ('lv', 'Latvia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ly', 'Libya');
INSERT INTO `nuke_nsnst_countries` VALUES ('ma', 'Morocco');
INSERT INTO `nuke_nsnst_countries` VALUES ('mc', 'Monaco');
INSERT INTO `nuke_nsnst_countries` VALUES ('md', 'Moldova');
INSERT INTO `nuke_nsnst_countries` VALUES ('me', 'Montenegro');
INSERT INTO `nuke_nsnst_countries` VALUES ('mg', 'Madagascar');
INSERT INTO `nuke_nsnst_countries` VALUES ('mh', 'Marshall Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('mk', 'Macedonia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ml', 'Mali');
INSERT INTO `nuke_nsnst_countries` VALUES ('mm', 'Myanmar');
INSERT INTO `nuke_nsnst_countries` VALUES ('mn', 'Mongolia');
INSERT INTO `nuke_nsnst_countries` VALUES ('mo', 'Macau');
INSERT INTO `nuke_nsnst_countries` VALUES ('mp', 'Northern Mariana Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('mq', 'Martinique');
INSERT INTO `nuke_nsnst_countries` VALUES ('mr', 'Mauritania');
INSERT INTO `nuke_nsnst_countries` VALUES ('ms', 'Montserrat');
INSERT INTO `nuke_nsnst_countries` VALUES ('mt', 'Malta');
INSERT INTO `nuke_nsnst_countries` VALUES ('mu', 'Mauritius');
INSERT INTO `nuke_nsnst_countries` VALUES ('mv', 'Maldives');
INSERT INTO `nuke_nsnst_countries` VALUES ('mw', 'Malawi');
INSERT INTO `nuke_nsnst_countries` VALUES ('mx', 'Mexico');
INSERT INTO `nuke_nsnst_countries` VALUES ('my', 'Malaysia');
INSERT INTO `nuke_nsnst_countries` VALUES ('mz', 'Mozambique');
INSERT INTO `nuke_nsnst_countries` VALUES ('na', 'Namibia');
INSERT INTO `nuke_nsnst_countries` VALUES ('nc', 'New Caledonia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ne', 'Niger');
INSERT INTO `nuke_nsnst_countries` VALUES ('nf', 'Norfork Island');
INSERT INTO `nuke_nsnst_countries` VALUES ('ng', 'Nigeria');
INSERT INTO `nuke_nsnst_countries` VALUES ('ni', 'Nicaragua');
INSERT INTO `nuke_nsnst_countries` VALUES ('nl', 'Netherlands');
INSERT INTO `nuke_nsnst_countries` VALUES ('no', 'Norway');
INSERT INTO `nuke_nsnst_countries` VALUES ('np', 'Nepal');
INSERT INTO `nuke_nsnst_countries` VALUES ('nr', 'Nauru');
INSERT INTO `nuke_nsnst_countries` VALUES ('nu', 'Niue');
INSERT INTO `nuke_nsnst_countries` VALUES ('nz', 'New Zealand');
INSERT INTO `nuke_nsnst_countries` VALUES ('om', 'Oman');
INSERT INTO `nuke_nsnst_countries` VALUES ('pa', 'Panama');
INSERT INTO `nuke_nsnst_countries` VALUES ('pe', 'Peru');
INSERT INTO `nuke_nsnst_countries` VALUES ('pf', 'French Polynesia');
INSERT INTO `nuke_nsnst_countries` VALUES ('pg', 'Papua New Guinea');
INSERT INTO `nuke_nsnst_countries` VALUES ('ph', 'Philippines');
INSERT INTO `nuke_nsnst_countries` VALUES ('pk', 'Pakistan');
INSERT INTO `nuke_nsnst_countries` VALUES ('pl', 'Poland');
INSERT INTO `nuke_nsnst_countries` VALUES ('pm', 'Saint Pierre and Miquelon');
INSERT INTO `nuke_nsnst_countries` VALUES ('pn', 'Pitcairn Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('pr', 'Puerto Rico');
INSERT INTO `nuke_nsnst_countries` VALUES ('ps', 'Palestine');
INSERT INTO `nuke_nsnst_countries` VALUES ('pt', 'Portugal');
INSERT INTO `nuke_nsnst_countries` VALUES ('pw', 'Palau');
INSERT INTO `nuke_nsnst_countries` VALUES ('py', 'Paraguay');
INSERT INTO `nuke_nsnst_countries` VALUES ('qa', 'Qatar');
INSERT INTO `nuke_nsnst_countries` VALUES ('re', 'Reunion');
INSERT INTO `nuke_nsnst_countries` VALUES ('ro', 'Romania');
INSERT INTO `nuke_nsnst_countries` VALUES ('rs', 'Serbia');
INSERT INTO `nuke_nsnst_countries` VALUES ('ru', 'Russia');
INSERT INTO `nuke_nsnst_countries` VALUES ('rw', 'Rwanda');
INSERT INTO `nuke_nsnst_countries` VALUES ('sa', 'Saudi Arabia');
INSERT INTO `nuke_nsnst_countries` VALUES ('sb', 'Solomon Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('sc', 'Seychelles');
INSERT INTO `nuke_nsnst_countries` VALUES ('sd', 'Sudan');
INSERT INTO `nuke_nsnst_countries` VALUES ('se', 'Sweden');
INSERT INTO `nuke_nsnst_countries` VALUES ('sg', 'Singapore');
INSERT INTO `nuke_nsnst_countries` VALUES ('sh', 'Saint Helena');
INSERT INTO `nuke_nsnst_countries` VALUES ('si', 'Slovenia');
INSERT INTO `nuke_nsnst_countries` VALUES ('sj', 'Svalbard');
INSERT INTO `nuke_nsnst_countries` VALUES ('sk', 'Slovakia');
INSERT INTO `nuke_nsnst_countries` VALUES ('sl', 'Sierra Leone');
INSERT INTO `nuke_nsnst_countries` VALUES ('sm', 'San Marino');
INSERT INTO `nuke_nsnst_countries` VALUES ('sn', 'Senegal');
INSERT INTO `nuke_nsnst_countries` VALUES ('so', 'Somalia');
INSERT INTO `nuke_nsnst_countries` VALUES ('sr', 'Suriname');
INSERT INTO `nuke_nsnst_countries` VALUES ('st', 'Sao Tome And Principe');
INSERT INTO `nuke_nsnst_countries` VALUES ('su', 'Soviet Union');
INSERT INTO `nuke_nsnst_countries` VALUES ('sv', 'El Salvador');
INSERT INTO `nuke_nsnst_countries` VALUES ('sy', 'Syria');
INSERT INTO `nuke_nsnst_countries` VALUES ('sz', 'Swaziland');
INSERT INTO `nuke_nsnst_countries` VALUES ('tc', 'Turks And Caicos Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('td', 'Chad');
INSERT INTO `nuke_nsnst_countries` VALUES ('tf', 'French Southern Territories');
INSERT INTO `nuke_nsnst_countries` VALUES ('tg', 'Togo');
INSERT INTO `nuke_nsnst_countries` VALUES ('th', 'Thailand');
INSERT INTO `nuke_nsnst_countries` VALUES ('tj', 'Tajikistan');
INSERT INTO `nuke_nsnst_countries` VALUES ('tk', 'Tokelau');
INSERT INTO `nuke_nsnst_countries` VALUES ('tl', 'Timor-leste');
INSERT INTO `nuke_nsnst_countries` VALUES ('tm', 'Turkmenistan');
INSERT INTO `nuke_nsnst_countries` VALUES ('tn', 'Tunisia');
INSERT INTO `nuke_nsnst_countries` VALUES ('to', 'Tonga');
INSERT INTO `nuke_nsnst_countries` VALUES ('tr', 'Turkey');
INSERT INTO `nuke_nsnst_countries` VALUES ('tt', 'Trinidad And Tobago');
INSERT INTO `nuke_nsnst_countries` VALUES ('tv', 'Tuvalu');
INSERT INTO `nuke_nsnst_countries` VALUES ('tw', 'Taiwan');
INSERT INTO `nuke_nsnst_countries` VALUES ('tz', 'Tanzania');
INSERT INTO `nuke_nsnst_countries` VALUES ('ua', 'Ukraine');
INSERT INTO `nuke_nsnst_countries` VALUES ('ug', 'Uganda');
INSERT INTO `nuke_nsnst_countries` VALUES ('um', 'United States Minor Outlying Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('un', 'United Nations');
INSERT INTO `nuke_nsnst_countries` VALUES ('us', 'United States');
INSERT INTO `nuke_nsnst_countries` VALUES ('uy', 'Uruguay');
INSERT INTO `nuke_nsnst_countries` VALUES ('uz', 'Uzbekistan');
INSERT INTO `nuke_nsnst_countries` VALUES ('va', 'Vatican City State');
INSERT INTO `nuke_nsnst_countries` VALUES ('vc', 'Saint Vincent And The Grenadines');
INSERT INTO `nuke_nsnst_countries` VALUES ('ve', 'Venezuela');
INSERT INTO `nuke_nsnst_countries` VALUES ('vg', 'Virgin Islands, British');
INSERT INTO `nuke_nsnst_countries` VALUES ('vi', 'Virgin Islands, American');
INSERT INTO `nuke_nsnst_countries` VALUES ('vn', 'Viet Nam');
INSERT INTO `nuke_nsnst_countries` VALUES ('vu', 'Vanuatu');
INSERT INTO `nuke_nsnst_countries` VALUES ('wf', 'Wallis and Futuna Islands');
INSERT INTO `nuke_nsnst_countries` VALUES ('ws', 'Samoa');
INSERT INTO `nuke_nsnst_countries` VALUES ('xe', 'England');
INSERT INTO `nuke_nsnst_countries` VALUES ('xs', 'Scotland');
INSERT INTO `nuke_nsnst_countries` VALUES ('xw', 'Wales');
INSERT INTO `nuke_nsnst_countries` VALUES ('ye', 'Yemen');
INSERT INTO `nuke_nsnst_countries` VALUES ('yt', 'Mayotte');
INSERT INTO `nuke_nsnst_countries` VALUES ('yu', 'Yugoslavia');
INSERT INTO `nuke_nsnst_countries` VALUES ('za', 'South Africa');
INSERT INTO `nuke_nsnst_countries` VALUES ('zm', 'Zambia');
INSERT INTO `nuke_nsnst_countries` VALUES ('zw', 'Zimbabwe');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_excluded_ranges`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_excluded_ranges`;
CREATE TABLE `nuke_nsnst_excluded_ranges` (
  `ip_lo` int(10) unsigned NOT NULL default '0',
  `ip_hi` int(10) unsigned NOT NULL default '0',
  `date` int(20) NOT NULL default '0',
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL default '00',
  KEY `code` (`ip_lo`,`ip_hi`,`c2c`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_excluded_ranges`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_flood`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_flood`;
CREATE TABLE `nuke_nsnst_flood` (
  `ip` varchar(15) NOT NULL default '0.0.0.0',
  `lastpost` int(20) NOT NULL default '0',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_flood`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_ip2country`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_ip2country`;
CREATE TABLE `nuke_nsnst_ip2country` (
  `ip_lo` int(10) unsigned NOT NULL default '0',
  `ip_hi` int(10) unsigned NOT NULL default '0',
  `date` int(20) NOT NULL default '0',
  `c2c` char(2) NOT NULL default '',
  KEY `code` (`ip_lo`,`ip_hi`,`c2c`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_ip2country`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_protected_ranges`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_protected_ranges`;
CREATE TABLE `nuke_nsnst_protected_ranges` (
  `ip_lo` int(10) unsigned NOT NULL default '0',
  `ip_hi` int(10) unsigned NOT NULL default '0',
  `date` int(20) NOT NULL default '0',
  `notes` text NOT NULL,
  `c2c` char(2) NOT NULL default '00',
  KEY `code` (`ip_lo`,`ip_hi`,`c2c`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_nsnst_protected_ranges`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_nsnst_tracked_ips`
-- 

DROP TABLE IF EXISTS `nuke_nsnst_tracked_ips`;
CREATE TABLE `nuke_nsnst_tracked_ips` (
  `tid` int(10) NOT NULL auto_increment,
  `ip_addr` varchar(15) NOT NULL default '',
  `ip_long` int(10) unsigned NOT NULL default '0',
  `user_id` int(11) NOT NULL default '1',
  `username` varchar(60) NOT NULL default '',
  `user_agent` text NOT NULL,
  `refered_from` text NOT NULL,
  `date` int(20) NOT NULL default '0',
  `page` text NOT NULL,
  `x_forward_for` varchar(32) NOT NULL default '',
  `client_ip` varchar(32) NOT NULL default '',
  `remote_addr` varchar(32) NOT NULL default '',
  `remote_port` varchar(11) NOT NULL default '',
  `request_method` varchar(10) NOT NULL default '',
  `c2c` char(2) NOT NULL default '00',
  PRIMARY KEY  (`tid`),
  KEY `ip_addr` (`ip_addr`),
  KEY `ip_long` (`ip_long`),
  KEY `user_id` (`user_id`),
  KEY `username` (`username`),
  KEY `user_agent` (`user_agent`(255)),
  KEY `refered_from` (`refered_from`(255)),
  KEY `date` (`date`),
  KEY `page` (`page`(255)),
  KEY `c2c` (`c2c`)
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `nuke_security_agents`;
CREATE TABLE `nuke_security_agents` (
  `agent_name` varchar(20) NOT NULL default '',
  `agent_fullname` varchar(30) default '',
  `agent_hostname` varchar(30) default '',
  `agent_url` varchar(80) default '',
  `agent_ban` int(1) NOT NULL default '0',
  `agent_desc` text,
  PRIMARY KEY  (`agent_name`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_security_agents`
-- 

INSERT INTO `nuke_security_agents` VALUES ('1Noon', '1Noonbot', NULL, '1nooncorp.com', -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('AI', 'AIBOT', NULL, '21seek.com', 0, '(China) robot (218.17.90.xxx)');
INSERT INTO `nuke_security_agents` VALUES ('aip', 'aipbot/', NULL, 'nameprotect.com', 0, 'copyright search robot (24.177.134.x), s. also\r\n- np/0.1_(np;_http://www.nameprotect.com...\r\n- abot/0.1 (abot; http://www.abot.com...');
INSERT INTO `nuke_security_agents` VALUES ('Alexa', 'ia_archiver', '.alexa.com', 'alexa.com', 0, 'Alexa (209.237.238.1xx)');
INSERT INTO `nuke_security_agents` VALUES ('Archive', 'ia_archiver', '.archive.org', 'archive.org', 0, 'The Internet Archive (209.237.238.1xx)');
INSERT INTO `nuke_security_agents` VALUES ('AltaVista', 'Scooter', NULL, 'altavista.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Amfibi', 'Amfibibot', NULL, 'amfibi.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ansearch', 'AnsearchBot/', NULL, 'ansearch.com.au', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('AnswerBus', 'AnswerBus', NULL, 'answerbus.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Argus', 'Argus/', NULL, 'simpy.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Arachmo', 'Arachmo', NULL, NULL, -1, 'Impolite bandwidth sucker. Netblock owned by SOFTBANK BB CORP, Japan.\r\nDoesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Ask Jeeves', 'Ask Jeeves/Teoma', '.ask.com', 'sp.ask.com/docs/about/tech_crawling.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('ASPseek', 'ASPseek/', NULL, 'aspseek.org', 0, 'search engine software');
INSERT INTO `nuke_security_agents` VALUES ('AvantGo', 'AvantGo', 'avantgo.com', 'avantgo.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Axadine', 'Axadine Crawler', NULL, 'axada.de', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Baidu', 'Baiduspider', NULL, 'baidu.com/search/spider.htm', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Become', 'BecomeBot', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('BigClique', 'BigCliqueBOT', NULL, 'bigclique.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('BilderSauger', 'BilderSauger', NULL, 'google.com/search?q=BilderSauger+data+becker', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('BitTorrent', 'btbot/', NULL, 'btbot.com/btbot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Bruin', 'BruinBot', NULL, 'webarchive.cs.ucla.edu/bruinbot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('cfetch', 'cfetch/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Cipinet', 'Cipinet', NULL, 'cipinet.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Combine', 'Combine/', NULL, 'lub.lu.se/combine/', -1, 'harvesting robot');
INSERT INTO `nuke_security_agents` VALUES ('Convera', 'ConveraCrawler/', NULL, 'authoritativeweb.com/crawl', -1, 'Impolite robot. Netblock owned by Convera Corp, Vienna');
INSERT INTO `nuke_security_agents` VALUES ('Cydral', 'CydralSpider', NULL, 'cydral.com', 0, 'Cydral Web Image Search');
INSERT INTO `nuke_security_agents` VALUES ('curl', 'curl/', NULL, 'curl.haxx.se', 0, 'file transferring tool');
INSERT INTO `nuke_security_agents` VALUES ('Datapark', 'DataparkSearch/', NULL, 'dataparksearch.org', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Demo', 'Demo Bot', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('DHCrawler', 'DHCrawler', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Diamond', 'DiamondBot', NULL, 'searchscout.com', -1, 'Claria (ex Gator) robot (64.152.73.xx), s. also Claria');
INSERT INTO `nuke_security_agents` VALUES ('DISCo', 'DISCo Pump', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Dragonfly CMS', 'Dragonfly File Reader', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Drecom', 'Drecombot/', 'drecom.jp', 'career.drecom.jp/bot.html', -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Dumbfind', 'Dumbot', NULL, 'dumbfind.com/dumbot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('e-Society', 'e-SocietyRobot', NULL, 'yama.info.waseda.ac.jp/~yamana/es/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('EmailSiphon', 'EmailSiphon', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('EmeraldShield', 'EmeraldShield.com WebBot', NULL, 'emeraldshield.com/webbot.aspx', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Educate', 'Educate Search', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Envolk', 'envolk[ITS]spider/', NULL, 'envolk.com/envolkspider.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Eruvo', 'EruvoBot', NULL, 'eruvo.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Esperanza', 'EsperanzaBot', NULL, 'esperanza.to/bot/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('eStyle', 'eStyleSearch', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Eurip', 'EuripBot', NULL, 'eurip.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Fast', 'FAST MetaWeb Crawler', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('FAST Enterprise', 'FAST Enterprise Crawler', 'fastsearch.net', NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Feedster', 'Feedster Crawler', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('FetchAPI', 'Fetch API Request', NULL, NULL, -1, 'Some sort of application that tries to download and store your full website.\r\nDoesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('fg', 'fgcrawler', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Filangy', 'Filangy', NULL, 'filangy.com/filangyinfo.jsp?inc=robots.jsp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Findexa', 'Findexa Crawler', 'gulesider.no', 'findexa.no/gulesider/article26548.ece', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('FindLinks', 'findlinks', NULL, 'wortschatz.uni-leipzig.de/findlinks/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Franklin', 'Franklin locator', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('FullWeb', 'Full Web Bot', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Fyber', 'FyberSpider', NULL, 'fybersearch.com/fyberspider.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Gais', 'Gaisbot', NULL, 'gais.cs.ccu.edu.tw/robot.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Genie', 'geniebot', NULL, 'genieknows.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GetRight', 'GetRight/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Giga', 'Gigabot/', NULL, 'gigablast.com/spider.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Girafa', 'Girafabot', NULL, 'girafa.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GoForIt', 'GOFORITBOT', NULL, 'goforit.com/about/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Gonzo', 'gonzo1', '.t-ipconnect.de', 'telekom.de', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Google', 'Googlebot', 'crawl[0-9\\-]+.googlebot.com', 'google.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GoogleAds', 'Mediapartners-Google', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GoogleImg', 'Googlebot-Image', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GPU', 'GPU p2p crawler', NULL, 'gpu.sourceforge.net/search_engine.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Grub', 'grub-client', NULL, 'grub.org', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('GSA', 'gsa-crawler', NULL, 'arsenaldigital.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('HappyFun', 'HappyFunBot/', NULL, 'happyfunsearch.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Harvest', 'Harvest/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('HeadScan', 'head-scan.pl/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Heritrix', 'heritrix/', NULL, 'crawler.xtramind.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('HooWWWer', 'HooWWWer', NULL, 'cosco.hiit.fi/search/hoowwwer/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('htdig', 'htdig/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('HTMLParser', 'HTMLParser/', NULL, 'htmlparser.sourceforge.net', -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('HTTrack', 'HTTrack', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ichiro', 'ichiro/', NULL, 'nttr.co.jp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('IconSurf', 'IconSurf/', NULL, 'iconsurf.com/robot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Industry', 'Industry Program', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Indy', 'Indy Library', NULL, NULL, -1, 'Originally, the Indy Library is a programming library which is available at http://www.nevrona.com/Indy or http://indy.torry.net under an Open Source license. This library is included with Borland Delphi 6, 7, C++Builder 6, plus all of the Kylix versions. Unfortunately, this library is hi-jacked and abused by some Chinese spam bots. All recent user-agents with the unmodified "Indy Library" string were of Chinese origin.\r\nDoesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('InetURL', 'InetURL/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Infocious', 'InfociousBot', NULL, 'corp.infocious.com/tech_crawler.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ingrid', 'INGRID', NULL, 'webmaster.ilse.nl/jsp/webmaster.jsp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Interseek', 'InterseekWeb/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ipwalk', 'IpwalkBot/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('IRL', 'IRLbot', NULL, 'irl.cs.tamu.edu/crawler', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Java', 'Java/', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Jyxo', 'Jyxobot/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('KnowItAll', 'KnowItAll(', NULL, 'cs.washington.edu', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Kumm', 'KummHttp/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Lapozz', 'LapozzBot', NULL, 'robot.lapozz.hu/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Larbin', 'larbin', NULL, 'larbin.sourceforge.net/index-eng.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('LeechGet', 'LeechGet', NULL, 'leechget.net', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('libwww-perl', 'libwww-perl/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('lmspider', 'lmspider', NULL, 'scansoft.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Local', 'LocalcomBot/', NULL, 'local.com/bot.htm', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Looksmart', 'ZyBorg/', '.looksmart.com', 'WISEnutbot.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('LoveSMS', 'LoveSMS Search Engine', NULL, 'cauta.lovesms.ro', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Lycos', 'Lycos_Spider', '.lycos.com', NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Mac Finder', 'Mac Finder', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Majestic-12', 'MJ12bot', NULL, 'majestic12.co.uk/bot.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MapoftheInternet', 'MapoftheInternet.com', NULL, 'mapoftheinternet.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('McBot', 'McBot/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Medusa', 'Medusa', NULL, NULL, -1, 'Medusa is a tool for finding images, movie-clips or other kinds of files on webpages and downloading them. You start by entering a starting URL and Medusa searches for the filetypes you are interested in on this page and all pages found up to a given depth.\r\nDoesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Metaspinner', 'Metaspinner/', NULL, 'meta-spinner.de', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MetaTag', 'MetaTagRobot', NULL, 'widexl.com/remote/search-engines/metatag-analyzer.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Minuteman', 'Minuteman', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Mirago', 'HenryTheMiragoRobot', NULL, 'miragorobot.com/scripts/mrinfo.asp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Missauga', 'Missauga Locate', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Missigua', 'Missigua Locator', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Mister PiX', 'Mister PiX', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Mojeek', 'MojeekBot', NULL, 'mojeek.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MSCCDS', 'Microsoft Scheduled Cache Cont', NULL, 'google.com/search?q=Scheduled+Cache+Content+Download+Service', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MDAIPP', 'Microsoft Data Access Internet', NULL, 'google.com/search?q=Microsoft+Data+Access+Internet+Publishin', -1, 'This agent is used to exploit your system regarding the following security issue in FrontPage2000: http://lists.grok.org.uk/pipermail/full-disclosure/2004-December/030467.html');
INSERT INTO `nuke_security_agents` VALUES ('MSIECrawler', 'MSIECrawler', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MSN', 'msnbot', 'msnbot.msn.com', 'search.msn.com/msnbot.htm', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MSR', 'MSRBOT/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('MUC', 'Microsoft URL Control', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Naver', 'NaverBot', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('NetMechanic', 'NetMechanic', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('nicebot', 'nicebot', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ninja', 'Download Ninja', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Noxtrum', 'noxtrumbot', NULL, 'noxtrum.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('NRS', 'NetResearchServer', NULL, 'loopimprovements.com/robot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Nutch', 'Nutch', NULL, 'nutch.org/docs/en/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('NutchCVS', 'NutchCVS/', NULL, 'lucene.apache.org/nutch/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Nutscrape', 'Nutscrape/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('oegp', 'oegp', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Offline Explorer', 'Offline Explorer/', NULL, 'metaproducts.com', 0, 'A Windows offline browser that allows you to download an unlimited number of your favorite Web and FTP sites for later offline viewing, editing or browsing.');
INSERT INTO `nuke_security_agents` VALUES ('OmniExplorer', 'OmniExplorer_Bot/', NULL, 'omni-explorer.com', -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Onet', 'OnetSzukaj/', NULL, 'szukaj.onet.pl', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Openfind', 'Openbot/', NULL, 'openfind.com.tw/robot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Orbit', 'Orbiter', NULL, 'dailyorbit.com/bot.htm', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('P3P Validator', 'P3P Validator', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Patsearch', 'Patwebbot', NULL, 'herz-power.de/technik.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PhpDig', 'PhpDig/', NULL, 'phpdig.net/robot.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PicSearch', 'psbot/', NULL, 'picsearch.com/bot.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Pipeline', 'pipeLiner', NULL, 'pipeline-search.com/webmaster.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Pogodak', 'Pogodak', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Poly', 'polybot', NULL, 'cis.poly.edu/polybot/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Pompos', 'Pompos/', NULL, 'dir.com/pompos.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Poodle', 'Poodle predictor', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Powermarks', 'Powermarks/', NULL, 'kaylon.com/power.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PrivacyFinder', 'PrivacyFinder Cache Bot', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Privatizer', 'privatizer.net', NULL, 'privatizer.net/whatis.php', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Production', 'Production Bot', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PS', 'Program Shareware', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PuxaRapido', 'PuxaRapido v1.0', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Python-urllib', 'Python-urllib/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Qweery', 'qweery', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Rambler', 'StackRambler/', NULL, 'rambler.ru', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Roffle', 'Roffle/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('RPT-HTTP', 'RPT-HTTPClient/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('rssImages', 'rssImagesBot', NULL, 'herbert.groot.jebbink.nl/?app=rssImages', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Ryan', 'Ryanbot/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SBIder', 'SBIder/', NULL, 'sitesell.com/sbider.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('schibstedsok', 'schibstedsokbot', NULL, 'schibstedsok.no', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Schmozilla', 'Schmozilla/', NULL, NULL, -1, 'Doesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Scrubby', 'Scrubby', NULL, 'scrubtheweb.com/abs/meta-check.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('ScSpider', 'ScSpider/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SearchGuild', 'SearchGuild/', NULL, NULL, 0, 'DMOZ Experiment');
INSERT INTO `nuke_security_agents` VALUES ('Seekbot', 'Seekbot', NULL, 'seekbot.net', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Seznam', 'SeznamBot/', NULL, 'fulltext.seznam.cz', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Siets', 'SietsCrawler/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SitiDi', '/SitiDiBot/', NULL, 'SitiDi.net', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Snoopy', 'Snoopy', NULL, 'sourceforge.net/projects/snoopy/', 0, 'Snoopy is a PHP class that simulates a web browser. It automates the task of retrieving web page content and posting forms, for example.');
INSERT INTO `nuke_security_agents` VALUES ('Sohu', 'sohu-search', NULL, 'sogou.com', 0, 'Searchbot of sohu.com');
INSERT INTO `nuke_security_agents` VALUES ('Spambot', NULL, NULL, NULL, -1, 'Global name for bots which try to fill guestbooks and other stuff with garbage\r\nThey don''t follow robots.txt either\r\n\r\nCurrent agents in this list:\r\nMissigua Locator\r\nProduction Bot\r\nFull Web Bot\r\nDemo Bot\r\nEducate Search\r\nFranklin locator\r\nIndustry Program\r\nMac Finder\r\nProgram Shareware\r\nMissauga Locate ');
INSERT INTO `nuke_security_agents` VALUES ('Spip', 'SPIP-', NULL, 'spip.net', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SurveyBot', 'SurveyBot/', NULL, 'whois.sc', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Susie', '!Susie', NULL, 'sync2it.com/susie', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Thumbshots', 'thumbshots-de-Bot', NULL, 'thumbshots.de', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Turnitin', 'TurnitinBot', NULL, 'turnitin.com/robot/crawlerinfo.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('TutorGig', 'TutorGigBot', NULL, 'tutorgig.info', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Twiceler', 'Twiceler', NULL, 'cuill.com/robots.html', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Updated', 'updated/', NULL, 'updated.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Versus', 'versus crawler', NULL, 'eda.baykan@epfl.ch', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Vagabondo', 'Vagabondo', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Virgo', 'Virgo/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Voila', 'VoilaBot', NULL, 'voila.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('vspider', 'vspider', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('W3C Checklink', 'W3C-checklink', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('W3C Validator', 'W3C_Validator', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Walhello', 'appie', NULL, 'walhello.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('WebIndexer', 'WebIndexer/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('WebReaper', 'WebReaper', NULL, 'webreaper.net', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('WebStripper', 'WebStripper/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Wget', 'Wget/', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Wire', 'WIRE', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('YaCy', 'yacy', NULL, 'yacy.net/yacy/', -1, 'p2p-based distributed Web Search Engine\r\nDoesn''t follow robots.txt');
INSERT INTO `nuke_security_agents` VALUES ('Yadows', 'YadowsCrawler', NULL, 'yadows.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Yahoo', 'Yahoo! Slurp', NULL, 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('YahooFS', 'YahooFeedSeeker/', '.yahoo.', 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('YahooMM', 'Yahoo-MMCrawler', NULL, 'help.yahoo.com/help/us/ysearch/slurp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('YANDEX', 'YANDEX', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Zeus', 'Zeus', NULL, NULL, 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('NextGen', 'NextGenSearchBot', NULL, 'about.zoominfo.com/PublicSite/NextGenSearchBot.asp', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PoI', 'PictureOfInternet/', NULL, 'malfunction.org/poi', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Sensis', 'Sensis Web Crawler', NULL, 'sensis.com.au', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('IlTrovatore', 'IlTrovatore-Setaccio/', NULL, 'iltrovatore.it/bot.html', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Rufus', 'RufusBot', NULL, '64.124.122.252/feedback.html', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('WebMiner', 'WebMiner', NULL, NULL, -1, 'See RufusBot');
INSERT INTO `nuke_security_agents` VALUES ('Accoona', 'Accoona-AI-Agent/', NULL, 'accoona.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Xirq', 'xirq/', NULL, 'xirq.com/', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Blogpulse', 'Blogpulse', NULL, 'blogpulse.com', 0, 'IntelliSeek service');
INSERT INTO `nuke_security_agents` VALUES ('KnackAttack', 'KnackAttack', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Miva', 'Miva', NULL, 'miva.com', 0, NULL);
INSERT INTO `nuke_security_agents` VALUES ('PictureRipper', 'PictureRipper/', NULL, 'pictureripper.com', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Teleport', 'Teleport Pro/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('NetSprint', 'NetSprint', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SVSpider', 'SVSpider/', NULL, 'bildkiste.de', -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('SVSearch', 'SVSearchRobot/', NULL, NULL, -1, NULL);
INSERT INTO `nuke_security_agents` VALUES ('Lorkyll', 'Lorkyll', NULL, '444.net', -1, NULL);


DROP TABLE IF EXISTS `nuke_platinum_technology`;
CREATE TABLE `nuke_platinum_technology` (
  `name` varchar(20) NOT NULL default '',
  `value` text NOT NULL
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_platinum_technology`
-- 

INSERT INTO `nuke_platinum_technology` VALUES ('versioncheck', 'Update available: <b>None</b>. Currently running version: <b>7.6.b.5</b><br>Secure connection provided by: <b><a href="http://www.futurenuke.com" target="_blank">Future Nuke</a></b><br>');
INSERT INTO `nuke_platinum_technology` VALUES ('lastupdatecheck', '1116781443');

DROP TABLE IF EXISTS `nuke_seomodules`;
CREATE TABLE `nuke_seomodules` (
  `name` text NOT NULL,
  `use` text NOT NULL
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `nuke_simplecart`;
CREATE TABLE `nuke_simplecart` (
  `main` text NOT NULL,
  `referrals` text NOT NULL,
  `policies` text NOT NULL,
  `terms` text NOT NULL,
  `country` varchar(50) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart`
-- 

INSERT INTO `nuke_simplecart` VALUES ('<P ALIGN=LEFT>\r\n</P>\r\n<TABLE WIDTH=550 BORDER=0 CELLPADDING=5 CELLSPACING=0>\r\n	<COL WIDTH=0>\r\n	<COL WIDTH=130>\r\n	<COL WIDTH=540>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Online Store 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=specials"><IMG SRC="images/simplecart/GraphicImage1.jpg" NAME="Graphic1" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><FONT SIZE=2><FONT FACE="Arial, sans-serif">We are\r\n			constantly striving to make [sitename] &quot;America''s Best Online\r\n			Store&quot; for certain products <I>and</I> the best deal for your\r\n			advertising dollar should your site presently be buried in search\r\n			engine hell. We appreciate your business by advertising with us.\r\n			Whether your interests run from the sublime to the bizarre,\r\n			[sitename] will compliment your needs. Low wholesale prices\r\n			everyday on every item or service is the [sitename]\r\n			standard.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic3" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=specials"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Specials</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD WIDTH=540 VALIGN=TOP></TD>\r\n	</TR>\r\n	<TR>\r\n		<TD COLSPAN=3 WIDTH=690>\r\n			<P ALIGN=LEFT>\r\n			</P>\r\n		</TD>\r\n	</TR>\r\n	<TR>\r\n		<TD ROWSPAN=3 VALIGN=TOP></TD>\r\n		<TD COLSPAN=2 WIDTH=680>\r\n			<P ALIGN=LEFT STYLE="margin-bottom: 0in"><FONT SIZE=4><B>America''s\r\n			Best Products 2006</B></FONT></P>\r\n			<HR SIZE=1 COLOR="#c0c0c0">\r\n		</TD>\r\n	</TR>\r\n	<TR VALIGN=TOP>\r\n		<TD ROWSPAN=2 WIDTH=130>\r\n			<P ALIGN=LEFT><A HREF="modules.php?name=SimpleCart&op=featured"><IMG SRC="images/simplecart/GraphicImage2.jpg" NAME="Graphic2" ALIGN=BOTTOM WIDTH=140 HEIGHT=115 BORDER=0></A></P>\r\n		</TD>\r\n		<TD WIDTH=540>\r\n			<P ALIGN=LEFT><BR><FONT SIZE=2><FONT FACE="Arial, sans-serif">Shop\r\n			online. The new, modern way to shop. Save time, money, gas and\r\n			energy. Avoid traffic and crowds. Shop at your own pace any hour\r\n			of the day. Super fast delivery to your door with no hassle\r\n			involved. Full product views and complete descriptions. Order for\r\n			friends, relatives and yourself the easy way. Take advantage of\r\n			all the free shipping, discounts and gifts available from our new\r\n			online merchants. Also order great, free catalogs by clicking\r\n			<A HREF="modules.php?name=SimpleCart&op=contact">here</A>.</FONT><FONT FACE="Arial, Helvetica"><BR><IMG SRC="images/simplecart/redarrow.gif" NAME="Graphic6" ALIGN=BOTTOM WIDTH=8 HEIGHT=8 BORDER=0></FONT></FONT>&nbsp;<A HREF="modules.php?name=SimpleCart&op=featured"><B><FONT SIZE=2><FONT FACE="Arial, Helvetica"><BR><BR>View\r\n			Featured Products</FONT></FONT></B></A></P>\r\n		</TD>\r\n	</TR>\r\n</TABLE>', '<P ALIGN=LEFT>Signing up for a PayPal account is free and there&#039;s no\r\ncharge to send money. PayPal&#039;s low transaction fees are applied when\r\nPremier and Business Account holders receive money. <BR><BR><BR>Choose\r\nthe Right PayPal Account for You \r\n</P>\r\n<UL>\r\n	<LI><P ALIGN=LEFT>Personal Account<BR>Ideal if you shop online. Make\r\n	secure payments on eBay and merchant websites using your credit\r\n	card, debit card, or bank account.</P>\r\n	<LI><P ALIGN=LEFT>Premier Account<BR>Perfect for both buying and\r\n	selling. Make secure payments on eBay and merchant websites. Plus,\r\n	accept credit card, debit card, and bank account payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>.</P>\r\n	<LI><P ALIGN=LEFT>Business Account<BR>The right choice for your\r\n	online business. Accept credit card, debit card, and bank account\r\n	payments for <A HREF="https://www.paypal.com/cgi-bin/webscr?cmd=_display-receiving-fees-outside">low\r\n	fees</A>. \r\n	</P>\r\n</UL>\r\n<P ALIGN=LEFT><BR><BR>\r\n</P>\r\n<P ALIGN=CENTER>Sign up is quick and easy &mdash; start using PayPal\r\ntoday !<BR><BR><A HREF="https://www.paypal.com/us/mrb/pal=287WLUA9HHU7W"><IMG SRC="images/simplecart/signup.gif" NAME="signup" ALIGN=BOTTOM WIDTH=112 HEIGHT=21 BORDER=0></A>\r\n</P>', '<DL>\r\n	<DT STYLE="margin-bottom: 0.2in; text-align: left"><U>[sitename]\r\n	is committed to safeguarding your privacy online</U>. We recognize\r\n	your need for reasonable control of personally identifiable\r\n	information that you share with [sitename]. <BR><BR>When you order,\r\n	we need to know your name, e-mail address, mailing address, credit\r\n	card number, and expiration date. This allows us to process and\r\n	fulfill your order. This will be used only for the product/service\r\n	you have sought and would not be under any circumstances passed on\r\n	for any other commercial purpose. [sitename] will not disclose any\r\n	of your personally identifiable information except when we have your\r\n	permission or under special circumstances, such as when we believe\r\n	in good faith that the law requires it. <BR><BR>Although we track\r\n	the total number of visitors to each of our sites in an aggregate\r\n	form to allow us to update an improve our sites, personally\r\n	identifiable information is not extracted in this process. Any\r\n	cookie technology (where our servers deposit special codes on a\r\n	visitor&#039;s computer) will only be used to track non-personal\r\n	information such as type of browser, operating system, and domain\r\n	names to improve our visitor&#039;s online experience. <BR><BR><B>How\r\n	does [sitename] protect customer information?</B> <BR><BR>When you\r\n	place orders, it is through a secure server. The secure server\r\n	software (SSL) encrypts all information you input including your\r\n	credit card number, before it is sent to us. This makes it\r\n	unreadable as it travels across the Internet. Furthermore, all of\r\n	the customer data we collect is protected against unauthorized\r\n	access. <BR><BR><B>Will [sitename] disclose the information it\r\n	collects to outside parties?</B> <BR><BR>[sitename] does not\r\n	sell, trade, or rent your personal information to others. By using\r\n	our web site, you consent to the collection and use of this\r\n	information by [sitename]. If we decide to change our privacy\r\n	policy, we will post those changes on this page so that you are\r\n	always aware of what information we collect, how we use it, and\r\n	under what circumstances we disclose it.</DT></DL>', '<DL>\r\n	<DT STYLE="text-align: left">By using this site the user has,\r\n	unconditionally, accepted the terms and conditions of use as given\r\n	hereunder and/or elsewhere in the site.<BR><BR>1. The user may\r\n	carefully read all the information on products/services as provided\r\n	in relevant sections.<BR><BR>2. This site is owned by [sitename],\r\n	(hereafter referred to as [sitename]). No product/services from this\r\n	site or any other website owned, operated, controlled or licensed by\r\n	[sitename] and/or associates or sister concerns may be copied,\r\n	reproduced, republished, transmitted, downloaded, uploaded or in any\r\n	other manner used for commercial or non-commercial purposes, without\r\n	the written permission of [sitename]. Violation of this condition\r\n	would be treated as a violation of copyright and other proprietary\r\n	rights of [sitename] and/or their associates or sister concerns or\r\n	affiliates.<BR><BR>3. The product/services provided on this site are\r\n	without warranties of any kind either expressed or implied and\r\n	[sitename] disclaims all or any of them to the fullest extent.\r\n	[sitename] makes its best efforts to offer you the best products and\r\n	services but does not warrant that all the products/services offered\r\n	will be error-free, or that the defects will be corrected, or that\r\n	this site or the server that makes it available are or will be free\r\n	of viruses or other harmful components.<BR><BR>4. The product\r\n	specifications (weight, size, color etc.) mentioned with the product\r\n	photos are approximate. There may be a slight variation between the\r\n	real product and product displayed on [sitename] (however unlikely),\r\n	including the pictures &amp; specifications. [sitename], in its\r\n	absolute discretion, may deliver a similar / alternate product for\r\n	reasons or exigencies beyond its control.<BR><BR>5. Under no\r\n	circumstances, whatsoever, [sitename] shall be liable for any loss\r\n	of data, lost profits or any damages whatsoever including, without\r\n	limiting, any indirect, special, incidental, consequential or other\r\n	damages that result from the use of or inability to use the\r\n	products/services offered in the site. Notwithstanding the\r\n	foregoing, in no event shall [sitename] be liable to the user for\r\n	any or all damages, losses, and causes of action (including but not\r\n	limited to, negligence) or otherwise exceeding the amount paid by\r\n	the user to [sitename] for that specific service/product.<BR><BR>6. In\r\n	an effort to provide our customers with the most current\r\n	information, [sitename] will, from time to time, make changes in the\r\n	content and the products or services described on this site. The\r\n	prices advertised on this site are for Internet orders only. Prices\r\n	and the availability of items are subject to change without notice.\r\n	Prices displayed on the site may not be indicative of the actual\r\n	selling price of that product in your area. We reserve the right to\r\n	limit sales, including the right to prohibit sales to re-sellers. We\r\n	are not responsible for typographical or photographic\r\n	errors.<BR><BR>7. Notwithstanding any or all of the Terms, Conditions\r\n	&amp; Disclaimers stated herein above or elsewhere in the site, any\r\n	refund or payment by [sitename] to the user or anyone else acting on\r\n	his behalf for any reason whatsoever, voluntarily or on being\r\n	claimed by any user shall not become a waiver of any or all of the\r\n	Terms, Conditions and Disclaimers made and shall not become a\r\n	precedent for similar future actions/claims or confer any rights on\r\n	the claimant. AND further that all such refunds/payments, if any,\r\n	when made shall be subject to 10% deduction on account of bank\r\n	charges and other processing overheads.<BR><BR>8. If the user has any\r\n	question, doubts or confusion with regard to any of these terms and\r\n	conditions set out herein he should seek clarifications from us by\r\n	<A HREF="modules.php?name=SimpleCart&op=contact">contacting\r\n	the webmaster</A>.<BR><BR>THE USER OF [sitename] IS PRESUMED\r\n	TO HAVE READ ALL THE TERMS AND CONDITIONS HEREIN AND IS DEEMED TO\r\n	HAVE AGREED, UNDERSTOOD AND ACCEPTED UNCONDITIONALLY ALL THE TERMS,\r\n	CONDITIONS, PROCEDURES AND RISKS OF USING THE SERVICES. THE USER\r\n	CANNOT, AT ANY TIME, CLAIM IGNORANCE OF ANY OR ALL OF THEM. ALL\r\n	RELATIONSHIP OF ANY USER WHERESOEVER SITUATED IS GOVERNED BY AND IN\r\n	ACCORDANCE WITH THE LAWS OF [country].</DT></DL>', 'United States of America');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_simplecart_config`
-- 

DROP TABLE IF EXISTS `nuke_simplecart_config`;
CREATE TABLE `nuke_simplecart_config` (
  `scmail` varchar(255) NOT NULL default 'admin@MySite.com',
  `scsubject` varchar(255) NOT NULL default 'SimpleCart Catalog Order',
  `sccontact` varchar(255) NOT NULL default 'sales@MySite.com',
  `sccontactsubject` varchar(255) NOT NULL default 'SimpleCart Product Inquiry',
  `scname` varchar(255) NOT NULL default 'SimpleCart Online Store'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart_config`
-- 

INSERT INTO `nuke_simplecart_config` VALUES ('admin@MySite.com', 'SimpleCart Catalog Order', 'sales@MySite.com', 'SimpleCart Product Inquiry', 'SimpleCart Online Store');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_simplecart_featured`
-- 

DROP TABLE IF EXISTS `nuke_simplecart_featured`;
CREATE TABLE `nuke_simplecart_featured` (
  `c4_desc` varchar(255) NOT NULL default 'Insert Category Description Here',
  `c4` varchar(50) NOT NULL default '',
  `c4p1_img` varchar(255) NOT NULL default '',
  `c4p1_tit` varchar(50) NOT NULL default '',
  `c4p1_desc` text NOT NULL,
  `c4p1_buy` text NOT NULL,
  `c4p1_cart` text NOT NULL,
  `c4p1_active` tinyint(1) NOT NULL default '1',
  `c4p2_img` varchar(255) NOT NULL default '',
  `c4p2_tit` varchar(50) NOT NULL default '',
  `c4p2_desc` text NOT NULL,
  `c4p2_buy` text NOT NULL,
  `c4p2_cart` text NOT NULL,
  `c4p2_active` tinyint(1) NOT NULL default '1',
  `c4p3_img` varchar(255) NOT NULL default '',
  `c4p3_tit` varchar(50) NOT NULL default '',
  `c4p3_desc` text NOT NULL,
  `c4p3_buy` text NOT NULL,
  `c4p3_cart` text NOT NULL,
  `c4p3_active` tinyint(1) NOT NULL default '1',
  `c4p4_img` varchar(255) NOT NULL default '',
  `c4p4_tit` varchar(50) NOT NULL default '',
  `c4p4_desc` text NOT NULL,
  `c4p4_buy` text NOT NULL,
  `c4p4_cart` text NOT NULL,
  `c4p4_active` tinyint(1) NOT NULL default '1',
  `c4p5_img` varchar(255) NOT NULL default '',
  `c4p5_tit` varchar(50) NOT NULL default '',
  `c4p5_desc` text NOT NULL,
  `c4p5_buy` text NOT NULL,
  `c4p5_cart` text NOT NULL,
  `c4p5_active` tinyint(1) NOT NULL default '1',
  `c4p6_img` varchar(255) NOT NULL default '',
  `c4p6_tit` varchar(50) NOT NULL default '',
  `c4p6_desc` text NOT NULL,
  `c4p6_buy` text NOT NULL,
  `c4p6_cart` text NOT NULL,
  `c4p6_active` tinyint(1) NOT NULL default '1',
  `c4p7_img` varchar(255) NOT NULL default '',
  `c4p7_tit` varchar(50) NOT NULL default '',
  `c4p7_desc` text NOT NULL,
  `c4p7_buy` text NOT NULL,
  `c4p7_cart` text NOT NULL,
  `c4p7_active` tinyint(1) NOT NULL default '1',
  `c4p8_img` varchar(255) NOT NULL default '',
  `c4p8_tit` varchar(50) NOT NULL default '',
  `c4p8_desc` text NOT NULL,
  `c4p8_buy` text NOT NULL,
  `c4p8_cart` text NOT NULL,
  `c4p8_active` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart_featured`
-- 

INSERT INTO `nuke_simplecart_featured` VALUES ('Insert Category Description Here', 'Featured Products', 'images/simplecart/featured/c4p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<b>Price: $16.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="16.99 ">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<b>Price: $28.88</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PostNuke Content Management">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="28.88">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<b>Price: $26.39</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="26.39">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<b>Price: $26.39</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="26.39">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<b>Price: $27.97</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="27.97">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<b>Price: $16.49</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="16.49">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/featured/c4p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<b>Price: $32.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="32.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/featured/c4p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<b>Price: $19.79</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="19.79">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_simplecart_products`
-- 

DROP TABLE IF EXISTS `nuke_simplecart_products`;
CREATE TABLE `nuke_simplecart_products` (
  `c1_desc` varchar(255) NOT NULL default 'Insert Category Description Here',
  `c1` varchar(50) NOT NULL default '',
  `c1p1_img` varchar(255) NOT NULL default '',
  `c1p1_tit` varchar(50) NOT NULL default '',
  `c1p1_desc` text NOT NULL,
  `c1p1_buy` text NOT NULL,
  `c1p1_cart` text NOT NULL,
  `c1p1_active` tinyint(1) NOT NULL default '1',
  `c1p2_img` varchar(255) NOT NULL default '',
  `c1p2_tit` varchar(50) NOT NULL default '',
  `c1p2_desc` text NOT NULL,
  `c1p2_buy` text NOT NULL,
  `c1p2_cart` text NOT NULL,
  `c1p2_active` tinyint(1) NOT NULL default '1',
  `c1p3_img` varchar(255) NOT NULL default '',
  `c1p3_tit` varchar(50) NOT NULL default '',
  `c1p3_desc` text NOT NULL,
  `c1p3_buy` text NOT NULL,
  `c1p3_cart` text NOT NULL,
  `c1p3_active` tinyint(1) NOT NULL default '1',
  `c1p4_img` varchar(255) NOT NULL default '',
  `c1p4_tit` varchar(50) NOT NULL default '',
  `c1p4_desc` text NOT NULL,
  `c1p4_buy` text NOT NULL,
  `c1p4_cart` text NOT NULL,
  `c1p4_active` tinyint(1) NOT NULL default '1',
  `c1p5_img` varchar(255) NOT NULL default '',
  `c1p5_tit` varchar(50) NOT NULL default '',
  `c1p5_desc` text NOT NULL,
  `c1p5_buy` text NOT NULL,
  `c1p5_cart` text NOT NULL,
  `c1p5_active` tinyint(1) NOT NULL default '1',
  `c1p6_img` varchar(255) NOT NULL default '',
  `c1p6_tit` varchar(50) NOT NULL default '',
  `c1p6_desc` text NOT NULL,
  `c1p6_buy` text NOT NULL,
  `c1p6_cart` text NOT NULL,
  `c1p6_active` tinyint(1) NOT NULL default '1',
  `c1p7_img` varchar(255) NOT NULL default '',
  `c1p7_tit` varchar(50) NOT NULL default '',
  `c1p7_desc` text NOT NULL,
  `c1p7_buy` text NOT NULL,
  `c1p7_cart` text NOT NULL,
  `c1p7_active` tinyint(1) NOT NULL default '1',
  `c1p8_img` varchar(255) NOT NULL default '',
  `c1p8_tit` varchar(50) NOT NULL default '',
  `c1p8_desc` text NOT NULL,
  `c1p8_buy` text NOT NULL,
  `c1p8_cart` text NOT NULL,
  `c1p8_active` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart_products`
-- 

INSERT INTO `nuke_simplecart_products` VALUES ('Insert Category Description Here', 'Products', 'images/simplecart/products/c1p1.jpg', 'PHP-Nuke Garage', 'PHP-Nuke is remarkably capable and reliable, but until now, it&#039;s been poorly documented. This book fills the gap. Best of all, you can use it even if you have no experience with PHP, databases, coding, or hosting.\r\n<br>\r\n<br>\r\n<b>Price: $16.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PHP-Nuke Garage">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="16.99 ">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p2.jpg', 'PostNuke Content Management', 'PostNuke Content Management is a practical, application-oriented guide to building content-driven websites and portals with the PostNuke package. Website developers will find that this guide will help you get your website up and running quickly. You&#039;ll learn how to install and setup PostNuke and use it to build fully-customizeable content-focused websites.\r\n<br>\r\n<br>\r\n<b>Price: $28.88</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PostNuke Content Management">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="28.88">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p3.jpg', 'Beginning PHP 5 and MySQL: From Novice to Pro', 'Beginning PHP 5 and MYSQL: From Novice to Professional offers a comprehensive introduction to two of the most popular Web application building technologies on the planet: the scripting language PHP and the MySQL database server. This book will not only expose you to the core aspects of both technologies, but will provide valuable insight into how they are used in unison to create dynamic data-driven Web applications.\r\n<br>\r\n<br>\r\n<b>Price: $26.39</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Beginning PHP 5 and MySQL: From Novice to Pro">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="26.39">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p4.jpg', 'Beginning PHP, Apache, MySQL Web Development', 'PHP, Apache, and MySQL are the three key open source technologies that form the basis for most active Web servers. This book takes you step-by-step through understanding each ? using it and combining it with the other two on both Linux and Windows servers.\r\n<br>\r\n<br>\r\n<b>Price: $26.39</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Beginning PHP, Apache, MySQL Web Development">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="26.39">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p5.jpg', 'Build Your Own Database Driven Website Using PHP', 'Together, PHP and MySQL form the most widely used open source database and scripting technologies on the Web today. As a budding Web developer, you need to learn and master PHP and MySQL. Build Your Own Database Driven Website Using PHP & MySQL is a hands-on guide to learning all the tools, principles, and techniques needed to build a fully functional database-driven Web site using PHP and MySQL.\r\n<br>\r\n<br>\r\n<b>Price: $27.97</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Build Your Own Database Driven Website Using PHP">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="27.97">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p6.jpg', 'How to Do Everything with PHP and MySQL', 'This new release in the popular How to Do Everything series explains how to build open source web applications with MySQL and PHP 5. Using these two tools, you?ll be able to create highly functional, interactive web sites easily. Follow along with a step-by-step sample application and, as a bonus, download three full-length case studies complete with code trees.\r\n<br>\r\n<br>\r\n<b>Price: $16.49</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="How to Do Everything with PHP and MySQL">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="16.49">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/products/c1p7.jpg', 'Core Web Application Development with PHP', 'This is a comprehensive, practical guide for programmers who want to develop production-quality, database-enabled web applications with PHP and MySQL. Long-time developer Marc Wandschneider systematically addresses the entire process: not only coding, but also upfront application, user interface and database design, PLUS security, testing, and more.\r\n<br>\r\n<br>\r\n<b>Price: $32.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Core Web Application Development with PHP and MySql">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="32.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/products/c1p8.jpg', 'PHP & MySQL & Everyday Apps For Dummies', 'e-book (Adobe Reader). Available for download only.\r\n<br>\r\n<br>\r\n<b>Price: $19.79</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="PHP & MySQL & Everyday Apps For Dummies">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="19.79">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_simplecart_services`
-- 

DROP TABLE IF EXISTS `nuke_simplecart_services`;
CREATE TABLE `nuke_simplecart_services` (
  `c2_desc` varchar(255) NOT NULL default 'Insert Category Description Here',
  `c2` varchar(50) NOT NULL default '',
  `c2p1_img` varchar(255) NOT NULL default '',
  `c2p1_tit` varchar(50) NOT NULL default '',
  `c2p1_desc` text NOT NULL,
  `c2p1_buy` text NOT NULL,
  `c2p1_cart` text NOT NULL,
  `c2p1_active` tinyint(1) NOT NULL default '1',
  `c2p2_img` varchar(255) NOT NULL default '',
  `c2p2_tit` varchar(50) NOT NULL default '',
  `c2p2_desc` text NOT NULL,
  `c2p2_buy` text NOT NULL,
  `c2p2_cart` text NOT NULL,
  `c2p2_active` tinyint(1) NOT NULL default '1',
  `c2p3_img` varchar(255) NOT NULL default '',
  `c2p3_tit` varchar(50) NOT NULL default '',
  `c2p3_desc` text NOT NULL,
  `c2p3_buy` text NOT NULL,
  `c2p3_cart` text NOT NULL,
  `c2p3_active` tinyint(1) NOT NULL default '1',
  `c2p4_img` varchar(255) NOT NULL default '',
  `c2p4_tit` varchar(50) NOT NULL default '',
  `c2p4_desc` text NOT NULL,
  `c2p4_buy` text NOT NULL,
  `c2p4_cart` text NOT NULL,
  `c2p4_active` tinyint(1) NOT NULL default '1',
  `c2p5_img` varchar(255) NOT NULL default '',
  `c2p5_tit` varchar(50) NOT NULL default '',
  `c2p5_desc` text NOT NULL,
  `c2p5_buy` text NOT NULL,
  `c2p5_cart` text NOT NULL,
  `c2p5_active` tinyint(1) NOT NULL default '1',
  `c2p6_img` varchar(255) NOT NULL default '',
  `c2p6_tit` varchar(50) NOT NULL default '',
  `c2p6_desc` text NOT NULL,
  `c2p6_buy` text NOT NULL,
  `c2p6_cart` text NOT NULL,
  `c2p6_active` tinyint(1) NOT NULL default '1',
  `c2p7_img` varchar(255) NOT NULL default '',
  `c2p7_tit` varchar(50) NOT NULL default '',
  `c2p7_desc` text NOT NULL,
  `c2p7_buy` text NOT NULL,
  `c2p7_cart` text NOT NULL,
  `c2p7_active` tinyint(1) NOT NULL default '1',
  `c2p8_img` varchar(255) NOT NULL default '',
  `c2p8_tit` varchar(50) NOT NULL default '',
  `c2p8_desc` text NOT NULL,
  `c2p8_buy` text NOT NULL,
  `c2p8_cart` text NOT NULL,
  `c2p8_active` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart_services`
-- 

INSERT INTO `nuke_simplecart_services` VALUES ('Insert Category Description Here', 'Services', 'images/simplecart/services/c2p1.jpg', 'Motorola Talkabout FV200AA GMRS / FRS Two-way', 'The Motorola Talkabout FV200AA GMRS/FRS Two-way Radios, which replaces the T4500 model, offers active families a simple and affordable way to stay in touch. With an improved outdoor range of up to five miles, these sleek and compact, water-resistant radios can fit in the palm of your hand or into a pocket.\r\n<br>\r\n<br>\r\n<b>Price: $19.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Motorola Talkabout FV200AA GMRS / FRS Two-way Radio">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="19.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p2.jpg', 'Linksys PAP2 Phone Adapter', 'With Vonage, you can make calls through the Internet, potentially save on long-distance charges, and access a rich assortment of call features. Plans start as low as $14.99 per month, and the Premium Unlimited plan offers unlimited calling to the U.S. and Canada for only $24.99 per month.\r\n<br>\r\n<br>\r\n<b>Price: $49.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Linksys PAP2 Phone Adapter for Vonage Internet Phone Service">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="49.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p3.jpg', 'Apple .Mac 3.5 Online Service', '.Mac provides individuals and families with the Internet experience they?ve come to expect from Apple. The new version of .Mac has extended its services to support the special requirements of groups. Members of clubs, teams, and other organizations can now use .Mac to streamline communication, share photos and movies, and coordinate activities in minutes.\r\n<br>\r\n<br>\r\n<b>Apple Computer CD-ROM $75.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Apple .Mac 3.5 Online Service">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="75.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p4.jpg', 'Microsoft Windows XP Professional', 'With Windows XP Professional Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Windows XP is the operating system release that unifies the Microsoft range, with all the desktop versions now built on the NT/2000 code base rather than the shakier foundation of Windows 95, 98, and Me.\r\n<br>\r\n<br>\r\n<b>Price: $266.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Microsoft Windows XP Professional with Service Pack 2">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="266.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<b>Price: $28.50</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="28.50">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<b>Price: $92.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="92.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/services/c2p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<b>Price: $196.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="196.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/services/c2p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<b>Price: $49.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="49.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_simplecart_specials`
-- 

DROP TABLE IF EXISTS `nuke_simplecart_specials`;
CREATE TABLE `nuke_simplecart_specials` (
  `c3_desc` varchar(255) NOT NULL default 'Insert Category Description Here',
  `c3` varchar(50) NOT NULL default '',
  `c3p1_img` varchar(255) NOT NULL default '',
  `c3p1_tit` varchar(50) NOT NULL default '',
  `c3p1_desc` text NOT NULL,
  `c3p1_buy` text NOT NULL,
  `c3p1_cart` text NOT NULL,
  `c3p1_active` tinyint(1) NOT NULL default '1',
  `c3p2_img` varchar(255) NOT NULL default '',
  `c3p2_tit` varchar(50) NOT NULL default '',
  `c3p2_desc` text NOT NULL,
  `c3p2_buy` text NOT NULL,
  `c3p2_cart` text NOT NULL,
  `c3p2_active` tinyint(1) NOT NULL default '1',
  `c3p3_img` varchar(255) NOT NULL default '',
  `c3p3_tit` varchar(50) NOT NULL default '',
  `c3p3_desc` text NOT NULL,
  `c3p3_buy` text NOT NULL,
  `c3p3_cart` text NOT NULL,
  `c3p3_active` tinyint(1) NOT NULL default '1',
  `c3p4_img` varchar(255) NOT NULL default '',
  `c3p4_tit` varchar(50) NOT NULL default '',
  `c3p4_desc` text NOT NULL,
  `c3p4_buy` text NOT NULL,
  `c3p4_cart` text NOT NULL,
  `c3p4_active` tinyint(1) NOT NULL default '1',
  `c3p5_img` varchar(255) NOT NULL default '',
  `c3p5_tit` varchar(50) NOT NULL default '',
  `c3p5_desc` text NOT NULL,
  `c3p5_buy` text NOT NULL,
  `c3p5_cart` text NOT NULL,
  `c3p5_active` tinyint(1) NOT NULL default '1',
  `c3p6_img` varchar(255) NOT NULL default '',
  `c3p6_tit` varchar(50) NOT NULL default '',
  `c3p6_desc` text NOT NULL,
  `c3p6_buy` text NOT NULL,
  `c3p6_cart` text NOT NULL,
  `c3p6_active` tinyint(1) NOT NULL default '1',
  `c3p7_img` varchar(255) NOT NULL default '',
  `c3p7_tit` varchar(50) NOT NULL default '',
  `c3p7_desc` text NOT NULL,
  `c3p7_buy` text NOT NULL,
  `c3p7_cart` text NOT NULL,
  `c3p7_active` tinyint(1) NOT NULL default '1',
  `c3p8_img` varchar(255) NOT NULL default '',
  `c3p8_tit` varchar(50) NOT NULL default '',
  `c3p8_desc` text NOT NULL,
  `c3p8_buy` text NOT NULL,
  `c3p8_cart` text NOT NULL,
  `c3p8_active` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_simplecart_specials`
-- 

INSERT INTO `nuke_simplecart_specials` VALUES ('Insert Category Description Here', 'Specials', 'images/simplecart/specials/c3p1.jpg', 'Invicta Automatic Pro Diver G3', 'Eminently masculine, the Invicta Automatic Pro Diver G3 watch harkens back to a nostalgic time with its classically styled features. This precisely constructed Swiss timepiece for men features a solid stainless steel case that&#039;s 43mm wide (1.7 inches).\r\n<br>\r\n<br>\r\n<b>List Price: $375.00 Your Price: $97.00</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Invicta Men&#039;s Automatic Pro Diver S2">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="97.00">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p2.jpg', 'Apple 20 GB iPod Photo U2 Special Edition', 'The distinctive 20 GB iPod U2 Special Edition for Mac and Windows. Now with a full-color display. Play up to 5,000 songs. Store up to 20,000 photos. Turn it up loud, captain.\r\n<br>\r\n<br>\r\n<b>Price: $332.49</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Apple 20 GB iPod Photo U2 Special Edition">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="332.49">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p3.jpg', 'T-Mobile Get More 600 Nationwide Minute Plan', '<b>Calling Range: national with roaming</b><br><br>\r\nThis cell phone service plan lets you call throughout T-Mobile&#039;s nationwide network, with no additional fees for long distance service or roaming for 600 minutes worth of calls per month.\r\n<br>\r\n<br>\r\n<b>Plan Price per month: $39.99</b>\r\n', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="T-Mobile Get More 600 Nationwide Minute Plan with Unlimited Nights and Weekends">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="39.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p4.jpg', 'Fun Hop', 'Every child knows this much about evolution: somewhere, way, way back, we were kangaroos. All you need to satisfy the deep primal desire to get around by hopping is one of these big, heavy-gauge vinyl hopping balls. The slightly stippled surface of the blue vinyl provides plenty of grip, and the ball inflates to over 53 inches in circumference, so it can accommodate different sizes of human Roo.\r\n<br>\r\n<br>\r\n<b>Price: $12.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Fun Hop">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="12.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1, 'images/simplecart/specials/c3p5.jpg', 'Glaceau Vitamin Water Assorted Case', 'Glaceau Vitamin Water Assorted Case of 15 bottles Manufacturer&#039;s Brand Overview: glac?au vitaminwaterTM is a low calorie, great tasting, nutrient enhanced water. it offers consumers an alternative to high-calorie, high-sugar beverages and provides them with variety in conventional bottled water.\r\n<br>\r\n<br>\r\n<b>Price: $28.50</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Glaceau Vitamin Water Assorted Case">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="28.50">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p6.jpg', 'Microsoft Windows XP Home Edition Upgrade', 'With Windows XP Home Edition with Service Pack 2, you get safer browsing and communication, powerful security tools, and improved experiences. Packed with multimedia features, Windows XP Home Edition with Service Pack 2 aims to unlock the full potential of your personal computer.\r\n<br>\r\n<br>\r\n<b>Price: $92.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Microsoft Windows XP Home Edition Upgrade with Service Pack 2">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="92.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p7.jpg', 'Garmin Rino 120 GPS Integrated FRS / GMRS Radio', 'The Rino 120 is state-of-the-art GPS navigation and two-way communications combined, with enough memory to download detailed mapping for driving, hiking, hunting, fishing, or just about anything else you can dream up.\r\n<br>\r\n<br>\r\n<b>Price: $196.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Garmin Rino 120 GPS Integrated FRS / GMRS Radio with 8 MB of Internal Memory">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="196.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 0, 'images/simplecart/specials/c3p8.jpg', 'Eton FR300 Emergency Radio with AM/FM Tuner, VHF', 'This all-in-one unit FR300 offers functionality and versatility that makes it ideal for emergencies. The FR300 provides you with radio, light, and cell phone battery life when you need it most.\r\n<br>\r\n<br>\r\n<b>Price: $49.99</b>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="hidden" name="item_name" value="Eton FR300 Emergency Radio with AM/FM Tuner, VHF TV Tuner, and NOAA Weather Service">\r\n<input ENGINE="hidden" name="item_number" value="">\r\n<input ENGINE="hidden" name="amount" value="49.99">\r\n<input ENGINE="hidden" name="currency_code" value="USD">\r\n<input ENGINE="hidden" name="shipping" value="">\r\n<input ENGINE="hidden" name="shipping2" value="">\r\n<input ENGINE="hidden" name="handling_cart" value="">\r\n<input ENGINE="hidden" name="bn"  value="ButtonFactory.SimpleCart.081">\r\n<input ENGINE="image" name="add" src="modules/SimpleCart/bf/x-click-but22.gif">\r\n</form>', '<form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal">\r\n<input ENGINE="hidden" name="cmd" value="_cart">\r\n<input ENGINE="hidden" name="business" value="your-email@address.com">\r\n<input ENGINE="image"  name="submit" src="modules/SimpleCart/bf/view_cart_02.gif" border="0">\r\n<input ENGINE="hidden" name="display" value="1">\r\n</form>', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_sommaire`
-- 

DROP TABLE IF EXISTS `nuke_sommaire`;
CREATE TABLE `nuke_sommaire` (
  `groupmenu` int(2) NOT NULL default '0',
  `name` varchar(200) default NULL,
  `image` varchar(99) default NULL,
  `lien` text,
  `hr` char(2) default NULL,
  `center` char(2) default NULL,
  `bgcolor` tinytext,
  `invisible` int(1) default NULL,
  `class` tinytext,
  `bold` char(2) default NULL,
  `new` char(2) default NULL,
  `listbox` char(2) default NULL,
  `dynamic` char(2) default NULL,
  `date_debut` bigint(20) unsigned NOT NULL default '0',
  `date_fin` bigint(20) unsigned NOT NULL default '0',
  `days` varchar(8) default NULL,
  PRIMARY KEY  (`groupmenu`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_sommaire`
-- 

INSERT INTO `nuke_sommaire` VALUES (0, 'Home', 'icon_home.gif', 'index.php', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (1, 'General', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (2, 'Community', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (3, 'Content', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (4, 'Information', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (5, 'Tools', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (6, 'Resources', 'nuke.gif', '', '', '', '', 1, 'storytitle', '', '', '', 'on', 0, 0, '');
INSERT INTO `nuke_sommaire` VALUES (99, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'on', 0, 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_sommaire_categories`
-- 

DROP TABLE IF EXISTS `nuke_sommaire_categories`;
CREATE TABLE `nuke_sommaire_categories` (
  `id` int(11) NOT NULL auto_increment,
  `groupmenu` int(2) NOT NULL default '0',
  `module` varchar(50) NOT NULL default '',
  `url` text NOT NULL,
  `url_text` text NOT NULL,
  `image` varchar(50) NOT NULL default '',
  `new` char(2) default NULL,
  `new_days` tinyint(4) NOT NULL default '-1',
  `class` varchar(20) default NULL,
  `bold` char(2) default NULL,
  `sublevel` tinyint(3) NOT NULL default '0',
  `date_debut` bigint(20) unsigned NOT NULL default '0',
  `date_fin` bigint(20) unsigned NOT NULL default '0',
  `days` varchar(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_sommaire_categories`
-- 

INSERT INTO `nuke_sommaire_categories` VALUES (1505, 1, 'Forums', '', '', 'middot.gif', '', 7, 'boxcontent', 'on', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1506, 1, 'Downloads', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1507, 1, 'PrivateDownloads', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1508, 1, 'Amazon', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1509, 1, 'AvantGo', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1510, 1, 'Hosting', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1511, 2, 'News', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1512, 2, 'Topics', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1513, 2, 'Submit_News', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1514, 2, 'Calendar', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1515, 2, 'Donations', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1516, 2, 'Shopping_Cart', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1517, 2, 'Banner_Ads', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1518, 2, 'Shout_Box', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1519, 2, 'Groups', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1520, 2, 'NukeC30', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1521, 2, 'Member_Application', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1522, 2, 'SimpleCart', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1523, 2, 'Whats_New', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1524, 2, 'Top_Sites', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1525, 3, 'Content', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1526, 3, 'Encyclopedia', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1527, 3, 'Reviews', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1528, 3, 'Top', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1529, 3, 'Docs', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1530, 3, 'Surveys', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1531, 3, 'Tutorials', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1532, 3, 'Universal', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1533, 3, 'Top_Sites', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1534, 3, 'Stories_Archive', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1535, 3, 'MetAuthors', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1536, 4, 'Recommend_Us', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1537, 4, 'Statistics', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1538, 4, 'Search', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1539, 4, 'Journal', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1540, 4, 'Your_Account', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1541, 4, 'Private_Messages', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1542, 4, 'Advertising', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1543, 4, 'Work_Board', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1544, 4, 'Contact', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1545, 4, 'FAQ', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1546, 4, 'Work_Probe', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1547, 4, 'Staff', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1548, 4, 'Members_List', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1549, 4, 'Sitemap', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1550, 4, 'Credits', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1551, 4, 'HTML_Newsletter', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1552, 4, 'Mailing_List', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1553, 5, 'Ban_Request', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1554, 5, 'PHP-Nuke_Tools', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1555, 5, 'Work_Request', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1556, 6, 'Supporters', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1557, 6, 'Web_Links', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1558, 6, 'Supporters_2', '', '', 'middot.gif', '', 7, 'boxcontent', '', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1559, 6, 'Lien externe', 'http://www.futurenuke.com', 'Future Nuke', 'middot.gif', '', 7, 'boxcontent', 'on', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1560, 6, 'Lien externe', 'http://www.nukeplanet.com', 'Nuke Planet', 'middot.gif', '', 7, 'boxcontent', 'on', 0, 0, 0, '');
INSERT INTO `nuke_sommaire_categories` VALUES (1561, 6, 'Lien externe', 'http://www.artofgaming.co.uk', 'Platinum Themes', 'middot.gif', '', 7, 'boxcontent', 'on', 0, 0, 0, '');


DROP TABLE IF EXISTS `nuke_tutorials_categories`;
CREATE TABLE `nuke_tutorials_categories` (
  `tc_id` int(11) NOT NULL auto_increment,
  `tc_title` varchar(50) NOT NULL default '',
  `tc_description` text NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tc_id`),
  KEY `tc_id` (`tc_id`),
  KEY `tc_title` (`tc_title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_categories`
-- 

INSERT INTO `nuke_tutorials_categories` VALUES (1, 'test', 'testing', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_config`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_config`;
CREATE TABLE `nuke_tutorials_config` (
  `tutsperpage` tinyint(2) NOT NULL default '10',
  `hitsforpopular` varchar(5) NOT NULL default '5000',
  `toptutorials` tinyint(2) NOT NULL default '10',
  `anonwaitdays` tinyint(2) NOT NULL default '1',
  `anonweight` tinyint(2) NOT NULL default '10',
  `detailvotedecimal` tinyint(1) NOT NULL default '2',
  `mainvotedecimal` tinyint(1) NOT NULL default '1',
  `mostpoptutorials` tinyint(2) NOT NULL default '10',
  `tutorialvotemin` tinyint(3) NOT NULL default '25',
  `show_links_num` tinyint(1) NOT NULL default '0',
  `maxfavs` tinyint(2) NOT NULL default '10',
  `rightblocks` tinyint(1) NOT NULL default '1',
  `searchtutorials` tinyint(2) NOT NULL default '10',
  `submit_on` tinyint(1) NOT NULL default '1',
  `approve_on` tinyint(1) NOT NULL default '1'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_config`
-- 

INSERT INTO `nuke_tutorials_config` VALUES (10, '5000', 10, 1, 10, 2, 1, 10, 25, 0, 10, 1, 10, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_favorites`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_favorites`;
CREATE TABLE `nuke_tutorials_favorites` (
  `fav_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `t_id` int(11) NOT NULL default '0',
  `showlist` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`fav_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_favorites`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_levels`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_levels`;
CREATE TABLE `nuke_tutorials_levels` (
  `sid` int(10) NOT NULL auto_increment,
  `title` varchar(60) NOT NULL default '',
  `weight` int(10) NOT NULL default '1',
  PRIMARY KEY  (`sid`),
  KEY `title` (`title`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_levels`
-- 

INSERT INTO `nuke_tutorials_levels` VALUES (1, 'Very Easy', 1);
INSERT INTO `nuke_tutorials_levels` VALUES (2, 'Easy', 2);
INSERT INTO `nuke_tutorials_levels` VALUES (3, 'Intermediate', 3);
INSERT INTO `nuke_tutorials_levels` VALUES (4, 'Difficult', 4);
INSERT INTO `nuke_tutorials_levels` VALUES (5, 'Advanced', 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_submit`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_submit`;
CREATE TABLE `nuke_tutorials_submit` (
  `t_submitid` int(10) NOT NULL auto_increment,
  `tc_id` int(10) NOT NULL default '0',
  `t_title` varchar(255) NOT NULL default '',
  `t_text` longtext NOT NULL,
  `t_submitdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `t_counter` int(10) NOT NULL default '0',
  `version` varchar(10) NOT NULL default '',
  `description` text NOT NULL,
  `tutorialsratingsummary` double(6,4) NOT NULL default '0.0000',
  `author` varchar(60) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '0',
  `author_homepage` varchar(200) NOT NULL default '0',
  `submitter` varchar(60) NOT NULL default '',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  `bbcode_uid` varchar(10) default NULL,
  `level` varchar(30) default NULL,
  PRIMARY KEY  (`t_submitid`),
  KEY `t_submitid` (`t_submitid`),
  KEY `tc_id` (`tc_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_submit`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_tutorials`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_tutorials`;
CREATE TABLE `nuke_tutorials_tutorials` (
  `t_id` int(10) NOT NULL auto_increment,
  `tc_id` int(10) NOT NULL default '0',
  `t_title` varchar(255) NOT NULL default '',
  `t_text` longtext NOT NULL,
  `t_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `t_counter` int(10) NOT NULL default '0',
  `version` varchar(10) NOT NULL default '',
  `description` text NOT NULL,
  `tutorialsratingsummary` double(6,4) NOT NULL default '0.0000',
  `author` varchar(60) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '0',
  `author_homepage` varchar(200) NOT NULL default '0',
  `submitter` varchar(60) NOT NULL default '',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  `bbcode_uid` varchar(10) default NULL,
  `level` varchar(30) default NULL,
  PRIMARY KEY  (`t_id`),
  KEY `t_id` (`t_id`),
  KEY `tc_id` (`tc_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_tutorials_tutorials`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_tutorials_votedata`
-- 

DROP TABLE IF EXISTS `nuke_tutorials_votedata`;
CREATE TABLE `nuke_tutorials_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) NOT NULL default '',
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `nuke_whoiswhere`;
CREATE TABLE `nuke_whoiswhere` (
  `username` varchar(25) NOT NULL default '',
  `time` varchar(14) NOT NULL default '',
  `host_addr` varchar(48) NOT NULL default '',
  `guest` int(1) NOT NULL default '0',
  `module` varchar(30) NOT NULL default '',
  `url` varchar(255) NOT NULL default ''
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_whoiswhere`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_ads`
-- 

DROP TABLE IF EXISTS `nukec30_ads_ads`;
CREATE TABLE `nukec30_ads_ads` (
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


-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_box`
-- 

DROP TABLE IF EXISTS `nukec30_ads_box`;
CREATE TABLE `nukec30_ads_box` (
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

DROP TABLE IF EXISTS `nukec30_ads_catg`;
CREATE TABLE `nukec30_ads_catg` (
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

INSERT INTO `nukec30_ads_catg` VALUES (1, 'Financial and Money', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (2, 'Credit Cards', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (3, 'Credit Services', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (4, 'Money to Lend', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (5, 'Mortgage Brokers', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (6, 'Mortgage Services', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (7, 'Venture Capital', NULL, 1, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (8, 'Real Estate', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (9, 'Acreages', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (10, 'Agents', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (11, 'Apartments', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (12, 'Business&Commercial Sites', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (13, 'Farms', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (14, 'For Rent', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (15, 'For Sale', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (16, 'House Exchanges', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (17, 'Houses', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (18, 'Land For Sale', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (19, 'Rooms', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (20, 'Services', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (21, 'Steel Framing Homes', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (22, 'Time Share', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (23, 'Vacation Properties', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (24, 'Wanted', NULL, 8, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (25, 'Business Opportunities', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (26, 'Agents Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (27, 'Business Opportunities', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (28, 'Business for Sale', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (29, 'Distributors Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (30, 'Home Business Opps', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (31, 'Investors Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (32, 'Marketing / Sales', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (33, 'MLM', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (34, 'Money-Making Opportunities', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (35, 'Representatives Wanted', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (36, 'Work At Home', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (37, 'Partnerships & Investments', NULL, 25, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (38, 'Automotive', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (39, 'Antique', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (40, 'Auto Accessories', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (41, 'Auto Parts', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (42, 'Auto Repairing', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (43, 'Auto Service', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (44, 'Auto Supplies', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (45, 'Autos For Sale', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (46, 'Autos Wanted', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (47, 'Boats', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (48, 'Classic', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (49, 'Motor Homes & Travel Trailers', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (50, 'Motorcycle', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (51, 'Pickups and Vans', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (52, 'Antique', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (53, 'Recreational Vehicles', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (54, 'Sports Cars', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (55, 'Trailers and Buses', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (56, 'Trucks', NULL, 38, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (57, 'Animals and Pets', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (58, 'Birds', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (59, 'Breeders', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (60, 'Cats & Kittens', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (61, 'Chinchillas', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (62, 'Dogs & Puppies', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (63, 'Ducks & Geese', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (64, 'Exotic', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (65, 'Fish', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (66, 'Free Adoptions', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (67, 'Guinnea Pigs', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (68, 'Hamsters & Gerbils', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (69, 'Horse & Livestock', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (70, 'Pet & Animal Foods', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (71, 'Pet Accessories', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (72, 'Pet Cages & Houses', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (73, 'Pet Gifts', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (74, 'Pets For Sale', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (75, 'Rabbits & Bunnies', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (76, 'Rats & Rodents', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (77, 'Reptiles & Amphibians', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (78, 'Sugar Gliders', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (79, 'Other Pets Related', NULL, 57, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (80, 'Business Services', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (81, 'Advertising', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (82, 'Business & Professional Services', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (83, 'Marketings', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (84, 'Medical Equipment & Supplies', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (85, 'Merchant Accounts', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (86, 'Business Equipments', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (87, 'Office Equipment', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (88, 'Office Supplies', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (89, 'Promotion', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (90, 'Vending Machines', NULL, 80, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (91, 'Personals', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (92, 'Books/CDs/Videos', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (93, 'Chat', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (94, 'Dating Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (95, 'Miscellaneous Personal Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (96, 'Personal Growth & Help', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (97, 'Personal Products', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (98, 'Personal Ads', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (99, 'Personal Services', NULL, 91, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (100, 'Computers', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (101, 'Accessories', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (102, 'Consultants', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (103, 'Hardware', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (104, 'Software', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (105, 'For Sale', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (106, 'Wanted', NULL, 100, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (107, 'Everything Else', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (108, 'Auctions', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (109, 'Bulletin Boards', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (110, 'Education', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (111, 'Free Stuff', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (112, 'Furniture', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (113, 'Gambling', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (114, 'Gifts', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (115, 'Home Improvement', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (116, 'Jewelry', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (117, 'Manufacturers', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (118, 'Miscellaneous For Sale', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (119, 'Package Vacations', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (120, 'Music', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (121, 'Other', NULL, 107, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (122, 'Internet & Web Services', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (123, 'Affiliate Programs', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (124, 'Free Traffic Programs', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (125, 'Consulting', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (126, 'Internet & Web Services', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (127, 'Misc. Internet Resources', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (128, 'I.S.P.', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (129, 'Training', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (130, 'Web Design', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (131, 'Web Hosting', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (132, 'Web Promotion', NULL, 122, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (133, 'Health and Fitness', NULL, 0, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (134, 'Age Related', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (135, 'Beauty Products', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (136, 'Dental Care', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (137, 'Exercise Equipment', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (138, 'Fitness', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (139, 'Hair Loss', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (140, 'Health & Wellness', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (141, 'Health Services', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (142, 'Miscellaneous Health Related', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (143, 'Sexual Health', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (144, 'Skin Care', NULL, 133, '', 'english', 0);
INSERT INTO `nukec30_ads_catg` VALUES (145, 'Weight Loss/Diet', NULL, 133, '', 'english', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_comments`
-- 

DROP TABLE IF EXISTS `nukec30_ads_comments`;
CREATE TABLE `nukec30_ads_comments` (
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

DROP TABLE IF EXISTS `nukec30_ads_config`;
CREATE TABLE `nukec30_ads_config` (
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

INSERT INTO `nukec30_ads_config` VALUES ('nukec30', 'NukeC30', 'NukeC Advanced Classifieds Module', '150', '1000', 0, 10, 0, 0, 1, 1, 10, 1, '20', '200', '200', 0, 1, '100', '150', 'modules/NukeC30/imageads/', 'modules/NukeC30/imageads/', 'modules/NukeC30/imagecatg/', 'modules/NukeC30/imagecatg/', 10, '#000000', '#000000', '#000000', '#000000', '#000000');

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_currency`
-- 

DROP TABLE IF EXISTS `nukec30_ads_currency`;
CREATE TABLE `nukec30_ads_currency` (
  `no` tinyint(4) NOT NULL auto_increment,
  `curr` varchar(10) NOT NULL default '',
  `country` varchar(60) NOT NULL default '0000',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nukec30_ads_currency`
-- 

INSERT INTO `nukec30_ads_currency` VALUES (1, 'US$', 'USA');
INSERT INTO `nukec30_ads_currency` VALUES (2, 'Euro', 'European');
INSERT INTO `nukec30_ads_currency` VALUES (3, 'GBP', 'British');
INSERT INTO `nukec30_ads_currency` VALUES (4, 'AUD', 'Australian');
INSERT INTO `nukec30_ads_currency` VALUES (5, 'CAD', 'Canadian');
INSERT INTO `nukec30_ads_currency` VALUES (6, 'Peso', 'Mexican');
INSERT INTO `nukec30_ads_currency` VALUES (7, 'Yen', 'Japanese');
INSERT INTO `nukec30_ads_currency` VALUES (8, 'Franc', 'Swiss');
INSERT INTO `nukec30_ads_currency` VALUES (9, 'Rp', 'Indonesia');
INSERT INTO `nukec30_ads_currency` VALUES (10, 'DN', 'Vietnam');

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_custom`
-- 

DROP TABLE IF EXISTS `nukec30_ads_custom`;
CREATE TABLE `nukec30_ads_custom` (
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

DROP TABLE IF EXISTS `nukec30_ads_disclaimer`;
CREATE TABLE `nukec30_ads_disclaimer` (
  `no` tinyint(3) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `language` varchar(60) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nukec30_ads_disclaimer`
-- 

INSERT INTO `nukec30_ads_disclaimer` VALUES (1, 'NukeC Disclaimer', 'This site area acts as a venue to allow anyone to offer, sell, and buy  just about anything, at any time, from anywhere, in a variety of pricing formats and currencies. \r\n<BR><BR>\r\nWe are not involved in the actual transaction between buyers and sellers. As a result, we have no control over the quality, safety or legality of the items advertised, the truth or accuracy of the listings, the ability of sellers to sell items or the ability of buyers to buy items. We cannot ensure that a buyer or seller will actually complete a transaction.', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_duration`
-- 

DROP TABLE IF EXISTS `nukec30_ads_duration`;
CREATE TABLE `nukec30_ads_duration` (
  `id_duration` tinyint(4) NOT NULL auto_increment,
  `duration_value` smallint(6) NOT NULL default '0',
  `duration_alias` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id_duration`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nukec30_ads_duration`
-- 

INSERT INTO `nukec30_ads_duration` VALUES (1, 7, '1 week');
INSERT INTO `nukec30_ads_duration` VALUES (2, 3, '3 days');
INSERT INTO `nukec30_ads_duration` VALUES (3, 1, '1 day');
INSERT INTO `nukec30_ads_duration` VALUES (4, 30, '1 month');
INSERT INTO `nukec30_ads_duration` VALUES (6, 21, '3 weeks');
INSERT INTO `nukec30_ads_duration` VALUES (10, 14, '2 weeks');
INSERT INTO `nukec30_ads_duration` VALUES (11, 60, '2 months');

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_filter`
-- 

DROP TABLE IF EXISTS `nukec30_ads_filter`;
CREATE TABLE `nukec30_ads_filter` (
  `word_id` smallint(6) NOT NULL auto_increment,
  `bad_word` varchar(50) NOT NULL default '',
  `rep_word` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nukec30_ads_filter`
-- 

INSERT INTO `nukec30_ads_filter` VALUES (3, 'shit', 's**t');
INSERT INTO `nukec30_ads_filter` VALUES (4, 'motherfucker', '*****');

-- --------------------------------------------------------

-- 
-- Table structure for table `nukec30_ads_imgtype`
-- 

DROP TABLE IF EXISTS `nukec30_ads_imgtype`;
CREATE TABLE `nukec30_ads_imgtype` (
  `id_typeimg` tinyint(4) NOT NULL default '0',
  `typeimg` varchar(20) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nukec30_ads_imgtype`
-- 

INSERT INTO `nukec30_ads_imgtype` VALUES (1, 'gif', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES (2, 'jpeg', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES (3, 'jpg', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES (4, 'x-png', 1);
INSERT INTO `nukec30_ads_imgtype` VALUES (5, 'pjpeg', 1);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `business` varchar(50) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `item_name` varchar(60) NOT NULL default '',
  `item_number` varchar(40) NOT NULL default '',
  `quantity` varchar(6) NOT NULL default '',
  `invoice` varchar(40) NOT NULL default '',
  `custom` varchar(127) NOT NULL default '',
  `tax` varchar(10) NOT NULL default '',
  `option_name1` varchar(60) NOT NULL default '',
  `option_selection1` varchar(127) NOT NULL default '',
  `option_name2` varchar(60) NOT NULL default '',
  `option_selection2` varchar(127) NOT NULL default '',
  `memo` text NOT NULL,
  `payment_status` varchar(15) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `txn_type` varchar(15) NOT NULL default '',
  `mc_gross` varchar(10) NOT NULL default '',
  `mc_fee` varchar(10) NOT NULL default '',
  `mc_currency` varchar(5) NOT NULL default '',
  `settle_amount` varchar(12) NOT NULL default '',
  `exchange_rate` varchar(10) NOT NULL default '',
  `first_name` varchar(127) NOT NULL default '',
  `last_name` varchar(127) NOT NULL default '',
  `address_street` varchar(127) NOT NULL default '',
  `address_city` varchar(127) NOT NULL default '',
  `address_state` varchar(127) NOT NULL default '',
  `address_zip` varchar(20) NOT NULL default '',
  `address_country` varchar(127) NOT NULL default '',
  `address_status` varchar(15) NOT NULL default '',
  `payer_email` varchar(127) NOT NULL default '',
  `payer_status` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `translog`;
CREATE TABLE `translog` (
  `id` int(11) NOT NULL auto_increment,
  `log_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `payment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `logentry` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `nuke_advbackup`;

ALTER TABLE `nuke_amazon_cfg`
    ALTER `AMZ_id` SET DEFAULT 'httpwwwnukepc-20',
    ALTER `default_asin` SET DEFAULT 'B00009TB5G';


DROP TABLE IF EXISTS `nuke_bbreport`;
CREATE TABLE `nuke_bbreport` (
  `report_id` mediumint(8) NOT NULL auto_increment,
  `cat_id` mediumint(8) NOT NULL default '0',
  `report_status` tinyint(1) NOT NULL default '0',
  `report_date` int(11) NOT NULL default '0',
  `report_user_id` mediumint(8) NOT NULL default '0',
  `report_update_user` mediumint(8) default NULL,
  `report_update_time` int(11) default NULL,
  `report_info` varchar(100) NOT NULL default '',
  `report_text` text NOT NULL,
  PRIMARY KEY  (`report_id`),
  KEY `cat_id` (`cat_id`),
  KEY `report_update_user` (`report_update_user`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_bbreport`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_bbreport_cat`
-- 

DROP TABLE IF EXISTS `nuke_bbreport_cat`;
CREATE TABLE `nuke_bbreport_cat` (
  `cat_id` mediumint(8) NOT NULL auto_increment,
  `cat_name` varchar(100) NOT NULL default '',
  `cat_type` tinyint(1) NOT NULL default '0',
  `cat_auth` tinyint(1) NOT NULL default '0',
  `cat_explain` text NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_bbreport_cat`
--

INSERT INTO `nuke_bbreport_cat` VALUES (1, 'Report Post', 1, 0, '');
INSERT INTO `nuke_bbreport_cat` VALUES (2, 'Report Topic', 1, 0, '');
INSERT INTO `nuke_bbreport_cat` VALUES (3, 'Report User', 1, 0, '');
INSERT INTO `nuke_bbreport_cat` VALUES (4, 'Test Category', 0, 0, 'This is a test of the category creation.');

DROP TABLE IF EXISTS`nuke_bbreport_config`;

ALTER TABLE `nuke_bbtopics`
    ADD INDEX `topic_last_post_id` (`topic_last_post_id`);


DROP TABLE IF EXISTS `nuke_downloads_categories`;
CREATE TABLE `nuke_downloads_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `cdescription` text NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  `ns_cat_note` text NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_downloads_categories`
-- 

INSERT INTO `nuke_downloads_categories` VALUES (1, 'Files', '', 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_downloads_downloads`
-- 

DROP TABLE IF EXISTS `nuke_downloads_downloads`;
CREATE TABLE `nuke_downloads_downloads` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `description` text NOT NULL,
  `date` datetime default NULL,
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) NOT NULL default '',
  `downloadratingsummary` double(6,4) NOT NULL default '0.0000',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) NOT NULL default '',
  `homepage` varchar(200) NOT NULL default '',
  `ns_compat` varchar(30) NOT NULL default '',
  `ns_des_img` varchar(100) NOT NULL default '',
  `ns_disable` tinyint(1) NOT NULL default '0',
  `ns_mirror_one` varchar(255) NOT NULL default '',
  `ns_mirror_two` varchar(255) NOT NULL default '',
  `ns_dl_down_note` text NOT NULL,
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_downloads_downloads`
-- 

INSERT INTO `nuke_downloads_downloads` VALUES (1, 1, 0, 'Test', 'http://www.futurenuke.com/addons/WebSearch.zip', 'This is a test of the Download functions.', '2005-11-03 18:02:55', 'Loki', 'loki@futurenuke.com', 5, 'Loki', 0.0000, 0, 0, 12024, '1', '', 'any', '', 0, '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_downloads_editorials`
-- 

DROP TABLE IF EXISTS `nuke_downloads_editorials`;
CREATE TABLE `nuke_downloads_editorials` (
  `downloadid` int(11) NOT NULL default '0',
  `adminid` varchar(60) NOT NULL default '',
  `editorialtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `editorialtext` text NOT NULL,
  `editorialtitle` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`downloadid`),
  KEY `downloadid` (`downloadid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_downloads_editorials`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_downloads_modrequest`
-- 

DROP TABLE IF EXISTS `nuke_downloads_modrequest`;
CREATE TABLE `nuke_downloads_modrequest` (
  `requestid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `description` text NOT NULL,
  `modifysubmitter` varchar(60) NOT NULL default '',
  `brokendownload` int(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) NOT NULL default '',
  `homepage` varchar(200) NOT NULL default '',
  `ns_compat` varchar(30) NOT NULL default '',
  `ns_des_img` varchar(100) NOT NULL default '',
  `ns_mirror_one` varchar(255) NOT NULL default '',
  `ns_mirror_two` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_downloads_modrequest`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_downloads_newdownload`
-- 

DROP TABLE IF EXISTS `nuke_downloads_newdownload`;
CREATE TABLE `nuke_downloads_newdownload` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `submitter` varchar(60) NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) NOT NULL default '',
  `homepage` varchar(200) NOT NULL default '',
  `ns_compat` varchar(30) NOT NULL default '',
  `ns_des_img` varchar(100) NOT NULL default '',
  `ns_mirror_one` varchar(255) NOT NULL default '',
  `ns_mirror_two` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM;

-- 
-- Dumping data for table `nuke_downloads_newdownload`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nuke_downloads_votedata`
-- 

DROP TABLE IF EXISTS `nuke_downloads_votedata`;
CREATE TABLE `nuke_downloads_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) NOT NULL default '',
  `ratingcomments` text NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM;


ALTER TABLE `nuke_links_categories`
    DROP `ldescription`,
    DROP INDEX `cid`;


ALTER TABLE `nuke_links_editorials`
    DROP INDEX `linkid`;


ALTER TABLE `nuke_links_links`
    DROP INDEX `lid`;


ALTER TABLE `nuke_links_modrequest`
    DROP INDEX `requestid`;


ALTER TABLE `nuke_links_newlink`
    DROP INDEX `lid`;


ALTER TABLE `nuke_links_votedata`
    DROP INDEX `ratingdbid`;


DROP TABLE `nuke_nsnts_categories`;

DROP TABLE `nuke_nsnts_compatible`;

DROP TABLE `nuke_nsnts_config`;

DROP TABLE `nuke_nsnts_themes`;

DROP TABLE `nuke_nukec_ads_ads`;

DROP TABLE `nuke_nukec_ads_box`;

DROP TABLE `nuke_nukec_ads_catg`;

DROP TABLE `nuke_nukec_ads_comments`;

DROP TABLE `nuke_nukec_ads_config`;

DROP TABLE `nuke_nukec_ads_currency`;

DROP TABLE `nuke_nukec_ads_custom`;

DROP TABLE `nuke_nukec_ads_disclaimer`;

DROP TABLE `nuke_nukec_ads_duration`;

DROP TABLE `nuke_nukec_ads_filter`;

DROP TABLE `nuke_nukec_ads_imgtype`;

ALTER TABLE `nuke_pages`
    DROP INDEX `pid`;


ALTER TABLE `nuke_pages_categories`
    DROP INDEX `cid`;


DROP TABLE `nuke_treasury_config`;

DROP TABLE `nuke_treasury_financial`;

DROP TABLE `nuke_treasury_transactions`;

DROP TABLE `nuke_treasury_translog`;

ALTER TABLE `nuke_users`
    ADD `last_seen_blocker` int(11) NOT NULL DEFAULT '0' AFTER user_cash,
    ADD `user_login_tries` smallint(5) unsigned NOT NULL DEFAULT '0' AFTER last_seen_blocker,
    ADD `user_last_login_try` int(11) NOT NULL DEFAULT '0' AFTER user_login_tries,
    ADD `user_gender` tinyint(4) NOT NULL DEFAULT '0' AFTER user_last_login_try,
    ADD `user_birthday` int(11) NOT NULL DEFAULT '999999' AFTER user_gender,
    ADD `user_next_birthday_greeting` int(11) NOT NULL DEFAULT '0' AFTER user_birthday;


UPDATE `nuke_config` SET `Version_Num` = '7.6.b.5';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="footmsg_l">GPL</font></a>.<br>Powered by <a href="http://www.futurenuke.com" target="_blank"><font class="footmsg_l"><b>Platinum 7.6.b.5</b></font></a><br>';

UPDATE `nuke_users` SET `user_theme` = NULL , `theme` = 'AOG_Meteor';
UPDATE `nuke_config` SET `Default_Theme` = 'AOG_Meteor';

INSERT INTO `nuke_bbconfig` VALUES ('apmr_deny_msg', 'Sorry %U%, The Admin You Are Trying To Private Message Currently Is Not Accepting Private Messages.');
INSERT INTO `nuke_bbconfig` VALUES ('apmr_redirect_msg', 'The admin you have private messaged, has redirected your PM to another member for a faster response time.');
INSERT INTO `nuke_bbconfig` VALUES ('initial_group_id', '6');
INSERT INTO `nuke_bbconfig` VALUES ('report_color_not_cleared', '#A8371D');
INSERT INTO `nuke_bbconfig` VALUES ('report_color_in_process', '#1B75BE');
INSERT INTO `nuke_bbconfig` VALUES ('report_color_cleared', '#297F3F');
INSERT INTO `nuke_bbconfig` VALUES ('report_list', '0');
INSERT INTO `nuke_bbconfig` VALUES ('report_notify', '2');
INSERT INTO `nuke_bbconfig` VALUES ('admin_user_mode', 'username');
INSERT INTO `nuke_bbconfig` VALUES ('admin_user_order', '0');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_enable', '1');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_ban', '0');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_delay', '1');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_ports', '005008fd0c3819bc1f401f90');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_cache_time', '0');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_block', '1');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_sort', 'last_checked,DESC');
INSERT INTO `nuke_bbconfig` VALUES ('proxy_user_agent', 'Genesis Open Proxy Detector');

INSERT INTO `nuke_bbconfig` (config_name, config_value) VALUES ("birthday_required", "0");
INSERT INTO `nuke_bbconfig` (config_name, config_value) VALUES ("birthday_greeting", "1");
INSERT INTO `nuke_bbconfig` (config_name, config_value) VALUES ("max_user_age", "100");
INSERT INTO `nuke_bbconfig` (config_name, config_value) VALUES ("min_user_age", "5");
INSERT INTO `nuke_bbconfig` (config_name, config_value) VALUES ("birthday_check_day", "7");

ALTER TABLE `nuke_bbgroups` DROP `canned_footer_plain` ,
DROP `canned_footer_bbcode` ,
DROP `canned_custom_count` ;

ALTER TABLE `nuke_bbforums` ADD attached_forum_id MEDIUMINT(8) DEFAULT '-1' NOT NULL;
ALTER  TABLE  `nuke_bbtopics`  ADD  INDEX (topic_last_post_id);

DROP TABLE IF EXISTS `nuke_bbthemes`;
CREATE TABLE `nuke_bbthemes` (
  `themes_id` mediumint(8) unsigned NOT NULL auto_increment,
  `template_name` varchar(30) NOT NULL default '',
  `style_name` varchar(30) NOT NULL default '',
  `head_stylesheet` varchar(100) default NULL,
  `body_background` varchar(100) default NULL,
  `body_bgcolor` varchar(6) default NULL,
  `body_text` varchar(6) default NULL,
  `body_link` varchar(6) default NULL,
  `body_vlink` varchar(6) default NULL,
  `body_alink` varchar(6) default NULL,
  `body_hlink` varchar(6) default NULL,
  `tr_color1` varchar(6) default NULL,
  `tr_color2` varchar(6) default NULL,
  `tr_color3` varchar(6) default NULL,
  `tr_class1` varchar(25) default NULL,
  `tr_class2` varchar(25) default NULL,
  `tr_class3` varchar(25) default NULL,
  `th_color1` varchar(6) default NULL,
  `th_color2` varchar(6) default NULL,
  `th_color3` varchar(6) default NULL,
  `th_class1` varchar(25) default NULL,
  `th_class2` varchar(25) default NULL,
  `th_class3` varchar(25) default NULL,
  `td_color1` varchar(6) default NULL,
  `td_color2` varchar(6) default NULL,
  `td_color3` varchar(6) default NULL,
  `td_class1` varchar(25) default NULL,
  `td_class2` varchar(25) default NULL,
  `td_class3` varchar(25) default NULL,
  `fontface1` varchar(50) default NULL,
  `fontface2` varchar(50) default NULL,
  `fontface3` varchar(50) default NULL,
  `fontsize1` tinyint(4) default NULL,
  `fontsize2` tinyint(4) default NULL,
  `fontsize3` tinyint(4) default NULL,
  `fontcolor1` varchar(6) default NULL,
  `fontcolor2` varchar(6) default NULL,
  `fontcolor3` varchar(6) default NULL,
  `span_class1` varchar(25) default NULL,
  `span_class2` varchar(25) default NULL,
  `span_class3` varchar(25) default NULL,
  `img_size_poll` smallint(5) unsigned default NULL,
  `img_size_privmsg` smallint(5) unsigned default NULL,
  `online_color` varchar(6) default NULL,
  `offline_color` varchar(6) default NULL,
  `hidden_color` varchar(6) default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM;


INSERT INTO `nuke_bbthemes` VALUES (1, 'subSilver', 'subSilver', 'subSilver.css', '', '', '000000', '006699', '5493B4', '1000FF', 'DD6900', 'EFEFEF', 'DEE3E7', 'D1D7DC', '', '', '', '1000FF', '006699', 'FFFFFF', 'cellpic1.gif', 'cellpic3.gif', 'cellpic2.jpg', 'FAFAFA', 'FFFFFF', '', 'row1', 'row2', '', 'Verdana, Arial, Helvetica, sans-serif', 'Trebuchet MS', 'Courier, ''Courier New'', sans-serif', 10, 11, 12, '444444', '006600', '1000FF', '', '', '', NULL, NULL, '008500', 'DF0000', 'EBD400');


DROP TABLE IF EXISTS `nuke_bbthemes_name`;
CREATE TABLE `nuke_bbthemes_name` (
  `themes_id` smallint(5) unsigned NOT NULL default '0',
  `tr_color1_name` char(50) default NULL,
  `tr_color2_name` char(50) default NULL,
  `tr_color3_name` char(50) default NULL,
  `tr_class1_name` char(50) default NULL,
  `tr_class2_name` char(50) default NULL,
  `tr_class3_name` char(50) default NULL,
  `th_color1_name` char(50) default NULL,
  `th_color2_name` char(50) default NULL,
  `th_color3_name` char(50) default NULL,
  `th_class1_name` char(50) default NULL,
  `th_class2_name` char(50) default NULL,
  `th_class3_name` char(50) default NULL,
  `td_color1_name` char(50) default NULL,
  `td_color2_name` char(50) default NULL,
  `td_color3_name` char(50) default NULL,
  `td_class1_name` char(50) default NULL,
  `td_class2_name` char(50) default NULL,
  `td_class3_name` char(50) default NULL,
  `fontface1_name` char(50) default NULL,
  `fontface2_name` char(50) default NULL,
  `fontface3_name` char(50) default NULL,
  `fontsize1_name` char(50) default NULL,
  `fontsize2_name` char(50) default NULL,
  `fontsize3_name` char(50) default NULL,
  `fontcolor1_name` char(50) default NULL,
  `fontcolor2_name` char(50) default NULL,
  `fontcolor3_name` char(50) default NULL,
  `span_class1_name` char(50) default NULL,
  `span_class2_name` char(50) default NULL,
  `span_class3_name` char(50) default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM;


INSERT INTO `nuke_bbthemes_name` VALUES (1, 'The lightest row colour', 'The medium row color', 'The darkest row colour', '', '', '', 'Border round the whole page', 'Outer table border', 'Inner table border', 'Silver gradient picture', 'Blue gradient picture', 'Fade-out gradient on index', 'Background for quote boxes', 'All white areas', '', 'Background for topic posts', '2nd background for topic posts', '', 'Main fonts', 'Additional topic title font', 'Form fonts', 'Smallest font size', 'Medium font size', 'Normal font size (post body etc)', 'Quote & copyright text', 'Code text colour', 'Main table header text colour', '', '', '');

