
$(()=>{
			$("#header").load("header.html",function(){
				$("[data-status=NoLogin]").show();
				$("[data-status=Logined]").hide();
				 $.get("data/isLogin.php").then(data=>{
						 if(data.code==1){
					       $("[data-status=NoLogin]").hide();
					       $("[data-status=Logined]").show().first().children("span").html(data.msg);
					      }else{location.href="login.html"}
				   var logout=$("[data-status=Logined]").last().children("a");
					   //注销
				   $(logout).click(function(){
				       $.get("data/logout.php").then(data=>{
					     console.log(data)
							 if(data.code==1){
							    window.confirm("确定要注销吗？")
								  $("[data-status=NoLogin]").show();
								  $("[data-status=Logined]").hide();
						     }else{return}
					   })
				   })
				 })
			$("#header-top-right>.right-list>.cart").click(function(){
				$.get("data/isLogin.php").then(data=>{
					if(data.code==1){
					  location.href="cart.html";
				    }else{alert("您需要先登录！");}
				})
                   
			})
			$("#navDetails").hide();
			$("#rings #nav-classify").mousemove(e=>{
			   var $tar=$(e.target);
			   if($tar.is("li")){
				  var i=$("#nav-classify").children().index($tar);
				  $("#navDetails").show().children(":eq("+(i-1)+")").css("zIndex",20).siblings().css("zIndex",0);
			   }
			});
			$("#rings").mouseleave(function(){
			  $("#navDetails").hide();
		   });
		   //console.log($("#txtSearch").attr("placeholder"));
		   $("#rings  #nav-classify>li>a").click(function(e){
			   e.preventDefault();
		     var $tar=$(e.target);
			 $tar.parent().css({backgroundColor:"#000"});
			 console.log($tar.parent());
			 if($tar.attr("title")){
			    location.href="product-all1.html?"+$tar.html()+"-"+$tar.attr("title");	
			 } 
		   });
	   });
       
	   $("#footer").load("footer.html");   
});
