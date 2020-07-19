<?php
var_dump(copy($_SERVER['DOCUMENT_ROOT'].'/project/settings.php'),$_SERVER['DOCUMENT_ROOT'].'/bitrix/.settings.php');