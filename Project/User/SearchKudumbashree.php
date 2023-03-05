<?php
ob_start();
include("../Assets/Connection/Connection.php");
include("Head.php");
?>
<br><br><br><br><br>
<div id="tab">
<form id="form1" name="form1" method="post" action="">
   <div align="center">
    <h1 align="center">Search Kudumbashree</h1>
      <table  border="1">
        <tr>
          <td width="88">District</td>
          <td width="168"><label for="ddl_district"></label>
            <select name="ddl_district" id="ddl_district" onchange="getPanchayath(this.value)">
           <option value="">---select---</option>
           <?php 
		   $selQry="select * from tbl_district";
		   $res=$Conn->query($selQry);
		   while($row=$res->fetch_assoc())
		   {
			   ?>
               <option value="<?php echo $row["district_id"]?>"><?php echo $row["district_name"]?></option>
               <?php
		   }
		   ?>
          </select></td>
        </tr>
        <tr>
          <td>Panchayath</td>
          <td><label for="ddl_panchayath"></label>
            <select name="ddl_panchayath" id="ddl_panchayath">
                <option value="">---select---</option>
          </select></td>
        </tr>
        <tr>
          <td align="center" colspan="2"><input type="submit" name="btn_search" id="btn_search" value="Submit" /></td>
        </tr>
        </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
       <h1 align="center">Kudumbashree List</h1>
  <?php 
  if(isset($_POST["btn_search"]))
  {
	  $panchayath=$_POST["ddl_panchayath"];
	  $selQry="select * from tbl_kudumbashree where panchayath_id='".$panchayath."'";
	  $res=$Conn->query($selQry);
  if($res->num_rows>0)
  {
	  $i=0;
	  ?>
  <table align="center"  border="1">
   
  <tr>
    <?php
	while($row=$res->fetch_assoc())
	{
		$i++;
		?>
        
        <td><p>
        <img src="../Assets/Files/Photo/<?php echo $row["kudumbashree_photo"];?>" width="150" /><br>
        <?php echo $row["kudumbashree_name"];?><br>
        <?php echo $row["kudumbashree_contact"];?><br>
        <?php echo $row["kudumbashree_address"];?> <br> 
	    <?php echo $row["kudumbashree_email"];?><br>
       
		<a  href="SearchProduct.php?id=<?php echo $row["kudumbashree_id"];?>">Veiw product </a></p></td>
        <?php 
        
	}
  if($i==4)
{
  echo "</tr>";
  $i=0;
  echo "<tr>";
}
	?>
  
   
  </table>
  <?php
}
else 
 {
    echo "<h1>No Data Found</h1>";
 }
}
?>
    </div>
    </body>
  </form>
</div>
<script src="../Assets/JQ/jQuery.js"></script>
<script>
 	function getPanchayath(did)
	{

		$.ajax({url:"../Assets/AjaxPages/AjaxPanchayath.php?did="+ did,
		success:function(result)
		{
			$("#ddl_panchayath").html(result);
		}});
	}
	</script>
</html>
<?php 
include("Foot.php");
ob_flush();
?>
