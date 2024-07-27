<?php
require_once 'dbconnect.php';

$selectQuery = "select distinct sem  from subjects order by sem ASC";
$squery = mysqli_query($conn, $selectQuery);
 ?>
<!DOCTYPE html>
  <html>
  <head>
		<link rel="stylesheet" href="style2.css">
  </head>

	<body>
	
		<div class="h1">
		<div style="text-align:center">
			<h1>WELCOME!!</h1>
			<h1>Which sem are you in ?? </h1>
		</div>
		</div>
		<div class="row">
			<?php
			 while (($result = mysqli_fetch_assoc($squery))) {
			 ?>
			<div class="column">
			   <div class="card"><a href="SEM 1.php?no=<?php echo $result['sem']; ?>" >SEM <?php echo $result['sem']; ?></a></div>
			       
			</div>
			<?php } ?>
			<!-- <div class="column">
			   <div class="card"><a href="SEM 2.php" >SEM 2</a></div>
			</div>
			<div class="column">
			  <div class="card"><a href="SEM 3.php" >SEM 3</a></div>
			</div>
			<div class="column">
			  <div class="card"><a href="SEM 4.php" >SEM 4</a></div>
			</div>
			<div class="column">
				<div class="card"><a href="SEM 5.php" >SEM 5</a></div>
			 </div>
			 <div class="column">
				<div class="card"><a href="SEM 6.php" >SEM 6</a></div>
			 </div>
			 <div class="column">
			   <div class="card"><a href="SEM 7.php" >SEM 7</a></div>
			 </div>
			 <div class="column">
			   <div class="card"><a href="SEM 8.php" >SEM 8</a></div>
			 </div>
			</div> -->
	<!-- create account div -->
	<!--<div class="Welcome">
	<table cellspacing="2" align="left" cellpadding="8" border="0">
	<td align="right">WELCOME</td>
   
</table>
	</div>-->
	</body>