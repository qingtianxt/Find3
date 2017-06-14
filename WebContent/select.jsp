<%@page import="dao.UserDao"%>
<%@page import="domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>找到了 | 寻物</title>
		<!-- 导入 css-->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<!--导入jquery.js-->
		<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
			
		<!--导入bootstrap.js-->
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	</head>
	<body>
		<!-- header-->
		<div class="container">
			<!--logo
				
				小屏幕 2个一行 
				超小屏幕一个一行
			-->
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<img src="img/find.png" />
				</div>
				
				<div class="col-md-5 col-sm-6 col-xs-12 pull-right" >
					<ul class="list-inline" >
						<li style="padding-top: 25px;p">${user.user }，欢迎你！ </li>
							<%-- <img class="img-responsive" src=<%=logo %> alt="Responsive image" class="img-circle"> --%>
						<li><a href="Persenal.jsp">个人主页</a></li>|
						<li style="padding-top: 25px;p"><a href="Persenal.jsp">发布消息 </a></li>|
						<li><a href="login.html">退出</a></li>
					</ul>
				</div>
			</div>
			
			
			<!--导航条-->
			<div class="row">
				<nav class="navbar navbar-default">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#">找到了</a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="zhuye.jsp">首页</a></li>
				        <li><a href="find">寻物</a></li>
				        <li><a href="find2.jsp">认领</a></li>
				        <li class="active"><a href="#">查询<span class="sr-only">(current)</span></a></li>
				      </ul>
				      <form class="navbar-form navbar-left pull-right" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <button type="submit" class="btn btn-default">Submit</button>
				      </form>
				     
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
			<!--
            	搜索框的制作
            -->
            <div class="page-header">
            	<form id="serch" action="${pageContext.request.contextPath }/select?method=select" method="post">
            		<div class="panel panel-default">
					    <div class="panel-body">
					        	消息种类：
					      	<label class="radio-inline">
							  <input type="radio" name="message" id="inlineRadio1" value="寻物" checked="">寻物消息
							</label>
							<label class="radio-inline">
							  <input type="radio" name="message" id="inlineRadio2" value="认领"> 认领消息
							</label>
					    </div>
					</div>
	            	<div class="panel panel-default">
					    <div class="panel-body">
					        时间：
					    <label class="radio-inline">
							  <input type="date"  class="form-control" name="time1" id="inlineRadio1" value="2017/05/07"> 
						</label> 
					    </div>
					</div>
					<div class="panel panel-default">
					    <div class="panel-body">
					         地点：
					      	<label class="radio-inline">
							  <input type="radio" name="address" id="inlineRadio1" value="基础教学楼" checked=""> 基础教学楼
							</label>
							<label class="radio-inline">
							  <input type="radio" name="address" id="inlineRadio2" value="食堂"> 食堂
							</label>
							<label class="radio-inline">
							  <input type="radio" name="address" id="inlineRadio3" value="路上"> 路上
							</label>
					    </div>
					</div>
					<div class="panel panel-default">
					    <div class="panel-body">
					        物品：
					        <label class="radio-inline">
							  <input type="radio" name="thing" id="inlineRadio1" value="u盘" checked=""> u盘
							</label>
							<label class="radio-inline">
							  <input type="radio" name="thing" id="inlineRadio2" value="书籍材料"> 书籍材料
							</label>
							<label class="radio-inline">
							  <input type="radio" name="thing" id="inlineRadio3" value="校园卡"> 校园卡
							</label>
					    </div>
					</div>
					 <input type="submit" class="btn btn-primary btn-lg btn-block"  value="开始搜索"></input>
	            </form>	
			</div>
            
            
			<!--
            	页脚内容
            -->
			<hr></hr>
			<div class="page-header" align="right">
  			<h5>@联系我们:2756299678@qq.com</small></h5>
			</div>
			
		</div>
	</body>
</html>
