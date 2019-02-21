<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生学籍注册模块</title>
<link href="css/style.css" type="text/css">
<style type="text/css">
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
	width: 803px;
	text-align: left;
	background: #fff;
}

.div {
	padding-left: 10px;
	padding-top: 0px;
	overflow-y: auto;
}
</style>
<script type="text/javascript">
	    	function reg(form){
	        	if(form.student_name.value == ""){
	        		alert("姓名不能为空！");
	        		return false;
	        	}
	        	if(form.student_sno.value == ""){
	        		alert("学生学号不能为空！");
	        		return false;
	        	}
	        	
	    	}

	    	
	    </script>
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
</head>
<body>
	<%String manger_name=request.getParameter("manger_name") ;%>

	<jsp:include page="banner.jsp" flush="ture">
		<jsp:param value="<%=manger_name%>" name="manger_name" /></jsp:include>
	<div class="div">

		<div class="div1 content-page content ">
			<div class="am-g">
				<form action="Select_sno_name" method="post"
					onsubmit="return reg(this);">
					<table align="center" border="0" width="600">
						<tr>
							<td height="20" colspan="4" align="center"><h2>学籍查询模块</h2></td>
						<tr>
							<td colspan="4"><a
								href="Select?manger_name=<%=manger_name%>">查询所有学生学籍信息</a></td>


						</tr>
						<tr>
							<td colspan="4">按学生姓名和身份证查找</td>
						</tr>
						<tr>
							<td align="right" colspan="2">学生姓名：</td>
							<td colspan="2"><input class="box" type="text"
								name="student_name"></td>

						</tr>
						<tr>
							<td colspan="2" align="right">学生学号：</td>
							<td colspan="2"><input type="hidden"
								value="<%=manger_name %>" name="manger_name"><input
								class="box" type="text" name="student_sno"></td>



						</tr>
						<tr>

							<td colspan="2" align="center" height="40"><input
								type="submit" value="查找"> <input type="reset"
								value="重 置"></td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
