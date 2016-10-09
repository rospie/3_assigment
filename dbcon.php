<?php
const DB_HOST = 'emmede.com.mysql';
const DB_USER = 'emmede_com';
const DB_PASS = 'AZXtFgRR';
const DB_NAME = 'emmede_com';



$link = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($link->connect_error) { 
   die('Connect Error ('.$link->connect_errno.') '.$link->connect_error);
}
$link->set_charset('utf8'); 
?>
