   <title>AL-Rehman Planners</title>
   <head>
    <style type="text/css">
.auto-style1 {
	color: #FF0000;
	font-size: x-large;
	
}
	.auto-style5 {
		text-decoration: none;
	}
	.auto-style6 {
		border-bottom-color: #0000FF;
		border-color: #0000FF;
		font-size: xx-large;
		border-left-color: #0000FF;
		border-right-color: #0000FF;
		border-top-color: #0000FF;
	}
	
	.auto-style7 {
		color: #FFFFFF;
		font-weight: bold;
		background-color: #0000FF;
	}
	</style>
    </head>
    
    <?php 
       $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
        
        $sql = "SELECT worker_Id, worker_name, worker_address, worker_cellNo, join_date FROM worker";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            
         echo "<table border='1'>
<tr>
<th>Worker ID</th>
<th>Worker Name</th>
<th>Worker Address</th>
<th>Worker Mobile Number</th>
<th>Worker Join Date</th>
</tr>";
            while($row = $result->fetch_assoc()) {
             echo "<tr>";
                echo "<td>" . $row['worker_Id'] . "</td>";
  echo "<td>" . $row['worker_name'] . "</td>";
  echo "<td>" . $row['worker_address'] . "</td>";
  echo "<td>" . $row['worker_cellNo'] . "</td>";
  echo "<td>" . $row['join_date'] . "</td>";

  echo "</tr>";              }
        } else {
            echo "0 results";
        }
        $conn->close();
    ?>
    
    <body style="background-image: url('3d4094302fcbe09bea847b8cf9c4c3bd.png'); background-attachment: fixed; height: 42px; width: 1058px;">
	 <a class="auto-style5" href="index_view.php"><strong><span class="auto-style6">
	 <input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 127px; height: 35px; background-color: #0000FF;" type="button" value="&#8592;"></span></strong></a><br>
		<span class="auto-style1"><strong><a href="./index1.php">Main Menu&#8592;</a></strong></span>    