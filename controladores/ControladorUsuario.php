<?php

require_once 'libs/Controlador.php';
require_once 'modelos/ModeloUsuario.php';
//require_once 'modelos/ModeloBitacora.php';

/*
 * Controlador para Usuario
 * 
 * @author Emilio Manuel Pérez Sánchez
 * 
 * */
class ControladorUsuario extends Controlador {
	/* Modelo del usuario */
    protected $modelo;

	 /* 
	 * Identificación de un usuario y abrir su sesion
	 * 
	 * @param mail Email del usuario
	 * @param pass Contraseña del usuario
	 * @return true/false si el usuario se ha indentificado correctamente
	 * 
	 * */
    function login($mail, $pass) {
        $this->modelo = new ModeloUsuario();
        //$this->modeloBitacora = new ModeloBitacora();
        $usuario = $this->modelo->existeUsuario($mail, $pass);
        if (!empty($usuario)) {
            $_SESSION['usuario'] = $usuario;
            $_SESSION['registrado'] = true;
			
            //$this->modeloBitacora->registrar("Acceso usuario", 1, "Identificación correcta de usuario", $nombre);
            $exito = true;
        } else {
            //$this->modeloBitacora->registrar("Acceso usuario", 0, "Identificación fallida de usuario", $nombre);
            $exito = false;
        }
        return $exito;
    }

	 /* 
	 * Cerrar sesion de un usuario
	 * 
	 * */
    function logout() {
    	if(isset($_SESSION['usuario'])){
	        if (!empty($_SESSION['usuario'])) {
	            //$this->modeloBitacora = new ModeloBitacora();
	            //$this->modeloBitacora->registrar("Fin sesión usuario", 1, "Cierre de sesión del usuario", $_SESSION['usuario']);
	
	            $_SESSION['usuario'] = '';
	            session_destroy();
	        }
		}
    }

