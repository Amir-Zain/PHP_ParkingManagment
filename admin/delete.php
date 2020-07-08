


<?php
$id=$_GET['id'];
    $a=$_GET['slot'];
include("dbconnect.php");


if(isset($_GET['id']))


{
	
	
	$update=$conn->query("UPDATE slot_tb SET status='0' WHERE addslots='$a'") or die(mysqli_error());
	$result=$conn->query("delete from parking_tb where id='$id'") or die(mysqli_error());
	header("location:print.php?task=successfully");

}

else
{
header("location:print.php?task=failed");	
}
?>
													