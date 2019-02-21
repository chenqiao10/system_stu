<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="no-js">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3>欢迎管理员登陆模块</h3>
					<form action="check1.jsp" name="f" method="post">
						<div class="input_outer">
							<span class="u_user"></span> <input name="username" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="请输入账户">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input name="pwd" class="text"
								style="color: #FFFFFF !important; position: absolute; z-index: 100;"
								value="" type="password" placeholder="请输入密码">
						</div>
						<div class="mb2">
							<table>
								<tr>
									<td><input type=submit class="act-but submit"
										style="color: #FFFFFF" value="登陆"></td>
									<td><input type="button" style="color: #FFFFFF"
										class="act-but submit"
										onClick='window.location.href("in.jsp");' value="注册">
									</td>
								</tr>
							</table>

						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>