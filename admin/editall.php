<?php
//mac error reporting
ini_set('display_errors',1);
error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	if(isset($_GET['id'])) {
	//get the movie
	$tbl = "tbl_movies";
	$col = "movies_id";
	$id = $_GET['id'];
	$findMovie = getSingle($tbl, $col, $id);

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600%7CRoboto:300,400" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
	<title>Movie Review App - Edit Movie</title>
</head>
<body class="moviesBack">
	<header>
    <p class="navBut">Hi <?php echo $_SESSION['user_name']; ?></p> <!-- This shows the username when you log in -->
		<a href="admin_index.php" class="navBut">Dashboard</a>
		<a href="phpscripts/caller.php?caller_id=logout" class="navBut">Sign Out</a>
  </header>
	<?php
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		echo single_edit($tbl, $col, $id);

		if(!is_string($findMovie)) {
			$row=mysqli_fetch_array($findMovie);
			echo "<div class=\"media\"><img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\"><video controls><source src=\"../videos/{$row['movies_trailer']}\"></video></div>";
		}else{
			echo "<p>{$findMovie}</p>";
		}
	?>
</body>
</html>
