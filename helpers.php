<?
    function controller($nombre)
    {

        if (empty($nombre)) {
            $nombre = "index";
        }
            $archivo = "controllers/$nombre.php";
            if (file_exists($archivo)) {
                require($archivo);
            } else {
                echo "Error acrhivo no encontrado ";
            }

    }


     function view($plantillas,$variables=array()){
        extract($variables);
        require("views/$plantillas.tpl.php");

}
?>