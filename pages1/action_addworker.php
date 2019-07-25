<html>
    <title>AL-Rehman Planners</title>
    
    <head>
    <style type="text/css">
	.auto-style5 {
		text-decoration: none;
	}
	.auto-style6 {
		font-size: xx-large;
	}
	
	.auto-style4 {
		color: #FF0000;
	}
	.auto-style1 {
	color: #FF0000;
	font-size: xx-large;
}
	.auto-style7 {
		color: #FFFFFF;
		font-weight: bold;
		background-color: #FF0000;
	}
	</style>
    </head>


    <body style="color: #FFFFFF; background-image: url('background.jpg')">
        
<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['worker_name']))
        {
            $sql = "INSERT INTO worker ( worker_name, worker_address, worker_cellNo , join_date)
            VALUES ( '".$_POST['worker_name']."', '".$_POST['worker_address']."', '".$_POST['worker_cellNo']."', '".$_POST['join_date']."')";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        $conn->close();
    ?>
    
	<p><a href="./add_eventworker.php" class="auto-style5"><strong><span class="auto-style6"><input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 145px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></span></strong></a></p>
	<p><a href="./index1.php" class="auto-style5"><strong>
            
            
    <span class="auto-style6">
	<span class="auto-style4">Main Menu</span></span></strong><span class="auto-style1"><strong>.</strong></span></a></p>
&nbsp;