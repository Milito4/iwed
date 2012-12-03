<?php
//Controlador Incio
require_once 'libs/Controlador.php';

class ControladorIndex extends Controlador{
        protected $controladorUsuario;


	function index(){
        //Formamos el nombre del controlador o tomamos controladorIndex
            if(!empty($_POST['entrando'])){
                require_once 'controladores/ControladorUsuario.php';
                $this->controladorUsuario=new ControladorUsuario();
                $exito=$this->controladorUsuario->login($_POST['usuario'], $_POST['password']);
                $data['errorlogin']=!$exito;
                $this->vista->mostrar('bienvenida.php',$data);
            }else{
           
            $this->vista->mostrar('bienvenida.php');	
            }    
	}
        
      function logout(){
          require_once 'controladores/ControladorUsuario.php';
          $this->controladorUsuario=new ControladorUsuario();
          $this->controladorUsuario->logout();
          $this->vista->mostrar('bienvenida.php');  
          
      }  
}

?>