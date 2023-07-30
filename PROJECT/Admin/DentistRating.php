<?php

include("../Assets/Connection/Connection.php");
include("SessionValidator.php");
include("Head.php");

?>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
<div id="tab" align="center">
<center><B><h2>Dentist Rating</h2></B></center>

<canvas id="myChart" style="width:100%;max-width:600px"></canvas>

<script>


var xValues = [
<?php 

  $sel="select * from tbl_dentist";
  $row=$con->query($sel);
  while($data=$row->fetch_assoc())
  {
        echo "'".$data["dentist_name"]."',";
      
  }

?>
];

var values =
<?php 
	 
  $sel="select dentist_name as name,count(tbl_appointmentrequest.dentist_id) as count from tbl_appointmentrequest inner join tbl_dentist on tbl_dentist.dentist_id = tbl_appointmentrequest.dentist_id group by tbl_appointmentrequest.dentist_id;";
	$res=$con->query($sel);
  $data = $res->fetch_all(MYSQLI_ASSOC);
  echo json_encode($data);

?>;
var total = <?php 
  $sel="select count(*) as total from tbl_appointmentrequest";
  $res=$con->query($sel);
  $data = $res->fetch_assoc();
  echo $data['total'];
?>


new Chart("myChart", {
  type: "bar",
  data: {
    labels: values.map((values) => {return values.name}),
    datasets: [{
      label: "Bookings in percentage",
      backgroundColor: values.map((val)=> "#00308F"),
      data: values.map((values)=>{ return (values.count/ total)*100 })
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
  },
  }
  );
</script>
<?php
include("Foot.php");
?>
</div>
</body>
</html>
