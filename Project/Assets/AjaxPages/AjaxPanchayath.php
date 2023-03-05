<option value="">---select---</option>
<?php
include("../Connection/Connection.php");
		$selQry = "select * from tbl_panchayath where district_id='".$_GET["did"]."'";
		$re = $Conn->query($selQry);
		while($row=$re->fetch_assoc())
		{
			?>
				<option value="<?php echo $row["panchayath_id"]?> "><?php echo $row["panchayath_name"]?></option>
                <?php
		}
?>