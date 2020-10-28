<?php
 include "config.php";
   $idc= $_REQUEST['idc'];
   $idu= $_REQUEST['idu'];
    if($idc && $idu){
       $sqlString = "SELECT a.course, b.fullname, b.id, c.username, a.userid, d.id, d.name, d.description from mdl_course_display 
  as a inner join mdl_course as b on b.id=a.course inner join mdl_user as c on c.id=a.userid 
  inner join mdl_assignment d on d.course=a.course and b.id='".$_GET['idc']."' and d.id='".$_GET['ida']."' and a.userid='".$_GET['idu']."'";
    }else{
       $sqlString = "SELECT a.course, b.fullname, b.id, c.username, a.userid, d.id, d.name, d.type, d.description from mdl_course_display 
  as a inner join mdl_course as b on b.id=a.course inner join mdl_user as c on c.id=a.userid 
  inner join mdl_assignment d on d.course=a.course";
    }
    $rs = mysql_query($sqlString);
    if($rs){
       while($objRs = mysql_fetch_assoc($rs)){
          $output[] = $objRs;
       }      
       echo json_encode($output);
    }
   mysql_close();  
?>