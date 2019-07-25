<?php
$username=$_POST['username'];//username
$password=$_POST['password'];//password 
session_start();

$con=mysqli_connect("localhost","huzaifa8580","huzaifa","rehman1");//mysqli("localhost","username of database","password of database","database name")
$result=mysqli_query($con,"SELECT * FROM `admin` WHERE `username`='$username' && `password`='$password'");
$count=mysqli_num_rows($result);
if($count==1)
{
	echo "Login success";
	$_SESSION['log']=1;
	header("refresh:1;url=index1.php");

}
else
{
	echo "please fill proper details";
	header("refresh:1;url=index2.php");// it takes 2 sec to go index page
}


?>