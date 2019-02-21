package com.savestudent;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取图书id
		/*int IDcard = Integer.valueOf(request.getParameter("IDcard"));*/
		int  IDcard = Integer.valueOf(request.getParameter("IDcard"));
		try {
			// 加载数据库驱动，注册到驱动管理器
			Connection conn= Batch.getConnection();
			// 删除图书信息的SQL语句
			String sql = "delete from students_table where IDcard=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第一个占位符赋值
			ps.setInt(1, IDcard);
			// 执行更新操作
			ps.executeUpdate();
			// 关闭PreparedStatement
			ps.close();
			// 关闭Connection
			conn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// 重定向到FindServlet
		/*request.getRequestDispatcher("FindServlet").forward(request, response);*/
		/*response.sendRedirect("FindServlet");*/
		response.sendRedirect("FindServlet");
	}
}
