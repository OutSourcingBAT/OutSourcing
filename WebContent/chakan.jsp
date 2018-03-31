<%@page import="javabean.Person"%>
<%@page import="com.grw.dao.impl.DaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="css/p.css" rel="stylesheet" type="text/css"  />	
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
</head>
<body>
<!--header-->
        <% 
        DaoImpl dao = new DaoImpl();
        String name = request.getParameter("username");
        String identity = request.getParameter("identity");  
        String location=null,phone=null,status=null,id=null,ru_zhu=null,jie_shu=null,birthday=null;
        String sql1 = "select * from Entity_1 where name ='"+name+"'";
        String sql2 ="select * from linshi where name ='"+name+"'";
        String sql = null;
        if(identity.equals("juming")){
        	sql = sql1;
        }
        else if(identity.equals("linshi"))sql=sql2;
        Person person = dao.queryBean(Person.class, sql);
        location = person.getLou_number();
        phone = person.getPhone();
        id = person.getId();
        birthday = person.getBirthday();
        status = person.getZhuang_tai();
        ru_zhu = person.getRu_zhu_time();
        jie_shu = person.getJie_zhi_time();
        %>  
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
						<li class="active"><a href="teams.jsp" class="scroll"><font size="+1">查看</font></a></li>
						<li><a href="services.jsp" class="scroll"><font size="+1">消息</font></a></li>
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
		<!--banner-->
		
			<!--content-->
		<div id="gal" class="gallery">
			<div class="container">
				<div class="head" align="center">
					<h2><strong>查看用户</strong></h2>
				</div>
			<form>
            <div class="grid-contact">
					<div class="col-md-4 contact-left">
						<p class="your-para"> 证件照片<span>*</span></p>
						<img class="img-responsive" src="images/1.jpg">
					</div>
					<div class="col-md-4 contact-left">
						<p class="your-para"> 日常照片1<span>*</span></p>
						<img class="img-responsive" src="images/1.jpg">
					</div>
                    <div class="col-md-4 contact-left">
						<p class="your-para"> 日常照片2<span>*</span></p>
						<img class="img-responsive" src="images/1.jpg">
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="grid-contact">
					<div class="col-md-6 contact-left">
						<p class="your-para"> 姓名<span>*</span></p>
						<input type="text" name="input1" value=<%=name%> readonly> 
					</div>
					<div class="col-md-6 contact-left">
						<p class="your-para"> 联系方式<span>*</span></p>
						<input type="text" name="input1" value=<%=phone%> readonly> 
					</div>
					<div class="clearfix"> </div>
				</div>
               <div class="grid-contact">
					<div class="col-md-6 contact-left">
						<p class="your-para"> 身份证号<span>*</span></p>
						<input type="text" name="input1" value=<%=id%> readonly> 
					</div>
					<div class="col-md-6 contact-left">
						<p class="your-para"> 当前状态<span>*</span></p>
						<input type="text" name="input1" value=<%=status%> readonly> 
					</div>
					<div class="clearfix"> </div>
				</div>
               <div class="grid-contact">
					<div class="col-md-6 contact-left">
						<p class="your-para"> 出生日期<span>*</span></p>
						<input type="text" name="input1" value=<%=birthday%> readonly> 
					</div>
					<div class="col-md-6 contact-left">
						<p class="your-para"> 楼号<span>*</span></p>
						<input type="text" name="input1" value=<%=location%> readonly> 
					</div>
					<div class="clearfix"> </div>
				</div>
                   <div class="grid-contact">
					<div class="col-md-6 contact-left">
						<p class="your-para"> 入住日期<span>*</span></p>
						<input type="text" name="input1" value=<%=ru_zhu%> readonly> 
					</div>
					<div class="col-md-6 contact-left">
						<p class="your-para"> 截止日期<span>*</span></p>
						<input type="text" name="input1" value=<%=jie_shu%> readonly> 
					</div>
					<div class="clearfix"> </div>
				</div>
			</form>
            <div class="col-md-6 us-head">
				<a href="churu.jsp" class="more-left">查看出入情况</a>
			</div>	
            <div class="col-md-6 us-head">
				<a href="tianjiajilu.jsp" class="more-left">查看添加记录</a>
			</div>	
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