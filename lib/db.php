<?php
$db_name="examen";
$db_sever="localhost";
$db_user="root";
$db_pass="";
$db_connection=mysql_connect($db_sever,$db_user,$db_pass) or die ("Error en la conección a la Base de datos");
mysql_select_db($db_name,$db_connection) or die ("Error al selecionar la BD");
mysql_query("SET NAMES utf8");
?>
