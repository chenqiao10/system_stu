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
	wideth: 100%;
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
	width: 800px;
	text-align: right;
	background: #fff;
	overflow-y: auto;
}

.div {
	padding-left: 20px;
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
	        	if(form.born_date.value == ""){
	        		alert("出生年月日不能为空！");
	        		return false;
	        	}
	        	if(form.nation.value == ""){
	        		alert("民族不能为空！");
	        		return false;
	        	}
	        	
	        	
	        	
	        	if(form.sdept.value == ""){
	        		alert("学生所属学院不能为空！");
	        		return false;
	        	}
	        	
	        	if(form.classno.value == ""){
	        		alert("学生班级不能空！");
	        		return false;
	        	}
	        	if(form.address.value == ""){
	        		alert("学生家庭地址不能为空！");
	        		return false;
	        	}
	        	 if(form.student_age.value == ""){
	        		alert("学生年龄不能为空！");
	        		return false;
	        	} 
	        	if(form.ruxue_date.value == ""){
	        		alert("入学时间不能为空！");
	        		return false;
	        	}
	        	if(form.zhuanye.value == ""){
	        		alert("学生专业不能为空！");
	        		return false;
	        	}
	        	if(form.IDcard.value == ""){
	        		alert("身份证号码不能为空！");
	        		return false;
	        	}
	        	if(form.ID.value == ""){
	        		alert("学生学籍号不能为空！");
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
	<%request.setCharacterEncoding("utf-8"); String manger_name=request.getParameter("manger_name") ;
		     %>
	<jsp:include page="banner.jsp" flush="false">
		<jsp:param value="<%=manger_name%>" name="manger_name" />
	</jsp:include>
	<div class="div">


		<div class="div1 content-page content">
			<!-- content-page content -->
			<div class="am-g">
				<form action="saveservlet" method="post"
					onsubmit="return reg(this);">
					<table align="center" border="0" width="600">
						<tr>
							<td height="20" colspan="4" align="center"><h2>学生学籍注册模块</h2></td>
						</tr>
						<tr>
							<td align="right" width=40%>学生姓名：</td>
							<td><input type="text" name="student_name" class="box"></td>

							<td align="right" width="40%" height=40px>学生身份证号：</td>
							<td><input type="text" name="IDcard" class="box"></td>


						</tr>
						<tr>
							<td align="right" height=40px>学号：</td>
							<td><input type="text" name="student_sno" size="14"
								class="box"></td>

							<td align="right">专业 ：</td>
							<td><input type="text" name="zhuanye" size="14" class="box"></td>
						</tr>
						<tr>
							<td align="right" height=40px>出生日期：</td>
							<td><input type="text" name="born_date" class="box">年/月/日</td>
							<td align="right">学生地址：</td>
							<td><input type="text" name="address" class="box"></td>



						</tr>
						<tr>
							<td align="right" height=40px>性 别：</td>
							<td><input type="radio" name="sex" value="男"
								checked="checked">男 <input type="radio" name="sex"
								value="女">女</td>
							<td align="right">所在班级：</td>
							<td><input type="text" name="classno" class="box"></td>

						</tr>
						<tr>
							<td align="right" height=40px>所在院系：</td>
							<td><input type="text" name="sdept" class="box"></td>
							<td align="right">民族：</td>
							<td><input type="text" name="nation" class="box"></td>


						</tr>
						<tr>
							<td align="center" height=40px>学生年龄：</td>
							<td><input type="text" name="student_age" class="box"></td>
							<td align="right" height=40px>入学时间：</td>
							<td><input type="text" name="ruxue_date" class="box"></td>
						</tr>
						<tr>
							<td align="right" height=40px>学生学籍ID号：</td>
							<td><input class="box" name="ID" type="text"></td>

						</tr>



						<tr>

							<td colspan="2" align="center" height="40"><input
								type="submit" value="注 册"> <input type="reset"
								value="重 置"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
