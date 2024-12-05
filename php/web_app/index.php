<?php
/* 
this server side generated html

*/

$title = "PHP Syntax";
$message = "We Run We Learn" . " " . $title;
$description = "you can run php with php -S localhost:8000";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <h1><?php echo $title; ?></h1>
  <p><?php echo $message; ?></p>
  <p><?php echo $description; ?></p>
  <a href="about.php">about</a>
  <a href="crypto.php">crypto</a>
</body>

</html>