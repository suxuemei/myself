<?php
require_once("init.php");
@$uid=$_REQUEST["uid"];
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
if($uname&&$upwd){
		$sql="SELECT uid,uname,upwd FROM azx_user WHERE uname='$uname' AND upwd='$upwd'";
		$result=mysqli_query($conn,$sql);//执行查询
		$row=mysqli_fetch_row($result);
		if(count($row)!=0){
			session_start();
			$_SESSION["uid"]=$row[0];
			echo json_encode(["code"=>1,"msg"=>$row[1]]);
		}else
			echo '{"code":-1,"msg":"用户名或密码错误"}';
	}
