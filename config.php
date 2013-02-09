<?php

$config = Config::singleton();

$config->set('DirControladores', 'controladores/');
$config->set('DirModelos', 'modelos/');
$config->set('DirVistas', 'vistas/');

//$config->set('bdhost', 'mysql.nixiweb.com');
//$config->set('bdnombre', 'u128667275_seg');
//$config->set('bdusuario', 'u128667275_seg');
//$config->set('bdpassword', 'webaccess');
//$config->set('path_tomcat', '$CATALINA_HOME/webapps/ROOT/index.html');
$config->set('bdhost', 'localhost');
$config->set('bdnombre', 'iwed_bd');
$config->set('bdusuario', 'BD_IWED');
$config->set('bdpassword', 'BD_IWEDPASS');
?>