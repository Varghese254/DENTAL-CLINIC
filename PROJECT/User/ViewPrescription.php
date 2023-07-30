<?php
include("../Assets/Connection/Connection.php");

session_start();
?>
    
       


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<div id="tab" align="center">
<body>
<?php
include("Head.php");
?>

<form id="form1" name="form1" method="post" action="">
<table>
       <th >SL.NO</th>
 <th >Date</th>
    <th >Dentist</th>
       <th >Diagnosis</th>
       <th>medicine</th>

           </tr>
           	
	
        <?php	
  $selqry="select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join 
  tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id inner join tbl_dentist x on a.dentist_id=x.dentist_id 
  where appointment_status='4' and u.user_id='".$_SESSION["lgid"]."'";
  //echo $selqry;
  $row=$con->query($selqry);
  $i=0;
  while($result=$row->fetch_assoc())
  {
    $i++;
    ?>
    <tr>
      <td><?php echo $i; ?></td>
      <?php $original_date =$result['prescription_date'];
	   $timestamp = strtotime($original_date);
	   $new_date = date("d-m-Y", $timestamp);?>
         <td><?php echo $new_date;?></td>
 
      <td><?php echo $result["dentist_name"];?></td>
    <td><?php echo $result["diagnosis_name"];?></td>
     <td><?php echo $result["prescription_medi"];?></td>
    </tr>
    <?php
  }
  ?>
  </table>
</form>
</body>
<?php
include("Foot.php");

?>


</html>
<body>