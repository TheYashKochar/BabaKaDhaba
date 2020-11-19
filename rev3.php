<?php
require "header.php";

echo "<br>";
echo "<br>";
echo "<br>";
echo "<br>";
$int = 0.5;

if (filter_var($int, FILTER_VALIDATE_INT) === 0 || !filter_var($int, FILTER_VALIDATE_INT) === false) {
  echo("Valid Integer");
} else {
  echo("Not Valid Integer");
}

echo "<br>";

$email = "yash@gmail.com";
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
if (!filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
  echo("$email is a valid email");
} else {
  echo("$email is not a valid email");
}

echo "<br>";

$url = "https:www.gmail.com";
$url = filter_var($url, FILTER_SANITIZE_URL);
if (!filter_var($url, FILTER_VALIDATE_URL) === false) {
  echo("$url is a valid URL");
} else {
  echo("$url is not a valid URL");
}

echo "<br>";
echo "<br>";

$myfile = fopen("feedback.txt", "r") or die("Unable to open file!");
echo fread($myfile,filesize("feedback.txt"));
fclose($myfile);

require "footer.php";
?>
