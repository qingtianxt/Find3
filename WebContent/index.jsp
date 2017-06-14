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
			<%
				User user =(User)session.getAttribute("user");
				String logo=user.getImage();
				System.out.print(logo);
			%>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<img src="img/find.png" />
				</div>
				
				<div class="col-md-5 col-sm-6 col-xs-12 pull-right" >
					<ul class="list-inline" >
						<li style="padding-top: 25px;p"><%=user.getUser() %>，欢迎你！ </li>
							<img class="img-responsive" src=<%=logo %> alt="Responsive image" class="img-circle">
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
				      <a class="navbar-brand">找到了</a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				      <li class="active"><a href="#">首页<span class="sr-only">(current)</span></a></li>
				        <li><a href="find.jsp">寻物</a></li>
				        <li><a href="find2.jsp">认领</a></li>
				        <li><a href="select.jsp">查询</a></li>
				      </ul>
				      <form class="navbar-form navbar-left pull-right" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <a type="submit" class="btn btn-default" href="select.jsp">Submit</a>
				      </form>
				     
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		<!--
        	轮播图
        -->
        	<div class="row">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <!--需要几张图片 就得添加几个 li 还需要在下面的div提供几个 class=item的div-->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- 显示的图片 -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="img/1.jpg" alt="">
				      <div class="carousel-caption">
				       	
				      </div>
				    </div>
				    <div class="item">
				      <img src="img/2.jpg" alt="...">
				      <div class="carousel-caption">
				        
				      </div>
				    </div>
				     <div class="item">
				      <img src="img/3.jpg" alt="...">
				      <div class="carousel-caption">
				       
				      </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
		<!--
        	寻物消息内容
        -->
	        <div class="page-header">
	  			<h1>寻物消息 <small>find</small></h1>
	  			<h4><small>在这里，你可能会找到自己捡到的物品的信息。</small></h4>
			</div>
	        <div class="row">
					
					<div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/book.jpg" alt="">
					      <div class="caption">
					      	 <h3>书籍</h3>
       						 <p>进步的阶梯，成果的积累，书中自有颜如玉，书中自有黄金屋。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">书籍材料类</button>
					      </div>
					    </div>
					 </div>
					
					<div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/key.jpg" alt="">
					      <div class="caption">
					      	<h3>钥匙</h3>
       						 <p>房间的钥匙，自行车的车锁，钥匙在生活中扮演者重要的角色。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">钥匙类</button>
					      </div>
					    </div>
					 </div>
					 
					 
					 <div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/U.jpg" alt="">
					      <div class="caption">
					      	<h3>U盘</h3>
       						<p>记忆的枷锁，胜利的果实，重要的回忆，信息的载体。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">U盘类</button>
					      </div>
					    </div>
					 </div>
					 
					 <div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/other.png" alt="">
					      <div class="caption">
					      	<h3>其他</h3>
       						 <p>钱包，手机，校园卡，身份证，重要的东西，捡到的一定要记得归还。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">其他类</button>
					      </div>
					    </div>
					 </div>
			</div>
		<!--
        	寻主消息内容
        -->
	        <div class="page-header">
	  			<h1>认领消息 <small>find</small></h1>
	  			<h4><small>在这里，你可能会找到自己丢失的物品的信息。</small></h4>
			</div>
	        <div class="row">
					
					<div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/book.jpg" alt="">
					      <div class="caption">
					      	<h3>书籍</h3>
       						 <p>进步的阶梯，成果的积累，书中自有颜如玉，书中自有黄金屋。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">书籍材料类</button>
					      </div>
					    </div>
					 </div>
					
					<div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/key.jpg" alt="">
					      <div class="caption">
					      	<h3>钥匙</h3>
       						 <p>房间的钥匙，自行车的车锁，钥匙在生活中扮演者重要的角色。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">钥匙类</button>
					      </div>
					    </div>
					 </div>
					 
					 
					 <div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/U.jpg" alt="">
					      <div class="caption">
					      	<h3>U盘</h3>
       						<p>记忆的枷锁，胜利的果实，重要的回忆，信息的载体。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">U盘类</button>
					      </div>
					    </div>
					 </div>
					 
					 <div class="col-md-3 col-sm-6 col-xs-12">
					    <div class="thumbnail">
					      <img src="img/other.png" alt="">
					      <div class="caption">
					      	<h3>其他</h3>
       						 <p>钱包，手机，校园卡，身份证，重要的东西，快进来找一找吧。</p>
					         <button type="button" class="btn btn-danger btn-lg btn-block">其他类</button>
					      </div>
					    </div>
					 </div>
			</div>
			
			<hr></hr>
			<div class="page-header" align="right">
  			<h5>@联系我们:2756299678@qq.com</small></h5>
			</div>
        
		</div>
	</body>
</html>

