<?php
header("Con");
@$code=$_REQUEST["code"];
session_start();
if(strtoLower($code)==strtoLower($_SESSION["code"])){
 echo "true";
}else{
  echo "";
}