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
$config->set('bdnombre', 'seg');
$config->set('bdusuario', 'acceso_web');
$config->set('bdpassword', 'webaccess');
?>