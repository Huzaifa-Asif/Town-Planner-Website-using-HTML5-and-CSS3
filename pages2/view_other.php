<html>
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
<a class="auto-style5" href="index_view1.php"><strong><span class="auto-style6">
<input class="auto-style7" style="border-bottom-color: #FF0000; border-color: #FF0000; width: 133px; height: 41px; border-left-color: #FF0000; border-right-color: #FF0000; border-top-color: #FF0000;" type="button" value="&#8592;"></span></strong></a><br>
<br>
<div class="container">
    
  <div class="alert alert-success">Other Records</div>
<br /> 
  
	     <table  class="table table-striped table-bordered">
                          
                            <thead>
						
                                <tr>
                                  
                                    <th>Other ID</th>
                                    <th>Description</th>
                                    <th>Amount</th>
                                    <th> Date</th>
                                 
                                </tr>
                            </thead>
                            <tbody>
							<?php 
							$query=mysql_query("select * from others order by other_Id")or die(mysql_error());
							while($row=mysql_fetch_array($query)){
							$id=$row['other_Id'];
							?>
                              
										<tr>
									
                                         <td><?php echo $row['other_Id'] ?></td>
                                         <td><?php echo $row['other_desc'] ?></td>
                                         <td><?php echo $row['other_amount'] ?></td>
                                         <td><?php echo $row['other_date'] ?></td>
                                         
                                                                               
                                </tr>
                         
						          <?php } ?>
                            </tbody>
                        </table> 
						
						        <?php
                            $result = mysql_query("SELECT sum(other_amount) FROM others") or die(mysql_error());
                            while ($rows = mysql_fetch_array($result)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-success"><i class="icon-credit-card icon-large"></i>&nbsp;Total:&nbsp;<?php echo $rows['sum(other_amount)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
							
								        <?php
                 
                            $result1 = mysql_query("SELECT count(other_Id) FROM others") or die(mysql_error());
                            while ($rows1 = mysql_fetch_array($result1)) {
                                ?>

                                <div class="pull-right">
                                    <div class="span"><div class="alert alert-info"><i class="icon-credit-card icon-large"></i>&nbsp;Total number of Records:&nbsp;<?php echo $rows1['count(other_Id)']; ?></div></div>
                                </div>
                            <?php }
                            ?>
                   
</div>						
</body>
</html>
