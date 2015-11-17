<?php

/************************************************************************/
/* Platinum Nuke Pro: Advanced Content Management System                         */
/* ==================================================================== */
/*                                                                      */
/* Copyright (c) 2007 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* Platinum Nuke Pro Installer was based on Joomla Installer                     */
/* Joomla is Copyright (c) of Open Source Matters                       */
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
/************************************************************************/

/** Include common.php */
include_once( 'common.php' );
function writableCell( $folder ) {
	echo "<tr>";
	echo "<td class=\"item\">" . $folder . "</td>";
	echo "<td align=\"left\">";
	echo is_writable( "../$folder" ) ? '<strong><font color="green">Writeable</font></strong>' : '<strong><font color="red">Unwriteable</font></strong>' . "</td>";
	echo "</tr>";
}
?>
<?php echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Platinum Nuke Pro Installer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="shortcut icon" href="../../images/favicon.ico" />
<link rel="stylesheet" href="install.css" type="text/css" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="phpnuke"><img src="install_h1.png" alt="Platinum Nuke Pro Installation" /></div>
	</div>
</div>
<div id="ctr" align="center">
	<form action="install1.php" method="post" name="adminForm" id="adminForm">
	<div class="install">
	<div id="stepbar">
		<div class="step-off">pre-installation check</div>
		<div class="step-on">license</div>
		<div class="step-off">step 1</div>
		<div class="step-off">step 2</div>
		<div class="step-off">step 3</div>
		<div class="step-off">step 4</div>
	</div>
	<div id="right">
		<div id="step">license</div>
		<div class="far-right">
		<input class="button" type="submit" name="next" value="Next &gt;&gt;"/>
		</div>
		<div class="clr"></div>
		<h1>GNU/GPL License:</h1>
		<div class="licensetext">
				<a href="http://www.platinumnukepro.com">Platinum Nuke Pro</a> is Free Software released under the GNU/GPL License.
		</div>
		<div class="clr"></div>
		<div class="license-form">
			<div class="form-block" style="padding: 0px;">
				<iframe src="gpl.html" class="license" frameborder="0" scrolling="auto"></iframe>
			</div>
		</div>
		<div class="clr"></div>
		<div class="clr"></div>
		</div>
		<div id="break"></div>
	<div class="clr"></div>
	<div class="clr"></div>
	</div>
	</form>
</div>
<div class="footer" id="footer" align="center">
© <?php echo date("Y"); ?> <a href="http://www.platinumnuke.com" target="_blank">Platinum Nuke Pro</a><br /><br /><strong>When finished you <font color="red"> must verify the install folder was completely removed</font></strong>. <br /><br />
    </div>  </body>
</html>