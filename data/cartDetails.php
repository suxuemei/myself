<?php
require_once("init.php");
$sql="SELECT c.iid,c.lid,c.count,c.is_checked,l.price,l.img,l.lid,a.cid,a.title FROM azx_shoppingcart c,azx_laptop l,azx_laptop_all a WHERE c.lid=l.lid AND a.cid=l.lid Group By l.lid";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);