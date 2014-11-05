<?php
require ('header.php');
require ('lib/db.php');
$idu=$_COOKIE['idu'];
$sql01="SELECT Nomb,App,Apm FROM usuarios WHERE ID=$idu;";
$consulta=mysql_query($sql01) or die ("error en consulta: $sql01");
$nombre= mysql_result($consulta,0,'Nomb')." ".mysql_result($consulta,0,'App')." ".mysql_result($consulta,0,'Apm');

echo "
<div class='jumbotron' align='center'>
    <h1 >Bienvenido</h1>
    <p>".$nombre."</p>

</div>
";

require ('footer.php');
?>