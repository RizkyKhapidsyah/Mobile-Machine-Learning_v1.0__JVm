<?php 
	// setting nama folder tempat upload
	include "uploadConfig.php";
	$dirPath = "../htdocs";
	$idcourse=$_REQUEST['idc'];
	$idtgs=$_REQUEST['idtgs'];
	$iduser=$_REQUEST['idu'];
	if ($handle = opendir($dirPath)){
			if(!is_dir("moodledata")){
				mkdir("moodledata");
				
			}
			$dirpath2="moodledata";
			if(opendir($dirpath2)){
				if(!is_dir("moodledata/".$idcourse)){
					mkdir("moodledata/".$idcourse);
				}	
				
				$dirpath3="moodledata/".$idcourse;
				if(opendir($dirpath3)){
					if(!is_dir($dirpath3."/moddata")){
						mkdir($dirpath3."/moddata");
					}	
					$dirpath4=$dirpath3."/moddata";
					if(opendir($dirpath4)){
						if(!is_dir($dirpath4."/assignment")){
							mkdir($dirpath4."/assignment");
						}	
					
						$dirpath5=$dirpath4."/assignment";
						if(opendir($dirpath5)){
							if(!is_dir($dirpath5."/".$idtgs)){
								mkdir($dirpath5."/".$idtgs);
							}	
						
							$dirpath6=$dirpath5."/".$idtgs;
							if(opendir($dirpath6)){
								if(!is_dir($dirpath6."/".$iduser)){
									mkdir($dirpath6."/".$iduser);
									
									
								}	
							}
						}
					}
				}
			}
			

	}
	$timezone = "Asia/Jakarta";
	date_default_timezone_set($timezone);

	//echo date('l, j F Y, h:i A');
	$waktu = time();
	//echo $waktu;
	
	$dirtujuan=$dirpath6."/".$iduser;
	
	//echo $uploaddir;
	// membaca nama file yang diupload
	$fileName = $_FILES['userfile']['name'];     

	// nama file temporary yang akan disimpan di server
	$tmpName  = $_FILES['userfile']['tmp_name']; 

	// membaca ukuran file yang diupload
	$fileSize = $_FILES['userfile']['size'];

	// membaca jenis file yang diupload
	$fileType = $_FILES['userfile']['type'];
	
	//$tgl=date('Y-m-d');
	$uploadfile = $fileName;
	
	// proses upload file ke folder 'data'
	if(file_exists("$dirtujuan/".$uploadfile)){
		//echo "<script>";
			echo"File Sudah Ada,Silahkan Ganti Nama File";
			
		//echo"</script>";		
	}else if (move_uploaded_file($_FILES['userfile']['tmp_name'],"$dirtujuan/".$uploadfile)) {
		$sqlmateri=mysql_query("INSERT INTO mdl_assignment_submissions(assignment,userid,timemodified) VALUES('$idtgs','$iduser','$waktu')");
		
		//echo "<script>";
			echo"File..." .$fileName. "...Berhasil Diupload";
			
		//echo"</script>";	
	} else {
		//echo "<script>";
			echo"File Gagal Diupload";
			
		//echo"</script>";		
	}
	
?>