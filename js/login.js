$(function(){
	$("#header").load("header.html",function(){
		  $("#header .main").children(":not(#header-top)").hide();
		  $("#header [data-log=Logined]").hide();
		  $("#header .left-list").children(":not(:first)").hide();
		  var name=$("#uName"),
		  pwd=$("#uPwd"),
		  vali=$("#vali"),
		  autoLogin=$("#autoLogin"),
		  loginBtn=$("#loginBtn");
		  console.log($("#loginBtn"))
		 loginBtn.click(function(e){
			 console.log(111)
			  e.preventDefault();
			  $.ajax({
				type:"GET",
				url:"data/login.php",
				data:{uname:name.val(),upwd:pwd.val()}
			  }).then(function(data){
				  console.log(data);
				  if(!data){
				     console.log("1111");
					 return;
				  }else if(data){
					  $("#header [data-status=NoLogin]").hide();
					  $("#header [data-log=Logined]").html(data);
				    alert(data.msg+"登陆成功");
					location.href="index.html"
				  }
			  })
		  })
	  //验证码
			  
			 vali.blur(function(){
		  if(vali.value!=""){
			  $.ajax({
				type:"get",
                url:"data/checkCode.php",
				data:{code:vali.val()}
				}).then(text=>{
				 if(text){
				   vali.next().html("验证码正确");
				 }else{
					  return;
				 }
				});
			}else{
			  return;
			}
		})
		$("#textCode").click(function(){
		  $("#textCode").attr("src","data/vali.php");
		})
	})
  
})