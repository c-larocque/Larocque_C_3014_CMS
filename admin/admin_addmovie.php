<?php
//mac error reporting
ini_set('display_errors',1);
error_reporting(E_ALL);

require_once('phpscripts/config.php');

$tbl = "tbl_genre";
$genQuery = getAll($tbl);

if(isset($_POST['submit'])){
	$cover = $_FILES['cover'];
	$title = $_POST['title'];
	$year = $_POST['year'];
	$run = $_POST['runtime'];
	$story = $_POST['storyline'];
	$trailer = $_POST['trailer'];
	$release = $_POST['release'];
	$genre = $_POST['genList'];
	// echo $cover['type'];
	// echo $cover['name'];
	// echo $cover['size'];
	// echo $cover['tmp_name'];
	$result = addMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre);
	$message = $result;
	}

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter =  $_GET['filter'];
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600%7CRoboto:300,400" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">
	<title>Movie Review App - Add/Edit Movies</title>
</head>
<body class="moviesBack">
	<header>
    <p class="navBut">Hi <?php echo $_SESSION['user_name']; ?></p> <!-- This shows the username when you log in -->
		<a href="admin_index.php" class="navBut">Dashboard</a>
		<a href="phpscripts/caller.php?caller_id=logout" class="navBut">Sign Out</a>
  </header>
	<?php if(!empty($message)){ echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data" class="movForm">
		<h2>Add a New Movie</h2>

		<label>Cover Image:</label>
		<input type="file" name="cover" value="">
		<br>
		<label>Movie Title:</label>
		<input type="text" name="title" value="">
		<br>
		<label>Movie Year:</label>
		<input type="text" name="year" value="">
		<br>
		<label>Movie Runtime:</label>
		<input type="text" name="runtime" value="">
		<br>
		<label>Movie Storyline:</label>
		<input type="text" name="storyline" value="">
		<br>
		<label>Movie Trailer:</label>
		<input type="text" name="trailer" value="">
		<br>
		<label>Movie Release:</label>
		<input type="text" name="release" value="">
		<br>
		<label>Movie Genre:</label>
		<select name="genList">
			<option>Please select a movie genre...</option>
			<?php
				while($row = mysqli_fetch_array($genQuery)){
					echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
				}
			?>
		</select>
		<br>
		<input type="submit" name="submit" value="Add Movie" class="addMovBut">
	</form>

	<div class="moviesCon">
		<h2>Edit Current Movies</h2>
		<ul class="indMovies">
		<?php
			if(!is_string($getMovies)){
				while($row = mysqli_fetch_array($getMovies)){
					echo "
					<li>
					<img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
					<div>
					<h3>{$row['movies_title']}</h3>
					<a href=\"phpscripts/caller.php?caller_id=deleteMovie&id={$row['movies_id']}\">Delete</a>
					<a href=\"editall.php?id={$row['movies_id']}\">Edit</a>
					</div>
					</li>
					";
				}
			}else{
				echo "<p class=\"error\">{$getMovies}</p>";
			}
		?>
		</ul>
	</div>

</body>
</html>
