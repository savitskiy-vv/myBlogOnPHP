<?php

  class Database {

    public $dbserver = '';
    public $database = '';
    public $username = '';
    public $password = '';
    public $db = '';

    public function __construct() {
      $this->dbserver = 'localhost'; //for exampl
      $this->database = 'xxxxxxxx'; //database name
      $this->username = 'xxxxxxxx'; //database user name
      $this->password = 'xxxxxxxx'; //database user password
      $this->db = new PDO("mysql:host=".$this->dbserver.";dbname=".$this->database, $this->username, $this->password);
      $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
  }