
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<div id="tab" align="center">
<body>
<form id="form1" name="form1" method="get" action="">
 
   <input type="text" />
   <input type="submit" name="search" />
  <table border="1" cellpadding="10">
    <tr>
      <th width="59" scope="col">SL.NO</th>
      <th width="93" scope="col">DISTRICT</th>
      <th width="66" scope="col">PLACE</th>
      <th width="59" scope="col">NAME</th>

    </tr>
<?php
include("../Assets/Connection/Connection.php");

if(isset($_GET['search']))
{
 $email=$_GET["search"];
 $selqry =  "select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join
tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id where appointment_status='4' and user_email='".$email."'";
if($con->query($selqry))

 echo "inserted";
}
$sel =  "select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join
tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id where appointment_status='4'";
$row=$con->query($sel);
{
  $i=0;
  while($result=$row->fetch_assoc())
  {
    $i++;
    ?>
  
    <table>
    <tr>
      <td><?php echo $i; ?></td>

      <td><?php echo $result["user_name"];?></td>
   
    
    <?php
  }
}
  ?>
  </table>
</form>

</body>
</div>
</html>


