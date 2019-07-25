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
<a class="auto-style5" href="search_monthlymap.php"><strong><span class="auto-style6">
<input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
<br>
<div class="container">
    
  <div class="alert alert-success">Monthly Map Records</div>
<br /> 
  
	     <table  class="table table-striped table-bordered">
                          
                            <thead>
						
                                <tr>
                                  
                                    <th>Map Record ID</th>
                                    <th>Total Payment</th>
                                    <th>Advance Payment</th>
                                    <th>Due Payment</th>
                                    <th>Remarks</th>
                                    <th>Description</th>
                                    <th> Date</th>
                                 
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from map_record where m_date like '%".$_POST['m_date']."%' ORDER BY map_Id")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$id=$row['map_Id'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['map_Id'] ?></td>
                                         <td><?php echo $row['m_totalpayment'] ?></td>
                                         <td><?php echo $row['m_advancepayment'] ?></td>
                                         <td><?php echo $row['m_duepayment'] ?></td>
                                         <td><?php echo $row['remarks'] ?></td>
                                         <td><?php echo $row['description'] ?></td>
                                         <td><?php echo $row['m_date'] ?></td>
                                      
                                </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table> 
                        
                         <?php
                 
                            $result1 = mysql_query("SELECT sum(m_duepayment) FROM map_record where m_date like '%".$_POST['m_date']."%' ") or die(mysql_error());
                            while ($rows1 = mysql_fetch_array($result1)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-info"><i class="icon-credit-card icon-large"></i>&nbsp;Total Due Payment:&nbsp;<?php echo $rows1['sum(m_duepayment)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
                            
						
						        <?php
                            $result = mysql_query("SELECT sum(m_totalpayment) FROM map_record where m_date like '%".$_POST['m_date']."%' ") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total Amount:&nbsp;<?php echo $rows['sum(m_totalpayment)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
							
								       
                              <?php
                            $result = mysql_query("SELECT sum(m_advancepayment) FROM map_record where m_date like '%".$_POST['m_date']."%' ") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total Advance Payment:&nbsp;<?php echo $rows['sum(m_advancepayment)']; ?></div></div>
                                </div>
                            <?php }
                           ?>
                            
                           
                   
</div>						
</body>
</html>
