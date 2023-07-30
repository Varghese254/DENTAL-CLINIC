<?php

include("../Assets/Connection/Connection.php");

include("Head.php");

?>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
<div id="tab" align="center">
<center><B><h2>Service Report</h2></B></center>
<canvas id="myChart" style="width:100%;max-width:800px"></canvas>

<script>


var xValues = [
<?php 

  $sel="select * from tbl_service";
  $row=$con->query($sel);
  while($data=$row->fetch_assoc())
  {
        echo "'".$data["service_name"]."',";
      
  }

?>
];

var yValues = [
<?php 
  $sel="select * from tbl_service";
  $row=$con->query($sel);
  while($data=$row->fetch_assoc())
  {
	  
	 $sel1="select count(*) as id from tbl_appointmentrequest c inner join tbl_service s on s.service_id=c.service_id WHERE c.service_id='".$data["service_id"]."'";
	  
	  $row1=$con->query($sel1);
  while($data1=$row1->fetch_assoc())
	  {
			echo $data1["id"].",";
	  }
  }

?>
];

var total = <?php 

$tq = "select count(*) as total from tbl_appointmentrequest";
$row = $con->query($tq);
$total=$row->fetch_assoc()['total'];

echo $total;

?>;

var yPercent = yValues.map((values)=>{
  return (values / total)*100;
})
console.log(yPercent);

var barColors = [
"#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
 
];

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      label: "service booked in percentage",
      backgroundColor: yPercent.map((values)=>{return "#00308F"}),
      data: yPercent
    }]
  },
  options: {
    scales: {
        yAxes: [{
            ticks: {
                beginAtZero: true,
                max: 100
            }
        }]
    }
  }
});
</script>
<?php
include("Foot.php");
?>
</div>
</body>
</html>
