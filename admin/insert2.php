<?php
include("dbconnect.php");
$a=mysqli_real_escape_string($conn,$_REQUEST['addslots']);
$sql="INSERT INTO slot_tb(addslots)VALUES('$a')";
if(mysqli_query($conn,$sql))
 {
	header("location:addslots.php");
}
else{
	echo "ERROR: could not able to execute $sql".mysqli_error($conn);
}
mysqli_close($conn);

?>