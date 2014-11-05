<?php

class Preguntas{
    public function cuestionario(){

        echo "<div class=table-resposive>";
        echo "<form action='index.php' method='post' name='maestro' id='maestro'>";
        echo "<table class='table table-bordered table table-striped'>";
        echo "<tr><th>ID</th><th>Preguntas</th><th>Respuestas</th>";

       $sql=" SELECT * FROM examen.preguntas ORDER BY rand() LIMIT 5;";
        $consulta=mysql_query($sql) or die ("Error al consltar: $sql");
        $x=0;
        while($p=mysql_fetch_array($consulta)){
            $pregunta=$p['pregunta'];
            $ID_P=$p['ID'];
            echo "<tr><td>$ID_P<input type='hidden' name='p$x' value='$ID_P'/></td><td>$pregunta</td>";
            $sql02=" SELECT * FROM examen.detalle_pregutas_respuestas where ID_Pregunta=$ID_P;";
            $consulta02=mysql_query($sql02) or die ("Error al consltar: $sql02");
            $cuantos=mysql_num_rows($consulta02);
            echo "<td><select name='r$x'>";
            for($y=0;$y<$cuantos;$y++){
            $ID_R=mysql_result($consulta02,$y,'ID_Respuesta');
                $sql03=" SELECT * FROM examen.respuestas where ID=$ID_R;";
                $consulta03=mysql_query($sql03) or die ("Error al consltar: $sql03");
                $respuesta=mysql_result($consulta03,0,'respuesta');
                echo "<option value='$ID_R'>$respuesta</option>";
            }
            echo"</select></td></tr>";
            $x=$x+1;
        }
        echo "<tr><td colspan='3' align='center'><input class='btn btn-default' type='submit' name='submit' value='Calificar'>
<input type='hidden' name='url' value='cuestionario'><input type='hidden' name='x' value='$x'></td></tr>";
        echo"</table>";
        echo"</form>";
        echo "</div>";
    }
    public function evaluar($id_respuesta,$id_pregunta)
    {
        $sql="SELECT * FROM examen.preguntas WHERE ID=$id_pregunta;";
        $consulta=mysql_query($sql) or die ("Error al consltar: $sql");
        $ID_R=mysql_result($consulta,0,'ID_respuesta');
        if($ID_R==$id_respuesta){
            return 1;
        }
        else{
            return 0;
        }

    }
    public function registro($calif, $id_ususario){
        $sql="SELECT usuarios.calficacion FROM examen.usuarios WHERE ID=$id_ususario";
        $consulta=mysql_query($sql) or die ("Error al consltar: $sql");
        $cal=mysql_result($consulta,0,'calficacion');
        if($calif>$cal){
            $sql2="UPDATE examen.usuarios SET calficacion=$calif WHERE ID=$id_ususario;";
            $consulta2=mysql_query($sql2) or die ("Error al actualizar: $sql2");
            return 1;
        }
        else
        {
            return 0;
        }
    }




}
?>