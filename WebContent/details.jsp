<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="css/styledown.css" rel="stylesheet" type="text/css" />
<link href="css/stylenew.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/leftnav.css" media="screen" type="text/css">


<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/main.css" />
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
			<div class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input id="search" type="text" class="form-control" placeholder="I wish to find">
					</div>
					<button  onclick="onsearch()">To</button>
				</div>
   			  
   				    <div class="clearfix"></div>
   			 </div>
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="welcome.jsp">Home</a></li> 
					<li><a href="collection.jsp">Wishlist</a></li> 
					<li><a href="index.jsp">log out</a></li> 
					<li><a href="ShopList">ShopList</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
   </div>
</div>
</div>
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
						<p class="navi_title">测试类</p>
					</span> <span>
						<p class="navi_title">测试类</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
					</span> <span>
						<p class="navi_title">测试类</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">测试类</a>
						</p>
						<p>
							<a href="">技术客服</a>
						</p>
					</span> <span>
						
					</span>
				</div>
			</div>
		</div>
	</div>
	<!--正式内容  -->
	
	<div class="container">
		<div class="row">
			<div class="col-xs-9">

				<iframe id="article" src="eg.html" frameBorder="0" width="900" scrolling="yes" height="900"></iframe>
			</div>
			<div class="col-xs-3">

				<div class="panel panel-default">
					<div class="panel-heading">简单介绍</div>

					<div class="panel-body">
						<div class="jumbotron div_userinfo">
							<img id="petimg" class="img-responsive center-block" src="images/003.png">
							<div id="petname" style="display: inline-block; margin-left: 12px; font-size: 18px;">这里也插入狗狗图片</div><br>
							<img id="img_coll" height="30px" width="30px" onclick="collect()" src="images/uncollect.png">
							<h id="wd_coll">收藏</h>
						</div>
					</div>
					<div class="panel panel-default">
					<div id="banner">
				</div>
					</div>
				</div>
				
			</div>
		</div>
	
	
	<!-- <div class="container">
	<div class="row main">
              <div class="col-md-6">
                <div class="panel-body">
						<div class="jumbotron div_userinfo">
							<img id="petimg" class="img-responsive center-block" src="images/001.png">
							<div id="petname" style="display: inline-block; margin-left: 12px; font-size: 18px;"></div><br>
							<img id="img_coll" height="30px" width="30px" onclick="collect()" src="">
							
						</div>
					</div>
              </div>
              <div class="col-md-6">
                <div class="summary">
                  <div class="desc">
                    <div class="header-desc">
                      <h2 class="product-title">Sald</h2>
                      <p class="price">$2.00</p>
                    </div>
                    <div class="body-desc">
                      <div class="woocommerce-product-details-short-description">
                        <p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis
                          sem dapibus, varius egestas lorem a sollicitudin. </p>
                      </div>
                    </div>
                    <div class="footer-desc">
                      <form class="cart">
                        <div class="quantity buttons-added">
                          <input class="minus" value="-" type="button">
                          <input class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number">
                          <input class="plus" value="+" type="button">
                        </div>
                        <button class="btn btn-brand no-radius">ADD TO CART</button>
                        <img  id ="img_coll"height="30px" width="30px"  onclick="collect()" src="images/uncollect.png">
                        <h id="wd_coll">收藏</h>
                          
                        </button>
                      </form>
                    </div>
                  </div>
               
                </div>
              </div>
            </div>
            </div> -->
            <script type="text/javascript">
			var id = sessionStorage.getItem("id_variety");
			$(function() {
				$.ajax({
							type : "POST",
							dataType : "json",
							async : false,
							url : "${pageContext.request.contextPath}/selectAll",
							data : {
								id : id
							},
							success : function(result) {
								document.getElementById('petname').innerHTML = result.name;
								document.getElementById('petimg').src = "images/"
										+ result.picture;
								document.getElementById('article').src = result.text;
							},
							error : function(e) {
							}
						});
			});

			if (sessionStorage.getItem("account") == null) {
				document.getElementById('wd_coll').innerHTML = "收藏";
				document.getElementById('img_coll').src = "images/uncollect.png";
				function collect() {
					window.location.href = "${pageContext.request.contextPath}/index.jsp";
				}
				function showCollections() {
					window.location.href = "${pageContext.request.contextPath}/index.jsp";
				}
			} else {
				document.getElementById('banner').innerHTML = "<ul class='nav navbar-nav navbar-right'>"
					+"<a class='navbar-text navbar-right' href='myself.jsp'>个人中心&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>"
					+"</ul><ul class='nav navbar-nav navbar-right'>"
					+"<a class='navbar-text navbar-right' href='usersafe.jsp'>修改信息&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a>"
					+"</ul><ul class='nav navbar-nav navbar-right'>"
					+"<a class='navbar-text navbar-right' href='collection.jsp'>收藏夹&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>	</ul>";
				$(function() {
					$.ajax({
								type : "POST",
								dataType : "json",
								async : false,
								url : "${pageContext.request.contextPath}/queryCollection",
								data : {
									account : 3,
									textid : 3
								},
								success : function(result) {
									if (result == true) {
										document.getElementById('wd_coll').innerHTML = "已收藏";
										document.getElementById('img_coll').src = "images/collected.png";
									} else {
										document.getElementById('wd_coll').innerHTML = "收藏";
										document.getElementById('img_coll').src = "images/uncollect.png";
									}
								},
								error : function(e) {
									alert('error2');
								}
							});
				});
				function collect() {
					if (document.getElementById('wd_coll').innerHTML == "已收藏") {
						$.ajax({
									type : "POST",
									dataType : "json",
									async : false,
									url : "${pageContext.request.contextPath}/delCollection",
									data : {
										account : sessionStorage
												.getItem("account"),
										textid : id
									},
									success : function(result) {
										document.getElementById('wd_coll').innerHTML = "收藏";
										document.getElementById('img_coll').src = "images/uncollect.png";
									},
									error : function(e) {
										alert('error3');
									}
								});
					} else if (document.getElementById('wd_coll').innerHTML == "收藏") {
						/* alert(sessionStorage.getItem("account")); */
						$.ajax({
									type : "POST",
									dataType : "json",
									async : false,
									url : "${pageContext.request.contextPath}/addCollection",
									data : {
										account : sessionStorage.getItem("account"),
										textid : id
									},
									success : function(result) {
										document.getElementById('wd_coll').innerHTML = "已收藏";
										document.getElementById('img_coll').src = "images/collected.png";
									},
									error : function(e) {
										alert('error4');
									}
								});
					}

				}
				function showCollections() {
					window.location.href = "${pageContext.request.contextPath}/collection.jsp";
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
</html>