<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消息</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="css/s.css" rel="stylesheet" type="text/css"  />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Football Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='https://fonts.googleapis.com/ css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/ css?family=Passion+One:400,700,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
 <script src="js/responsiveslides.min.js"></script>
 <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
</head>
<body>
<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
			<p class="header-para"><font size="+1">旺园小区门禁系统，欢迎您!</font></p>
			
				<ul class="sign">
					<li ><a href="signin.jsp"><font size="+1">登录</font></a></li>
							
				</ul>
			</div>
			<div class="clearfix"> </div>
	</div>
	<div class="header-bottom-top">
		<div class="container">
			<div class="search">	
				<input type="text" value="搜索" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
				<input type="submit"  value="">	
			</div>
			<div class="clearfix"> </div>
			<div class="header-bottom">			
				<ul class="logo">
					<li><font color="#FFFFFF" size="+6"><strong>天眼门禁</strong></font></li>
				</ul>
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li><a href="index.jsp" class="scroll"><font size="+1">首页</font></a></li>
						<li><a href="about.jsp" class="scroll"><font size="+1">添加</font></a></li>
						<li><a href="teams.jsp" class="scroll"><font size="+1">查看</font></a></li>
						<li class="active"><a href="services.jsp" class="scroll"><font size="+1">消息</font></a></li>
						
					</ul>
                   
					<!--script-->
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		</div>
	</div>
		<!--content-->
		<div id="gal" class="gallery">
			<div class="container">
				<div class="head" align="center">
					<h2><strong>消息</strong></h2>
				</div>
				<div class="serives-bottom" align="center">
				<div class="col-md-12 service-left">
					<ul class="service-list">
					<li><a href="message.jsp">您好，我想和管理员说话！ </a></li>
					<li><a href="message.jsp">你是全小区最帅的管理员吗？</a></li>
					<li><a href="message.jsp">管理员，为什么临时用户申请失败？</a></li>
					<li><a href="message.jsp">可以微博互粉吗？</a></li>
                    <li><a href="message.jsp">你好，我想像管理员咨询一些事情。</a></li>
                    <li><a href="message.jsp">Hello，请联系我，我的号码是12398740587。</a></li>
					<li class="sed-ut"><a href="message.jsp">我来自五单元。</a></li>
					</ul>
				</div>
                <div class="blog-pagenat">
						<ul>
							<li><a class="frist" href="#"><strong>上一页</strong></a></li>
							<li><a href="#"><strong>1</strong></a></li>
							<li><a href="#"><strong>2</strong></a></li>
							<li><a href="#"><strong>3</strong></a></li>
							<li><a href="#"><strong>4</strong></a></li>
							<li><a href="#"><strong>5</strong></a></li>
							<li><a href="#"><strong>6</strong></a></li>
							<li><a class="last" href="#"><strong>下一页</strong></a></li>
						</ul>
					</div>

				<div class="clearfix"> </div>
			</div>
</div>
		</div>	
            			
		<!--content-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="foter-bottom"  style=" text-align:center;">			
				<p class="footer-grid" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &copy; 2018.Wang Xunyou All rights reserved.</p>
				<div class="clearfix"> </div>
			</div>
		</div>
			</div>
</body>
</html>