<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/styledown.css" rel="stylesheet" type="text/css" />
<link href="css/stylenew.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/leftnav.css" media="screen" type="text/css">

<script src="js/jquery-3.3.1.min.js"></script>
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
			
   			  
   				    <div class="clearfix"></div>
   			 </div>
			 <div class="cssmenu">
				<ul>
						<li class="active"><a href="welcome.jsp">Home</a></li> 
					<li><a href="collection.jsp">Wishlist</a></li> 
					<li><a href="index.jsp">log out</a></li> 
					<li><a href="shoptest.jsp">Shop List</a></li>
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
						<p class="navi_title">所有商品</p>
					</span> <span>
						<p class="navi_title">节日礼物</p>
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
						<p class="navi_title">招贤纳士</p>
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
						
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class= "container">
	<div class="list-group div_article">
				<!-- 列表组标题 -->
				<a href="#" class="list-group-item active item_article_first">
					<h4 class="list-group-item-heading">&nbsp</h4>
				</a>
				<!--文章内容  -->
				<div id="collections"></div>
				 <div >
				<ul>
					<li class="active"><a href="ShopList.jsp">提交订单</a></li> 
					
				</ul>
			</div>
			</div>
		</div>
	</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$.ajax({
						type : "POST",
						dataType : "json",
						async : false,
						url : "${pageContext.request.contextPath}/queryAllCollection",
						data : {
							account : sessionStorage.getItem("account")
						},
						success : function(result) {
							var str = "";
							for (var i = 0; i < result.length; i++) {
								str = str
										+ "<div class='list-group-item item_article'>"
										+ "<div class='row'>"
										+ "<div class='div_center col-xs-9'>"
										+ "<div class='list-group-item-heading div_article_title'>"
										+ "<strong onclick='opendetail("
										+ result[i].id
										+ ")'>"
										+ result[i].variety
										+ ":"
										+ result[i].name
										+ "</strong>"
										+ "<div>"
										+ result[i].age
										+ "</div></div><h6 onclick='delcoll("
										+ result[i].id
										+ ")'>删除收藏</h6></div>"
										+ "<div class='col-xs-3 div_right_info'>"
										+ "<img class='iv_article img-rounded' src='images/"+result[i].picture+"' width=150px height=150px>"
										+ "</div></div></div>"
							}
							document.getElementById('collections').innerHTML = str;
						},
						error : function(e) {
							alert('error5');
						}
					});
		});
		function delcoll(id) {
			$.ajax({
						type : "POST",
						dataType : "json",
						async : false,
						url : "${pageContext.request.contextPath}/delCollection",
						data : {
							account : sessionStorage.getItem("account"),
							textid : id
						},
						success : function(result) {
							window.location.href = "${pageContext.request.contextPath}/collection.jsp";
						},
						error : function(e) {
							alert('error5');
						}
					});
		}
		function opendetail(id){
			sessionStorage.setItem("id_variety",id);
			window.location.href = "${pageContext.request.contextPath}/details.jsp";
		}
	</script>
	
	
	
	
	
	<!-- <script src="js/library/jquery.min.js"></script>
    <script src="js/library/bootstrap.min.js"></script>
    <script src="js/function-check-viewport.js"></script>
    <script src="js/library/slick.min.js"></script>
    <script src="js/library/select2.full.min.js"></script>
    <script src="js/library/imagesloaded.pkgd.min.js"></script>
    <script src="js/library/jquery.mmenu.all.min.js"></script>
    <script src="js/library/rellax.min.js"></script>
    <script src="js/library/isotope.pkgd.min.js"></script>
    <script src="js/library/bootstrap-notify.min.js"></script>
    <script src="js/library/bootstrap-slider.js"></script>
    <script src="js/library/in-view.min.js"></script>
    <script src="js/library/countUp.js"></script>
    <script src="js/library/animsition.min.js"></script>
    <script src="js/global.js"></script>
    <script src="js/config-mm-menu.js"></script>
    <script src="js/config-carousel.js">


    </script>
    <script src="js/config-carousel-thumbnail.js">


    </script>
    <script src="js/config-carousel-product-quickview.js"></script>
    Demo Only
    <script src="js/demo-add-to-cart.js">


    </script> -->
</body>
</html>