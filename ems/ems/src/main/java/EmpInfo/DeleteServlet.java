package EmpInfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/delete")
public class DeleteServlet extends HttpServlet{

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		int id=Integer.parseInt(req.getParameter("id"));
		
    try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
		
		PreparedStatement ps=con.prepareStatement("delete from emp where id=?");
		
		ps.setInt(1, id);
		
		int row=ps.executeUpdate();
		
		ps.close();
		
		con.close();
		
		
		
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
    
    
    
    
    
    try {
  		Class.forName("com.mysql.cj.jdbc.Driver");
  		//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306");
  		
  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
  		
  		PreparedStatement ps=con.prepareStatement("select * from emp");
  		
  		ResultSet rs= ps.executeQuery();
  		
  		req.setAttribute("rs1", rs);
  		
  		RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
  		
  		rd.forward(req, resp);
  		
  		
  		
  		
  		
  		
  		
  		ps.setInt(1, id);
  		
  		int row=ps.executeUpdate();
  		
  		ps.close();
  		
  		con.close();
  		
  		
  		
  		
  	} catch (ClassNotFoundException | SQLException e) {
  		// TODO Auto-generated catch block
  		e.printStackTrace();
  	}
  		
    
  
    
    
	}
}
