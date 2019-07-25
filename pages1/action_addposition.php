<html>
    <title>AL-Rehman Planners</title>
    
    <head>
    <style type="text/css">
.auto-style1 {
	color: #FF0000;
	font-size: xx-large;
}
	input[type=submit] {
	width: 250px;
	background-color: #FF0000;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: blink;
}

	.auto-style4 {
		color: #FF0000;
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


    <body style="border-bottom-color: #FF0000; border-color: #FF0000; color: #FFFFFF; background-image: url('background.jpg'); height: 204px; ">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['plot_no']))
        {
            $sql = "INSERT INTO position_record ( plot_no, p_size, p_phase, p_payment, p_date)
            VALUES ( '".$_POST['plot_no']."', '".$_POST['p_size']."', '".$_POST['p_phase']."', '".$_POST['p_payment']."','".$_POST['p_date']."')";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        $conn->close();
    ?>
    
    <strong>
            
            
    <span class="auto-style6">
	<form method="post">
	 <a href="./add_eventposition.php" class="auto-style5"> 
	<input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 145px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></form>
	<a href="./index1.php" class="auto-style5"><span class="auto-style4">Main Menu</span></a></span></strong><a href="./index.php" class="auto-style5"><span class="auto-style1"><strong>.</strong></span></a>    