<?php
//$fdescr = fopen('php://stdin', 'r');
echo json_decode(file_get_contents('php://stdin'))['Config'];