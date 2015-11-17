<?php
/************************************************************************/
/* Platinum Nuke Pro: Advanced Content Management System                */
/* ==================================================================== */
/*                                                                      */
/* Copyright (c) 2007 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* Platinum Nuke Pro Installer was based on Joomla Installer            */
/* Joomla is Copyright (c) by Open Source Matters                       */
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
require_once('version.php');
/** Include common.php */
include_once('common.php');
function get_php_setting($val) {
	$r =  (ini_get($val) == '1' ? 1 : 0);
	return $r ? 'ON' : 'OFF';
}
function writableCell( $folder ) {
	echo '<tr>';
	echo '<td class="item">' . $folder . '</td>';
	echo '<td align="left">';
	echo is_writable( "../$folder" ) ? '<strong><font color="green">  Writeable</font></strong>' : '<strong><font color="red">  Unwriteable</font></strong>' . '</td>';
	echo '</tr>';
}
echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">";

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Platinum Nuke Pro Installer
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="shortcut icon" href="../../images/favicon.ico" />
    <link rel="stylesheet" href="install.css" type="text/css" />
  </head>
  <body>
    <div id="wrapper">
      <div id="header">
        <div id="phpnuke">
          <img src="install_h1.png" alt="Platinum Nuke Pro Installation" />
        </div>
      </div>
    </div>
    <div id="ctr" align="center">
      <div class="install">
        <div id="stepbar">
          <div class="step-on">pre-installation check
          </div>
          <div class="step-off">license
          </div>
          <div class="step-off">step 1
          </div>
          <div class="step-off">step 2
          </div>
          <div class="step-off">step 3
          </div>
          <div class="step-off">step 4
          </div>
        </div>
        <div id="right">
          <div id="step">pre-installation check
          </div>
          <div class="far-right">	
            <input name="Button2" type="submit" class="button" value="Next >>" onclick="window.location='install.php';" /> 	
            <br/>	
            <br/>	
            <input type="button" class="button" value="Check Again" onclick="window.location=window.location" />
          </div>
          <div class="clr">
          </div><h1>Pre-installation check for:
            <br/>
            <?php echo $version; ?></h1><h2>Current MySQL Version:
            <font color="green"><strong>  
                <?php echo mysql_get_client_info(); ?> </strong>
            </font><br />Current PHP Version:
            <font color="green"><strong>       
                <?php echo phpversion(); ?> </strong>
            </font></h2>
          <div class="install-text">If any of these items are highlighted in red then please take actions to correct them. Failure to do so could lead to your Platinum Nuke Pro installation not functioning correctly.
            <div class="ctr">
            </div>
          </div>
          <div class="install-form">
            <div class="form-block">
              <table class="content">
                <tr>	
                  <td class="item">	PHP version >= 5.0.0 	</td>	
                  <td align="left">	
                    <?php echo phpversion() < '5.0' ? '<strong><font color="red">No</font></strong>' : '<strong><font color="green">Yes</font></strong>';?>	</td>
                </tr>
                <tr>	<td>	  - zlib compression support 	</td>	
                  <td align="left">	
                    <?php echo extension_loaded('zlib') ? '<strong><font color="green">Available</font></strong>' : '<strong><font color="red">Unavailable</font></strong>';?>	</td>
                </tr>
                <tr>	<td>	  - GD graphics support 	</td>	
                  <td align="left">	
                    <?php echo extension_loaded('gd') ? '<strong><font color="green">Available</font></strong>' : '<strong><font color="red">Unavailable</font></strong>';?>	</td>
                </tr>
                <tr>	<td>	  - MySQL support 	</td>	
                  <td align="left">	
                    <?php echo function_exists( 'mysql_connect' ) ? '<strong><font color="green">Available</font></strong>' : '<strong><font color="red">Unavailable</font></strong>';?>	</td>
                </tr>
                <tr>	
                  <td valign="top" class="item">	config.php 	</td>	
                  <td align="left">	
<?php
	if (@file_exists('../config.php') &&  @is_writable( '../config.php' )){
		echo '<strong><font color="green">Writeable</font></strong>';
	} else if (is_writable( '..' )) {
		echo '<strong><font color="green">Writeable</font></strong>';
	} else {
		echo '<strong><font color="red">Unwriteable</font></strong><br /><span class="small">You can still continue the install as the configuration will be displayed at the end, just copy & paste this and upload.</span>';
                    	} ?>	</td>
                </tr>
              </table>
            </div>
          </div>
          <div class="clr">
          </div><h1>Recommended settings:</h1>
          <div class="install-text">These settings are recommended for PHP in order to ensure full compatibility with Platinum Nuke Pro.<br />However, Platinum Nuke Pro will still operate if your settings do not quite match the recommended
            <div class="ctr">
            </div>
          </div>
          <div class="install-form">
            <div class="form-block">
              <table class="content">
                <tr>	
                  <td class="toggle">	Directive 	</td>	
                  <td class="toggle">	Recommended 	</td>	
                  <td class="toggle">	Actual 	</td>
                </tr>
