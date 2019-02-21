package com.manger;

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
 * Servlet implementation class Add_manger
 */
@WebServlet("/Add_manger")
public class Add_manger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_manger() {
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
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn=Batch.getConnection();//链接数据库
		/*Batch Bt= new Batch();
		Connection conn=Batch.getConnection();*/
		String manger_name = request.getParameter("manger_name");//获取表单参数
		String manger_sno = request.getParameter("manger_sno");
		String id = request.getParameter("phtoto");
		String qustion = request.getParameter("qustion");
		String sex = request.getParameter("sex");
		
				/*String ID = request.getParameter("ID");*/
		if(conn != null) {
			try{String sql = "insert into manger_(manger_name,manger_sno,sex,qustion,id)"
					+ "values(?,?,?,?,?)";
			//创建PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			//对SQL语句中的参数动态赋值
			ps.setString(1, manger_name);
			ps.setString(2,manger_sno );
			ps.setString(3,sex);
			ps.setString(4,qustion);
			ps.setString(5,id);
			ps.executeUpdate();
			//获取PrintWritr对象
		PrintWriter out = response.getWriter();
			//输出注册结果信息
			out.print("<h1 aling='center'>");
			out.print("注册成功！<br>管理员姓名:"+manger_name);
			out.print("</h1>");
			out.print("<a href='mangerlogin.jsp'>");
			out.print("去登陆");
			out.print("</a>");
			out.flush();
			out.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}	 else {
					//发送数据库连接错误提示信息
					response.sendError(500, "数据库连接错误！");
				}

	}

}
