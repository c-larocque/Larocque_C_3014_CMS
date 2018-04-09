<?php
//mac error reporting
ini_set('display_errors',1);
error_reporting(E_ALL);

	require_once('phpscripts/config.php');
	$result = multiReturns(17);
	list($add, $multiply) = multiReturns(24567);

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>CMS Portal Login</title>
</head>
<body>
	<?php
		echo "Result 1: {$result[0]}<br>";
		echo "Result 2: {$result[1]}<br><br>";
		echo "Result 1 from list: {$add}<br>";
		echo "Result 2 from list: {$multiply}<br><br>";
	?>
</body>
</html>
