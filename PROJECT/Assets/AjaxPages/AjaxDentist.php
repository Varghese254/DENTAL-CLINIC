 
 <?php

include("../Connection/Connection.php");
?>

 
 <option value="">---Select---</option> 
        <?php	
		$sel = "select * from tbl_service where dentist_id='".$_GET["upp"]."'";
		$row =$con->query($sel);
		while($data=$row->fetch_assoc())
		{
			?>
       <option value="<?php echo $data["service_id"]; ?>"><?php echo $data["service_name"]; ?></option>
            <?php
		}		
		?>