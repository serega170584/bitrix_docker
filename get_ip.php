<?php
$str = file_get_contents('php://stdin');
var_dump(json_decode($str)[0]->NetworkSettings->bitrix_docker_default->IPAddress);