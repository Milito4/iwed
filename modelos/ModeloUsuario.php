<?php

require_once 'libs/Modelo.php';

/*
 * Modelo para Usuario
 * 
 * @author Emilio Manuel Pérez Sánchez
 * 
 * */
class ModeloUsuario extends Modelo {
    
    /* 
	 * Indica si hay un usuario no el mail y contraseña indicados
	 * 
	 * @param mail Email del usuario
	 * @param pass Contraseña del usuario
	 * @return true/false si existe usuario con dichos datos
	 * 
	 * */
    function existeUsuario($mail, $pass){
        
        //realizamos la consulta de los usuarios
     
	$consulta = $this->bd->prepare('SELECT iduser, nombre, email, itadministrador, itcatalogo, itexperto FROM usuario WHERE email= ? AND pass= SHA1(?)');
	$consulta->execute(array($mail,$pass));
        if($consulta->rowCount()==1) {
           $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
			return $resultado['iduser'];
        } else return '';
	
    }
	
	/* 
	 * Indica si el usuario es administrador o no
	 * 
	 * @param iduser Id del usuario
	 * @return true/false si es o no administrador
	 * 
	 * */
    function isAdministrador($iduser){
        $consulta=$this->bd->prepare('SELECT itadministrador FROM usuario WHERE iduser=?');
        $consulta->execute(array($iduser));
        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);

        return $resultado['itadministrador'];

    }

    

    /* 
	 * Indica si el usuario es experto o no
	 * 
	 * @param iduser Id del usuario
	 * @return true/false si es o no experto
	 * 
	 * */
    function isExperto($iduser){
        $consulta=$this->bd->prepare('SELECT itexperto FROM usuario WHERE iduser=?');
        $consulta->execute(array($iduser));
        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);

        return $resultado['itexperto'];

    }
	
	/* 
	 * Indica si el usuario es puede modificar el catalogo o no
	 * 
	 * @param iduser Id del usuario
	 * @return true/false si puede o no modificar el catalogo
	 * 
	 * */
	function isCatalogo($iduser){
        $consulta=$this->bd->prepare('SELECT itcatalogo FROM usuario WHERE iduser=?');
        $consulta->execute(array($iduser));
        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);

        return $resultado['itcatalogo'];

    }
	
	/* 
	 * Obtiene todos los usuarios
	 * 
	 * @return Array con todos los usuarios
	 * 
	 * */
    function listado(){
        $consulta=$this->bd->prepare('SELECT * FROM usuario');
        $consulta->execute();
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
    }
    
	/* 
	 * Busca los usuarios que cumple el filtro
	 * 
	 * @return Array con los usuarios
	 * 
	 * */
    function buscar($clave){
        $clave="%".$clave."%";
        $consulta=$this->bd->prepare('SELECT * FROM usuario WHERE email LIKE ?');
        $consulta->execute(array($clave));
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
    }
    
	/* 
	 * Crea un nuevo usuario
	 * 
	 * @param mail Email del nuevo usuario
	 * @param pass Contraseña del nuevo usuario
	 * @param ad Si es administrador o no el nuevo usuario
 	 * @param ex Si es experto o no el nuevo usuario
	 * @param cat Si puede modificar o no el nuevo usuario el catalogo
	 * @param nombre Nombre del nuevo usuario
	 * @param idalta Id del usuario que va a dar de alta
	 * @return Error o no en BD al insertar
	 * 
	 * */
    function nuevo($mail, $pass, $ad, $ex, $cat, $nombre, $idalta){
        $consulta=$this->bd->prepare('INSERT INTO usuario (email, pass, itadministrador, itexperto, itcatalogo, nombre, idalta, fcalta) VALUES (?,SHA1(?),?,?,?,?)');
        if($ad=='ON') $ad=1; else $ad=0;
        if($ex=='ON') $ex=1; else $ex=0;
		if($cat=='ON') $cat=1; else $cat=0;
		
		//TODO Poner la fecha de alta del momento
        $fcalta = "11/11/2011";
        
        $consulta->execute(array($mail, $pass, $ad, $ex, $cat, $nombre, $idalta, $fcalta));
        
        return $consulta->errorInfo();
    }
    
	/* 
	 * Elimina una lista de ids de usuarios
	 * 
	 * @param lista Lista de usuarios
	 * @return Error o no en BD al insertar
	 * 
	 * */
    function eliminar($lista){
        //DELETE FROM tabla WHERE id IN(".$lista.")
        $consulta=$this->bd->prepare('DELETE FROM usuario WHERE usid IN (?)');
        $consulta->execute(array($lista));
        return $consulta->errorInfo();
        
    }

    function getUsuario($id){
        $consulta=$this->bd->prepare('SELECT email, password, administrador, experto FROM usuario WHERE usid=?');
        $consulta->execute(array($id));
        return $consulta->fetch(PDO::FETCH_ASSOC);
    }

    function getContrasena($id){
        $consulta=$this->bd->prepare('SELECT password FROM usuario WHERE usid=?');
        $consulta->execute(array($id));
        $pass=$consulta->fetch(PDO::FETCH_ASSOC);
        $pass=$pass['password'];
        return $pass;
    }

    function actualizar($id, $mail, $ad, $ex){
        $consulta=$this->bd->prepare('UPDATE usuario SET email=?, administrador=?, experto=? WHERE usid=?');
        if($ad=='ON') $ad=1; else $ad=0;
        if($ex=='ON') $ex=1; else $ex=0;


        $consulta->execute(array($mail, $ad, $ex, $id));
return $consulta->errorInfo();

    }

    function actualizar2($id, $mail, $pass, $ad, $ex){
        $consulta=$this->bd->prepare('UPDATE usuario SET email=?, password=sha1(?), administrador=?, experto=? WHERE usid=?');
        if($ad=='ON') $ad=1; else $ad=0;
        if($ex=='ON') $ex=1; else $ex=0;


        $consulta->execute(array($mail, $pass, $ad, $ex, $id));

return $consulta->errorInfo();
    }

}

?>
