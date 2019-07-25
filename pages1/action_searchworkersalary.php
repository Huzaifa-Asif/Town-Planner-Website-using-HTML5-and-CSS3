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
		font-size: xx-large;
	}
	
	.auto-style7 {
		color: #FFFFFF;
		font-weight: bold;
		background-color: #FF0000;
	}
	</style>
    </head>
    
    <?php 
    
       $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
              $sql = "SELECT * FROM worker_salary WHERE ws_name like '%".$_POST['ws_name']."%'";
        $result = $conn->query($sql);

                  
         echo "<table border='1'>
<tr>
<th>Salary ID</th>
<th>Worker Name</th>
<th>Salary Amount</th>
<th>Date</th>
</tr>";

 while($row = $result->fetch_assoc()){

                         echo "<tr>";
                echo "<td>" . $row['ws_Id'] . "</td>";
  echo "<td>" . $row['ws_name'] . "</td>";
  echo "<td>" . $row['ws_amount'] . "</td>";
  echo "<td>" . $row['ws_date'] . "</td>";
  echo "</tr>";  }            
           
            $conn->close();
    ?>
    
    <body style="background-image: url('3d4094302fcbe09bea847b8cf9c4c3bd.png'); background-attachment: fixed; height: 42px; width: 1058px;">
		<a class="auto-style5" href="search_eventworkersalary.php"><strong>
	 <span class="auto-style6">
	 <input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
        <span class="auto-style1"><strong><a href="./index1.php">Main Menu &#8592;</a></strong></span>    