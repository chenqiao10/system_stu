<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" import="com.manger.admin"
	import="java.util.ArrayList" import="java.util.Date"
	import="java.text.SimpleDateFormat" import="java.util.List"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  

request.setCharacterEncoding("utf-8");  
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生学籍系统</title>
<script type="text/javascript">
	    	function reg(form){
	        	if(form.manger_name.value == ""){
	        		alert("姓名不能为空！");
	        		return false;
	        	}
	        	if(form.phtoto.value== ""){
	        		alert("电话不能为空！");
	        		return false;
	        	}
	        	if(form.manger_sno.value == ""){
	        		alert("员工号不能为空！");
	        		return false;
	        	}
	        		        	if(form.qustion.value != "陈桥"){
	        		alert("回答错误");
	        		return false;
	        	}
	        	
	    	}
	    </script>
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

body {
	margin: 0px;
	font-size: 12px;
}

.box {
	border: 1px solid #D1DEB2;
	width: 150px;
	height: 20px;
	border-radius: 5px;
}

.div1 {
	/* background-image: url(images/demo-1-bg.jpg); */
	height: 490px;
	width: 700px;
	text-align: left;
	background: #fff;
	overflow-y: auto;
}

.div {
	padding-left: 20px;
	padding-top: 0px;
	overflow-x: auto;
}
</style>
<script type="text/javascript">
	    	function reg(form){
	        	if(form.manger_name.value == ""){
	        		alert("姓名不能为空！");
	        		return false;
	        	}
	        	
	        	if(form.manger_sno.value == ""){
	        		alert("员工号不能为空！");
	        		return false;
	        	}
	        		        	
	        	
	    	}
	    	function eq1(){
	    		window.location.href="manger注册.jsp"    
	    
	    }
	    	function eq(){
	    		window.location.href="mangerlogin.jsp"    
	    
	    }

	    </script>
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
<link rel="stylesheet" href="assets/css/component.css" />
</head>
<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
	<div class="am-topbar-left am-hide-sm-only">
		<a href="index.html" class="logo"><span>Admin<span>to</span></span><i
			class="zmdi zmdi-layers"></i></a>
	</div>

	<div class="contain">
		<ul class="am-nav am-navbar-nav am-navbar-left">

			<li><h4 class="page-title">欢迎进入学籍管理系统</h4></li>
		</ul>

		<ul class="am-nav am-navbar-nav am-navbar-right">
			<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
			<li class="hidden-xs am-hide-sm-only">
				<form role="search" class="app-search" onsubmit="return reg(this);">
					<input type="button" class="form-control" onClick="eq();"
						value="登陆"> <input type="button" class="form-control"
						onClick="eq1();" value="注册">

				</form>
			</li>
		</ul>
	</div>
	</header>
	<!-- end page -->


	<!-- class="admin" -->
	<%List<admin> list=(List<admin>)request.getAttribute("list");
					
					if(list==null||list.size()<1){
						out.print("没有数据");
					
					}else{
						for(admin ad:list){%>
	<div class="admin-sidebar am-offcanvas  am-padding-0"
		id="admin-offcanvas">
		<div class="am-offcanvas-bar admin-offcanvas-bar">
			<!-- User -->
			<div class="user-box am-hide-sm-only">
				<div class="user-img">
					<img src="assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme"
						class="img-circle img-thumbnail img-responsive">
					<div class="user-status offline">
						<i class="am-icon-dot-circle-o" aria-hidden="true"></i>
					</div>
				</div>
				<h5>
					<%-- <%String manger_name=(String)request.getParameter("manger_name"); %>  --%><%=ad.getManger_name() %>
				</h5>
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

				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav1'}"><span
						class="am-icon-table"></span> 管理员功能模块<span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav1">
						<li><a href="学生学籍注册.jsp?manger_name=<%=ad.getManger_name()%>">注册模块
						</a></li>
						<li><a
							href="FindServlet?manger_name=<%=ad.getManger_name()%>">删除模块</a></li>
						<li><a href="select.jsp?manger_name=<%=ad.getManger_name()%>">查询模块</a></li>
						<li><a href="update?manger_name=<%=ad.getManger_name()%>">更改模块</a></li>
					</ul></li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav2'}"><i
						class="am-icon-line-chart" aria-hidden="true"></i> 系统维护升级信息模块 <span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav2">
						<li><a href="学生学籍注册.jsp?manger_name=<%=ad.getManger_name()%>"
							class="am-cf"> 数据库表信息模块</a></li>
						<li><a href="html/table_complete.html">网站开发文档模块</a></li>
						<li><a href="html/table_complete.html">&nbsp;</a></li>
					</ul></li>

			</ul>
		</div>
	</div>

	<!-- sidebar end -->
	<%Date date= new Date();
		SimpleDateFormat df= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today= df.format(date);
		
		
		%>

	<div class="div">

		<div class="div1 content-page content ">
			<div class="am-g">
				<form action="update_ad" method="post" onsubmit="return reg(this); ">
					<table>

						<tr>
							<td></td>
							<td align="center"><h1>管理员资料</h1></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td><%="管理员姓名："%><%=ad.getManger_name() %></td>
						<tr>
						<tr>
							<td></td>
							<td></td>
							<td><%="管理员工号："%><%=ad.getManger_sno() %></td>
						<tr>
						<tr>
							<td></td>
							<td></td>
							<td><%="当前时间："%><%=today%></td>
						<tr>
						<tr>
							<td></td>
							<td><h1>修改密码</h1></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td><input type="text" name="manger_sno"
								placeholder="请输入新密码"> <input type="hidden" name="id"
								value="<%=ad.getId()%>"> <input type="submit" value="修改"></td>
							<td></td>
						</tr>

						<%	}}%>


					</table>
				</form>

			</div>
		</div>
	</div>
	<!--</div>
			</div>
		</div>-->
	<!-- ========== Left Sidebar end ========== -->



	<!--	<div class="am-g">-->
	<!-- ============================================================== -->
	<!-- Start right Content here -->


	<!-- navbar -->
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
