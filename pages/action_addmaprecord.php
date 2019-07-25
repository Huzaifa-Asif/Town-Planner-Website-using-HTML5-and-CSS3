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


    <body style="background-image: url('background.jpg'); color: #FFFFFF;">
        

<?php 
        $conn = mysqli_connect('localhost', 'huzaifa8580', 'huzaifa', 'rehman1');
        
        if ($conn->connect_error) 
        {
            die("Connection failed: " . $conn->connect_error);
        } 
        
         
        if(isset($_POST['m_totalpayment']))
        {
            $sql = "INSERT INTO map_record (  m_totalpayment, m_advancepayment, m_duepayment, remarks, description, m_date )
            VALUES ( '".$_POST['m_totalpayment']."', '".$_POST['m_advancepayment']."', '".$_POST['m_duepayment']."', '".$_POST['remarks']."', '".$_POST['description']."', '".$_POST['m_date']."')";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
        $conn->close();
    ?>
    
    <p style="height: 57px">
    
	 <a href="./add_eventmaprecord.php" class="auto-style5"> 
    
    <strong>
            
            
    <span class="auto-style6">
	<input type="button" value="&#8592;" class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 145px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;"></span></strong></p>
	<p style="height: 224px"><a href="./index1.php" class="auto-style5"><strong>
            
            
    <span class="auto-style6">
	<span class="auto-style4">Main Menu</span></span></strong><span class="auto-style1"><strong>.</strong></span></a>
	</p>
	<p style="height: 224px">&nbsp;</p>

