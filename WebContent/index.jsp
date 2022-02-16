<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<!-- metatags-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Meta tag Keywords -->
<!-- Custom-Style-Sheet -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--style_sheet-->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Font-Awesome_Icons-CSS -->
<!--//Custom-Style-Sheet -->
<!--online_fonts-->

<!--//online_fonts-->
</head>
<body>
	<div class="w3l-head">
		<h1>Welcome</h1>
	</div>
	<div class="w3l-main">
		<div class="w3l-left-side">

			<div class="flexslider">
				<ul class="slides">
					<li><img src="images/cat_cage.png" alt="image" /></li>
					<li><img src="images/cat_clean.png" alt="image" /></li>
					<li><img src="images/cat_eyes.png" alt="image" /></li>
					<li><img src="images/cat_poo.png" alt="image" /></li>
					<li><img src="images/cat_walk.png" alt="image" /></li>
				</ul>
			</div>
		</div>

		<div class="w3l-rigt-side">
			<form action="#" method="post">
				<div class="w3l-signin">
					<a class="w3_play_icon1" href="#small-dialog1"> sign in</a>
				</div>
				<div class="w3l-signup">
					<a class="w3_play_icon1" href="#small-dialog2"> sign up</a>
				</div>
				<div class="clear"></div>
			</form>
		</div>
		<div class="clear"></div>
	</div>

	<!--sign in form -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="wthree-container">
			<div class="wthree-form">
				<div class="agileits-2">
					<h2>sign in</h2>
				</div>
				<div>
					<div class="w3-user">
						<span><i class="fa fa-user-o" aria-hidden="true"></i></span> <input type="text" name="Username" placeholder="Username" id="username" required="">
					</div>
					<div class="clear"></div>
					<div class="w3-psw">
						<span><i class="fa fa-key" aria-hidden="true"></i></span> <input type="password" name="password" placeholder="Password" id="password" required="">
					</div>
					<!-- <div class="clear"></div>
				<div class="w3l-check">
					<input type="checkbox" class="checkbox">
					<span><a href="#">forgot password ?</a></span>  
				</div> -->
					<div class="clear"></div>
					<div class="signin">
						<input type="submit" onclick="formcheck()" value=" signin">
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<!--sign in form -->
	<!-- for register popup -->

	<!--sign up form -->
	<div id="small-dialog2" class="mfp-hide">
		<div class="wthree-container">
			<div class="wthree-form bg">
				<div class="agileits-2">
					<h2>sign up here</h2>
				</div>
				<div>
					<div class="w3-user">
						<span><i class="fa fa-user-o" aria-hidden="true"></i></span> <input type="text" name="Username" id="username" placeholder="username" required="">
					</div>
					<div class="clear"></div>
					
					<div class="w3-psw">
						<span><i class="fa fa-key" aria-hidden="true"></i></span> <input type="password" name="password" id="password" placeholder="password" required="">
					</div>
					<div class="clear"></div>
					<div class="w3-cpsw">
						<span><i class="fa fa-key" aria-hidden="true"></i></span> <input type="password" name="password" id="repassword" placeholder="repassword" required="">
					</div>
					<div class="clear"></div>
					<<!-- div class="w3-email">
						<span><i class="fa fa-envelope" aria-hidden="true"></i></span> <input type="text" name="birthday" id="age" placeholder="birthday(Year-Mouth-Date)" required="" />
					</div>
					<div class="clear"></div> -->
					
					<div class="signin">
						<input type="submit" onclick="submit()" value="sign up">
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>



	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

	<!-- pop-up-box-js-file -->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box-js-file -->
	<script>
	$(document).ready(function() {
	$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
	<script type="text/javascript">
		function formcheck() {
			var username = $("#username").val();
			var password = $("#password").val();
			if(username == null || username==""){
				alert("账号不能为空");
				return;
			}
			if(password == null || password==""){
				alert("密码不能为空");
				return;
			}
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "${pageContext.request.contextPath}/login",
				data : {
					username:username,
					password:password
				},
				success : function(result) {
					if(result.type=="0"){
						$.ajax({
							type : "POST",
							async : false,
							dataType : "json",
							url : "${pageContext.request.contextPath}/queryAccountInfo",
							data : {
								username:username
							},
							success : function(result) {
							
								if(result.type){
									alert("登录成功！");
									sessionStorage.setItem("account",result.account);
									sessionStorage.setItem("username",result.username);
								
									if(sessionStorage.getItem("id_variety")!=null){
										window.location.href = "${pageContext.request.contextPath}/details.jsp";
									}else{
										window.location.href = "${pageContext.request.contextPath}/welcome.jsp";
									}
								}else{
								}
							},
							error : function(e){
								alert('error');
							}
						});
					}else if(result.type=="1"){
						alert("账号不存在");
					}else if(result.type=="2"){
						alert("密码错误");
					}
				},
				error : function(e) {

				}
			});
		}
		function submit() {
			var username = $("#username").val();
			var password = $("#password").val();
			var repassword = $("#repassword").val();
			var age=$("#age").val();
			if (username == null || username == "") {
				document.getElementById("username").placeholder = "Username can't be empty！";
			}
			if (age == null || age == "") {
				document.getElementById('age').placeholder = "Birthday can't be empty！";
			}
			if (password == null || password == "") {
				document.getElementById('password').placeholder = "Password can't be empty！";
			}
			if (repassword == null || repassword == "") {
				document.getElementById('repassword').placeholder = "Repassword can't be empty！";
			}
			if (password != null && password != "" && repassword != null
					&& repassword != "" && password != repassword) {
				document.getElementById('repassword').value = "";
				document.getElementById('repassword').placeholder = "Password inconsisteencies!";
			}
			var sex = "保密";
			
			if (username != null && username != "" 
					&& password != null && password != "" && repassword != null && age != ""
					&& repassword != "" && password == repassword) {
				$.ajax({
							type : "POST",
							dataType : "json",
							url : "${pageContext.request.contextPath}/checkUsername",
							data : {
								username : username
							},
							success : function(result) {
								if (result.type == "1") {
									$
											.ajax({
												type : "POST",
												dataType : "json",
												url : "${pageContext.request.contextPath}/addAccount",
												data : {
													username : username,
													password : password,
													sex:sex,
													birthdate : age
												},
												success : function(result) {
													window.location.href = "${pageContext.request.contextPath}/index.jsp";
												},
												error : function(e) {
													alert("error");
												}
											});
								} else if (result.type == "0") {
									document.getElementById("testusername").innerHTML = "用户名已存在！";
								} else {

								}
							},
							error : function(e) {
								alert("error");
							}
						});
			}
		}
	</script>
</body>
</html>