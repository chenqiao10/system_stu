package com.savestudent;

import java.io.IOException;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;
import com.students.student;

/**
 * Servlet implementation class Select_sno_name
 */
@WebServlet("/Select_sno_name")
public class Select_sno_name extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Select_sno_name() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn = Batch.getConnection();
		
		  
		//获取表单中属性值
		 
		

		if(conn!=null) {
			try {
				String student_name=request.getParameter("student_name"); 
				String student_sno=request.getParameter("student_sno"); 
				String sql =("select * from students_table where  student_name=? and student_sno=?"); 
				
				PreparedStatement ps = conn.prepareStatement(sql);
				 
				 ps.setString(1,student_name);  
				 ps.setString(2,student_sno);  

				ResultSet rs=ps.executeQuery();
				
			List <student> list= new ArrayList<student>();
				
			while(rs.next()){
				
				student stu= new student();
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
				



				list.add(stu);
			}
				
			String manger_name=	request.getParameter("manger_name");
			request.setAttribute("list", list);
			request.setAttribute("manger_name",manger_name );
			rs.close();
			
				
			
			ps.close();	// 关闭Statement
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
				
			}
		
		
		request.getRequestDispatcher("select_list_.jsp").forward(request, response);
		
	}
		}
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
