
<?php
 include("../Assets/Connection/Connection.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Consulted List</title>
</head>
<?php
include("Head.php");

?>
<body>
<div id="tab" align="center">

<b><center><h1>Consulted List</h1></center></b>

<form id="form1" name="form1" method="post" action="">
  <table >
    <tr>
      <th >SL.NO</th>
      <th >NAME</th>
      <th >GENDER</th>
      <th >CONTACT</th>
      <th >EMAIL</th>
      <th >PHOTO</th>
       <th >Diagnosis</th>
       <th>medicine</th>

           </tr>
           
   	  	   
			
			
	
        <?php	
  $selqry="select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id where appointment_status='4'";
  //echo $selqry;
  $row=$con->query($selqry);
  $i=0;
  while($result=$row->fetch_assoc())
  {
    $i++;
    ?>
    <tr>
      <td><?php echo $i; ?></td>
      <td><?php echo $result["user_name"];?></td>
       <td><?php echo $result["user_gender"];?></td>
        <td><?php echo $result["user_contact"];?></td>
         <td><?php echo $result["user_email"];?></td>
      <td><img src="../Assets/Files/UserPhoto/<?php echo $result["user_photo"];?>"width="120" height="120"/></td>
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