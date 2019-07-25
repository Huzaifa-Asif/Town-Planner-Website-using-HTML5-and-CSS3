<?php
$servername = 'localhost';

$username = 'huzaifa8580';

$password = 'huzaifa';

$dbname = 'rehman1';



$mysqli = new mysqli($servername, $username, $password, $dbname);
if($mysqli->connect_error){
    die("Connection failed: ". $mysqli->connect_error);
}

$query = "SELECT * FROM `linechart`   ";
$qresult= $mysqli->query($query);
$results = array();

while ($res = $qresult->fetch_assoc()) {
    $results[] = $res;
}

$line_chart_data = array();
foreach ($results as $result) {
    $line_chart_data[] = array($result['date'],(double)$result['amount']);
    
}

$line_chart_data = json_encode($line_chart_data);

mysqli_free_result($qresult);

mysqli_close($mysqli);

?>
<head>
<script src="jquery.min.js"></script>
  <script type="text/javascript" src="jsapi"></script>

      <script type="text/javascript">
     
     
     
        google.load('visualization', '1',{'packages':['corechart'] } );
       
       
       
       
        google.setOnLoadCallback(drawAnnotations);

        function drawAnnotations(){

            var data = new google.visualization.DataTable();
            data.addColumn('string', 'date');
            data.addColumn('number', 'amount');
           
            data.addRows(<?php echo $line_chart_data?>);
            

            var options = {
                width: 1000,
                height: 600,
                legend: { position: 'top', maxLines: 3},
                line : {groupWidth: '75%'},
                
                isStacked: true

            };

            var chart = new google.visualization.LineChart(document.getElementById('line_chart_div'));
            chart.draw(data, options);
        }
    
      
        </script>

        </head>

        <body>
        <div id='line_chart_div'> </div>

        </body>﻿﻿