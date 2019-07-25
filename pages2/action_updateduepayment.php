<html>
    <title> AL-Rehman Planners </title>
    
    <head>
    <style type="text/css">
.auto-style1 {
	font-size: xx-large;
	color: #FF0000;
}
.auto-style2 {
	color: #FF0000;
}
.auto-style3 {
	text-decoration: none;
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


    <body style="color: #FFFFFF; width: 950px; height: 206px; margin-top: 45px; background-image: url('background.jpg')">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['map_Id']))
        {
           
            $sql = "UPDATE map_record SET m_duepayment ='".$_POST['m_duepayment']."' WHERE map_Id=".$_POST['map_Id']."";

            

            if ($conn->query($sql) === TRUE) {
                echo "Record updated successfully";
            } else {
                echo "Error updating record: " . $conn->error;
            }
        }
        $conn->close();
    ?>
    
    <br><br>&nbsp;<strong><span class="auto-style2"><a class="auto-style5" href="update_duepayment.php"><span class="auto-style6"><input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></a></span></strong><br><br>
	<span class="auto-style1"><strong>
	<a href="./index1.php" class="auto-style3"><span class="auto-style2">Main 
	Menu</span></a>.</strong></span>