<?php

/************************************************************************/
/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                  */
/*     Techgfx - Graeme Allan                       (goose@techgfx.com) */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */
/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */
/*                                                                      */
/* Copyright (c) 2007 - 2013 by http://www.platinumnukepro.com          */
/*                                                                      */
/* Refer to platinumnukepro.com for detailed information on this CMS    */
/*******************************************************************************/
/* This file is part of the PlatinumNukePro CMS - http://platinumnukepro.com   */
/*                                                                             */
/* This program is free software; you can redistribute it and/or               */
/* modify it under the terms of the GNU General Public License                 */
/* as published by the Free Software Foundation; either version 2              */
/* of the License, or any later version.                                       */
/*                                                                             */
/* This program is distributed in the hope that it will be useful,             */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of              */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               */
/* GNU General Public License for more details.                                */
/*                                                                             */
/* You should have received a copy of the GNU General Public License           */
/* along with this program; if not, write to the Free Software                 */
/* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA. */
/*******************************************************************************/

global $admin_file;
if(!isset($admin_file)) { $admin_file = "admin"; }

function spsave_config($config_name, $config_value){
  global $prefix, $db;
  $db->sql_query("UPDATE `".$prefix."_nsnsp_config` SET `config_value`='$config_value' WHERE `config_name`='$config_name'");
}

function spget_configs(){
  global $prefix, $db;
  $configresult = $db->sql_query("SELECT `config_name`, `config_value` FROM `".$prefix."_nsnsp_config`");
  while(list($config_name, $config_value) = $db->sql_fetchrow($configresult)) {
    $config[$config_name] = $config_value;
  }
  return $config;
}

function spmenu() {
  global $admin_file, $nsnsp_ver;
  OpenTable();
  echo "<center>\n<table cellpadding='3' width='70%'>\n";
  echo $nsnsp_ver;
  echo "<tr>\n";
  echo "<td align='center' valign='top' width='50%'>";
  echo "<a href='".$admin_file.".php?op=SPMain'>"._SP_ADMINMAIN."</a><br />\n";
  echo "<a href='".$admin_file.".php?op=SPConfig'>"._SP_CONFIGMAIN."</a><br />";
  echo "<a href='".$admin_file.".php?op=SPAdd'>"._SP_ADDSUPPORTER."</a><br />";
  echo "</td>\n";
  echo "<td align='center' valign='top' width='50%'>";
  echo "<a href='".$admin_file.".php?op=SPActive'>"._SP_ACTIVESITES."</a><br />";
  echo "<a href='".$admin_file.".php?op=SPPending'>"._SP_SUBMITTEDSITES."</a><br />";
  echo "<a href='".$admin_file.".php?op=SPInactive'>"._SP_INACTIVESITES."</a><br />";
  echo "</td>\n";
  echo "</tr>\n";
  echo "<tr><td align='center' colspan='2'><a href='".$admin_file.".php'><i>"._SP_SITEADMIN."</i></a></td></tr>\n";
  echo "</table>\n</center>\n";
  CloseTable();
}

?>
