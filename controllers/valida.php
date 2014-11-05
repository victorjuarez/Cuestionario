<?php
$psw=$_REQUEST['psw'];
$user=$_REQUEST['user'];
if ($user == "" or $psw == "")
{
    $msg="Iniciar Sesión";
    Print"<meta http-equiv='refresh' content='0;
url=index.php?msg=$msg'>";
}
require("lib/db.php");
$sql="SELECT * from examen.usuarios where usr=\"" . mysql_real_escape_string($user) . "\" AND psw= \"" . mysql_real_escape_string($psw) . "\"";
$consulta=mysql_query($sql) or die ("Error de consulta de host");
$cuantos=mysql_num_rows($consulta);
if($cuantos>0) {

    $idu = mysql_result($consulta, 0, 'ID');
    $activo = mysql_result($consulta, 0, 'status');
    if ($activo == '2') {
        $msg = "El usuario no está activo, consulte al administrador";
        Print"<meta http-equiv='refresh' content='0;
url=index.php?msg=$msg'>";
    } else {
        echo "<br> si vale<br>";
        Print"<meta http-equiv='refresh' content='0;
url=index.php?url=accesos&idu=$idu'>";
    }

}
else{
    $msg="El usuario o password son incorrectos";
    Print"<meta http-equiv='refresh' content='0;
url=index.php?msg=$msg'>";
}
?>