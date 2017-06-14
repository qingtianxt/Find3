<%@page import="dao.UserDao"%>
<%@page import="domain.losefindinfo"%>
<%@page import="domain.User"%>
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
			%>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<img src="img/find.png" />
				</div>
				
				<div class="col-md-5 col-sm-6 col-xs-12 pull-right" >
					<ul class="list-inline" >
						<li style="padding-top: 25px;p"><%=user.getUser() %>，欢迎你！ </li>
							<%-- <img class="img-responsive" src=<%=logo %> alt="Responsive image" class="img-circle"> --%>
						<li><a href="zhuye.jsp">个人主页</a></li>|
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
				        <li><a href="zhuye.jsp">首页</a></li>
				        <li><a href="find">寻物</a></li>
				        <li class="active"><a href="#">认领<span class="sr-only">(current)</span></a></li>
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
            	搜索栏的制作
            -->
            <form>
            	
            </form>
            <!--
            	主要内容的制作。
            -->
			<div class="panel panel-info">
				  <div class="panel-heading ">
				    <h2 class="panel-title"><a href="">标题：</a></h2>
				  </div>
				  <div class="panel-body">
				  	<font size="4">发起人：</font>
				  	<h4><small>发起时间：</small></h4>
				    <div class="row">
					   <div class="col-md-3">
					   		<img src="" width="200px" alt=""></img>
					   </div>
					   <div class="col-md-9">
					   	<p>类别：钥匙类</p>
					   	<p>丢失时间：</p>
					   	<p>丢失地点：</p>
					   	<h3>简介：</h3>
					   	<p></p>
					   </div>
					</div>
				  </div>
				  <div class="panel-footer" align="right"><a href="show.jsp">了解更多 >>></a></div>
			</div>
			
			
			<div class="panel panel-success">
				  <div class="panel-heading ">
				    <h2 class="panel-title"><a href="">标题：找U盘急</a></h2>
				  </div>
				  <div class="panel-body">
				  	<font size="4">发起人：悠悠的柏树</font>
				  	<h4><small>发起时间：2017年5月7日10:48:19</small></h4>
				    <div class="row">
					   <div class="col-md-3">
					   		<img src="img/book.jpg" width="200px" alt=""></img>
					   </div>
					   <div class="col-md-9">
					   	<p>类别：钥匙类</p>
					   	<p>丢失时间：2017年5月7日11:04:00</p>
					   	<p>丢失地点：基础教学楼</p>
					   	<h3>简介：</h3>
					   	<p>今天中午回宿舍一摸口袋发现钥匙不在我的口袋里了，可能是上课的
					   		时候或者路上丢失了，请见到我的钥匙的同学能够尽快与我联系。</p>
					   </div>
					</div>
				  </div>
				  <div class="panel-footer" align="right"><a href="">了解更多 >>></a></div>
			</div>
			
			
			<div class="panel panel-info">
				  <div class="panel-heading ">
				    <h2 class="panel-title"><a href="">标题：找U盘急</a></h2>
				  </div>
				  <div class="panel-body">
				  	<font size="4">发起人：悠悠的柏树</font>
				  	<h4><small>发起时间：2017年5月7日10:48:19</small></h4>
				    <div class="row">
					   <div class="col-md-3">
					   		<img src="img/key.jpg" width="200px" alt=""></img>
					   </div>
					   <div class="col-md-9">
					   	<p>类别：钥匙类</p>
					   	<p>丢失时间：2017年5月7日11:04:00</p>
					   	<p>丢失地点：基础教学楼</p>
					   	<h3>简介：</h3>
					   	<p>今天中午回宿舍一摸口袋发现钥匙不在我的口袋里了，可能是上课的
					   		时候或者路上丢失了，请见到我的钥匙的同学能够尽快与我联系。</p>
					   </div>
					</div>
				  </div>
				  <div class="panel-footer" align="right"><a href="">了解更多 >>></a></div>
			</div>
			
			
			<div class="panel panel-success">
				  <div class="panel-heading ">
				    <h2 class="panel-title"><a href="">标题：找U盘急</a></h2>
				  </div>
				  <div class="panel-body">
				  	<font size="4">发起人：悠悠的柏树</font>
				  	<h4><small>发起时间：2017年5月7日10:48:19</small></h4>
				    <div class="row">
					   <div class="col-md-3">
					   		<img src="img/book.jpg" width="200px" alt=""></img>
					   </div>
					   <div class="col-md-9">
					   	<p>类别：钥匙类</p>
					   	<p>丢失时间：2017年5月7日11:04:00</p>
					   	<p>丢失地点：基础教学楼</p>
					   	<h3>简介：</h3>
					   	<p>今天中午回宿舍一摸口袋发现钥匙不在我的口袋里了，可能是上课的
					   		时候或者路上丢失了，请见到我的钥匙的同学能够尽快与我联系。</p>
					   </div>
					</div>
				  </div>
				  <div class="panel-footer" align="right"><a href="">了解更多 >>></a></div>
			</div>
			
			<div class="panel panel-waring">
				  <div class="panel-heading ">
				    <h2 class="panel-title"><a href="">标题：找U盘急</a></h2>
				  </div>
				  <div class="panel-body">
				  	<font size="4">发起人：悠悠的柏树</font>
				  	<h4><small>发起时间：2017年5月7日10:48:19</small></h4>
				    <div class="row">
					   <div class="col-md-3">
					   		<img src="img/key.jpg" width="200px" alt=""></img>
					   </div>
					   <div class="col-md-9">
					   	<p>类别：钥匙类</p>
					   	<p>丢失时间：2017年5月7日11:04:00</p>
					   	<p>丢失地点：基础教学楼</p>
					   	<h3>简介：</h3>
					   	<p>今天中午回宿舍一摸口袋发现钥匙不在我的口袋里了，可能是上课的
					   		时候或者路上丢失了，请见到我的钥匙的同学能够尽快与我联系。</p>
					   </div>
					</div>
				  </div>
				  <div class="panel-footer" align="right"><a href="">了解更多 >>></a></div>
			</div>
            <!--
            	分页描述：分页器
            -->
            <div align="center">
	            <nav aria-label="Page navigation" >
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
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
