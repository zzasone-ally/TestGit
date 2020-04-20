<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/styledown.css" rel="stylesheet" type="text/css" />
<link href="css/stylenew.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/leftnav.css" media="screen" type="text/css">

<script src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
.navbartest {
	height: 50px;
	background-color:#583d28;
}
h3 {letter-spacing:1px;
color:#024C68;}

</style>
</head>

<body>
	<!-- 最顶部导航 -->
	
	<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
     <div class="header-top-left">
			
   			  
   				    <div class="clearfix"></div>
   			 </div>
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="login.html">Home</a></li> 
					<li><a href="collection.jsp">Wishlist</a></li> 
					<li><a href="index.jsp">log out</a></li> 
					<li><a href="shoptest.jsp">Shop List</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
   </div>
</div>
</div>
	


	<!-- 轮播图 -->


	<div id="myCarousel" class="carousel slide"
		style="background-color: #dedef8; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="./images/cat_fight.png"
					class="img-responsive center-block">
			</div>
			<div class="item">
				<img src="./images/cat_grumpy.png"
					class="img-responsive center-block">
			</div>
			<div class="item">
				<img src="./images/cat_poo.png"
					class="img-responsive center-block">
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!--鼠标悬停下拉导航  -->

	<div class="row" style="position:relative">
		<div class="navi_body">
			<div class="navi_head">
				<div style="width: 80%; margin-left: auto; margin-right: auto;">
					<span>
						<p class="navi_title">所有商品</p>
					</span> <span>
						<p class="navi_title">测试类1</p>
						<p>
							<a href="">七夕礼物</a>
						</p>
						<p>
							<a href="">圣诞礼物</a>
						</p>
						<p>
							<a href="">新年礼物</a>
						</p>
					</span> <span>
						<p class="navi_title">测试类2</p>
						<p>
							<a href="">WEB前端工程师</a>
						</p>
						<p>
							<a href="">JAVAWEB工程师</a>
						</p>
						<p>
							<a href="">APP开发工程师</a>
						</p>
						<p>
							<a href="">数据库工程师</a>
						</p>
						<p>
							<a href="">软件架构师</a>
						</p>
						<p>
							<a href="">技术客服</a>
						</p>
					</span> <span>
					<p class="navi_title">测试类3</p>
						
					</span>
				</div>
			</div>
		</div>
	</div>
	<!--左边个人面板  -->
	<div class="container">

		<div class="row">
			<div class="col-xs-3">
				<div class="account-l fl">
			
	<a class="list-title">账户</a>
	<ul id="accordion" class="accordion">
		<div>
			<div class="link"><i class="fa fa-leaf"></i>信息管理<i class="fa fa-chevron-down"></i></div>
				<div class="row">
					<div class=" div_record ">


						<div class="panel panel-default">
							<div class="panel-heading">个人面板</div>
							<div class="panel-body">
								<div class="jumbotron div_userinfo" id="userinfo"></div>
							</div>

						</div>



					</div>
				</div>
		</div>
		<li>
			<div class="link"><i class=""fa fa-leaf"></i>信息安全<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
		 <div class="row">
			
			<div id="banner">
				</div>
				</div>
				<!-- <li id="publishpurchase"><a>发布采购</a></li>
				<li id="postneeds"><a>查看购物车</a></li>
				<li id="getneeds"><a>已收到的报价单</a></li>
				<li id="mypricesheet"><a>我的报价单</a></li>
				<li id="concernshop"><a>已关注的店铺</a></li>
				<li id="concerngood"><a>已关注的商品</a></li> -->
			</ul>
		</li>
		</ul>
		</div>
			<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src='js/leftnav.js'></script>
	
				<!-- <div class="row">
					<div class=" div_record ">


						<div class="panel panel-default">
							<div class="panel-heading">个人面板</div>
							<div class="panel-body">
								<div class="jumbotron div_userinfo" id="userinfo"></div>
							</div>

						</div>



					</div>
					</div> -->
			
		
		
			</div>
			
			<div id="banner">
				</div>
			
			
		<!--模块导航 -->
		
			<div class="col-xs-9">
			
			<div class="content_top">
	<div class="container">
		<div class="grid_1">
			<div class="col-md-3">
			 <div class="box2">
			 	<ul class="list1">
			 		<i class="lock"> </i>
			 		<li class="list1_right"><p>Upto 5% Reward on your shipping</p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
		</div>
		<div class="col-md-3">
			 <div class="box3">
			 	<ul class="list1">
			 		<i class="clock1"> </i>
			 		<li class="list1_right"><p>Easy Extended Returned</p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			<div class="col-md-3">
			 <div class="box4">
			 	<ul class="list1">
			 		<i class="vehicle"> </i>
			 		<li class="list1_right"><p>Free Shipping on order over 99 $</p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			
		</div>
		<!--文字栏目  -->
				<div class="clearfix"> </div>
		</div>
		<div class="column_center">
			<h1>1 of the most Beautiful online store </h1>
			
		</div>
		
		
	<!--  子栏目 -->
	
		<!-- <div class="menu_box">
	  
				<div class="megapanel">
				
						<div class="sellers_grid">
			<ul class="sellers">
				<i class="star"> </i>
				<li class="sellers_desc"><h2>Best Sellers</h2></li>
				<div class="clearfix"> </div>
			</ul>
		</div>
							<div class="grid_2">
			<div class="col-md-4 ">
			  <div class="box_inner">
				<img src="images/cat_eyes.png" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>Ullamcorper suscipit</h3>
				 	<h4>178,90 $</h4>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">Add to Cart</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">See More</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			
			<div class="col-md-4 ">
			  <div class="box_inner">
				<img src="images/cat_clean.png" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>Ullamcorper suscipit</h3>
				 	<h4>178,90 $</h4>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">Add to Cart</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">See More</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="col-md-4">
			  <div class="box_inner">
				<img src="images/cat_grumpy.png" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>Ullamcorper suscipit</h3>
				 	<h4>178,90 $</h4>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">Add to Cart</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">See More</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		
			
			</div>
			</div> 
			 -->
			
			
			
			
		<div class="column_center">
			
			<h2>Only your love can be a mist through the mountains</h2>
		</div>
				<div class="row">
					<div class="col-xs-3">
						<div class="thumbnail">
							<img onclick="skip('id1.0')" id="img1.0" class="img-responsive center-block" src="images/10xiaodongwu_03.png" alt="...">
							<div class="caption">
								<h3 id="type1.0">test?</h3>
								<div id="id1.0" class="hidden"></div>
								<p id="variety1.0">...</p>
							</div>
						</div>
					</div>
					<div class="col-xs-3">

						<div class="thumbnail">
							<img id="img1.1" onclick="skip('id1.1')" class="img-responsive center-block" src="images/001.png" alt="...">
							<div class="caption">
								<h3 id="type1.1">test?</h3>
								<div id="id1.1" class="hidden"></div>
								<p id="variety1.1">第一种</p>
							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img id="img1.2" onclick="skip('id1.2')" class="img-responsive center-block" src="images/003.png" alt="...">
							<div class="caption">
								<h3 id="type1.2">test?</h3>
								<div id="id1.2" class="hidden"></div>
								<p id="variety1.2">...</p>
							</div>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="thumbnail">
							<img id="img1.3" onclick="skip('id1.3')" class="img-responsive center-block" src="images/002.png" alt="...">
							<div class="caption">
								<h3 id="type1.3">test?</h3>
								<div id="id1.3" class="hidden"></div>
								<p id="variety1.3">...</p>
							</div>
						</div>
					</div>
				</div>
				
				</div>
			</div>
		</div>
		
	</div>
	<script type="text/javascript">
	
		$(function() {
			if (sessionStorage.getItem("account") == null) {
				document.getElementById('userinfo').innerHTML = "<img class='img-responsive center-block'"
				+"src='./images/cat_clean.png'>"
						+ "<divstyle='text-center display: inline-block; margin-left: 12px; font-size: 18px;'>您未登陆</div>";
				document.getElementById('banner').innerHTML = "<ul class='nav navbar-nav navbar-right'>"
					+"<a class='navbar-text navbar-right' href='index.jsp'>登陆&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>"
					+"</ul><ul class='nav navbar-nav navbar-right'>";
			} else {
				document.getElementById('userinfo').innerHTML = "<img class='img-responsive center-block'"
						+ "height='150px' width='150px' src='./images/cat_purr.png'"
						+ sessionStorage.getItem("image")
						+ "'>"
						+ "<h4>欢迎！<div id='username'"
				+"style='display: inline-block; margin-left: 12px; font-size: 18px;'>"
						+ sessionStorage.getItem("username") + "</div></h4>";
				document.getElementById('banner').innerHTML = "<ul class='nav navbar-nav navbar-right'>"
					+"<a class='navbar-text navbar-right' href='index.jsp'>退出&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>"
					+"</ul><ul class='nav navbar-nav navbar-right'>"
				+"<a class='navbar-text navbar-right' href='myself.jsp'>个人中心&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>"
				+"</ul><ul class='nav navbar-nav navbar-right'>"
				+"<a class='navbar-text navbar-right' href='usersafe.jsp'>修改信息&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a>"
				+"</ul><ul class='nav navbar-nav navbar-right'>"
				+"<a class='navbar-text navbar-right' href='collection.jsp'>收藏夹&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>	</ul>";
			}
			$.ajax({
						type : "POST",
						dataType : "json",
						async : false,
						url : "${pageContext.request.contextPath}/selectByHotnum",
						success : function(result) {
							for (var i = 0; i < result.length; i++) {
								document.getElementById("id1." + i).innerHTML = result[i].id;
								document.getElementById("img1." + i).src = "images/"
										+ result[i].picture;
								document.getElementById("type1." + i).innerHTML = result[i].variety;
								document.getElementById("variety1." + i).innerHTML = result[i].name;
							}
						},
						error : function(e) {
							alert('error');
						}
					});
			$.ajax({
						type : "POST",
						dataType : "json",
						async : false,
						url : "${pageContext.request.contextPath}/selectByTime",
						success : function(result) {
							for (var i = 0; i < result.length; i++) {
								document.getElementById("id2." + i).innerHTML = result[i].id;
								document.getElementById("img2." + i).src = "img/"
										+ result[i].picture;
								document.getElementById("type2." + i).innerHTML = result[i].variety;
								document.getElementById("variety2." + i).innerHTML = result[i].name;
							}
						},
						error : function(e) {
							alert('error');
						}
					});
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "${pageContext.request.contextPath}/selectByType",
				success : function(result) {
					var str1="";
					var str2="";
					var str3="";
					var str4 = "";
					for (var i = 0; i < result.length; i++) {
						if (result[i].typeid == 1) {
							str1 = str1 + "<p>" + result[i].variety + "</p>";
						} else if (result[i].typeid == 2) {
							str2 = str2 + "<p>" + result[i].variety + "</p>";
						} else if (result[i].typeid == 3) {
							str3 = str3 + "<p>" + result[i].variety + "</p>";
						} else if (result[i].typeid == 4) {
							str4 = str4 + "<p>" + result[i].variety + "</p>";
						}
					}
					if (str1 != null) {
						document.getElementById("p1").innerHTML = str1;
					}
					if (str2 != null) {
						document.getElementById("p2").innerHTML = str2;
					}
					if (str3 != null) {
						document.getElementById("p3").innerHTML = str3;
					}
					if (str4 != null) {
						document.getElementById("p4").innerHTML = str4;
					}
				},
				error : function(e) {
					alert('error');
				}
			});
		});
		function skip(s) {
			sessionStorage.setItem("id_variety",
					document.getElementById(s).innerHTML);
			window.location.href = "${pageContext.request.contextPath}/details.jsp";
		}
		function filter(s) {
			if (s == 0) {
				$.ajax({
							type : "POST",
							dataType : "json",
							async : false,
							url : "${pageContext.request.contextPath}/selectByHotnum",
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									document.getElementById("id1." + i).innerHTML = result[i].id;
									document.getElementById("img1." + i).src = "img/"
											+ result[i].picture;
									document.getElementById("type1." + i).innerHTML = result[i].variety;
									document.getElementById("variety1." + i).innerHTML = result[i].name;
								}
							},
							error : function(e) {
								alert('error');
							}
						});
				$.ajax({
							type : "POST",
							dataType : "json",
							async : false,
							url : "${pageContext.request.contextPath}/selectByTime",
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									document.getElementById("id2." + i).innerHTML = result[i].id;
									document.getElementById("img2." + i).src = "img/"
											+ result[i].picture;
									document.getElementById("type2." + i).innerHTML = result[i].variety;
									document.getElementById("variety2." + i).innerHTML = result[i].name;
								}
							},
							error : function(e) {
								alert('error');
							}
						});
			} else {
				$.ajax({
							type : "POST",
							dataType : "json",
							async : false,
							url : "${pageContext.request.contextPath}/selectByTypeAndHotnum",
							data : {
								typeid : s
							},
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									document.getElementById("id1." + i).innerHTML = result[i].id;
									document.getElementById("img1." + i).src = "img/"
											+ result[i].picture;
									document.getElementById("type1." + i).innerHTML = result[i].variety;
									document.getElementById("variety1." + i).innerHTML = result[i].name;
								}
							},
							error : function(e) {
								alert('error');
							}
						});
				$.ajax({
							type : "POST",
							dataType : "json",
							async : false,
							url : "${pageContext.request.contextPath}/selectByTypeAndTime",
							data : {
								typeid : s
							},
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									document.getElementById("id2." + i).innerHTML = result[i].id;
									document.getElementById("img2." + i).src = "img/"
											+ result[i].picture;
									document.getElementById("type2." + i).innerHTML = result[i].variety;
									document.getElementById("variety2." + i).innerHTML = result[i].name;
								}
							},
							error : function(e) {
								alert('error');
							}
						});
			}

		}
		function onsearch(){
			var name = $("#search").val();
			if(name!=null&&name!=""){
				$.ajax({
					type : "POST",
					dataType : "json",
					async : false,
					url : "${pageContext.request.contextPath}/selectByName",
					data : {
						name:name
					},
					success : function(result) {
						sessionStorage.setItem("id_variety",result);
						window.location.href = "${pageContext.request.contextPath}/details.jsp";
					},
					error : function(e) {
						alert('查无此物');
					}
				});
			}
		}
	</script>


</body>
</body>
</html>