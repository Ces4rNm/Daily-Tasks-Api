<?php

    include_once '../config.php';
    include_once '../utils.php';

    $dbConn = connect($db);

    $input = $_POST;
    if(count($input) == 1){
        $sql = "DELETE FROM tarea WHERE codigoTarea = :codigoTarea";
        $statement = $dbConn->prepare($sql);
        bindAllValues($statement, $input);

        if($statement->execute()){
            header("HTTP/1.1 200 OK");
            echo '{"Mensaje":"Registro borrado exitosamente"}';
            exit();
        }
    } else {
        echo '{"Error":"Con los parametros"}';
        exit();
    }
    
?>