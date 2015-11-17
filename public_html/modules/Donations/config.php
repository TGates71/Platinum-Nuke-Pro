<?php
/************************************************************************/
/* NukeTreasury - Financial management for PHP-Nuke                      */
/* Copyright (c) 2004 by Dave Lawrence AKA Thrash                       */
/*                       thrash@fragnastika.com                         */
/*                       thrashn8r@hotmail.com                          */
/*                                                                      */
/* This program is free software; you can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/*                                                                      */
/* This program is distributed in the hope that it will be useful, but  */
/* WITHOUT ANY WARRANTY; without even the implied warranty of           */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU     */
/* General Public License for more details.                             */
/*                                                                      */
/* You should have received a copy of the GNU General Public License    */
/* along with this program; if not, write to the Free Software          */
/* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  */
/* USA                                                                  */
/************************************************************************/
include_once(dirname(__FILE__).'../../../config.php');
global $ipnppd, $dbhost, $dbname, $dbuname, $dbpass;

$board_config = array();

$ipnppd = mysql_pconnect($dbhost, $dbuname, $dbpass);
if( $ipnppd )
{
	mysql_select_db($dbname, $ipnppd);
	$query_cfg = "SELECT * FROM config WHERE subtype = ''";
	$cfgset = mysql_query($query_cfg, $ipnppd);

	while ( $cfgset && $row = mysql_fetch_assoc($cfgset))
	{
			$tr_config[$row['name']] = $row['value'];
	}
} else
{
	echo "<br><br>NukeTreasury FATAL ERROR: Unable to connect to SQL database.  Please check your settings in modules/Donations/config.php<br><br>";
}

?>