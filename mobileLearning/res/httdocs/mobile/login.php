<?php
include "config.php";
$username = $_REQUEST['username'];
$password = $_REQUEST['password'];
$passwordhash = md5($password);
// query untuk mendapatkan record dari username
$query = "SELECT * from mdl_user where username = '$username' and password = '$passwordhash' ";
$numRow = mysql_num_rows(mysql_query($query));
// cek kesesuaian password
if ($numRow >= 1)
echo 1;  
else
echo 0; 
?>