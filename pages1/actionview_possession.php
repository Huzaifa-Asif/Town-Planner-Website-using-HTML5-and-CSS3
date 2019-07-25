<title>AL-Rehman Planner</title>
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
		background-color: #3E6684;
	}
	</style>
</head>

<?php 
include('header.php');
?>

<body>
&nbsp;
<a class="auto-style5" href="search_monthlypossession.php"><strong><span class="auto-style6">
<input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
<br>
<div class="container">
    
  <div class="alert alert-success">Monthly Possession Records</div>
<br /> 
  
	     <table  class="table table-striped table-bordered">
                          
                            <thead>
						
                                <tr>
                                  
                                    <th>Possession Record ID</th>
                                    <th>Plot No</th>                                    
                                    <th>Plot Size</th>
                                    <th>Plot Phase</th>
                                    <th>Amount</th>
                                    <th>Date</th>
                                
                                 
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from position_record where p_date like '%".$_POST['p_date']."%' ORDER BY position_Id")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$id=$row['position_ID'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['position_ID'] ?></td>
                                         <td><?php echo $row['plot_no'] ?></td>
                                         <td><?php echo $row['p_size'] ?></td>
                                         <td><?php echo $row['p_phase'] ?></td>
                                         <td><?php echo $row['p_payment'] ?></td>
                                         <td><?php echo $row['p_date'] ?></td>
                                          </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table> 
                        
                         <?php
                 
                            $result1 = mysql_query("SELECT sum(p_payment) FROM position_record where p_date like '%".$_POST['p_date']."%' ") or die(mysql_error());
                            while ($rows1 = mysql_fetch_array($result1)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-info"><i class="icon-credit-card icon-large"></i>&nbsp;Total Amount:&nbsp;<?php echo $rows1['sum(p_payment)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
                            
						
						        <?php
                            $result = mysql_query("SELECT count(position_ID) FROM position_record where p_date like '%".$_POST['p_date']."%' ") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total Records:&nbsp;<?php echo $rows['count(position_ID)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
							
								       
                                                         
                           
                   
</div>						
</body>
</html>
