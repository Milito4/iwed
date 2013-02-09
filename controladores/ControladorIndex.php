<?php
//Controlador Incio
require_once 'libs/Controlador.php';

class ControladorIndex extends Controlador{
        protected $controladorUsuario;


	function index(){
        //Formamos el nombre del controlador o tomamos controladorIndex
            if(isset($_POST['email'])){
                require_once 'controladores/ControladorUsuario.php';
                $this->controladorUsuario=new ControladorUsuario();
                $exito=$this->controladorUsuario->login($_POST['email'], $_POST['pass']);
				$data['errorlogin']=!$exito;
                if($exito == true) {
                	$this->vista->mostrar('formulario.php');
                } else {
                	$this->vista->mostrar('bienvenida.php', $data);
                }
                
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