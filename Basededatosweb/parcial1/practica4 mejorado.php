<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];

    //valida pregunta 1 1. ¿Lenguaje de programación que se utiliza para WEB?
    echo "<h3>1. ¿Lenguaje de programación que se utiliza para WEB? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = PHP</h5>";
    if($pregunta1 == "PHP"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 s una plataforma informática de lenguaje de programación creada por Sun Microsystems en 1995.
    echo "<h3>2. _____________ es una plataforma informática de lenguaje de programación creada por Sun Microsystems en 1995.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Java</h5>";
    if(strtoupper($pregunta2) == "JAVA"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - se deben validar 2 opciones sql y mongo
    echo "<h3>3. ¿Son lenguajes utilizados para la gestión de base de datos? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Mongo, SQL</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "sql" || $pregunta3[$i] == "mongo"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿Es la forma correcta de nombrar una variable en PHP?

        echo "<h3>4. ¿Es la forma correcta de nombrar una variable en PHP?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = ".'$'."numero = 18;</h5>";
        if($pregunta4 == '$'."numero = 18;"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 es una función de php que sirve para contar los elementos de un array.
        echo "<h3>5. _____________ es una función de php que sirve para contar los elementos de un array.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = count</h5>";
        if(strtoupper($pregunta5) == "COUNT"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    //Fin de la pregunta 2 -----------------------------

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>