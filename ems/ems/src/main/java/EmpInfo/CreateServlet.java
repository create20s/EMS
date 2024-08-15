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
@WebServlet(urlPatterns="/registration")
public class CreateServlet   extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	int id= Integer.parseInt(req.getParameter("id")) ;
	String name=req.getParameter("name");
	
	String email=req.getParameter("email");
	
	String password=  req.getParameter("password");
	
	double sal=Double.parseDouble(req.getParameter("sal"));
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
		
		PreparedStatement ps=con.prepareStatement("insert into emp values(?,?,?,?,?)");
		
		ps.setInt(1, id);
		ps.setString(2, name);
		ps.setString(3,email);
		ps.setString(4, password);
		ps.setDouble(5, sal);
		
		
		ps.executeUpdate();
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