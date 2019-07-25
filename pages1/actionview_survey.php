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
<a class="auto-style5" href="search_monthlysurvey.php"><strong><span class="auto-style6">
<input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
<br>
<div class="container">
    
  <div class="alert alert-success">Monthly Survey Records</div>
<br /> 
  
	     <table  class="table table-striped table-bordered">
                          
                            <thead>
						
                                <tr>
                                  
                                    <th>Survey Record ID</th>
                                    <th>Location</th>
                                    <th>Amount</th>
                                    <th>Date</th>
                                
                                 
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from survey where survey_date like '%".$_POST['survey_date']."%' ORDER BY survey_Id")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$id=$row['survey_Id'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['survey_Id'] ?></td>
                                         <td><?php echo $row['survey_location'] ?></td>
                                         <td><?php echo $row['survey_amount'] ?></td>
                                         <td><?php echo $row['survey_date'] ?></td>
                                          </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table> 
                        
                         <?php
                 
                            $result1 = mysql_query("SELECT sum(survey_amount) FROM survey where survey_date like '%".$_POST['survey_date']."%' ") or die(mysql_error());
                            while ($rows1 = mysql_fetch_array($result1)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-info"><i class="icon-credit-card icon-large"></i>&nbsp;Total Amount:&nbsp;<?php echo $rows1['sum(survey_amount)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
                            
						
						        <?php
                            $result = mysql_query("SELECT count(survey_Id) FROM survey where survey_date like '%".$_POST['survey_date']."%' ") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total Records:&nbsp;<?php echo $rows['count(survey_Id)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
							
								       
                                                         
                           
                   
</div>						
</body>
</html>
