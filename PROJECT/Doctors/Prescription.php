



<html>
<head>
<?php
include("../Assets/Connection/Connection.php");
use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;
session_start();




if(isset($_POST["submit"]))
{
	
	$Dia=$_POST["sel_dia"];
	$Medi=$_POST["txt_medicine"];
	$Dose=$_POST["txt_dosage"];
	$user=$_SESSION['lgid'];
	$appointment=$_GET['did'];
	echo $appointment; 
		$username=$_SESSION['lgname'];	

	$sql="insert into tbl_prescribe(user_id,appointment_id,prescription_date,diagnosis_id,prescription_medi,prescription_dose) values('".$user."','".$appointment."',
	curdate(),'".$Dia."','".$Medi."','".$Dose."')";
	
	if($con->query($sql))
	{
		  ?>
     <script>
	   alert("Data inserted");
	  location.href="Acceptedpatients.php";
	 </script>
     
     
   <?php
	}
	
	
	
	 
      $upQry="update tbl_appointmentrequest set appointment_status='4' where appointment_id='".$_GET["did"]."'";
	 						if($con->query($upQry))
	 							{
									?>
                                    <script>
                                    alert('Prescribed');
                                  window.location="Acceptedpatients.php";
                                    </script>
                                    <?php
								}
								
   
	
	
	
	
    else
	{
    ?>
      <script>
	    alert("Data Insertion Failed");
		window.location("Acceptedpatients.php");
	  </script>
     
      
      
      
      <?php
	}
	require '../Assets/phpMail/src/Exception.php';
require '../Assets/phpMail/src/PHPMailer.php';
require '../Assets/phpMail/src/SMTP.php';

	


    $mail = new PHPMailer(true);

    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'aamidentalclinic@gmail.com'; // Your gmail
    $mail->Password = 'nvnsyyzmagtciond'; // Your gmail app password
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465;
  
    $mail->setFrom('aamidentalclinic@gmail.com'); // Your gmail
  
    $mail->addAddress($_GET["user"]);
  
    $mail->isHTML(true);
  
    $mail->Subject = "Prescription";
    $mail->Body = "Hello".$username. " Your Medicine Prescribed by Today's Appointment is " .$Medi." and  Its Dosage is About ".$Dose;
  if($mail->send())
  {
    echo "Sended";
  }
  else
  {
    echo "Failed";
  }
	
	
	
	
	
	
	}

	    ?>
	

</head>
<body>
<?php
include("Head.php");
?>
  <center><h2><b><u>Prescription</u></b></h2></center>
<div id="tab" align="center">
<form id="form1" name="form1" enctype="multipart/form-data" method="post" action="">
  <table width="549" height="402" border="1" cellpadding="10" align="center">
  
    <tr>
      <td>Diagnosis Name</td>
      <td><select name="sel_dia" onChange="getMedicine(this.value)" id="sel_dia" required="required">
       <option>--select--</option>
      <?php
	   $sql1="select * from tbl_diagnosis";
	   $results1=$con->query($sql1);
	   while($rows1=$results1->fetch_assoc())
	   {
		    ?>
            <option value="<?php echo $rows1["diagnosis_id"]; ?>"><?php echo $rows1["diagnosis_name"]; ?></option>
            <?php
	   }
	   ?>
      </select></td>
    </tr>
    <tr>
      <td>Medicine  Name</td>
     <td><textarea name="txt_medicine" id="txt_address" cols="45" rows="5" required autocomplete="off"></textarea></td>
    </tr>
    <tr>
      <td>Dosage</td>
      <td><textarea name="txt_dosage" id="txt_address" cols="45" rows="5" required autocomplete="off"></textarea></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="submit" id="submit" value="Submit" />
      <input type="reset" name="Cancel" id="Cancel" value="Reset" /></td>
    </tr>
  </table>
</form>
<?php
include("Foot.php");
?>
</body>
</html>