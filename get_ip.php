<?php
error_reporting(E_ALL & ~E_DEPRECATED);
//$fdescr = fopen('php://stdin', 'r');
$str = file_get_contents('php://stdin');
//var_dump($str);
var_dump(json_decode($str));