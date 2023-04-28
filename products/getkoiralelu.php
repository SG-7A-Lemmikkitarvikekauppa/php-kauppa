<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    selectAsJson($db, 'select * from lelu where id = "koira"');
} catch (PDOException $pdoex) {
    returnError($pdoex);
}
//