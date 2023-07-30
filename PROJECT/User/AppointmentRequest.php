

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Appoinment</title>
</head>

<div id="tab" align="center">
<body>
<a href="HomePage.php">Home</a>
<form id="form1" name="form1" method="post" action="">
	 <table width="601" height="601" border="1" align="center" cellpadding="10" style="border-collapse:collapse">
   
   
  
<?php

	session_start();
	

include("../Assets/Connection/Connection.php");
include("Head.php");
if(isset($_POST["btn_update"]))
{

	$time=$_POST["txt_time"];
	$details=$_POST["txt_desc"];
	$service=$_POST["sel_service"];
	$sql="insert into tbl_appointmentrequest(user_id,dentist_id,service_id,apointment_details,appointment_time) values('".$_SESSION["lgid"]."','".$_GET["upp"]."','".$service."','".$details."','".$time."')";
	if($con->query($sql))
	{
		  ?>
     <script>
	   alert("Data inserted");
	   location.href="RequestStatus.php";
	  
	 </script>
   <?php
	}
    else
	{
    ?>
      <script>
	    alert("Data Insertion Failed");
		window.location("newuser.php");
	  </script>
      <?php
	}
  }
	    ?>
	<?php
      $selQry="select * from tbl_user where user_id='".$_SESSION["lgid"]."'" ;
	  $row=$con->query($selQry);
	  $data=$row->fetch_assoc();
	
	  ?>
	<tr>
      <td>Photo</td>
        <td><img src="../Assets/Files/UserPhoto/<?php echo $data["user_photo"]?>" width="120" height="120"/></td>
    </tr>
    <tr>
      <td width="212">Name </td> 
      <td width="337"><?php echo $data["user_name"]; ?></td>
    </tr>
    <tr>
      <td>Gender </td>
      <td><?php echo $data["user_gender"]; ?></td>
    </tr>
     <tr>
      <td>Contact</td>
      <td><?php echo $data["user_contact"]; ?></td>
    </tr>
    <tr>
	   <td>Email</td>
      <td><?php echo $data["user_email"]; ?></td>
    </tr>
     <tr>
	   <td>DentistName</td>
             <td><?php echo $_GET["did"];?></td>
      
    </tr>
      <tr>
	   <td>Services</td>
       <td>
       <select name="sel_service" id="sel_service" required="required"> 
        <option value="">--sellect--</option>
        
			 <?php
		 $sel="select * from  tbl_service where dentist_id='".$_GET["upp"]."'";
		 $row=$con->query($sel);
		
		 while($results=$row->fetch_assoc())
		 {
			 ?>
             <option value="<?php echo $results["service_id"];?>"><?php echo $results["service_name"];?></option>
             <?php
		 }
?>		  	   
           </select>
           </td> 
    <?php
      $sel2="select * from tbl_schedule where dentist_id='".$_GET["did"]."'" ;
	  $row1=$con->query($sel2);
	  $data1=$row1->fetch_assoc();
	
	  
	
	  ?>       
           
          <tr>
	   <td>From Time</td>
      <td><?php echo $data1["from_time"]; ?></td>
    </tr>  
           
           
              <tr>
	   <td>To Time</td>
      <td><?php echo $data1["to_time"]; ?></td>
    </tr>  
              
       <tr>
      <td>Details</td>
      <td><textarea name="txt_desc" id="txt_desc" cols="45" rows="5"></textarea></td>
    </tr>
        
      <tr>
      <td> </td>
      </tr> 
      <tr>
        <td>Time</td>
        <td><label for="txttime"></label>
        <input type="time" name="txt_time" id="txttime" required="required"/>Please choose time within the boundary</td>
      </tr>
      <tr>
       <td height="49"> 
         <input type="submit" name="btn_update" id="btnupdate" value="Submit"/>
     </td>
      </tr>         
                  
                  
    </table>
	

    </form>
  <?php
  include("Foot.php")
  ?>
</body>
</div>
    </html>           	 
      