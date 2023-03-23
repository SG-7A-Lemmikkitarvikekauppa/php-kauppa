<?php
function openDb(): object {
$ini = parse_ini_file("../config.ini", true);

$host = $ini('host');
$database = $ini('database');
$user = $ini('user');
$password = $ini('password');

$db = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $user, $password);

}
