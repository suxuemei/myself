<?php
require_once("init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
if(!$uname) die("require uname");
if($uname&&!$upwd){
$sql="SELECT * FROM azx_user WHERE uname='$uname'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
	if($row){
	  echo '{"code":1,"msg":"用户已存在"}';
	}else{echo '{"code":-1,"msg":"通过"}';}
}else if($uname&&$upwd){
  $sql="INSERT INTO azx_user VALUES(null,'$uname','$upwd')";
  $result=mysqli_query($conn,$sql);
  $user=mysqli_affected_rows($conn);
  if($user>0)
  echo '{"code":1,"msg":"注册已成功"}';
}else{
  echo '{"code":-1,"msg":"注册失败"}';
}

