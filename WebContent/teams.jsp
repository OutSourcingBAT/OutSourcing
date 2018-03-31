<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"
		 import="com.grw.dao.impl.DaoImpl"
		 import="javabean.Person"%>
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
<link href="css/s.css" rel="stylesheet" type="text/css" media="all" />	
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
<%
		DaoImpl dao = new DaoImpl();
		String sql = "select * from Entity_1";
		List<Person> list =  new ArrayList<Person>();
		list=dao.queryBeanList(Person.class, sql);
		
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
	 <div id="gal" class="gallery">
			<div class="container">
				<div class="head" align="center">
					<h2><strong>查看用户</strong></h2>
				</div>
                <div class= "send" align="right">
                <input type="submit" value="居民">
                 <input type="submit" value="临时用户">
                </div>
			<table class="table table-striped table-bordered">
                  <tr>
                    <th> 姓名 </th>
                    <th> 楼号 </th>
                    <th> 联系方式 </th>
                    <th> 身份 </th>
                    <th> 当前状态 </th>
                    <th> 操作 </th>
                  </tr>
                <%
       				 String name,location,phone,identity,status;
       				 for(Person p: list){
       					 name = p.getName();
       					 location=p.getLou_number();
       					 phone=p.getPhone();
       					 identity="居民";
       					 status=p.getZhuang_tai();  				 
    			%>
    			<tr>
    				<td><%=name%></td>
    				<td><%=location%></td>
    				<td><%=phone%></td>
    				<td><%=identity%></td>
    				<td><%=status	%></td>
					<td> 
                         <ul>
                          <a href="chakan.jsp?username=<%=name%>&identity=<%="juming"%>"> 查看 </a>
                          <a href="edit.jsp?username=<%=name%>&identity=<%="juming"%>"> 编辑 </a>
                          <a href="deleteServlet?username=<%=name%>&identity=<%="juming"%>"> 删除 </a>
                         </ul>
                    </td>
				</tr>
                <%
       				 }
       				sql="select * from linshi ";
       				list=dao.queryBeanList(Person.class, sql);
       				for(Person p: list){
      					 name = p.getName();
      					 location=p.getLou_number();
      					 phone=p.getPhone();
      					 identity="临时用户";
      					 status="在家";  	
       				 
    			%>
    			<tr>
    				<td><%=name%></td>
    				<td><%=location%></td>
    				<td><%=phone%></td>
    				<td><%=identity%></td>
    				<td><%=status	%></td>
					<td> 
                         <ul>
                         <a href="chakan.jsp?username=<%=name%>&identity=<%="linshi"%>"> 查看 </a>
                          <a href="edit.jsp?username=<%=name%>&identity=<%="linshi"%>"> 编辑 </a>
                          <a href="deleteServlet?username=<%=name%>&identity=<%="linshi"%>"> 删除 </a>
                         </ul>
                    </td>
				</tr>
    <%
      	 }
    %>
              </table>
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