<?php
abstract class Controlador {

    protected $vista;

    function __construct()
    {
        $this->vista = new Vista();
    }
}
?>
