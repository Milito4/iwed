<?php
abstract class Modelo {

    protected $bd;

    function __construct()
    {
        //Traemos la unica instancia de PDO
	$this->bd = SPDO::singleton();
        
    }
}
?>
