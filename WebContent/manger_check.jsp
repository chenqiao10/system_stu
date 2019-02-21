<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page import="java.sql.*" import="com.manger.admin"
	import="java.util.List" import=" java.util.ArrayList"%>
<%@page import="com.connection.Batch"%>
<title>在此处插入标题</title>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<base href="<%=basePath%>">
<title>My JSP 'check.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
<link rel="stylesheet" type="text/css" href="styles.css">  
 -->
</head>
<body>
	<%  
  request.setCharacterEncoding("utf-8");  
   String manger_name=request.getParameter("manger_name");  
   String manger_sno=request.getParameter("manger_sno");  
   boolean flag=false;  
   PreparedStatement sql=null;    
   ResultSet rs=null;  
   Connection conn= Batch.getConnection();
   admin ad=new admin();
   
   
%>

	<%   

    
    sql =conn.prepareStatement("select * from manger_ where manger_name=? and manger_sno=?");  
    sql.setString(1,manger_name);  
    sql.setString(2,manger_sno);  
    rs=sql.executeQuery(); 
   /*  ad.setManger_name(manger_name); */
    
    if (rs.next()) {  
    	
    	ad.setManger_name(rs.getString("manger_name"));
    	ad.setManger_sno(rs.getString("manger_sno"));
    	ad.setId(rs.getInt("id"));
   flag=true; 
   System.out.println("已成功链接数据库！");
     }  
   rs.close();  
   sql.close();  
   conn.close();
	List <admin> list= new ArrayList<admin>();list.add(ad);


request.setAttribute("list", list);
  %>
	<!-- 判断是否是正确的登录用户 -->
	<% if (flag==true){ 
/* request.setAttribute("manger_name",manger_name );response.sendRedirect("banners.jsp"); */
session.setAttribute("manger_name",manger_name );
request.getRequestDispatcher("manger_ziliao.jsp").forward(request, response);
%>
	<%-- <jsp:forward page="banners.jsp"/


> 
  --%>
	<%}   
else  
	if (flag==false){  
%>
	<jsp:forward page="login_fail.jsp" />

	<%} %>

</body>
</html>
