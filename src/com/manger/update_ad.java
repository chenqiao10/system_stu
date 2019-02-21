package com.manger;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Batch;

/**
 * Servlet implementation class update_ad
 */
@WebServlet("/update_ad")
public class update_ad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_ad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String	manger_sno=request.getParameter("manger_sno");
				int  id = Integer.valueOf(request.getParameter("id"));
		Connection conn=Batch.getConnection();
		
		try {
			String sql =("update manger_ set manger_sno=?  where id=?");
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1,manger_sno);
			ps.setInt(2,id);
			
			
			ps.executeUpdate();
			ps.close();
			conn.close();
	}catch(Exception e) {
			e.printStackTrace();
			
		}
		response.sendRedirect("mangerlogin.jsp");
	}

}
