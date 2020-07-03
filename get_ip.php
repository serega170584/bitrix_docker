<?php
$str = file_get_contents('php://stdin');
try {
    var_dump(json_decode($str)[0]->NetworkSettings->Networks->bitrix_docker_default->IPAddress);
} catch (Exception $e) {
    echo 'error';
}