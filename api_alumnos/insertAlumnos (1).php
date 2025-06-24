<?php

       header("Content-Type: application/json");

       if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo POST es permitido']);
         
    
}

    require 'conexionLocalhost.php';


    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre'];
    $apellido = $data['apellido'];

    $query = $conn->prepare("INSERT INTO alumnos (nombre, apellido) VALUES (?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;

}

    $query->bind_param("ss", $nombre, $apellido);

    if($query->execute()){
        echo json_encode(["mensaje" => "Alumnos insertado correctamente", "alumnos_id" => $query->insert_id]);

    }else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la incerción" . $query->error]);

    }

    $query->close();
    $conn->close();
    
    
    ?>



