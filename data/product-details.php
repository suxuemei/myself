<?php
require("init.php");//暂时无用
@$lid=$_REQUEST["lid"];
$output=[];
$sql="SELECT * FROM azx_laptop_pic";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["family"]=$rows;

$sql="SELECT * FROM azx_laptop_all WHERE cid=$lid";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["details"]=$rows;
echo json_encode($output);