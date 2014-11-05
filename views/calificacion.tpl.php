<?php
require ('header.php');
require ('lib/db.php');
$idu=$_COOKIE['idu'];
$sql01="SELECT Nomb,App,Apm FROM usuarios WHERE ID=$idu;";
$consulta01=mysql_query($sql01) or die ("error en consulta: $sql01");
$nombre= mysql_result($consulta01,0,'Nomb')." ".mysql_result($consulta01,0,'App')." ".mysql_result($consulta01,0,'Apm');

$sql="SELECT usuarios.calficacion FROM examen.usuarios WHERE ID=$idu";
$consulta=mysql_query($sql) or die ("Error al consltar: $sql");
$cal=mysql_result($consulta,0,'calficacion');

echo "
<div class='jumbotron' align='center'>
    <p>Nombre: ".$nombre."</p>
    <p>Tu calificación es: ".$cal."</p>
    <p><a href='index.php?url=inicio'><input type='button' class='btn btn-default' value='Regresar'> </a></p>
</div>";

require ('footer.php');
?>