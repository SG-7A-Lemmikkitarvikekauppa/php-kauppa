<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    selectAsJson($db,'select * from ruoka where maara = "2"');
} catch (PDOException $pdoex) {
    returnError($pdoex);
}