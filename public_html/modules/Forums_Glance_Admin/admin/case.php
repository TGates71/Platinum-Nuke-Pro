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
/* Forums Glance Admin v1.1 by sgtmudd (sgtmudd@mach-hosting.com)              */
/* Copyright (c) 2013 sgtmudd http://platinumnukepro.com                       */
/*******************************************************************************/
if ( !defined('ADMIN_FILE') )
{
	die ('Access Denied');
}

	global $admin_file, $module_name;
	$module_name = "Forums_Glance_Admin";
	include_once('modules/'.$module_name.'/admin/language/lang-'.$currentlang.'.php');
	switch($op) 
	{
		case 'Forums_Glance_Admin_Main_Config':
			include_once(NUKE_MODULES_DIR.$module_name.'/admin/index.php');			
			break;
	}
?>