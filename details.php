<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);
	require_once('admin/phpscripts/config.php');
	// echo $_GET['id'];
if(isset($_GET['id'])) {
	$table = "tbl_movies";
	$column = "movies_id";
	$id = $_GET['id'];
	$getMovie = getSingle($table, $column, $id);
	// echo $getMovie;

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
	<div id="detailsCon">
<?php
 if(!is_string($getMovie)){
 	$row = mysqli_fetch_array($getMovie);
 	echo "<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
 		<div class=\"movDetails\"><h2>{$row['movies_title']}</h2>
 		<p>{$row['movies_year']}</p>
 		<p>{$row['movies_storyline']}</p>
 		<a href=\"index.php\">Back to All Movies</a></div>";

 }else {
 	echo "<p>{$getMovie}</p>";
 }
?>
</div>
</body>
</html>
