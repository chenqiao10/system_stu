<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆端</title>
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
<link rel="stylesheet" href="assets/css/component.css" />
<!-- <link rel="stylesheet" type="text/css" href="css/component.css" /> -->
</head>
<style type="text/css">
button {
	width: 99%;
	height: 99%;
	background: #336699;
	color: #EEE;
	font-size: 29px;
}

.mytd {
	width: 100px;
	height: 150px;
	background: #005566;
}
</style>
<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
	<div class="am-topbar-left am-hide-sm-only">
		<a href="index.html" class="logo"><span>Admin<span>to</span></span><i
			class="zmdi zmdi-layers"></i></a>
	</div>

	<div class="contain">
		<ul class="am-nav am-navbar-nav am-navbar-left  mb2">

			<li><h4 class="page-title">欢迎进入学籍管理系统</h4></li>
		</ul>

		<ul class="am-nav am-navbar-nav am-navbar-right">
			<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
			<li class="hidden-xs am-hide-sm-only">
				<form role="search" class="app-search">
					<input type="button" value="123">
				</form>
			</li>
		</ul>
	</div>
	</header>
	<!-- end page -->


	<div class="admin">

		<div class="admin-sidebar am-offcanvas  am-padding-0"
			id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<!-- User -->
				<div class="user-box am-hide-sm-only">
					<div class="user-img">
						<img src="assets/img/avatar-1.jpg" alt="user-img"
							title="Mat Helme" class="img-circle img-thumbnail img-responsive">
						<div class="user-status offline">
							<i class="am-icon-dot-circle-o" aria-hidden="true"></i>
						</div>
					</div>

					<h5>
						<%String manger=(String)request.getParameter("manger_name"); %>
						<%=manger %></h5>
					<ul class="list-inline">
						<li><a href="#"> <i class="fa fa-cog" aria-hidden="true"></i>
						</a></li>

						<li><a href="#" class="text-custom"> <i class="fa fa-cog"
								aria-hidden="true"></i>
						</a></li>
					</ul>
				</div>
				<!-- End User -->

				<ul class="am-list admin-sidebar-list">
					<li><a href="index.html"><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav1'}"><span
							class="am-icon-table"></span> 管理员功能模块<span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav1">
							<li><a href="学生学籍注册.jsp" class="am-cf">注册模块 </a></li>
							<li><a href="FindServlet">删除模块</a></li>
							<li><a href="select.jsp">查询模块</a></li>
							<li><a href="update">更改模块</a></li>
						</ul></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav2'}"><span
							class="am-icon-table"></span>系统维护升级信息模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav2">
							<li><a href="学生学籍注册.jsp" class="am-cf"> 数据库表信息模块</a></li>
							<li><a href="html/table_complete.html">网站开发文档模块</a></li>
							<li><a href="html/table_complete.html">&nbsp;</a></li>
						</ul></li>


				</ul>
			</div>

		</div>


		<a href="admin-offcanvas"
			class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
			data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>-->
		</a>

		<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="assets/js/app.js"></script>
		<script type="text/javascript" src="assets/js/blockUI.js"></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js"></script>
		<script type="text/javascript" src="assets/js/charts/indexChart.js"></script>
</body>

</html>
