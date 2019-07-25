<html>
    <title> AL-Rehman Planners </title>
    
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


    <body style="height: 0px; color: #FFFFFF; margin-top: 0px; background-image: url('background.jpg')">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['customer_Id']))
        {
            $sql = "INSERT INTO customer (customer_Id, customer_name, customer_cell, service_availed, customer_date)
            VALUES ('".$_POST['customer_Id']."', '".$_POST['customer_name']."', '".$_POST['customer_cell']."', '".$_POST['service_availed']."', '".$_POST['customer_date']."')";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        $conn->close();
    ?>
    
    <p>
    
    &nbsp;</p>
	<p>
    
    &nbsp;<a href="./add_eventcustomer.php" class="auto-style5"><strong><span class="auto-style6"><input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 145px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></span></strong></a></p>
	<p>
    
    &nbsp;</p>
	<p>
    
    <a href="./index1.php" class="auto-style5"><strong>
            
            
    <span class="auto-style6">
	<span class="auto-style4">Main Menu</span></span></strong><span class="auto-style1"><strong>.</strong></span></a>
	</p>
	<p>
    
    &nbsp;</p>
