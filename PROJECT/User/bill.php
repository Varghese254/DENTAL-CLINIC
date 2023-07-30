<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Invoice </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<?php

ob_start();
$no=rand();
$d=date('Y-m-d');
   include("../Assets/Connection/Connection.php");
	session_start();

		



?>
<?php
        $sel="select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product p on p.product_id=c.product_id where b.booking_id='".$_SESSION["bid"]."' and c.cart_status='1'";
		$i=0;
		$row=$con->query($sel);
		$data=$row->fetch_assoc();
		
		
		?>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootstrap snippets bootdeys">
<div class="row" id="pri">
  <div class="col-sm-12">
	  	<div class="panel panel-default invoice" id="invoice">
		  <div class="panel-body">
			<div class="invoice-ribbon"><div class="ribbon-inner">PAID</div></div>
		    <div class="row">

				<div class="col-sm-6 top-left">
					<i class="fa fa-rocket"></i>
				</div>
	
    			<div class="col-sm-3 top-center">
               
                </div>
				<div class="col-sm-6 top-right">
						<h3 class="marginright">INVOICE-<?php echo $no?></h3>
						<span class="marginright"><?php echo $d?></span>
			    </div>

			</div>
            
            
            
			<hr>
			<div class="row">

				<div class="col-xs-4 from">
					<p class="lead marginbottom">From : AAMI DENTALCLINIC</p>
                    <p>Kerala</p>
					<p>India</p>
					<p>7559012043</p>
					<p>aamidentalclinic@gmail.com</p>
				</div>

				<div class="col-xs-4 to">
					<p class="lead marginbottom">To : <?php echo $data["user_name"]?></p>
					<p> <?php echo $data["user_address"]?></p>
					<p>Phone: <?php echo $data["user_contact"]?></p>
					<p>Email:  <?php echo $data["user_email"]?></p>
					

			    </div>

			    <div class="col-xs-4 text-right payment-details">
					<p class="lead marginbottom payment-info">Payment details</p>
					<p>Date:<?php echo $d?></p>
					<p>Total Amount:<?php echo $data["booking_amount"];?> </p>
					<p>Account Name:<?php echo $data["user_name"]?></p>
			    </div>

			</div>

			<div class="row table-row">
				<table class="table table-striped">
			      <thead>
			        <tr>
			          <th class="text-center" style="width:5%">#</th>
			          <th style="width:50%">Item</th>
			          <th class="text-right" style="width:15%">Quantity</th>
			          <th class="text-right" style="width:15%">Unit Price</th>
			          <th class="text-right" style="width:15%">Total Price</th>
			        </tr>
			      </thead>
			      <tbody>
                  <?php
                  $sel="select * from tbl_booking b inner join tbl_user u on u.user_id=b.user_id inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product p on p.product_id=c.product_id where b.booking_id='".$_SESSION["bid"]."'";
		$i=0;
		$row=$con->query($sel);
		while($data=$row->fetch_assoc())
		{
			$i++;
		?>
			        <tr>
                    
			          <td class="text-center"><?php echo $i?></td>
			          <td><?php echo $data["product_name"]?></td>
			          <td class="text-right"><?php echo $data["cart_qty"]?></td>

                      <td class="text-right"><?php echo $data["product_price"];
                    ?></td>
			          <td class="text-right"><?php
                        $pr = $data["product_price"];
                        $qty = $data["cart_qty"];
                        $tot = (int)$pr * (int)$qty;
                        echo $tot;?></td>
			          
			        </tr>
		<?php
		}
		?>	       
			       </tbody>
			    </table>

			</div>

			<div class="row">
			<div class="col-xs-6 margintop">
				<p class="lead marginbottom">THANK YOU!</p>

				
			</div>
            <?php
                  $sel="select * from tbl_booking where booking_id='".$_SESSION["bid"]."'";
		$i=0;
		$row=$con->query($sel);
		$data=$row->fetch_assoc();
		
			$i++;
		?>
			<div class="col-xs-6 text-right pull-right invoice-total">
					  <p>Subtotal :<?php echo $data["booking_amount"];?> 
					  
					  </p>
			          
			          <p>Total : <?php echo $data["booking_amount"];?>  </p>
                      
			</div>
			</div>

		  </div>
		</div>
	</div>
</div>
</div>
<div align="center">
<button class="btn btn-success" id="invoice-print" onclick="printDiv('pri')"><i class="fa fa-print"></i> Print Invoice</button></div>
				
                </div>
 <br>            
<div align="center">
<button class="btn btn-success" id="print-paid" onclick="printPaid('pai')"><i class="fa fa-print"></i>View Paid List</button></div>
				
                </div>
<style type="text/css">
body{margin-top:20px;
background:#eee;
}

/*Invoice*/
.invoice .top-left {
    font-size:65px;
	color:#3ba0ff;
}

.invoice .top-right {
	text-align:right;
	padding-right:20px;
}

.invoice .table-row {
	margin-left:-15px;
	margin-right:-15px;
	margin-top:25px;
}

.invoice .payment-info {
	font-weight:500;
}

.invoice .table-row .table>thead {
	border-top:1px solid #ddd;
}

.invoice .table-row .table>thead>tr>th {
	border-bottom:none;
}

.invoice .table>tbody>tr>td {
	padding:8px 20px;
}

.invoice .invoice-total {
	margin-right:-10px;
	font-size:16px;
}

.invoice .last-row {
	border-bottom:1px solid #ddd;
}

.invoice-ribbon {
	width:85px;
	height:88px;
	overflow:hidden;
	position:absolute;
	top:-1px;
	right:14px;
}

.ribbon-inner {
	text-align:center;
	-webkit-transform:rotate(45deg);
	-moz-transform:rotate(45deg);
	-ms-transform:rotate(45deg);
	-o-transform:rotate(45deg);
	position:relative;
	padding:7px 0;
	left:-5px;
	top:11px;
	width:120px;
	background-color:#66c591;
	font-size:15px;
	color:#fff;
}

.ribbon-inner:before,.ribbon-inner:after {
	content:"";
	position:absolute;
}

.ribbon-inner:before {
	left:0;
}

.ribbon-inner:after {
	right:0;
}

@media(max-width:575px) {
	.invoice .top-left,.invoice .top-right,.invoice .payment-details {
		text-align:center;
	}

	.invoice .from,.invoice .to,.invoice .payment-details {
		float:none;
		width:100%;
		text-align:center;
		margin-bottom:25px;
	}

	.invoice p.lead,.invoice .from p.lead,.invoice .to p.lead,.invoice .payment-details p.lead {
		font-size:22px;
	}

	.invoice .btn {
		margin-top:10px;
	}
}

@media print {
	.invoice {
		width:900px;
		height:800px;
	}
}
</style>

<script >

function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}

function printPaid(divPName){
window.location="PayedList.php";	
}

</script>
</body>
</html>