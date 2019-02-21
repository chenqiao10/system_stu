package com.savestudent;

import java.io.IOException;



import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;
import com.students.student;
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Batch dao = new Batch();
		List<student> list = dao.findStudent();
		 String manger_name=request.getParameter("manger_name");
		request.setAttribute("manger_name",manger_name );
		
				// ��ͼ�鼯�Ϸ��õ�request֮��
		request.setAttribute("list", list);
		// ����ת����book_list.jsp
		request.getRequestDispatcher("delect_list.jsp").forward(request, response);
}
}