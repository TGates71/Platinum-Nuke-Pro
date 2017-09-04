<?php
/*Modified by nukeSEO from http://nukeSEO.com, adapted from the MetaTag module by http://visayas.dk at 20-Jan-10 22:43:56*/


/************************************************************************/
/* Platinum Nuke Pro: Expect to be impressed                  COPYRIGHT */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.techgfx.com                  */
/*     Techgfx - Graeme Allan                       (goose@techgfx.com) */
/*                                                                      */
/* Copyright (c) 2004 - 2006 by http://www.nukeplanet.com               */
/*     Loki / Teknerd - Scott Partee           (loki@nukeplanet.com)    */
/*                                                                      */
/* Copyright (c) 2007 - 2017 by http://www.platinumnukepro.com          */
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

if (stristr($_SERVER['SCRIPT_NAME'], "meta.php")) {
    Header("Location: ../index.php");
    die();
}

##################################################
# Include for Meta Tags generation               #
##################################################

echo "<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset="._CHARSET."\">\n";
echo "<META HTTP-EQUIV=\"EXPIRES\" CONTENT=\"0\">\n";
echo "<META NAME=\"RESOURCE-TYPE\" CONTENT=\"DOCUMENT\">\n";
echo "<META NAME=\"DISTRIBUTION\" CONTENT=\"GLOBAL\">\n";
echo "<META NAME=\"AUTHOR\" CONTENT=\"Platinum Nuke\">\n";
echo "<META NAME=\"COPYRIGHT\" CONTENT=\"Copyright (c) by Platinum Nuke\">\n";
echo "<META NAME=\"KEYWORDS\" CONTENT=\"Platinum Nuke,Web Site,Nuke,PHP-Nuke,phpnuke,Platinum Nuke Pro,PHPNuke Platinum,Platinum,nuke platinum,Platinum,Downloads,Forums, Web Links, PHP\">\n";
echo "<META NAME=\"DESCRIPTION\" CONTENT=\"Expect to be impressed\">\n";
echo "<META NAME=\"ROBOTS\" CONTENT=\"INDEX, FOLLOW\">\n";
echo "<META NAME=\"REVISIT-AFTER\" CONTENT=\"1 DAYS\">\n";
echo "<META NAME=\"RATING\" CONTENT=\"GENERAL\">\n";

###############################################
# DO NOT REMOVE THE FOLLOWING COPYRIGHT LINE! #
# YOU'RE NOT ALLOWED TO REMOVE NOR EDIT THIS. #
###############################################

// IF YOU REALLY NEED TO REMOVE IT AND HAVE MY WRITTEN AUTHORIZATION CHECK: http://phpnuke.org/modules.php?name=Commercial_License
// PLAY FAIR AND SUPPORT THE DEVELOPMENT, PLEASE!

echo "<META NAME=\"GENERATOR\" CONTENT=\"PHP-Nuke Copyright (c) 2004 by Francisco Burzi. This is free software, and you may redistribute it under the GPL (http://phpnuke.org/files/gpl.txt). PHP-Nuke comes with absolutely no warranty, for details, see the license (http://phpnuke.org/files/gpl.txt). Powered by Platinum Nuke Pro(http://www.platinumnukepro.com)\">\n";

?>