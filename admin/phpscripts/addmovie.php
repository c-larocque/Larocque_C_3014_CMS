<?php

  function addMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre) {
    include('connect.php');

    if($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg"){ // || = OR
      $targetpath = "../images/{$cover['name']}"; //original image

      //move img from temp directory and to final directory
      if(move_uploaded_file($cover['tmp_name'], $targetpath)){
        //echo "File transfer complete";
        $th_copy = "../images/th_{$cover['name']}"; // thumbnail image
        //copy the image file so you can resize it - $targetpath is the original image
        if(!copy($targetpath, $th_copy)){
          $message = "Whoops, that didn't work.";
          return $message;
        }

        //Add to database
        $qstring = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}', '{$title}', '{$year}', '{$run}', '{$story}', '{$trailer}', '{$release}')";
        //echo $qstring;
        $result = mysqli_query($link, $qstring);
        if($result){
          $qstring2 = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
          $result2 = mysqli_query($link, $qstring2);

          $row = mysqli_fetch_array($result2);
          $lastID = $row['movies_id'];
          //echo $lastID;

          $qstring3 = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
          $result3 = mysqli_query($link, $qstring3);
        }
        redirect_to("admin_index.php");

      }

      //$size = getimagesize($targetpath);
      //echo $size[3]; // 3 = width and height, 1 = height

    }else{
      echo "No GIFs.";
    }

    mysqli_close($link);

  }

  function deleteMovie($id){
	  include('connect.php');
	  $delstring = "DELETE FROM tbl_movies WHERE movies_id = {$id}";
	  $delquery = mysqli_query($link, $delstring);
	  if($delquery){
	    redirect_to("../admin_addmovie.php");
	  }else{
	    $message = "This movie has been deleted.";
	    return $message;
	  }
	mysqli_close($link);
	}

?>
