<?php
require_once("init.php");
@$did=$_REQUEST["lid"];
$output=[];
$sql="SELECT did,sm,md,lg FROM azx_laptop_pic WHERE did=$did";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["family"]=$row;

$sql="SELECT * FROM azx_laptop_all WHERE cid=$did";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["details"]=$rows;
echo json_encode($output);
