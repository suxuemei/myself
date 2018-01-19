//中间轮播部分
$(function(){
       /* 有bug*/
    $("#header").load("header.html");
    $("#footer").load("footer.html");
	var trans=$("#product-recommands ul");
	var lis=$("#product-recommands ul>li");
	var imgs=$("#product-recommands img");
	console.log(lis.size());
	var WID=170;
	function lunbo(){
		var trans=$("#product-recommands ul");
	    var lis=$("#product-recommands ul>li");
	    var imgs=$("#product-recommands img");
	    trans.animate({left:-WID},3000,function(){
			lis.last().after(lis.first());
		    trans.css("left",0);
			lunbo();
		});	
	}
	lunbo()
       
    /****************放大镜部分*************************/
	 var lid=location.href.split("=")[1];
		console.log(lid);
		$.ajax({
		  type:"GET",
		  url:"data/get_index_product.php",
		  data:{lid:lid}
		}).then(msg=>{
		  var data=msg.family;
		  var dets=msg.details;
		  console.log(msg.family);
		  console.log(msg);
		  lid=location.href.split("=")[1];
		  console.log(lid);
		  /*判断是第几个商品就显示不同的详情页*/
		  if(lid>0&&lid<=12){
		  $(".product-right").show();		   
		  }else{ $(".product-right").hide()};
		  if(lid>12&&lid<19){
            $(".productRight").show();
		  }else{ $(".productRight").hide()};
		  if(lid>18){
			  $(".productRight2").show();
			  console.log(0000)
		  }else{$(".productRight2").hide()};
		  /***************/
		 $(".smImg>ul").html(`
				<li>
					<img src="${data[0].sm}">
				</li>`);
		 $(".mdImg").html(`<img src="${data[0].md}"><div class="filter"></div><div class="bGround">111</div> `);
			 //$(".lgImg").html(`<img src="${data[0].lg}">`);
			 $(".lgImg").css({
				 "backgroundImage":`url(${data[0].lg})`,
				 "backgroundRepeat":`no-repeat`	,
				 });
		 var html="";
		 for(var obj of data){
			 //console.log(obj.sm)
              html+=`
				<li>
					<img src="${obj.sm}" data-md="${obj.md}" data-lg="${obj.lg}">
				</li>  
			  `;
		 }
         $(".smImg>ul").html(html);
		   if(lid>18){			  
		 		 html=""; 				 
				 html+=`
					<h2>${dets[0].title}</h2>
					<p>价格：¥<span>${dets[0].cprice}</span></p>
					<ul>
						<li>评价:<span>${dets[0].evaluate}</span></li>
						<li><span>${dets[0].address}</span></li>
					</ul>
					<div class="proMaterialCup">
							<span>材质</span>
							<span class="chec">${dets[0].material}</span>
					</div>
					<div class="proData">
							<span>数量</span> 
							<output>
								<a href="#" class="reduce">-</a>
								<input type="text" value=1>
								<a href="#" class="add">+</a>
							</output>
							</div>
								<a href="#" class="cart">加入购物车</a>
								<a href="#">立即购买</a>
								<p>配送说明：预计在15个工作日送达(限在大陆地区)，其他地区请联系客服。</p>
							</div>
					        <p>
								<span>我们专注于你们永恒的爱,
											专业的品质打造完美的你,
											 缔造无暇的真情。</span>
							</p>
					         <p>
								<span>我们专注于你们永恒的爱,
									 专业的品质打造完美的你,
																  缔造无暇的真情。</span>
							</p>					 
				 `;
				$(".productRight2").html(html);
				var lid=dets[0].cid;
				$(".productRight2").on("click",".add",function(e){
					e.preventDefault();
					var n=$(this).prev().val();
					n++;
                    $(this).prev().val(n);
				})
				$(".productRight2").on("click",".reduce",function(e){
				   e.preventDefault();
				   var n=$(this).next().val();
				   if(n>1) n--;
				   $(this).next().val(n);
				   console.log($(this).next().val())
				})
				$(".productRight2").on("click",".cart",function(e){
				   var count=$(".productRight2 .add").prev().val()
				   e.preventDefault();
                   $.ajax({
				      type:"GET",
					  url:"data/cart.php",
					  data:{lid:lid,count:count}
				   }).then(data=>{
					   console.log(data);
					   if(data.code==1){
						   alert("添加成功");
						   location.href="cart.html";
					   }else{
					     alert("你还没有登录，请登录。");
						 location.href="login.html";
					   }
				   });
				 })
		   }
		   if(lid>12){
			   html=""; 				 
			   html+=`
				   <h2>${dets[0].title}</h2>
										   <p>价格：¥<span>${dets[0].cprice}</span></p>
										   <ul>
											 <li>评价:<span>${dets[0].evaluate}</span></li>
											   <li><span>${dets[0].address}</span></li>
										   </ul>
										   <div class="classifyCup">
											   <span>分类</span>
												   <span class="chec">男女对戒</span>
												   <span>单男戒</span>
												   <span>单女戒</span>
										   </div>
										   <div class="proMaterialCup">
											   <span>材质</span>
												   <span class="chec">${dets[0].material}</span>
										   </div>
										   <div class="proMeaCup">
											 <span>选择手寸</span>
											   <select>
												  <option value="">男戒手寸</option>
													<option value="">5</option>
													<option value="">4</option>
													<option value="">3</option>
											   </select>
											   <input type="text" placeholder="男戒免费刻字">
											   <select>
												  <option value="">女戒手寸</option>
													<option value="">5</option>
													<option value="">4</option>
													<option value="">3</option>
											   </select>
											   <input type="text" placeholder="女戒免费刻字">
										   </div>
										   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, molestias aspernatur aut eveniet deserunt quas dolorum fuga. Voluptates maxime dignissimos optio similique. Illum, quia earum facere nemo corporis quaerat dolor.
										   </p>
										   <a href="#" class="cart">加入购物车</a>
									   <a href="#">立即购买</a>
				   				       
			   `;
			   $(".productRight").html(html);		     
		   }
		   if(lid>0){
				html=""; 				 
				html+=`
					<h2>${dets[0].title}</h2>
					<div class="proLid">
						<p>产品编号：</p>
						<span>T0072R</span>
						<span>甜蜜暗示</span>
					</div>
					<div class="proIntr">
						<p>产品介绍：</p>
						<span>${dets[0].introduce}</span>
					</div>
					<div class="proSpec">
						<p class="proWig">
						<span>钻重：</span>
						<select class="bck">
							<option value="" class="bck">0.5ct</option>
							<option value="" class="bck">0.4ct</option>
							<option value="" class="bck">0.3ct</option>
						</select>
						</p>
						<p class="proCol">
							<span>颜色:</span>
							<select class="gray">
								<option value="">H</option>
								<option value="">M</option>
								<option value="">L</option>
							</select>
						</p>
						<p class="proPur">
							<span>净度:</span>
							<span>VS</span>
						</p>
					</div>
					<div class="proMea">
						<p class="proSize">
							<span>指圈号：</span>
							<select class="gray">
									<option value="" class="gray">9号</option>
									<option value="" class="gray">10号</option>
									<option value="" class="gray">11号</option>
							</select>
						</p>
					</div>
					<div class="proMaterial">
						<span>材质：</span>
						<span>${dets[0].material}</span>
					</div>
					<div class="proPrice">
							<span>商品价格：</span>
							<span>¥${dets[0].cprice}</span>
					</div>
					<div class="btns">											  
						<a href="#" data-req="consult">购买咨询</a>
						<a href="#" data-req="order">我要定制</a>
					</div>
					<div class="notice">
						<p>顾客须知：如需了解更多商品，请咨询珠宝顾问</p>
					</div>			  
						  `;
					$(".product-right").html(html);
					
		   }  
		   	 $(".product-right").on("click","[data-req=consult]",function(e){
				    e.preventDefault;
				    alert("网络繁忙，请稍后……");					
			});
			$(".product-right").on("click","[data-req=order]",function(e){
				   e.preventDefault;
				   alert("网络繁忙，请请电话预约【13846924278】……");				
			});
		  var aBackward=$("#product-details>a.btn-left");
		   var aForward=aBackward.next();
		   var imgs=$(".smImg img");
	   });
	   $(".smImg>ul").on("mouseover","li>img",function(e){
	         var tar=e.target;
			 let md=$(tar).data("md");
			 let lg=$(tar).data("lg");
			 html="";
			 html+=`
				<img src="${md}"><div class="filter"></div><div class="bGround">11111</div> 
			 `;
			 $(".mdImg").html(html);
			 //$(".lgImg").html(`<img src="${lg}">`)
				$(".lgImg").css({
					"backgroundImage":`url(${lg})`,
					"backgroundRepeat":`no-repeat`
						});
			
	   });
				// $(".product-left>.mdImg").hover(function(){
				// $(".filter").toggle();
				// $(".lgImg").toggle();
				// });//******
		   $(".product-left>.mdImg").on("mousemove",".bGround",function(e){
			   console.log(111);
			   console.log(e.offsetX);
		   $(".filter").show();
		   $(".lgImg").show();
		   let lgDiv=$(".lgImg");
		   let mask=$(".filter");
			    let x=e.offsetX,y=e.offsetY;
				console.log(x,y);
				let top=y-mask.width()/2;
                let left=x-mask.width()/2;
				if(top<0) top=0;
				else if(top>250) top=250;
				if(left<0) left=0;
				else if(left>300) left=300;
				mask.css({
					"left":left,
					"top":top});
               lgDiv.css("backgroundPosition",`${-(left)}px ${-(top)}px`);
	   });
	     $(".product-left>.mdImg").off("mouseout").on("mouseout",".bGround",e=>{
		   $(".filter").hide();
		   $(".lgImg").hide();
		   
		});
		/***********详情****************************/
		
    /* ************侧边栏的部分***************/
   $(".accordion>h4").off("click").on("click","span",function(e){
	   var tar=$(e.target);
	   var i=$(".accordion>h4>span").index(tar);
		   if(tar.html()=="-"){
			  $(".accordion").children('ul:eq("'+i+'")').removeClass("open");
			  $(e.target).html("+");
		   }else{
			  $(".accordion").children('ul:eq("'+i+'")').addClass("open");
			  $(".accordion").children('ul:not(:eq("'+i+'"))').removeClass("open").prev().children("span").html("+");
			   $(e.target).html("-");
            }
   });

})