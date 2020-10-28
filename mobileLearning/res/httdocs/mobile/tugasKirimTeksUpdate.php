<?php

include "config.php";
    $idtgs=$_REQUEST['idtgs'];
	$iduser=$_REQUEST['idu'];
	$idas=$_REQUEST['idas'];
	$jawaban=$_REQUEST['jawab'];

    $timezone = "Asia/Jakarta";
	date_default_timezone_set($timezone);

	//echo date('l, j F Y, h:i A');
	$waktu = time();
	//echo $waktu;
	
	$q2 = "SELECT timedue from mdl_assignment where id ='$idtgs'";
	$hq2 = mysql_query($q2);
	$data2 = mysql_fetch_array($hq2);
	
	//echo $data2['timedue'];
	
	$t = $data2['timedue']; ;
    $y = intval($t);

    $ts = date("Y-m-d H:i",$y);
    $te = date("Y-m-d H:i");
	
	
$q1 = "SELECT count(*) as jum FROM mdl_assignment_submissions WHERE data1 = '$jawaban';";
$hasil = mysql_query($q1);
$data  = mysql_fetch_array($hasil);
if (($data['jum'] > 0) || ($te > $ts))
{
echo "MAAF DATA YANG ANDA MASUKAN SAMA ATAU WAKTU ANDA TELAH HABIS";
} else
$query = "UPDATE mdl_assignment_submissions SET timemodified = '$waktu', data1 = '$jawaban' WHERE id = '$idas'";
$result = mysql_query($query);
if ($result >= 1)
echo 1;  

else

echo 0; 
?>
