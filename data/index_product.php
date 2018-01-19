<?php
require_once("init.php");
$output=[];
$sql="SELECT l.lid,p.pid,p.title,p.subtitle,l.price,l.img FROM azx_laptop l,azx_index_product p WHERE l.pid=p.pid AND p.pid=1";
$result=mysqli_query($conn,$sql);
$rows1=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["floor1"]=$rows1;

$sql="SELECT l.lid,l.pid,p.title,p.subtitle,l.price,l.img FROM azx_laptop l,azx_index_product p WHERE l.pid=p.pid AND p.pid=2";
$result=mysqli_query($conn,$sql);
$rows2=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["floor2"]=$rows2;

$sql="SELECT l.lid,l.pid,p.title,p.subtitle,l.price,l.img FROM azx_laptop l,azx_index_product p WHERE l.pid=p.pid AND p.pid=3";
$result=mysqli_query($conn,$sql);
$rows3=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["floor3"]=$rows3;

$sql="SELECT l.lid,l.pid,p.title,p.subtitle,l.price,l.img FROM azx_laptop l,azx_index_product p WHERE l.pid=p.pid AND p.pid=4";
$result=mysqli_query($conn,$sql);
$rows4=mysqli_fetch_all($result,MYSQLI_ASSOC);
$output["floor4"]=$rows4;
echo json_encode($output);