<?php
$php_recommended_settings = array(array ('Safe Mode','safe_mode','OFF'),
array ('Display Errors','display_errors','ON'),
array ('File Uploads','file_uploads','ON'),
array ('Magic Quotes GPC','magic_quotes_gpc','OFF'),
array ('Magic Quotes Runtime','magic_quotes_runtime','OFF'),
array ('Register Globals','register_globals','OFF'),
array ('MySQL Allow Persistent','mysql.allow_persistent','ON'),
array ('Output Buffering','output_buffering','ON'),
array ('Short Open Tags','short_open_tags','OFF'),
);
foreach ($php_recommended_settings as $phprec) {
                ?>
                <tr>	
                  <td class="item">
                    <?php echo $phprec[0]; ?>:</td>	
                  <td class="toggle">
                    <?php echo $phprec[2]; ?>:</td>	<td>	
<?php
	if ( get_php_setting($phprec[1]) == $phprec[2] ) {
                    	?>		
                    <font color="green"><strong>	
<?php
	} else {
                        	?>		
                        <font color="red"><strong>	
<?php
	}
	echo get_php_setting($phprec[1]);
                            	?>	</strong>
                        </font>	<td>
                </tr>
<?php
}
                ?>
              </table>
            </div>
          </div>
          <div class="clr">
          </div><h1>File Permissions:</h1>
          <div class="install-text">In order for Platinum Nuke Pro to function correctly it needs to be able to write to certain files. If you see "Unwriteable" you need to change the permissions on the file. We have included a script to automatically try to set the permissions for you, though you may have to do it manually.
            <div class="clr">  
            </div>
            <div class="ctr">
            </div>
          </div>
          <div class="install-form">
            <div class="form-block">
              <table class="content">
<?php
writableCell( 'config.php' );
writableCell( 'ultramode.txt' );
writableCell( 'files' );
writableCell( 'userfiles' );
writableCell( 'userfiles/thumbs' );
writableCell( 'userfiles/thumbs/Images' );
writableCell( 'userfiles/files' );
writableCell( 'userfiles/flash' );
writableCell( 'userfiles/images' );
writableCell( 'ps_upload' );
writableCell( 'includes/smtp.php' );
writableCell( 'files/thumbs' );
writableCell( 'modules/coppermine/albums' );
writableCell( 'modules/NukeC30/imageads' );
writableCell( 'modules/NukeC30/imagecatg' );
writableCell( 'modules/Forums/cache' );
writableCell( 'modules/Forums/language/lang_english/lang_faq.php' );
writableCell( 'modules/Forums/language/lang_english/lang_rules.php' );
writableCell( 'modules/Supporters/images/supporters' );
writableCell( 'modules/Downloads/dl' );
writableCell( 'modules/Member_Application/admin/update.log' );
writableCell( 'modules/PrivateDownloads/loads' );
writableCell( 'modules/HTML_Newsletter/archive' );
writableCell( 'images/CZUser' );
writableCell( 'images/CZUser/admin' );
writableCell( 'modules/Link_Us/buttons' );
writableCell( 'modules/Universal/images/uploaded' );
writableCell( 'includes/classes/class.php-captcha.php' );
writableCell( 'includes/gfx.php' );
writableCell( 'includes/gfx_check.php' );
?>
              </table>
            </div>
          </div>
          <div class="clr">  <h1>Auto Set Permissions:</h1>
            <div class="install-text">We have included a script to automatically try to set the permissions for you, though you may have to do it manually.
              <div class="clr">  
              </div>
              <div class="ctr">
              </div>
            </div>
            <div class="install-form">
              <div class="form-block">
                <input name="Button2" type="submit" class="button" value="Set Permissions >>" onclick="window.open('../setpermissions.php')" />
              </div>
            </div>
          </div>
        </div>
        <div class="clr">
        </div>
      </div>
    </div>
    <div class="ctr">	
 
    </div>
<div class="footer" id="footer" align="center">
© <?php echo date("Y"); ?> <a href="http://www.platinumnuke.com" target="_blank">Platinum Nuke Pro</a><br /><br /><strong>When finished you <font color="red"> must verify the install folder was completely removed</font></strong>. <br /><br />
    </div>  </body>
</html>