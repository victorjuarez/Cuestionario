<?php
require('lib/db.php');
$idu=$_COOKIE['idu'];
$acceso=$_COOKIE['acceso'];
if ($idu=="" or $acceso=="")
{
    $msg="";
    Print"<meta http-equiv='refresh' content='0;
url=index.php?msg=$msg'>";
}


?>