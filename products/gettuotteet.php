<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$uri = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$tuoteId = $parameters[1];


try {
    $db = openDb();
    selectAsJson($db,"select * from tuote where tuoteid = $tuoteId AND id = 'kissa'");
} catch (PDOException $pdoex) {
    returnError($pdoex);
}
