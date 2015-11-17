<?php

/********************************************************/
/* NSN Center Blocks(TM) Universal                      */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://www.nukescripts.net                           */
/* Copyright � 2000-2005 by NukeScripts Network         */
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

function cb_blocks($rid) {
    global $prefix, $db, $admin, $user;
    $sql = "SELECT * FROM ".$prefix."_nsncb_blocks WHERE rid='$rid'";
    $result = $db->sql_query($sql);
    while($row = $db->sql_fetchrow($result)) {
        $title = $row['title'];
        $filename = $row['filename'];
        $content = $row['content'];
        if ($filename == "" AND $content > "") {
            themecenterbox($title, $content);
        } elseif ($filename > "" AND $content == "") {
            $file = @file("blocks/$filename");
            if (!$file) {
                $content = _BLOCKPROBLEM;
            } else {
                include_once("blocks/$filename");
            }
            if ($content == "") { $content = _BLOCKPROBLEM2; }
            themecenterbox($title, $content);
        } elseif ($filename == "" AND $content == "") {
            $content = _BLOCKPROBLEM2;
            themecenterbox($title, $content);
        }
    }
}

?>
