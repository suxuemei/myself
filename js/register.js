$(()=>{
       var regName="/$[0-9]{6}/d+/";
		$("#uName").blur(function(){		
			$.ajax({
				type:"GET",
				url:"data/register.php",
				data:{uname:$(this).val()}
				 }).then(data=>{
					 if(data.code==1){
					   $(this).next().html(data.msg).css({color:"red"});
					   $("#btnSubmit").prop("disabled",true);
					   console.log($("#btnSubmit").prop("disabled"))
                     }else{
					   $(this).next().html(data.msg).css({color:"blue"});
					 }
		         })
			});
			$("#upwd").blur(function(){
			  var n=regName.test($(this).val());
			  console.log(n);
			})
if($("#btnSubmit").prop("disabled")==false){
   $("#btnSubmit").click(function(e){
	   console.log(222)
	   e.preventDefault();	   
	   $.ajax({
		 type:"GET",
		 url:"data/register.php",
		 data:{uname:$("#uName").val(),upwd:$("#uPwd").val()}
	   }).then(data=>{
		   if(data.code==1){
		     alert(data.msg);
			 location.href="login.html";
		   }
	   })
  }) 
 }
})