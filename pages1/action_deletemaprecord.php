<html>
    <title> AL-Rehman Planners </title>
    
    <head>
    <style type="text/css">
.auto-style2 {
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
	.auto-style8 {
		font-size: xx-large;
		color: #FF0000;
	}
	a:active {
		color: #FFFFFF;
	}
	a:hover {
		color: #FFFFFF;
	}
	</style>
    </head>


    <body style="color: #FFFFFF; height: 203px; margin-top: 37px; background-image: url('background.jpg')">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['map_Id']))
        {
           $sql = "DELETE FROM map_record WHERE map_Id=".$_POST['map_Id']."";

            if ($conn->query($sql) === TRUE) {
                echo "Record deleted successfully";
            } else {
                echo "Error deleting record: " . $conn->error;
            }
        }
        $conn->close();
    ?>
    
    <br><br><br><strong><span class="auto-style2">&nbsp;<a href="./delete_eventmaprecord.php" class="auto-style5"><span class="auto-style6"><input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></span></a></span></strong><br>
	<br>&nbsp;<a href="./index1.php" class="auto-style5"><span class="auto-style8"><strong>Main Menu</strong></span></a>