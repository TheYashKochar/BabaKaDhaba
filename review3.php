<link href="style\base.css" type="text/css" rel="stylesheet" />

<?php include("header.php"); ?>
<?php
echo "<br>";
echo "<br>";
echo "<br>";
$int = 0.5; 
if (filter_var($int, FILTER_VALIDATE_INT) === 0 || !filter_var($int, FILTER_VALIDATE_INT) === false) 
{
  echo("$int : Valid Integer");
} 
else 
{
  echo("$int : Not Valid Integer");
}
echo "<br>";
$int = 5;
echo ($int); 
if (filter_var($int, FILTER_VALIDATE_INT) === 0 || !filter_var($int, FILTER_VALIDATE_INT) === false) 
{
  echo(" : Valid Integer");
} 
else 
{
  echo(" : Not Valid Integer");
}

echo "<br><br>";

$email = "yash@gmail.com";
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
if (!filter_var($email, FILTER_VALIDATE_EMAIL) === false) 
{
  echo("$email is a valid email");
} 
else 
{
  echo("$email is not a valid email");
}
echo "<br>";
$email = "yash@.com";
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
if (!filter_var($email, FILTER_VALIDATE_EMAIL) === false) 
{
  echo("$email is a valid email");
} 
else 
{
  echo("$email is not a valid email");
}

echo "<br><br>";

$url = "https:www.gmail.com";
$url = filter_var($url, FILTER_SANITIZE_URL);
if (!filter_var($url, FILTER_VALIDATE_URL) === false) 
{
  echo("$url is a valid URL");
} 
else 
{
  echo("$url is not a valid URL");
}
echo"<br>";
$url = "https://www.gmail.com";
$url = filter_var($url, FILTER_SANITIZE_URL);
if (!filter_var($url, FILTER_VALIDATE_URL) === false) 
{
  echo("$url is a valid URL");
} 
else 
{
  echo("$url is not a valid URL");
}

echo "<br><br>";

echo "File handling : reading file.........<br><br>";
$x = fopen("feedback.txt", "r") or die("Unable to open file!");


while(!feof($x)) 
{
  echo fgets($x) . "<br>";
}
fclose($x);
?>
<div id="content"></div>

<?php include("footer.php"); ?>