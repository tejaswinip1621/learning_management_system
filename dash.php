<!DOCTYPE html>
  <html>
  <head>
		<link rel="stylesheet" href="style3.css">
  </head>
	<body>
	<?php include 'dbconnect.php'; ?>
	<?php
	$NO = $_GET['no'];
$sql ="SELECT * FROM syllabus WHERE scode='$NO'";
// Execute insert query
$result = mysqli_query($conn, $sql);
while (($row = mysqli_fetch_assoc($result))) {
	 ?>
		<div class="h1">
		<div style="text-align:center">
			<h1>What are you looking for ? </h1>		
		</div>
		</div>
		<div class="colum">
			<div class="row">
			   <div class="card"><a href="pdf\<?php echo $row['filename'] ?>"> SYLLABUS</a></div>
			   <!--<a href="Submit.html">SEM 1</a>-->
			</div>
			<?php
}
$selectQuery = "SELECT * from notes WHERE scode='$NO'";
$squery = mysqli_query($conn, $selectQuery);

while (($result = mysqli_fetch_assoc($squery))) {
?>
			<div class="row">
			   <div class="card"><a href="pdf\<?php echo $result['filename'] ?>"> NOTES</a></div>
			</div>
			<?php
}
$selectQuery = "select * from qp WHERE scode='$NO'";
                            $squery = mysqli_query($conn, $selectQuery);

                            while (($result = mysqli_fetch_assoc($squery))) {
?>
			<div class="row">
			  <div class="card"><a href="pdf\<?php echo $result['filename'] ?>"> QUESTION PAPER</div>
			</div>
			<?php
							}
							?>
	</body>