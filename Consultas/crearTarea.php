<?php

    include_once '../config.php';
    include_once '../utils.php';

    $dbConn = connect($db);

    $input = $_POST;
    if(count($input) == 2){
        $sql = "INSERT INTO tarea (descripcion, fecha) VALUES (:descripcion, :fecha)";
        $statement = $dbConn->prepare($sql);
        bindAllValues($statement, $input);
        $statement->execute();
        $postId = $dbConn->lastInsertId();

        if($postId){
            $input['codigoTarea'] = $postId;
            header("HTTP/1.1 200 OK");
            echo json_encode($input);
            exit();
        }
    } else {
        echo '{"Error":"Con los parametros"}';
        exit();
    }
    
?>