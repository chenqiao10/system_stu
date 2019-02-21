<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户注册</title>
<link href="css/style.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--连接css样式表   -->

<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
<style type="text/css">
.box {
	border: 1px solid #D1DEB2;
	width: 100px;
	height: 20px;
	sixe
	="12";
}

.div1 {
	/* background-image: url(images/demo-1-bg.jpg); */
	height: 600px;
	width: 803px;
	padding-left: 20px;
	padding-top: 100px;
	text-align: left;
}
</style>
<script type="text/javascript">
	function reg(form) {
		if (form.manger_name.value == "") {
			alert("姓名不能为空！");
			return false;
		}
		if (form.phtoto.value == "") {
			alert("电话不能为空！");
			return false;
		}
		if (form.manger_sno.value == "") {
			alert("员工号不能为空！");
			return false;
		}
		if (form.qustion.value != "陈桥" && form.qustion.value != "第二组") {
			alert("回答错误");
			return false;
		}

	}
</script>
<link rel="stylesheet" href="assets/css/page/form.css" />
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<form action="Add_manger" method="post" class="am-form am-text-sm"
						onsubmit="return reg(this); ">
						<table align="center" border="0" width="500"
							style="color: #FFFFFF">
							<tr>
								<td colspan="4" align="center">管理员注册模块</td>
							</tr>
							<tr>
								<td colspan="4" align="center"><hr></td>
							</tr>
							<tr>
								<td align="right" width="30%" height="40">管理员姓名：</td>
								<td><input type="text" name="manger_name" class="box"></td>

								<td align="right" height="40">管理员工号：</td>
								<td><input type="password" name="manger_sno" size="14"
									class="box"></td>
							</tr>
							<tr>
							<tr>
								<td align="right" height="40">联系电话：</td>
								<td><input type="text" name="phtoto" class="box"></td>
								<td align="right">性 别：</td>
								<td><input type="radio" name="sex" value="男"
									checked="checked">男 <input type="radio" name="sex"
									value="女">女</td>
							</tr>
							<tr>
								<td align="right">问题审核:</td>
								<td height="30"><input type="text" name="qustion"
									class="box"></td>
								<td>提示：该系统开发是谁或开发第组</td>
							<tr>
								<td colspan="2" align="center" height="40"><input
									type="submit" value="注 册"> <input type="reset"
									value="重 置"></td>
								<td colspan="2">登陆时用户与密码即员工姓名与工号</td>
							</tr>
							<tr>
								<td colspan="4" align="center"><hr></td>
							</tr>

						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>
