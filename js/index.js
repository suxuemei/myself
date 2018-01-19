$(function(){
//	轮播部分
	var $ulImgs=$("#bannerImgs>.bannerImgs"),
		$ulInds=$("#bannerIndicators>ul"),
		$titles=$("#imgIntr>ul"),SWIDTH=400,
	  LIWIDTH=1100,INTERVAL=500,WAIT=3000,
	  moved=0,timer=null,canMove=true;
$.get("data/getCarousel.php")
	.then(data=>{
	var html="",navRight="";
	for(var c of data){
		html+=`
			<li>
				<a href="#" title="${c.title}">
					<img src="${c.img}">
				</a>
			</li> 	
		`;
       navRight+=`
		  <li>
		   <span>${c.title} </span>
	        ${c.subtitle}</li> 
	   `;
	}
     navRight+=`
		  <li>
		   <span>${data[0].title} </span>
	        ${data[0].subtitle}</li> 
	   `;
	 //$titles.html(navRight).css("width",(data.length+1)*SWIDTH);;
	html+=`
		<li>
			<a href="#" title="${data[0].title}">
				<img src="${data[0].img}">
			</a>
		</li> `;
	$ulImgs.html(html)
		 .css("width",(data.length+1)*SWIDTH);
	$ulInds.html("<li></li>".repeat(data.length))
		     .children().first().addClass("hover");
	function autoMove(){
		if(canMove){
			if(moved==data.length){//先判断是否最后一张
				moved=0;//将moved归0
				$ulImgs.css("left",0);//将ul的left瞬间归0
				$titles.css("left",0);//将ul的left瞬间归0
			}
			timer=setTimeout(()=>{//先等待WATI秒
				move(1,autoMove);
			},WAIT);
		}
	}
	autoMove();
	$("#bannerImgs").hover(
		()=>{//关闭轮播的开关变量
			canMove=false;
			clearTimeout(timer);//停止等待
			timer=null;
		},
		()=>{//打开轮播开关，启动自动轮播
			canMove=true;
			autoMove();
		}
	);
	$ulInds.on("mouseover","li",e=>{
		moved=$(e.target).index();
		$ulImgs.stop(true).animate({
			left:-LIWIDTH*moved
		},INTERVAL);
		$titles.stop(true).animate({
			left:-SWIDTH*moved
		},INTERVAL);
		$ulInds.children(":eq("+moved+")")
					.addClass("hover")
					.siblings().removeClass("hover");
	});
	function move(dir,callback){
		moved+=dir;//按照方向增减moved
		//如果moved没有到头
		if(moved<data.length){
			//让ulInds中moved位置的li设置hover
			$ulInds.children(":eq("+moved+")")
						.addClass("hover")
						.siblings().removeClass("hover");
		}else{//否则，如果到头了
			//让ulInds中第一个li设置为hover
			$ulInds.children(":eq(0)")
						.addClass("hover")
						.siblings().removeClass("hover");
		}
		//先清除ulImgs上动画，让ulImgs移动到新的left位置
		$ulImgs.stop(true).animate({
			//新的left位置永远等于-LIWIDTH*moved
			left:-LIWIDTH*moved
		},INTERVAL,callback);
			//$titles.stop(true).animate({
			//新的left位置永远等于-LIWIDTH*moved
			//left:-SWIDTH*moved
		//},INTERVAL,callback);
	}
	$("#bannerLists>.bannerHandR").click(()=>{
		if(moved==data.length){
			moved=0;
			$ulImgs.css("left",0);
			//$titles.css("left",0);
		}
		move(1);
	});
	$("#bannerLists>.bannerHandL").click(()=>{
		if(moved==0){
			moved=data.length;
			$ulImgs.css("left",-LIWIDTH*moved);
			//$titles.css("left",-SWIDTH*moved);
		}
		move(-1);
	})
})
//楼层部分
$(function(){
	$.get("data/index_product.php").then(data=>{
      //console.log(data);
      var html1="",html2="",html3="",html4="";
      //console.log(data.floor1)
	 for(var floor1 of data.floor1){
         html1+=`
			  <li>
					<img src="${floor1.img}">
					<span>
					   <ul  data-lid="${floor1.lid}" data-tar="index" >
							<li>${floor1.title}</li>
							<li><b></b></li>
							<li>${floor1.subtitle}
							</li>
							<li>价格:¥
							<span>${floor1.price}</span></li>
						</ul>
					</span>
			 </li>
		 `;
	 }
	 for(var floor2 of data.floor2){
       //console.log(floor2)
         html2+=`
			  <li>
					<img src="${floor2.img}">
					<span>
						<ul  data-lid="${floor2.lid}" data-tar="index" >
							<li>${floor2.title}</li>
							<li><b></b></li>
							<li>${floor2.subtitle}
							</li>
							<li>价格:¥
								<span>${floor2.price}</span>
							</li>
						</ul>
					</span>
				
			  </li>
		 `;
	 }
	 for(var floor3 of data.floor3){
		 //console.log(floor3)
         html3+=`
			  <li>
				
					<img src="${floor3.img}">
					<span>
						<ul data-lid="${floor3.lid}" data-tar="index">
							<li>${floor3.title}</li>
							<li><b></b></li>
							<li>${floor3.subtitle}
							</li>
							<li>价格:¥
								<span>${floor3.price}</span>
							</li>
						</ul>
					</span>
				
			  </li>
		 `;
	 }
	 for(var floor4 of data.floor4){
		 //console.log(floor4)
         html4+=`
			  <li>
					<img src="${floor4.img}">
					<span>
						<ul data-lid="${floor4.lid}" data-tar="index">
							<li>${floor4.title}</li>
							<li><b></b></li>
							<li>${floor4.subtitle}
							</li>
							<li>价格:¥
								<span>${floor4.price}</span>
							</li>
						</ul>
					</span>
				
			  </li>
		 `;
	 }
	 $("#classify>.diamond ul").html(html1);
	 $("#classify>.widding ul").html(html2);
	 $("#classify>.coupleRing ul").html(html3);
	 $("#classify>.ACC ul").html(html4);
	});
	var $floors=$(".fl"),$divLift=$(".floorList")
	    console.log($(window).scrollTop())
		//当所有楼层加载完成后
		$(window).scroll(()=>{
			var scrollTop=$(window).scrollTop();
			var offsetTop1=$("#classify>.diamond").offset().top;
			var offsetTop2=$("#classify>.widding").offset().top;
			var offsetTop3=$("#classify>.coupleRing").offset().top;
			var offsetTop4=$("#classify>.ACC").offset().top;
            var Height=800;
			if(scrollTop<3000&&scrollTop>460){
			  /*********确定电梯按钮列表是否显示*********/
			   //任意元素距body顶部的总距离
			   $("#floors").show().find(".flr").animate({borderRadius:5},1300);
				if(scrollTop>offsetTop1-Height/2){
					$("#floor1").addClass("focus").siblings().removeClass("focus");
				}
				if(scrollTop>offsetTop2-Height/2){
				      $("#floor2").addClass("focus").siblings().removeClass("focus");
				}
				if(scrollTop>offsetTop3-Height/2){
					 $("#floor3").addClass("focus").siblings().removeClass("focus");
				}
				if(scrollTop>offsetTop4-Height/2){
				   $("#floor4").addClass("focus").siblings()
					   .removeClass("focus")
				}

			/******具体显示哪个电梯按钮*************/
		    }else{$("#floors").hide();}
		});
		$("#floors").on("click",".flr",function(){
			var $li=$(this);//this->li
			console.log($li)
			if(!$li.is(":last-child")&&!$li.is(":first-child")){
				var i=$li.index();//找当前li对应的楼层
				var offsetTop=$floors.eq(i-1).offset().top;
				//$(window).scrollTop(offsetTop-70)
				 //在HTML元素上调用animate
				 //document.body.scrollTop||
                 //document.documentElement.scrollTop
				$("html,body").stop(true).animate({
					scrollTop:offsetTop-80
				},500);
			}else if($li.is(":first-child")){
                 $("html,body").stop(true).animate({
					scrollTop:3600
				},500);
			}else{
				$("html,body").stop(true).animate({
					scrollTop:260
				},500);
			}
		})
})
	$(".diaBody>ul").on("click","[data-tar=index]",function(){
		var $tar=$(this);
		var lid=$tar.data("lid");console.log(lid);
		location.href="product-details1.html?lid="+lid;
	});
})
