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
		
		private static String drivername="com.microsoft.sqlserver.jdbc.SQLServerDriver";//����·�� 12
		private static String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=database";//���ݿ��ַ 13
		private static String userName="sa";//�������ݿ���û��� 14 
		private static String userPwd="1996";//�û����� 15 
		static{
			try{Class.forName(drivername); 
			}catch(Exception e){
				e.printStackTrace();
			}
		//2���������ݿ� 19
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
			// ���ݿ�����
			Connection conn = getConnection();
			// ʵ����List����
			List<student> list = new ArrayList<student>();
			try {
				// ��ȡStatement
				Statement stmt = conn.createStatement();
				// ���ͼ����Ϣ��SQL���
				String sql = "select * from students_table";
				// ִ�в�ѯ
				ResultSet rs = stmt.executeQuery(sql);
				// �������ƶ������ж��Ƿ���Ч
				while(rs.next()){
					// ʵ����Book����
					student stu = new student();
					// ��id���Ը�ֵ
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
					
					// ��ͼ�������ӵ�������
					list.add(stu);
				}
				rs.close();		// �ر�ResultSet
				stmt.close();	// �ر�Statement
				conn.close();	// �ر�Connection
			}catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}	
	}
