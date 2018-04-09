<?php
require_once('admin/phpscripts/config.php');



if(isset($_GET['filter'])) {
	$table = "tbl_movies";
	$table2 = "tbl_genre";
	$tableLink = "tbl_mov_genre";
	$column = "movies_id";
	$column2 = "genre_id";
	$column3 = "genre_name";
	$filter = $_GET['filter']; //grabs the filter value
	$getMovies = filterType($table, $table2, $tableLink,$column, $column2, $column3, $filter);//new function from the read file

} else {
	$table = "tbl_movies";
	$getMovies = getAll($table);//calls your function with the variable
}



?>


<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600%7CRoboto:300,400" rel="stylesheet">
	<link rel="stylesheet" href="admin/css/main.css">
	<title>Welcome to the Movie Review App</title>
</head>
<body>
	<header class="home">
		<h2>Welcome to the Movie Review App</h2>
		<a href="admin/admin_login.php" class="navBut">Login</a>
	</header>
<div class="moviesCon">
<div class="indMovies">
<?php
	if(!is_string($getMovies)){//if this is not a string (which makes it an object)

		while($row = mysqli_fetch_array($getMovies)){
			echo "<li><img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<h3>{$row['movies_title']}</h3>
			<p>{$row['movies_year']}</p>
			<a href=\"details.php?id={$row['movies_id']}\">More Details...</a></li>";
		}
	} else {
		echo "<p class=\"error\">{$getMovies}<p>"; //the other slash makes it literal.. literally a quote
	}
?></div></div>
</body>
</html>
