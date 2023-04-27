<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    selectAsJson($db, 'select * from lelu where hinta BETWEEN 4 AND 10');
} catch (PDOException $pdoex) {
    returnError($pdoex);
}