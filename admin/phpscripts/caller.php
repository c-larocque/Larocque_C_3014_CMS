<?php
//do NOT put a link to caller.php in the config file
//this file is only called from href NOT eevry time config it called
require_once("config.php");

if(isset($_GET['caller_id'])) {
	$dir = $_GET['caller_id'];
	if($dir == 'logout') {
		logged_out();

	} else if($dir == 'delete'){
			$id = $_GET['id'];
			deleteUser($id);

	} else if($dir == "deleteMovie") {
			$id = $_GET['id'];
			deleteMovie($id);

	} else {
		echo "Caller ID was passed incorrectly.";
	}
}





?>
