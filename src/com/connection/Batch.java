package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.students.student;
public   class Batch {

		private static Connection conn;
		
		private static String drivername="com.microsoft.sqlserver.jdbc.SQLServerDriver";//驱动路径 12
		private static String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=database";//数据库地址 13
		private static String userName="sa";//访问数据库的用户名 14 
		private static String userPwd="1996";//用户密码 15 
		static{
			try{Class.forName(drivername); 
			}catch(Exception e){
				e.printStackTrace();
			}
		//2、链接数据库 19
		}
		public static Connection getConnection() {
			try {
				conn = DriverManager.getConnection(dbURL,userName,userPwd); 
			}
				catch(Exception e) {
					e.printStackTrace();
				}
			return conn;
		}	
		public static void closeConn() {
			if(conn==null) {
				try {
					conn.close();
					
				}catch(Exception e) {
					e.printStackTrace();
					
				}
			}
		}
		
		public List<student> findStudent(){
			// 数据库连接
			Connection conn = getConnection();
			// 实例化List对象
			List<student> list = new ArrayList<student>();
			try {
				// 获取Statement
				Statement stmt = conn.createStatement();
				// 添加图书信息的SQL语句
				String sql = "select * from students_table";
				// 执行查询
				ResultSet rs = stmt.executeQuery(sql);
				// 光标向后移动，并判断是否有效
				while(rs.next()){
					// 实例化Book对象
					student stu = new student();
					// 对id属性赋值
					stu.setIDcard(rs.getInt("IDcard"));
					stu.setStudent_name(rs.getString("student_name"));
					stu.setSex( rs.getString("sex"));
					stu.setID(rs.getInt("ID"));
					stu.setSdept(rs.getString("sdept"));
					stu.setNation(rs.getString("nation"));
					
					
					stu.setClassno(rs.getString("classno"));
					stu.setAddress(rs.getString("address"));
					
					
					stu.setBorn_date( rs.getString("born_date"));
					
					stu.setStudent_age( rs.getString("student_age"));
					stu.setRuxue_date(rs.getString("ruxue_date"));
					stu.setZhuanye(rs.getString("zhuanye"));
					stu.setStudent_sno(rs.getString("student_sno"));
					
					// 将图书对象添加到集合中
					list.add(stu);
				}
				rs.close();		// 关闭ResultSet
				stmt.close();	// 关闭Statement
				conn.close();	// 关闭Connection
			}catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}	
	}
