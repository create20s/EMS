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
@WebServlet(urlPatterns="/update")
public class updateServlet  extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		   
		String sid = req.getParameter("id");
		System.out.println(" hi "+sid);
		int id = Integer.parseInt(sid);
	        
	        
	       
	        
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/organization","root","root");
				PreparedStatement ps = con.prepareStatement("select * from emp where id=?");
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next()) {
					System.out.println(rs.getInt(1)+", "+rs.getString(2));
					req.setAttribute("rs", rs);
					RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
					rd.forward(req, resp);
				}
				else {
					System.out.println("Id not Found...");
				}
		            
		            
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
		    
	        
		
	}
}
