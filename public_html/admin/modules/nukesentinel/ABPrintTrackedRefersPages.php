<?php

/********************************************************/
/* NukeSentinel(tm)                                     */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://www.nukescripts.net                           */
/* Copyright � 2000-2007 by NukeScripts Network         */
/* See CREDITS.txt for ALL contributors                 */
/********************************************************/

echo "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n";
echo "<html><head>\n";
$pagetitle = _AB_NUKESENTINEL.": "._AB_REFERTRACKING;
echo "<title>$pagetitle</title>\n";
$theme_Sel = get_theme();
include_once("themes/$theme_Sel/theme.php");
echo "<LINK REL='StyleSheet' HREF='themes/$theme_Sel/style/style.css' TYPE='text/css' MEDIA='screen'>\n";
echo "</head><body>\n";
echo "<h1 align='center'>$pagetitle</h1>\n";
$tid=intval($tid);
list($uname) = $db->sql_fetchrow($db->sql_query("SELECT `refered_from` FROM `".$prefix."_nsnst_tracked_ips` WHERE `tid`='$tid'"));
# default values if none set
echo "<center><strong>$uname</strong></center><br />";
echo "<table align='center' cellpadding='2' cellspacing='2' border='2'>\n";
echo "<tr>";
echo "<td nowrap><strong>"._AB_PAGEVIEWED."</strong></td>";
echo "<td nowrap><strong>"._AB_HITDATE."</strong></td>";
$result = $db->sql_query("SELECT `page`, `date` FROM `".$prefix."_nsnst_tracked_ips` WHERE `refered_from`='$uname' ORDER BY `date` DESC");
while(list($page, $date_time) = $db->sql_fetchrow($result)){
  echo "<tr>\n";
  echo "<td>$page</td>\n";
  echo "<td>".date("Y-m-d \@ H:i:s",$date_time)."</td>\n";
  echo "</tr>\n";
}
echo "</table>";
echo "</body></html>\n";

?>