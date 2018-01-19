<?php
    require_once("init.php");
	session_start();
	@$uid=$_SESSION["uid"];
	@$lid=$_REQUEST["lid"];
	@$is_checked=$_REQUEST["is_checked"];
	@$count=$_REQUEST["count"];
	if($uid){
		   if($is_checked){
				$sql="update azx_shoppingcart set count=$count,is_checked=$is_checked where uid=$uid and lid=$lid";
			}else{
				$sql="update azx_shoppingcart set count=$count where uid=$uid and lid=$lid";
			}
			$result=mysqli_query($conn,$sql);
			$row=mysqli_affected_rows($conn);
            echo json_encode($row);
	}else{
	  echo json_encode(["code"=>-1,"msg"=>"err"]);
	}