    // function index() {
// 
        // if ($_SESSION['tipo_usuario'] == 'admin' || $_SESSION['tipo_usuario'] == 'supremo') {
            // $this->modelo = new ModeloUsuario();
            // $this->modeloBitacora = new ModeloBitacora();
            // if (!empty($_POST['nuevo'])) {
                // if (empty($_POST['admin'])) {
                    // $_POST['admin'] = 'OFF';
                // }
                // if (empty($_POST['expert'])) {
                    // $_POST['expert'] = 'OFF';
                // }
                // $error = $this->modelo->nuevo($_POST['nuevo'], $_POST['pass1'], $_POST['admin'], $_POST['expert']);
                // if ($error[0] == '00000') {
                    // $data['aviso'] = "Nuevo usuario dado de alta";
                    // $this->modeloBitacora->registrar("Nuevo usuario", 1, $cad = "Nuevo usuario: " . $_POST['nuevo'], $_SESSION['usuario']);
                // } else {
                    // $this->modeloBitacora->registrar("Nuevo usuario", 0, $error[1] . " " . $error[2], $_SESSION['usuario']);
                // }
                // $data['error'] = $error;
                // $_POST['nuevo'] = '';
            // }
            // if (!empty($_POST['editar'])) {
                // if (empty($_POST['admin'])) {
                    // $_POST['admin'] = 'OFF';
                // }
                // if (empty($_POST['expert'])) {
                    // $_POST['expert'] = 'OFF';
                // }
// 
                // $error = $this->modelo->actualizar($_POST['id'], $_POST['editar'], $_POST['admin'], $_POST['expert']);
                // if ($error[0] == '00000') {
                    // $this->modeloBitacora->registrar("Editar usuario", 1, $cad = "Usuario modificado: " . $_POST['id'], $_SESSION['usuario']);
                    // $data['aviso'] = "Los cambios en el usuario han sido guardados";
                // } else {
                    // $this->modeloBitacora->registrar("Editar usuario", 0, $error[1] . " " . $error[2], $_SESSION['usuario']);
                // }
                // $data['error'] = $error;
                // $_POST['editar'] = '';
            // }
            // if (!empty($_POST['editar2'])) {
                // if (empty($_POST['admin'])) {
                    // $_POST['admin'] = 'OFF';
                // }
                // if (empty($_POST['expert'])) {
                    // $_POST['expert'] = 'OFF';
                // }
                // $error = $this->modelo->actualizar2($_POST['id'], $_POST['editar2'], $_POST['pass1'], $_POST['admin'], $_POST['expert']);
                // if ($error[0] == '00000') {
                    // $data['aviso'] = "Los cambios en el usuario han sido guardados";
                    // $this->modeloBitacora->registrar("Editar usuario y contraseña", 1, $cad = "Usuario modificado: " . $_POST['id'], $_SESSION['usuario']);
                // } else {
                    // $this->modeloBitacora->registrar("Editar usuario y contraseña", 0, $error[1] . " " . $error[2], $_SESSION['usuario']);
                // }
                // $data['error'] = $error;
                // $_POST['editar2'] = '';
            // }
// 
// 
            // $listado = $this->modelo->listado();
            // $data['listado'] = $listado;
            // $this->vista->mostrar('usuarioIndex.php', $data);
        // } else {
            // $this->vista->mostrar('noAutorizado.php');
        // }
    // }
// 
    // function buscar() {
        // if ($_SESSION['tipo_usuario'] == 'admin' || $_SESSION['tipo_usuario'] == 'supremo') {
            // $this->modelo = new ModeloUsuario();
// 
            // $listado = $this->modelo->buscar($_POST['busqueda']);
            // $data['listado'] = $listado;
            // $this->vista->mostrar('usuarioIndex.php', $data);
        // } else {
            // $this->vista->mostrar('noAutorizado.php');
        // }
    // }
// 
//     
// 
    // function eliminar() {
        // if ($_SESSION['tipo_usuario'] == 'admin' || $_SESSION['tipo_usuario'] == 'supremo') {
            // $this->modelo = new ModeloUsuario();
            // $this->modeloBitacora = new ModeloBitacora();
            // // Generamos una lista de los ID's (campo value= ..) que tenemos en nuestro array.
            // $lista = $_POST['seleccionados'];
// 
            // for ($i = 0; $i < count($lista); $i++) {
// 
                // $error = $this->modelo->eliminar($lista[$i]);
                // if ($error[0] == '00000') {
                    // $this->modeloBitacora->registrar("Eliminar usuario", 1, "Usuario eliminado: " . $lista[$i], $_SESSION['usuario']);
                    // $data['aviso'] = "Usuario han sido eliminados";
                // } else {
                    // $this->modeloBitacora->registrar("Eliminar usuario", 0, $error[1] . " " . $error[2], $_SESSION['usuario']);
                // }
            // }
// 
            // $listado = $this->modelo->listado();
            // $data['listado'] = $listado;
            // $this->vista->mostrar('usuarioIndex.php', $data);
        // } else {
            // $this->vista->mostrar('noAutorizado.php');
        // }
    // }
// 
    // function editar() {
        // if ($_SESSION['tipo_usuario'] == 'admin' || $_SESSION['tipo_usuario'] == 'supremo') {
            // $this->modelo = new ModeloUsuario();
            // $user = $this->modelo->getUsuario($_GET['num']);
// 
            // $data['id_user'] = $_GET['num'];
            // $data['email_user'] = $user['email'];
            // $data['pass_user'] = $user['password'];
            // $data['admin_user'] = $user['administrador'];
            // $data['expert_user'] = $user['experto'];
// 
            // $this->vista->mostrar('usuarioDetalle.php', $data);
        // } else {
            // $this->vista->mostrar('noAutorizado.php');
        // }
    // }
// 
    // function editar2() {
// 
        // if ($_SESSION['tipo_usuario'] == 'admin' || $_SESSION['tipo_usuario'] == 'supremo') {
            // $data['id_user'] = $_POST['id'];
            // $data['email_user'] = $_POST['email'];
// 
            // $data['admin_user'] = $_POST['admin'];
            // $data['expert_user'] = $_POST['expert'];
// 
            // $this->vista->mostrar('usuarioDetalle2.php', $data);
        // } else {
            // $this->vista->mostrar('noAutorizado.php');
        // }
    // }

}

?>
