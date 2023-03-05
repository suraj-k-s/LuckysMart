<?php
ob_start();
include("Head.php");
include("../Assets/Connection/Connection.php");
session_start();
if(isset($_POST["btnupdate"]))
 {
	 $Currentpassword=$_POST["txtconfirmpassword"];
	 $Newpassword=$_POST["txtnewpassword"]; 
	 $Re_password=$_POST["txtrepassword"];
	 $selQry="select * from tbl_kudumbashree where kudumbashree_id='".$_SESSION["kid"]."'";
	 $result=$Conn->query($selQry);
$row=$result->fetch_assoc();

$dbpassword=$row["kudumbashree_password"];
if($Currentpassword==$dbpassword)
{
	if($Newpassword==$Re_password)
	{
		$upQry="update tbl_kudumbashree set kudumbashree_password='".$Newpassword."'where kudumbashree_id='".$_SESSION["kid"]."'";
			if($Conn->query($upQry))
			{
				 ?>
        		 <script>
		   		 alert('updated');
				 location.href='ChangePassword.php';
				 </script>
				 <?php	
			}
			else 
			{
				 ?>
        		 <script>
		   		 alert('failed');
				 location.href='ChangePassword.php';
				 </script>
				 <?php	
			}
	}
	else
	{
				 ?>
        		 <script>
		   		 alert('Incorrect new password');
				 location.href='ChangePassword.php';
				 </script>
				 <?php	
	
  }
}
  else
  {
				 ?>
        		 <script>
		   		 alert('Incorrect current password');
				 location.href='ChangePassword.php';
				 </script>
				 <?php	
			} 
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LuckysMart::ChagePassword</title>
</head>

<body>
	<br><br><br><br><br>
	<div id="tab" align="center">
<form id="form1" name="form1" method="post" action="">
<h1 align="center">ChangePassword</h1>
  <table align="center"  border="1">
    <tr>
      <td >Current Password</td>
      <td ><label for="txtconfirmpassword"></label>
      <input type="text" name="txtconfirmpassword" id="txtconpassword" pattern="[a-zA-Z0-9+!@#$%^&*()_-]{6}" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Newpassword</td>
      <td><label for="txtnewpassword"></label>
      <input type="text" name="txtnewpassword" id="txtnewpassword" pattern="[a-zA-Z0-9+!@#$%^&*()_-]{6}" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Re_Password</td>
      <td><label for="txtrepassword"></label>
      <input type="text" name="txtrepassword" id="txtrepassword" pattern="[a-zA-Z0-9+!@#$%^&*()_-]{6}" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="btnupdate" id="btnupdate" value="Update" />
      </div></td>
    </tr>
  </table>
</form>
	</div>
</body>
</html>
<?php
include("Foot.php");
ob_flush();
?>
