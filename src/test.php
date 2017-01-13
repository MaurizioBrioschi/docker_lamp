<?php
if (!$link = mysql_connect('lampdev_db_1', 'root', 'root')) {
  echo 'Could not connect to mysql';
  exit;
}

if (!mysql_select_db('ridesoft', $link)) {
  echo 'Could not select database';
  exit;
}

$sql    = 'SELECT * FROM mauri';
$result = mysql_query($sql, $link);

if (!$result) {
  echo "DB Error, could not query the database\n";
  echo 'MySQL Error: ' . mysql_error();
  exit;
}
while ($row = mysql_fetch_assoc($result)) {
  echo "\n".$row['field'];
}

mysql_free_result($result);
 ?>
