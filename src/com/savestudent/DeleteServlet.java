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
		// ��ȡͼ��id
		/*int IDcard = Integer.valueOf(request.getParameter("IDcard"));*/
		int  IDcard = Integer.valueOf(request.getParameter("IDcard"));
		try {
			// �������ݿ�������ע�ᵽ����������
			Connection conn= Batch.getConnection();
			// ɾ��ͼ����Ϣ��SQL���
			String sql = "delete from students_table where IDcard=?";
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�һ��ռλ����ֵ
			ps.setInt(1, IDcard);
			// ִ�и��²���
			ps.executeUpdate();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// �ض���FindServlet
		/*request.getRequestDispatcher("FindServlet").forward(request, response);*/
		/*response.sendRedirect("FindServlet");*/
		response.sendRedirect("FindServlet");
	}
}
