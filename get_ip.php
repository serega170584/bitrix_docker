<?php
$str = file_get_contents('php://stdin');
var_dump(json_decode($str, false, 512, JSON_INVALID_UTF8_IGNORE)[0]->NetworkSettings->Networks->bitrix_docker_default->IPAddress);