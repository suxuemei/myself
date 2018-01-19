$(function(){
  var i=location.href.slice(-1);
  var pageSize=9;
  $("#txtSearch").attr("placeholder","123");
  getData(i,1);
 function getPage(index,current){
	  $.ajax({//方法一
		type:"GET",
		url:"data/product-all.php",
		data:{num:index}
	  }).then(data=>{
		  var html="";
          //html=`<span class="prevPage">前一页</span>`;
		  if(i==1){
			  for(var n=0;n<data.length/pageSize-2;n++)
			  html+=`<span class=${current==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==2){
			 for(var n=0;n<data.length/pageSize;n++)
			  html+=`<span class=${current==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==3){
			 for(var n=0;n<data.length/pageSize-1;n++)
			  html+=`<span class=${current==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==4){
			 for(var n=0;n<data.length/pageSize;n++)
			  html+=`<span class=${current==(n+1)?"active":""}>${n+1}</span>`;
		  }
		   //html+=`<span class="nextPage" >后一页</span>`;
		  $(".pages").html(html);
	  })
	}
	 getPage(i);
  function getData(index,pno){
	  $.ajax({//方法一
		type:"GET",
		url:"data/product-all.php",
		data:{num:index}
	  }).then(data=>{
		  var html="";
          //html=`<span class="prevPage">前一页</span>`;
		  if(i==1){
			  for(var n=0;n<data.length/pageSize-2;n++)
			  html+=`<span class=${pno==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==2){
			 for(var n=0;n<data.length/pageSize;n++)
			  html+=`<span class=${pno==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==3){
			 for(var n=0;n<data.length/pageSize-1;n++)
			  html+=`<span class=${pno==(n+1)?"active":""}>${n+1}</span>`;
		  }
		  if(i==4){
			 for(var n=0;n<data.length/pageSize;n++)
			  html+=`<span class=${pno==(n+1)?"active":""}>${n+1}</span>`;
		  }
		   //html+=`<span class="nextPage" >后一页</span>`;
		  $(".pages").html(html);
	  })
      /********************************/
	  if(i==index){
	  $.ajax({//方法一
		type:"GET",
		url:"data/product-all.php",
		data:{num:index,pno:pno}
	  }).then(data=>{
	   // $.get("data/product9999
	      var html="";
		  for(var obj of data){
			  html+=`
				  <li data-li="${obj.cid}">
						<span>
							<img src="${obj.img}">
						</span>
						<span>${obj.title}
						</span>
						<span>¥
							<b>${obj.cprice}</b>
							<a href="#" class="addCart">加入购物车</a>
						</span>						
						<span>好评：<b>${obj.evaluate}</b></span>
						
				</li>
				<b class="carts">❀</b>
			  `;
		  }
		  $(".rings>ul").html(html);
		  var startNum=0;
		  $(".rings>ul").on("click",".addCart",function(e){
			  /*小动画*/
			  var lid=$(e.target).parent().parent().data("li"),count=1;
			  console.log(lid,count);
			  startNum+=1;
			  e.preventDefault();
			  $(".toCart").show();
			  $(e.target).css({"color":"#fff"});
		      $(e.target).parent().parent().next().css({"color":"#000"});			 
			  $(".toCart").html("+"+startNum);
			  $(".toCart").animate({top:210},1000,function(){
				  $(".cartPic").css({backgroundColor:"red"});
			    $(this).css({top:40});$(".toCart").hide();
			  });console.log(222)
			  $(".cartPic").click(()=>{
			     location.href="cart.html";
			  })
			  /*********/
			  $.ajax({
			    type:"GET",
				url:"data/cart.php",
				data:{lid:lid,count:count}
			  }).then(data=>{
				  console.log(2222)
				  if(data.code==-1){
				   confirm("请先登录")?location.href="login.html":"";
				  }
			  });
		  });
	  });
     }
  }
  /*if(i==1){
     $(".rings>ul").on("click","li",function(e){
	       console.log($(e.target).data("li"))
	 })
  }*/
  $(".pages").on("click","span",function(e){
	    var tar=$(e.target);
		  console.log($(".pages").find(".active").html())
	    if(tar.text()=="前一页"){
		   $(".pages").find(".active");
		}
        var pno=tar.html();
	    getPage(i,tar.html());
	    getData(i,pno);
	   //$(e.target).addClass("active").siblings().removeClass("active");
  });
});