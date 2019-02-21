<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.sql.*"
	import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.ResultSet" import="java.sql.PreparedStatement"
	import="java.sql.ResultSet"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�ڴ˴��������</title>
</head>
<body>
	<%
/* String  ID = request.getParameter("IDcard"); */
String student_name=request.getParameter("student_name"); 
String student_sno=request.getParameter("student_sno"); 

String drivername="com.microsoft.sqlserver.jdbc.SQLServerDriver";//����·�� 12
String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=database";//���ݿ��ַ 13
String userName="sa";//�������ݿ���û��� 14 
String userPwd="1996";//�û����� 15 
Class.forName(drivername);  //2���������ݿ� 19
Connection con = DriverManager.getConnection(dbURL,userName,userPwd); 
String sql =("select * from students_table where  student_name=? and student_sno=?"); /*  and student_name=?" student_name=?*/
PreparedStatement ps = con.prepareStatement(sql);
 
 ps.setString(1,student_name);  
 ps.setString(2,student_sno);  

ResultSet rs=ps.executeQuery();
String sex ;
int   ID,IDcard;
while(rs.next()){
	// 实例化Book对象
	
	// 对id属性赋值
IDcard=rs.getInt("IDcard");
 student_name=rs.getString("student_name"); 
sex= rs.getString("sex");
ID=	rs.getInt("ID");
student_sno=rs.getString("student_sno");
%>
	<p><%=student_name%>
		<%=ID%><%=sex %><%=IDcard %><%=student_sno %></p>
	<%





}
ps.close();
con.close();

%>

</body>
</html>