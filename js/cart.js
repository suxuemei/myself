$(()=>{
  $("#header").load("header.html");
  $.ajax({
    type:"GET",
	url:"data/cartDetails.php"
  }).then(data=>{
     console.log(data);
	 var html="",num=0,price=0;
	for(var obj of data){
		num+=parseInt(obj.count);
		price+=parseFloat(obj.price);
		console.log(obj.is_checked)
	   html+=`
		 <div class="imfor">
				<div class="check">
					<input type="checkbox" data-iid="${obj.iid}" class="oneChecked" ${obj.is_checked==1?"checked":""}/>	
				</div>
				<div class="product">
					  <a href="#">
						<img src="${obj.img}" alt="">
					  </a>
					  <span class="desc">
						   <a href="#">${obj.title}</a> 
					  </span> 
				</div>
				<div class="price">
						  <p> 
							 <b>¥</b>${obj.price}
						  </p> 
				</div>
				<div class="num"  data-lid="${obj.lid}" data-iid="${obj.iid}"> 
						 <span class="reduce">&nbsp;-&nbsp;</span>
						 <input type="text" value="${obj.count}">
						 <span class="add">&nbsp;+&nbsp;</span>
				</div>
				<div class="total-price">
							 <span>¥</span> 
							 <span class="total">${obj.price*obj.count}</span>
				</div>
				<div class="del" data-iid="${obj.iid}">
						   <a href="#">删除</a>
				</div>
		</div>
	            `;
	}
	function reLoad(tar,dLid,dCount){
		let stateChk=tar.parent().siblings(".check").find("input").prop("checked")
		if(stateChk){  
		     $.ajax({
				 type:"GET",
				 url:"data/update.php",
				 data:{lid:dLid,count:dCount}
			   }).then(data=>{
				   if(data.code==-1){ 
					   alert("你没有登录");
					   location.href="login.html";
				   }
			   });
			  // location.reload(true);
		}else{
		   return;
		}
	}

	$("#content-box-body").html(html);
     //删除购物车
	 $("#content-box-body").on("click",".del",(e)=>{
	     let del=$(e.target);
		 let iid=del.parent().data("iid");
		 console.log(iid);
		 $.ajax({
		   type:"GET",
		   url:"data/deleteIid.php",
		   data:{iid:iid}
		 }).then(data=>{
		   console.log(data);
		   if(data==1)
			   alert("删除成功");
		   location.reload();
		 });
	 })
	
    var totalCheckBox=$("#content-box-body").html(html).find(":checkbox").length;
	var totalChecked=$("#content-box-body").html(html).find(":checked").length;
	console.log(totalCheckBox,totalChecked);
	if(totalChecked==totalCheckBox){	      
		   $("#checkStatus").prop("checked",true);
	   }else{$("#checkStatus").prop("checked",false)}
	$("#content-box-body").html(html).on("change",":checkbox",function(e){
	   let totalCheckBox=$("#content-box-body").find(":checkbox").length;
	   let totalChecked=$("#content-box-body").find(":checked").length;
	   let $tar=$(e.target);
	   console.log($tar.prop("checked"))
	   let tarState=$tar.prop("checked");	   
	   if(totalChecked==totalCheckBox){	      
		   $("#checkStatus").prop("checked",true);
	   }else{$("#checkStatus").prop("checked",false)}
	   let iid=$tar.data("iid");
	   function updateTotal(is_checked,computed){
	     $.ajax({
				 type:"GET",
				 url:"data/updateIsChecked.php",
				 data:{iid:iid,is_checked:is_checked}
			   }).then(data=>{
			      if(data.code==-1){
				    alert("你需要登录");
					location.href="login.html";
				  }
                  let total=parseInt($("#shopping-cart>.title>p>.total").html());
                  let oneCount=parseInt($tar.parent().siblings(".num").children("input").val());

				  let totalPrice=parseFloat($("#shopping-cart>.title>p>.totalPrices").html().slice(1));
                  let onePrice=parseFloat($tar.parent().siblings(".total-price").children(".total").html())
				  $("#shopping-cart>.title>p>.total").html(oneCount*computed+total);
				  console.log(totalPrice,onePrice)
				  $("#shopping-cart>.title>p>.totalPrices").html("¥"+(totalPrice+onePrice*computed)+".00");
			   });
	   }
		if($tar.prop("checked")){
		    updateTotal(1,1);
		}else{
		   updateTotal(0,-1);
		}
		 //location.reload();
	})
	function checkIid(iid,is_checked){
	     $.ajax({
				   type:"GET",
				   url:"data/updateIsChecked.php",
				   data:{iid:iid,is_checked:is_checked}
				 }).then(data=>{
				   if(data==-1){
					   alert("你还没有登录");
					   location.href="login.html";
					}else{return;}
		})
	}
    $("#checkStatus").change(function(){
		var tar=$("#content-box-body").find(":checkbox");
		if($("#checkStatus").prop("checked")){			
			for(var i=0;i<tar.length;i++){
			     $(tar[i]).prop("checked",true);
				 let iid=$(tar[i]).data("iid");
				 checkIid(iid,1);
			}
		}else{
			for(var i=0;i<tar.length;i++){
			     $(tar[i]).prop("checked",false);
				let iid=$(tar[i]).data("iid");
				 checkIid(iid,0);
			}
		   
		}
		//location.reload();
		let numTotal=0,priceTotal=0;
	    let tars=$("#content-box-body").find(":checked");
		console.log(tars.length)
	    for(var n=0;n<tars.length;n++){
	       var numOne=$(tars[n]).parent().siblings(".num").find("input").val();
		   var sPrice=$(tars[n]).parent().siblings(".total-price").find(".total").html();
		   numTotal+=parseInt(numOne);
		   priceTotal+=parseFloat(sPrice);
		}
	$("#shopping-cart>.title>p>.total").html(numTotal);
	$("#shopping-cart>.title>p>.totalPrices").html("¥ "+priceTotal+".00");
	})
        let numTotal=0,priceTotal=0;
	    let tars=$("#content-box-body").html(html).find(":checked");
		console.log(tars.length)
	    for(var n=0;n<tars.length;n++){
	       var numOne=$(tars[n]).parent().siblings(".num").find("input").val();
		   var sPrice=$(tars[n]).parent().siblings(".total-price").find(".total").html();
		   numTotal+=parseInt(numOne);
		   priceTotal+=parseFloat(sPrice);
		}
	$("#shopping-cart>.title>p>.total").html(numTotal);
	$("#shopping-cart>.title>p>.totalPrices").html("¥ "+priceTotal+".00");
	console.log(price)
		$("#content-box-body").on("click",".reduce",function(e){
			let n=$(e.target).next().val();
			  n--;
			 $(e.target).next().val(n);
			 if(n==0){
				 let del=$(e.target);
				 let iid=del.parent().data("iid");
				 console.log(iid);
				 $.ajax({
				   type:"GET",
				   url:"data/deleteIid.php",
				   data:{iid:iid}
				 }).then(data=>{
				   console.log(data);
				   if(data==1)
					   alert("删除成功");
				   location.reload();
				 });
			 }
			 /******************/
			 if(n>=1){
				  let check=$(e.target).parent().siblings(".check").children("input").prop("checked");
				  let totalCount=parseInt($("#shopping-cart>.title>p>.total").html());
				  let totalPrice=parseFloat($("#shopping-cart>.title>p>.totalPrices").html().slice(1));
				  let onePrice=parseFloat($(e.target).parent().siblings(".price").text().split("¥")[1]);
				  let all=totalPrice-onePrice;
				  totalCount--
				  if(check){
					 $("#shopping-cart>.title>p>.total").html(totalCount);
					 $("#shopping-cart>.title>p>.totalPrices").html("¥ "+all+".00");
				  }
			 }
			 /*************************************/
			let price=$(e.target).parent().prev().children("p").text().split("¥")[1];
			 $(e.target).parent().next().children(".total").html(n*price);
		    let lid=$(e.target).parent().data("lid");
			let count=parseInt($(e.target).siblings("input").val());
			reLoad($(e.target),lid,count);
		})
		$("#content-box-body").on("click",".add",function(e){
			 let  n=$(e.target).prev().val();
			  n++;
			 $(e.target).prev().val(n);
              /******************/
			  let check=$(e.target).parent().siblings(".check").children("input").prop("checked");
			  let totalCount=parseInt($("#shopping-cart>.title>p>.total").html());
			  let totalPrice=parseFloat($("#shopping-cart>.title>p>.totalPrices").html().slice(1));
			  let onePrice=parseFloat($(e.target).parent().siblings(".price").text().split("¥")[1]);
			  let all=totalPrice+onePrice;
			  totalCount++
			  if(check){
				 $("#shopping-cart>.title>p>.total").html(totalCount);
				 $("#shopping-cart>.title>p>.totalPrices").html("¥ "+all+".00");
			  }
			 /*************************************/
			 let price=$(e.target).parent().prev().children("p").text().split("¥")[1];
			 $(e.target).parent().next().children(".total").html(n*price);
		     let lid=$(e.target).parent().data("lid");
			let count=parseInt($(e.target).siblings("input").val());
            reLoad($(e.target),lid,count);
		})
  });
  $("#footer").load("footer.html");
});