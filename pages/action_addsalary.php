<html>
    <title>AL-Rehman Planners </title>
    
    <head>
    <style type="text/css">
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
	.auto-style8 {
	font-size: xx-large;
	color: #FF0000;
}
	.auto-style9 {
	margin-top: 0px;
}
	</style>
    </head>


    <body style="height: 0px; color: #FFFFFF; margin-top: 60; background-image: url('background.jpg')">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['ws_name']))
        {
            $sql = "INSERT INTO worker_salary ( ws_name, ws_amount, ws_date)
            VALUES ( '".$_POST['ws_name']."', '".$_POST['ws_amount']."', '".$_POST['ws_date']."')";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        $conn->close();
    ?>
    
	<p class="auto-style9">
    
    &nbsp;&nbsp;
    
    &nbsp;<a href="./add_eventsalary.php" class="auto-style5"><strong><span class="auto-style6"><input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 145px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></span></strong></a></p>
	<p>
    
    &nbsp;&nbsp;
    
    <a href="./index1.php" class="auto-style5"><strong>
            
            
    <span class="auto-style8">
	Main Menu</span></strong><span class="auto-style8"><strong>.</strong></span></a></p>
	<p>
    
    &nbsp;</p>
