<?php
ob_start();
include("Head.php");
include("../Assets/Connection/Connection.php");
session_start();
if(isset($_POST["btnupdate"]))
 {
	$name=$_POST["txtname"];
	$contact=$_POST["txtcontact"];
	$email=$_POST["txtemail"];
	$address=$_POST["txtaddress"];
	$upQry="update tbl_kudumbashree set kudumbashree_name='".$name."',kudumbashree_contact='".$contact."',kudumbashree_email='".$email."',kudumbashree_address='".$address."' where kudumbashree_id='".$_SESSION["kid"]."'";
	//echo upQry;
	if($Conn->query($upQry))
			{
				 ?>
        		 <script>
		   		 alert('updated');
				 location.href='EditProfile.php';
				 </script>
				 <?php	
			} 
	
	}

$selQry="select * from tbl_kudumbashree where kudumbashree_id='".$_SESSION["kid"]."'";
$result=$Conn->query($selQry);
if($row=$result->fetch_assoc())
{
?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LuckysMart::EditProfile</title>
</head>

<body>
  <br><br><br><br><br>
  <div id="tab" align="center">
<form id="form1" name="form1" method="post" action="">
<h1 align="center">EditProfile</h1>
  <table align="center" width="200" border="1">
    <tr>
      <td width="95">Name</td>
      <td width="89"><label for="txtname"></label>
      <input type="text"value="<?php echo $row["kudumbashree_name"];?>"name="txtname" id="txtname" pattern="[A-Za-z ]{2,}" required autocomplete="off"/></td>
    </tr>
    <tr>
      <td>Contact</td>
      <td><label for="txtcontact"></label>
      <input type="text"value="<?php echo $row["kudumbashree_contact"];?>" name="txtcontact" id="txtcontact" pattern="[+0-9]{10,13}" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><label for="txtemail"></label>
      <input type="text" value="<?php echo $row["kudumbashree_email"];?>"name="txtemail" id="txtemail" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><label for="txtaddress"></label>
      <textarea name="txtaddress" id="txtaddress" cols="45" rows="5" required><?php echo $row["kudumbashree_address"];?></textarea></td>
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
}
include("Foot.php");
ob_flush();
?>
