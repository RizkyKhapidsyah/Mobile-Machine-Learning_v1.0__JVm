<?php ?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>

<title>COURSE YANG DI AMBIL</title>
<link>http://m-learning.com/</link>
<description></description>
<language>id</language>
<managingEditor>Mobile Learning</managingEditor>
<copyright>Copyright 2011 Mobile Learning</copyright>

<?php
include "config.php"; 
$query = "SELECT a.course, b.fullname, b.id, c.username, a.userid from mdl_course_display 
  as a inner join mdl_course as b on b.id=a.course inner join mdl_user as c on c.id=a.userid and c.username='".$_GET['uname']."' "; 
  $run = mysql_query($query); 
while($b=mysql_fetch_array($run)){
?>
<item>
<title><?php echo "$b[fullname]"; ?></title>
<pubDate><?php echo "$b[userid]"; ?></pubDate>
<link><?php echo "$b[id]"; ?></link>
<description><?php echo "$b[username]"; ?></description>
</item>
<?php } ?>
</channel>
</rss>
<?php mysql_close(); ?>