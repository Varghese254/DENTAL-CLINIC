<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Request Report</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
</body>
<div id="tab" align="center">
<?php
include("../Assets/Connection/Connection.php");
include("SessionValidator.php");
include("Head.php");


$sql =  "select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join
tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id inner join tbl_dentist x on a.dentist_id=x.dentist_id  where appointment_status='4' "; 

if(isset($_GET['search'])){ 
 $email=$_GET["search"];
 $sql =  "select * from tbl_prescribe p inner join tbl_appointmentrequest a on p.appointment_id=a.appointment_id inner join
tbl_user u on a.user_id=u.user_id inner join tbl_diagnosis d on p.diagnosis_id=d.diagnosis_id inner join tbl_dentist x on a.dentist_id=x.dentist_id where appointment_status='4' and user_email='".$email."'";
} 
$result = $con->query($sql); 
$products = mysqli_fetch_all($result,MYSQLI_ASSOC); 
echo '<form> 
 <input name="search"> 
 <input type="submit" value="Search">

 </form>'; 
echo "<table border=1>"; 
echo "<tr>
<td>Date</td>
<td>User ID</td>
<td>Name</td>
<td>Email</td>

<td>Diagnosis</td>
<td>Dentist</td>

<td>medicine</td>
<td>doasage</td>
</tr>";
foreach ($products as $product) { 
 echo "<tr> 
 
  <td>{$product['prescription_date']}</td>
   <td>{$product['user_id']}</td>  
 <td>{$product['user_name']}</td> 
 <td>{$product['user_email']}</td> 
 <td>{$product['diagnosis_name']}</td> 
 <td>{$product['dentist_name']}</td> 

 <td>{$product['prescription_medi']}</td> 
 <td>{$product['prescription_dose']}</td> 
 </tr>";
}
echo '</table>';

include("Foot.php");


?>

</body>
</div>
</html>






