<?php
require_once("init.php");
@$iid=$_REQUEST["iid"];
$sql="DELETE FROM azx_shoppingcart WHERE iid=$iid";
$result=mysqli_query($conn,$sql);
$row=mysqli_affected_rows($conn);
echo json_encode(count($row));