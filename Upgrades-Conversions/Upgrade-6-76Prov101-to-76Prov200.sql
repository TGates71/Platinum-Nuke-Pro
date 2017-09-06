--
-- PNPv1 Config update
--

UPDATE `nuke_config` SET `backend_title` = 'Platinum Nuke Pro 7.6.PNPv2.0.0 Powered';
UPDATE `nuke_config` SET `Version_Num` = '7.6.PNPv2.0.0';
UPDATE `nuke_config` SET `copyright` = 'PHP-Nuke Copyright &copy; 2005 by Francisco Burzi.<br>This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class=\\"footmsg_l\\">GPL</font></a>.<br>Powered by <a href="http://www.platinumnukepro.com" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPv2.0.0</strong></font></a><br>';
UPDATE `nuke_config` SET `Default_Theme` = 'PNP_WB';
UPDATE `nuke_config` SET `foot3` = '<p style="text-align: center;">\r\n	<span style="font-size:10px;"><font class="footmsg">All logos and trademarks in this site are property of their respective owner. The comments are property of their posters.<br />All the rest &copy; 2017 by this site.<br />\r\n	PHP-Nuke Copyright &copy; 2005 by Francisco Burzi. This is free software, and you may redistribute it under the <a href="http://phpnuke.org/files/gpl.txt" target="_blank"><font class="&quot;footmsg_l&quot;">GPL</font></a>.</font></span></p>\r\n<p style="text-align: center;">\r\n	<font class="footmsg"><span style="font-size:10px;">&nbsp;<a href="backend.php" target="_self"><img alt="News RSS" src="images/news20.gif" style="width: 80px; height: 15px;" /> </a><a href="backendforums.php" target="_self"><img alt="Forums RSS" src="images/forums20.gif" style="width: 80px; height: 15px;" /></a><a href="nukecbackend.php" target="_self"> <img alt="NukeC Classifieds" src="images/nukec20.gif" style="width: 80px; height: 15px;" /> </a><a href="rss-photo.php"><img alt="Our Photo Gallery" src="images/photos20.gif" style="width: 80px; height: 15px;" /> </a><a href="http://tool.motoricerca.info/robots-checker.phtml?checkreferer=1"><img alt="Valid Robots.txt" border="0" height="15" src="http://tool.motoricerca.info/pic/valid-robots-small.png" width="80" /></a><br />\r\n	Site Powered by <a href="http://www.platinumnukepro.com/" target="_blank"><font class="footmsg_l"><strong>Platinum Nuke Pro 7.6.PNPv2.0.0&nbsp;</strong></font></a><font class="footmsg"> and is maintained by the Platinum Pro Team.</font></span></font></p>\r\n';

-- --------------------------------------------------------

--
-- Table structure for table `nuke_platinum_technology`
--

UPDATE `nuke_platinum_technology` SET `value` = 'Update available: <strong>None</strong>. Currently running version: <strong>7.6.PNPv2.0.0</strong><br>Secure connection provided by: <strong><a href="http://www.platinumnukepro.com" target="_blank">Platinum Nuke Pro</a></strong><br>'  LIMIT 1 ;

-- --------------------------------------------------------
