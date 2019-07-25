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
<a class="auto-style5" href="search_salary.php"><strong><span class="auto-style6">
<input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
<br>
<div class="container">
    
  <div class="alert alert-success">Worker Salary Records</div>
<br /> 
  
	     <table  class="table table-striped table-bordered">
                          
                            <thead>
						
                                <tr>
                                  
                                    <th>Salary ID</th>
                                    <th>Worker Name</th>
                                    <th>Amount</th>
                                    <th> Date</th>
                                
                                 
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from worker_salary where ws_name like '%".$_POST['ws_name']."%' ORDER BY ws_Id")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$id=$row['ws_Id'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['ws_Id'] ?></td>
                                         <td><?php echo $row['ws_name'] ?></td>
                                         <td><?php echo $row['ws_amount'] ?></td>
                                         <td><?php echo $row['ws_date'] ?></td>
                                          </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table> 
                        
                                                    
						
						        <?php
                            $result = mysql_query("SELECT count(ws_name) FROM worker_salary where ws_name like '%".$_POST['ws_name']."%' ") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total Records:&nbsp;<?php echo $rows['count(ws_name)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
							
								       
                                                         
                           
                   
</div>						
</body>
</html>
