<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','tms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}

// $pid=intval($_GET['pkgid']);
// $sql = "SELECT * from tbltourpackages where PackageId=:pid";
// $query = $dbh->prepare($sql);
// $query -> bindParam(':pid', $pid, PDO::PARAM_STR);
// $query->execute();
// $results=$query->fetchAll(PDO::FETCH_OBJ);
// echo htmlentities($result->PackagePrice );
// $cnt=1;

// if($query->rowCount() > 0){
// 	foreach($results as $result);
// }	
?>