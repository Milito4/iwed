<?php

class SPDO extends PDO {

	private static $instance = null;

	public function __construct() {
		$config = Config::singleton();
		parent::__construct('mysql:host=' . $config -> get('bdhost') . ';dbname=' . $config -> get('bdnombre'), $config -> get('bdusuario'), $config -> get('bdpassword'));
	}

	public static function singleton() {
		if (self::$instance == null) {
			self::$instance = new self();
		}
		return self::$instance;
	}

}
?>
