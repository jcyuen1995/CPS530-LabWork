<!DOCTYPE html>
<html>
<head>
		<meta charset = "UTF-8"> 
			<title>
				Lab 5
			</title>
			<style>
				table, th, td {
    			border: 1px solid black;
			}
			</style>
			<link rel="stylesheet" type="text/css"
			href="https://j25yuen.herokuapp.com/stylesheet.css" />
	</head>
<div class="center">
	<h1 class="signature">
			CPS530
		</h1>
		
		<p class ="myclass">
			Student Name: Jonathan Yuen
			<br>
			Student ID: 500582520
			<br>
		</p>
</div>

<?php 

//multiplication table 
echo "<table class = \"center\" border =\"4\" style='border-collapse: collapse'>";
echo "<tr>";
for ($i; $i<=$_POST['matrix_size']; $i++) {
echo "<th> $i </th>";
}
echo "</tr>";
for ($i=1; $i<=$_POST['matrix_size']; $i++) {
	
	echo "<tr>\n <th> $i </th>";
	 for ($j = 1; $j <= $_POST['matrix_size']; $j++){
				
				$x = $i * $j;
                echo "<td>$i x $j = $x</td>";
			}
			echo "</tr>";

}
echo "</table>";

//cookie counter
echo "<br>";
if (!isset($_COOKIE['counter'])){

	echo "<div class = \"center\"> <u><b>This is the Cookie Counter</b></u> <p> This is your first time viewing a multiplcation table!</p> </div>";
	$counter = 1;
	setcookie('counter', $counter);
}
else {
	$counter = ++$_COOKIE['counter'];
	setcookie("counter", $counter);
	echo "<div class = \"center\"> <u><b>This is the Cookie Counter</b></u> <p> You have viewed $counter multiplication tables!</p> </div>";
}

?>


</html>
