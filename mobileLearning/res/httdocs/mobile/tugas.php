

<?php?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
<title>TUGAS</title>
<link>http://m-learning/</link>
<description>Silahkan Klik Tugas yang Ada</description>
<language>id</language>
<managingEditor>Mobile Learning</managingEditor>
<copyright>Copyright 2011 Mobile Learning</copyright>
<?php
include "config.php"; 
$query = "SELECT a.course,b.fullname, c.username, a.userid, d.id, d.name, d.description FROM `mdl_course_display` as a inner
 join mdl_course as b on  b.id=a.course inner join mdl_user as c on c.id=a.userid inner join mdl_assignment as d on 
 d.course=a.course and b.id='".$_GET['idc']."' and c.id='".$_GET['idu']."'"; 
$run = mysql_query($query); 
while($b=mysql_fetch_array($run)){
?>
<item>
<title><?php echo "$b[name]"; ?></title>
<pubDate><?php echo "$b[course]"; ?></pubDate>
<link><?php echo "$b[id]"; ?></link>
<description><?php echo "$b[userid]"; ?></description>
</item>
<?php } ?>
</channel>
</rss>
<?php mysql_close(); ?>