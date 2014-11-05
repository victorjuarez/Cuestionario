<?php
require ('header.php');
require ('lib/db.php');
require ("controllers/preguntas.php");
$preguntas=new Preguntas();
if(isset($_REQUEST['submit'])){
$action=$_REQUEST['submit'];
}
else{
    $action="1";
}
switch($action) {
    case "1":
        $preguntas->cuestionario();
        break;
    case "Calificar":
        $x = $_REQUEST['x'];
        $z = 0;
        for ($y = 0; $y < $x; $y++) {
            $z = $z + $preguntas->evaluar($_REQUEST["r$y"], $_REQUEST["p$y"]);
        }
        echo "<div class=\"alert alert-success\" role=alert>";
        echo "<br> Repuesta correctas: " . $z;
        echo "</div>";
        $idu=$_COOKIE['idu'];
        $rst=$preguntas->registro($z,$idu);
        if($rst==1){
            $sql="SELECT usuarios.calficacion FROM examen.usuarios WHERE ID=$idu";
            $consulta=mysql_query($sql) or die ("Error al consltar: $sql");
            $cal=mysql_result($consulta,0,'calficacion');
            echo"<br><strong>Calificación Modificada.</strong><br>";
            echo"<br><strong>Tu nueva calificación es:$cal</strong><br>";
        }
        else{
            $sql="SELECT usuarios.calficacion FROM examen.usuarios WHERE ID=$idu";
            $consulta=mysql_query($sql) or die ("Error al consltar: $sql");
            $cal=mysql_result($consulta,0,'calficacion');
            echo"<br><strong>Tu calificación más alta es: $cal</strong><br>";
        }

        echo "<br><p align='center'><a href='index.php?url=inicio'><input type='button' class='btn btn-default' value='Regresar'> </a></p>";
        break;
}

require ('footer.php');
?>