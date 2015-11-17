<?php
#########################################################################
# nukeSEO Copyright (c) 2005 Kevin Guske              http://nukeSEO.com
# Meta Tag function developed by Jens Hauge           http://visayas.dk
# Sitemap object approach from mSearch by David Karn  http://webdever.net
# Submit Sitemap from phpSitemapNG by Tobias Kluge    http://enarion.net
# Results originally developed by Curve2 Design       http://curve2.com
#########################################################################
# This program is free software. You can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License.
#########################################################################

if(!defined('ADMIN_FILE')) { header("Location: ../../index.php");  die(); }

switch($op) {
    case "nukeSEO":
    case "nukeSEOconfig":
    case "nukeSEOrobots":
    case "nukeSEOmeta":
    case "nukeSEOmetaSave":
    case "nukeSEOmetaValidate":
    case "nukeSEOMETAhelp":
    case "nukeSEOgoogleSMConfig":
    case "nukeSEODelMod":
    case "nukeSEODisableMod":
#    case "nukeSEOgoogleSMwriteUI":    
    case "nukeSEOgoogleSMSubmit":
    case "nukeSEOsubmit":
    case "nukeSEOsaturation":
    case "nukeSEOlinkpop":
    case "nukeSEOkeyrank":
    include_once("admin/modules/nukeSEO.php");
    break;
}
?>
