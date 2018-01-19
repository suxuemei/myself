<?php
require_once("init.php");
session_start();
$_SESSION["uid"]=null;
if(!$_SESSION["uid"])
echo '{"code":1,"msg":"删除成功"}';