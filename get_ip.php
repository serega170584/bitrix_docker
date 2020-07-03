<?php
error_reporting(0);
$str = file_get_contents('php://stdin');
var_dump(json_decode($str)[0]->NetworkSettings->Networks->bitrix_docker_default->IPAddress);