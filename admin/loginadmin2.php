<?php
session_start();
include("dbconnect.php");
if($_SERVER["REQUEST_METHOD"]=="POST")
{
	
	$a=$_POST['datex'];
	$query=mysqli_query($conn,"SELECT * FROM parking_tb WHERE datex='$a' ");
	if(mysqli_num_rows($query)<1)
	{
		$_SESSION['msg']="login failed user not found!";
		header('location:get.php');
	}
	else{
		$row=mysqli_fetch_array($query);
		$_SESSION['id']=$row['id'];
		$_SESSION['datex']=$row['datex'];
		header('location:details.php');
	}

}
?>