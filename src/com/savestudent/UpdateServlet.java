package com.savestudent;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;
import com.students.student;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}*/
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String	student_name=request.getParameter("student_name");
		int IDcard= Integer.valueOf(request.getParameter("IDcard"));
		int ID= Integer.valueOf(request.getParameter("ID"));
		String	zhuanye=request.getParameter("zhuanye");
		String	sdept=request.getParameter("sdept");
		String	student=request.getParameter("student_name");
		Connection conn=Batch.getConnection();
		
		try {
			String sql =("update students_table set student_name=?  where IDcard=? "+"update students_table set zhuanye=?  where IDcard=? "+"update students_table set ID=?  where IDcard=? "+"update students_table set sdept=?  where IDcard=? ");
			
			
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1,student_name);
			ps.setInt(2,IDcard);
			ps.setString(3,zhuanye);
			
			ps.setInt(4,IDcard);
			
			ps.setInt(5,ID);
			ps.setInt(6,IDcard);
			ps.setString(7,sdept);
			ps.setInt(8,IDcard);
			ps.executeUpdate();
			ps.close();
			conn.close();
	}catch(Exception e) {
			e.printStackTrace();
			
		}response.sendRedirect("update");
			}
	}


