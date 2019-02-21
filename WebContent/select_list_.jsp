<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.students.student"%>
<%@ page import="java.util.List"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>

<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
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
	width: 780px;
	text-align: left;
	background: #fff;
	overflow: hidden;
}

.div {
	padding-left: 30px;
	padding-top: 0px;
	overflow-y: auto;
}
</style>
</head>
<body>
	<%String manger_name=(String)request.getAttribute("manger_name"); %>
	<jsp:include page="banner.jsp" flush="ture">
		<jsp:param value="<%=manger_name%>" name="manger_name" /></jsp:include>


	<div class="div">

		<div class="div1 content-page content ">
			<div class="am-g">
				<table align="center">
					<tr>
						<td><h1>学生学籍查询模块</h1></td>
					</tr>
				</table>

				<form action="saveservlet" method="post"
					onsubmit="return reg(this);">

					<%List<student> list=(List<student>)request.getAttribute("list");
					
					if(list==null||list.size()<1){
						out.print("没有数据");
					
					}else{
						for(student stu:list){
							%>

					<table align="center" border="0" width="600">



						<tr>
							<td height="20" colspan="4" align="center"><h2>
									学生<%=stu.getStudent_name() %>的学籍基本信息
								</h2></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">学生姓名：</td>
							<td><%=stu.getStudent_name() %></td>
							<td class="qw" align="left">学号：</td>
							<td><%=stu.getStudent_sno()%></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">学生性别：</td>
							<td><%=stu.getSex()%></td>
							<td class="qw" align="left">学生年龄：</td>
							<td><%= stu.getStudent_age()%></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">民族：</td>
							<td><%=stu.getNation()%></td>
							<td class="qw" align="left">出生年月</td>
							<td><%=stu.getBorn_date() %></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">学生专业</td>
							<td><%=stu.getZhuanye() %></td>
							<td class="qw" align="left">所属院系</td>
							<td><%=stu.getSdept() %></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">入学时间</td>
							<td><%=stu.getRuxue_date() %></td>
							<td class="qw" align="left">所属班级</td>
							<td><%=stu.getClassno() %></td>
						</tr>
						<tr>
							<td class="qw" height="30" align="left">学生ID</td>
							<td><%=stu.getID() %></td>
							<td>学生籍贯</td>
							<td class="qw" align="left"><%=stu.getAddress() %></td>

						</tr>

						<tr>
							<td height="30" align="left">学生身份证号</td>
							<td colspan="3"><%=stu.getIDcard() %></td>

						</tr>
						<% 
						}
					}
					%>

					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>