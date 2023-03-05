<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kudumbasree LIST</title>

</head>
    <?php  
	ob_start();
include('../Assets/Connection/Connection.php');
include('Head.php');
      if(isset($_GET["aid"]))
	  {
		  $accept = "update tbl_kudumbashree set kudumbashree_status='1' where kudumbashree_id='".$_GET["aid"]."'";
		  if($Conn->query($accept))
		  {
			  header("Location:KudumbasreeList.php");
		  }
	  }
	  if(isset($_GET["rid"]))
	  {
		  $accept = "update tbl_kudumbashree set kudumbashree_status='2' where kudumbashree_id='".$_GET["rid"]."'";
		  if($Conn->query($accept))
		  {
			  header("Location:KudumbasreeList.php");
		  }
	  }
  
    ?>
    <body>
        <section class="main_content dashboard_part">

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                            <h1>New kudumbashrees</h1>
                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Name</td>
                                                <td align="center" scope="col">Contact</td>
                                                <td align="center" scope="col">Email</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
												$i = 0;
                                                $selQry = "select * from tbl_kudumbashree where kudumbashree_status='0'";
                                               $rs = $Conn->query($selQry);
                                                while ($data =$rs->fetch_assoc()) {

                                                    $i++;

                                            ?>
                                            <tr>
                                                <td align="center"><?php echo $i;?></td>
                                                <td align="center"><?php echo $data["kudumbashree_name"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_contact"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_email"] ?></td>
                                                <td align="center"><a href="KudumbasreeList.php?aid=<?php echo $data["kudumbashree_id"] ?>" class="status_btn">Accept</a> | <a href="KudumbasreeList.php?rid=<?php echo $data["kudumbashree_id"] ?>" class="status_btn">Reject</a> </td>
                                            </tr>
                                            <?php                     }


                                            ?>

                                        </tbody>
                                    </table>
                                </div>
                                <h1>Accepted kudumbashrees</h1>
                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Name</td>
                                                <td align="center" scope="col">Contact</td>
                                                <td align="center" scope="col">Email</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
												$i = 0;
                                                $selQry = "select * from tbl_kudumbashree where kudumbashree_status='1'";
                                               $rs = $Conn->query($selQry);
                                                while ($data = $rs->fetch_assoc()) {

                                                    $i++;

                                            ?>
                                            <tr>
                                                <td align="center"><?php echo $i;?></td>
                                                <td align="center"><?php echo $data["kudumbashree_name"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_contact"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_email"] ?></td>
                                                <td align="center"><a href="KudumbasreeList.php?rid=<?php echo $data["kudumbashree_id"] ?>" class="status_btn">Reject</a> </td>
                                            </tr>
                                            <?php                     }


                                            ?>

                                        </tbody>
                                    </table>
                                </div>
                                <h1>Rejected kudumbashrees</h1>
                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Name</td>
                                                <td align="center" scope="col">Contact</td>
                                                <td align="center" scope="col">Email</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
												$i = 0;
                                                $selQry = "select * from tbl_kudumbashree where kudumbashree_status='2'";
                                               $rs = $Conn->query($selQry);
                                                while ($data = $rs->fetch_assoc()) {

                                                    $i++;

                                            ?>
                                            <tr>
                                                <td align="center"><?php echo $i;?></td>
                                                <td align="center"><?php echo $data["kudumbashree_name"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_contact"] ?></td>
                                                <td align="center"><?php echo $data["kudumbashree_email"] ?></td>
                                                <td align="center"><a href="KudumbasreeList.php?aid=<?php echo $data["kudumbashree_id"] ?>" class="status_btn">Accept</a> </td>
                                            </tr>
                                            <?php                     }


                                            ?>

                                        </tbody>
                                    </table>
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </body>
     <?php
		include('Foot.php');
		 ob_end_flush();
		?>

    </html>