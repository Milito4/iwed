<?php

class ControladorPrincipal {

    static function main() {

        //Refrescar sesi�n
        session_start();
        if (!isset($_SESSION['usuario'])) {
            $_SESSION['usuario'] = '';
        }
        //if (!isset($_SESSION['tipo_usuario'])) {
        //    $_SESSION['tipo_usuario'] = 'invitado';
        //}

       if (!isset($_SESSION['idioma']))
            $_SESSION['idioma'] = 'es';

        //Inclusi�n de ficheros de clases base para el patr�n MVC
        require 'libs/Config.php';
        require 'libs/Vista.php';
        require 'libs/SPDO.php';
        require 'config.php';

        //Con el objetivo de no repetir nombre de clases, nuestros controladores
        //empezaran todos por Controlador. Por ej, la clase controladora Items, será ItemsController
        //Formamos el nombre del controlador o tomamos controladorIndex
        if (!empty($_GET['controlador']))
            $nombreControlador = "Controlador" . ucfirst($_GET['controlador']); //ucfirst pasa el primer car�cter de la cadena a may�sculas
        else
            $nombreControlador = "ControladorIndex";

        //Obtenemos la acci�n o tomamos index
        if (!empty($_GET['accion']))
            $nombreAccion = $_GET['accion'];
        else
            $nombreAccion = "index";


        //Formamos la ruta del controlador
        $rutaControlador = $config->get('DirControladores') . $nombreControlador . '.php';

        //Incluimos el fichero que contiene el controlador
        if (is_file($rutaControlador))
            require $rutaControlador;
        else {
            die('El controlador no existe - 404 not found');
            //require "vistas/noAutorizado.php";
            return false;
        }

        //Si no existe la clase del controlador y su acci�n, error
        if (is_callable(array($nombreControlador, $nombreAccion)) == false) {
            trigger_error ($controllerName . '->' . $actionName . '` no existe', E_USER_NOTICE);
            //require "vistas/noAutorizado.php";
            return false;
        }


        //Si todo esta bien, creamos una instancia del controlador y llamamos a la acci�n
        $controlador = new $nombreControlador();
        $controlador->$nombreAccion();
    }

}

?>