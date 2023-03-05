<?php
ob_start();
include("../Assets/Connection/Connection.php");
if(isset($_POST["btnsave"]))
{
	$name=$_POST["txtname"];
	$contact=$_POST["txtcontact"];
	$email=$_POST["txtemail"];
	$address=$_POST["txtaddress"];
	$panchayath_id=$_POST["sel_panchayath"];
    $password=$_POST["txtpassword"];
    $gender=$_POST["gender"];
	$dob=$_POST["txtdob"];
	
	$photo=$_FILES["filephoto"]["name"];
	$path=$_FILES["filephoto"]["tmp_name"];
	move_uploaded_file($path,"../Assets/Files/Photo/".$photo);
	
	$proof=$_FILES["fileproof"]["name"];
	$path=$_FILES["fileproof"]["tmp_name"];
	move_uploaded_file($path,"../Assets/Files/Proof/".$proof);
	
	$insQry="insert into tbl_user(user_name,user_contact,user_address,user_email,panchayath_id,user_photo,user_proof,user_password,user_gender,user_dob)values('".$name."','".$contact."','".$address."','".$email."','".$panchayath_id."','".$photo."','".$proof."','".$password."','".$gender."','".$dob."')";
	//echo $insQry;	
  if($Conn->query ($insQry))
			{
				?>
                <script>
				alert('inserted');
				location.href='User.php';
				</script>
				<?php
			}
		    else
			{
				 ?>
				 <script>
				 alert('failed');
			   	 location.href='User.php';
				 </script>
                 <?php
			}
}
include("Head.php");

$Y = date('Y')-18;
$M = date('m');
$D = date('d');
?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LuckysMart::User</title>
</head>

<body>
<br /><br /><br /><br /><br />
<div id="tab" >
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="200" border="1" align="center">
    <tr>
      <td width="119">Name</td>
      <td width="65"><label for="txtname"></label>
      <input type="text" name="txtname" id="txtname " autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Contact</td>
      <td><label for="txtcontact"></label>
      <input type="text" name="txtcontact" id="txtcontact" pattern="[+0-9]{10,13}" autocomplete="off" required/></td>
    </tr>
  <tr>
      <td>Gender</td>
      <td ><input type="radio" name="gender" id="btnmale" value="male" autocomplete="off" required/>male
      <label for="btnmale">
        <input type="radio" name="gender" id="btnfemale" value="female"/>female
        <input type="radio" name="gender" id="btnothers" value="others"/>others
      </label></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><label for="txtemail"></label>
      <input type="email" name="txtemail" id="txtemail" autocomplete="off" required/></td>
    </tr>
   
    <tr>
      <td>Dob</td>
      <td><label for="txtdob"></label>
      <input type="date" name="txtdob" id="txtdob" max="<?php echo $Y."-".$M."-".$D; ?>" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><label for="txtaddress"></label>
      <textarea name="txtaddress" id="txtaddress"cols="45" rows="5"  autocomplete="off" required></textarea></td>
    </tr>
    <tr>
      <td>Photo</td>
      <td><label for="filephoto"></label>
      <input type="file" name="filephoto" id="filephoto" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>Proof</td>
      <td><label for="txtproof"></label>
        <label for="fileproof"></label>
      <input type="file" name="fileproof" id="fileproof" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td>District</td>
      <td><label for="sel_district"></label>
        <select name="sel_district" id="sel_district" onChange="getPanchayath(this.value)" autocomplete="off" required>
          <option value="">---select---</option>
          <?php
	  $districtQry="select * from tbl_district";
	  $res=$Conn->Query($districtQry);
	  while($row=$res->fetch_assoc())
	  {
	?>
          <option value=<?php echo $row["district_id"]; ?> > <?php echo $row["district_name"]; ?> </option>
          <?php
	  }?>
        </select></td>
      <label for="sel_district"></label>
      <label for="sel_district"></label></td>
    </tr>
      <tr><td>Panchayath</td>
      <td><label for="sel_panchayath"></label>
      <label for="sel_panchayath"></label>
        <select name="sel_panchayath" id="sel_panchayath" onChange="getPlace(this.value)" autocomplete="off" required>
        <option value="">---select---</option>
        
      </select></td>
      
    </tr>
    <tr>
      <td>Place</td>
      <td><label for="sel_place"></label>
      <label for="sel_place"></label>
        <select name="sel_place" id="sel_place" autocomplete="off" required>
        <option value="">---select---</option>
       
      </select></td>
    </tr>
  
    <tr>
      <td>Password</td>
      <td><label for="txtpassword2"></label>
      <input type="password" name="txtpassword" id="txtpassword2" autocomplete="off" required/></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="btnsave" id="btnsave" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</div>
</body>
<script src="../Assets/JQ/jQuery.js"></script>
<script>
     function getPanchayath(did)
	{

		$.ajax({url:"../Assets/AjaxPages/AjaxPanchayath.php?did="+ did,
		success:function(result)
		{
			
			$("#sel_panchayath").html(result);
		}});
	}
 	function getPlace(pid)
	{

		$.ajax({url:"../Assets/AjaxPages/AjaxPlace.php?pid="+ pid,
		success:function(result)
		{
			$("#sel_place").html(result);
		}});
	}
	
	</script>
    <?php
	include("Foot.php");
	ob_flush();
	?>
</html>