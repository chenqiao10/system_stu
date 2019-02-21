package com.savestudent;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;



/**
 * Servlet implementation class saveservlet
 */
@WebServlet("/saveservlet")
public class saveservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saveservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = Batch.getConnection();//�������ݿ�
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//��ȡ��������ֵ
		String student_name = request.getParameter("student_name");//��ȡ������
		String student_sno = request.getParameter("student_sno");
		String ID = request.getParameter("ID");
		String born_date = request.getParameter("born_date");
		String sdept = request.getParameter("sdept");
		String classno = request.getParameter("classno");
		String IDcard = request.getParameter("IDcard");
		
		String address = request.getParameter("address");
		String nation = request.getParameter("nation");
		String student_age = request.getParameter("student_age");
		/*String ruxue_date = request.getParameter("ruxue_date");*/
		String  zhuanye= request.getParameter("zhuanye");
		/*String  IDcard= request.getParameter("IDcard");
*/		String sex = request.getParameter("sex");
		String ruxue_date = request.getParameter("ruxue_date");

		if (conn != null) {
			try {
				
			
				//����ע����Ϣ��SQL���(ʹ��?ռλ��)
				String sql = "insert into students_table(IDcard,ID,student_name,nation,address,sdept,classno,zhuanye,student_sno,sex,ruxue_date,born_date,student_age) "
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
				//����PreparedStatement����
				PreparedStatement ps = conn.prepareStatement(sql);
			
				//��SQL����еĲ�����̬��ֵ
				ps.setString(1, IDcard);
				ps.setString(2, ID);
				ps.setString(3,student_name );
				ps.setString(4,nation );
				ps.setString(5,address );
				
				ps.setString(6, sdept);
				ps.setString(7,classno );
				ps.setString(8,zhuanye);
				ps.setString(9,student_sno );				
				ps.setString(10,sex );
				ps.setString(11,ruxue_date);	
				ps.setString(12, born_date);			
						
				ps.setString(13,student_age);
				//ִ�и��²���
					ps.executeUpdate();
				//��ȡPrintWritr����
			PrintWriter out = response.getWriter();
				//���ע������Ϣ
				out.print("<h1 aling='center'>");
				out.print("ע��ɹ���<br>ѧ������:"+student_name);
				out.print("</h1>");
				out.flush();
				out.close();
				
			} catch (Exception e) {
				e.printStackTrace();
				PrintWriter out = response.getWriter();
				//���ע������Ϣ
				out.print("<h1 aling='center'>");
				out.print("ע��ʧ�ܣ�<br>ѧ����Ϣ���֤��ѧ���ظ�");
				out.print("</h1>");
				out.flush();
				out.close();
			}
		} else {
			//�������ݿ����Ӵ�����ʾ��Ϣ
			response.sendError(500, "���ݿ����Ӵ���");
		}

	}


		
	}


