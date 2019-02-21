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
		
		Connection conn = Batch.getConnection();//链接数据库
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//获取表单中属性值
		String student_name = request.getParameter("student_name");//获取表单参数
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
				
			
				//插入注册信息的SQL语句(使用?占位符)
				String sql = "insert into students_table(IDcard,ID,student_name,nation,address,sdept,classno,zhuanye,student_sno,sex,ruxue_date,born_date,student_age) "
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
				//创建PreparedStatement对象
				PreparedStatement ps = conn.prepareStatement(sql);
			
				//对SQL语句中的参数动态赋值
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
				//执行更新操作
					ps.executeUpdate();
				//获取PrintWritr对象
			PrintWriter out = response.getWriter();
				//输出注册结果信息
				out.print("<h1 aling='center'>");
				out.print("注册成功！<br>学生姓名:"+student_name);
				out.print("</h1>");
				out.flush();
				out.close();
				
			} catch (Exception e) {
				e.printStackTrace();
				PrintWriter out = response.getWriter();
				//输出注册结果信息
				out.print("<h1 aling='center'>");
				out.print("注册失败！<br>学生信息身份证或学号重复");
				out.print("</h1>");
				out.flush();
				out.close();
			}
		} else {
			//发送数据库连接错误提示信息
			response.sendError(500, "数据库连接错误！");
		}

	}


		
	}


