<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver" />
<title>添加</title>
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
						<li class="active"><a href="about.jsp" class="scroll"><font size="+1">添加</font></a></li>
						<li><a href="teams.jsp" class="scroll"><font size="+1">查看</font></a></li>
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
					<h2><strong>添加用户</strong></h2>
				</div>

			
			<form id = "cont" action="addServlet" method="post" enctype="multipart/form-data" >
				
				<div class="grid-contact">
					<div class="col-md-6 contact-left">
						<p class="your-para"> 姓名<span>*</span></p>
						<input type="text" name ="name" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}"></input>
					</div>
					<div class="col-md-6 contact-left">
						<p class="your-para"> 联系方式<span>*</span></p>
						<input type="text" name ="phone" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}"></input>
					</div>
					<div class="clearfix"> </div>
				</div>
                <div class="grid-contact">
					<div class="col-md-12 contact-left">
						<p class="your-para"> 身份证号<span>*</span></p>
						<input type="text" name ="id" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}"></input>
					</div>
					<div class="clearfix"> </div>
				</div>
                <div class="grid-contact">
					<div class="col-md-6 contact-left">
						<td><p class="your-para"> 出生日期<span>*</span></p></td>
                          <td>
                                <select id="s1"name=year1>
                                    <option value="1918" selected="">1918</option>
                                    <option value="1919">1919</option>
                                    <option value="1920">1920</option>
                                    <option value="1921">1921</option>
                                    <option value="1922">1922</option>
                                    <option value="1923">1923</option>
                                    <option value="1924">1924</option>
                                    <option value="1925">1925</option>
                                    <option value="1926">1926</option>
                                    <option value="1927">1927</option>
                                    <option value="1928">1928</option>
                                    <option value="1929">1929</option>
                                    <option value="1930">1930</option>
                                    <option value="1931">1931</option>
                                    <option value="1932">1932</option>
                                    <option value="1933">1933</option>
                                </select>
                          </td>
                          <td>
                                <select id="s2"name="month1">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                          </td>
                           <td>
                                <select id="s3"name ="day1">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                          </td>
                          </div>
                          <div class="col-md-6 contact-left">
                          <td><p class="your-para"> 楼号<span>*</span></p></td>
                           <td>
                                <select id="s4"name="danyuan">
                                    <option value="一单元" selected="">一单元</option>
                                    <option value="二单元">二单元</option>
                                    <option value="三单元">三单元</option>
                                    <option value="四单元">四单元</option>
                                    <option value="五单元">五单元</option>
                                    <option value="六单元">六单元</option>
                                    <option value="七单元">七单元</option>
                                    <option value="八单元">八单元</option>
                                    <option value="九单元">九单元</option>
                                    <option value="十单元">十单元</option>
                                    <option value="十一单元">十一单元</option>
                                    <option value="十二单元">十二单元</option>
                                </select>
                          </td>
                          <td>
                                <select id="s5" name ="lou">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                </select>
                          </td>
                          -
                           <td>
                                <select id="s6"name="jia">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                          </td>
					</div>
                    </div>
                    <div class="grid-contact">
					<div class="col-md-6 contact-left">
						<td><p class="your-para"> 入住日期<span>*</span></p></td>
                          <td>
                                <select id="s1"name=year2>
                                    <option value="2017" selected="">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                </select>
                          </td>
                          <td>
                                <select id="s2"name="month2">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                          </td>
                           <td>
                                <select id="s3"name="day2">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                          </td>
                          </div>
                         <div class="col-md-6 contact-left">
						<td><p class="your-para"> 截止日期<span>*</span></p></td>
                          <td>
                                <select id="s1"name="year3">
                                    <option value="2017" selected="">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                </select>
                          </td>
                          <td>
                                <select id="s2"name="month3">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                          </td>
                           <td>
                                <select id="s3"name="day3">
                                    <option value="1" selected="">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                          </td>
                          </div>
                    </div>
                     <div class="grid-contact">
					
										<div class="col-md-4 contact-left">
					 <p class="your-para"> 证件照片<span>*</span></p>
                    <p>
                    </p>
                  <input type="file" name="file1" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />
                   <p>
                   </p>
					</div>
					<div class="col-md-4 contact-left">
                    <p class="your-para"> 日常照片1<span>*</span></p>
                    <p>
                    </p>
                 
                  <input type="file" name="file2" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />
                    <p>
                   </p>
					</div>
				
               
					<div class="col-md-4 contact-left">
                    <p class="your-para"> 日常照片2<span>*</span></p>
                    <p>
                    </p>
                 
                  <input type="file" name="file3" class="file" id="fileField" size="28" onchange="document.getElementById('textfield').value=this.value" />
					</div>
					
                   <div class="send" align="center">
				 		 <input type="submit" value="发 送" >
					</div>
                   
				
					<div class="clearfix"> </div>
				
			</div>
			</form>	
			
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