<?php
include('dbconnect.php');
$a=mysqli_real_escape_string($conn,$_REQUEST['name']);
$b=mysqli_real_escape_string($conn,$_REQUEST['mobile']);
$c=mysqli_real_escape_string($conn,$_REQUEST['cnumber']);
$d=mysqli_real_escape_string($conn,$_REQUEST['model']);
$e=mysqli_real_escape_string($conn,$_REQUEST['datex']);
$f=mysqli_real_escape_string($conn,$_REQUEST['ptime']);
$g=mysqli_real_escape_string($conn,$_REQUEST['price']);
$h=mysqli_real_escape_string($conn,$_REQUEST['slot']);

$sql="INSERT INTO parking_tb(name,mobile,cnumber,model,datex,ptime,price,slot)VALUES('$a','$b','$c','$d','$e','$f','$g','$h')";
$sql1=mysqli_query($conn,"UPDATE slot_tb SET status='1' where addslots='$h'");

if(mysqli_query($conn,$sql))
{
	header("location:print.php");
}
else{
	echo "ERROR:could not able to execute $sql".mysqli_error($conn);
}
mysqli_error($conn);
?>