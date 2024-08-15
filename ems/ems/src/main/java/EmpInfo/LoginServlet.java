package EmpInfo;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns="/login")
public class LoginServlet extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
	String email=	req.getParameter("email");
		String password= req.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
			
			PreparedStatement ps=con.prepareStatement("select * from emp where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
		   ResultSet rs=	ps.executeQuery();
			
		   if(rs.next()) {
			   
			   
			   Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
				
				PreparedStatement ps1=con1.prepareStatement("select * from emp");
			   
				   ResultSet rs1=	ps1.executeQuery();
					
			   req.setAttribute("rs1", rs1);
			   
			   
			   

			   RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			   rd.forward(req, resp);
		   }
		   
		   
		   else {
			   PrintWriter pw= resp.getWriter();
			   pw.write("<html><body><h1>Invalid credantial</h1></body></html>");
			   
			  
			   RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			   rd.include(req, resp);
		   }
		   
		   
		   
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
