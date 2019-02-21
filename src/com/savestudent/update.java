package com.savestudent;

import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Batch dao = new Batch();
		List<student> list = dao.findStudent();
		// 将图书集合放置到request之中
		request.setAttribute("list", list);
		// 请求转发到book_list.jsp
		request.getRequestDispatcher("update.jsp").forward(request, response);
}
}