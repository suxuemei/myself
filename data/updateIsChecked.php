<?php
    require_once("init.php");
	session_start();
	@$uid=$_SESSION["uid"];
	@$iid=$_REQUEST["iid"];
	@$is_checked=$_REQUEST["is_checked"];
	if($uid){
		$sql="update azx_shoppingcart set is_checked=$is_checked where iid=$iid";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_affected_rows($conn);
		echo json_encode(count($row));
	}else{
	    echo '{"code":-1,"msg":"fail"}';
	}
