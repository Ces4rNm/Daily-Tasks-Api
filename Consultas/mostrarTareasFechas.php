<?php

    include_once '../config.php';
    include_once '../utils.php';

    $dbConn = connect($db);

    $sql = $dbConn->prepare("SELECT * FROM tarea WHERE fecha >= :fechaInicial and fecha <= :fechaFinal ORDER BY fecha");
    $sql->bindValue(':fechaInicial', $_POST['fechaInicial']);
    $sql->bindValue(':fechaFinal', $_POST['fechaFinal']);
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    header("HTTP/1.1 200 OK");
    echo json_encode( $sql->fetchAll()  );
    exit();
    
?>