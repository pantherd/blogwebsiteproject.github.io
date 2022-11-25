import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertData
 */
@WebServlet("/InsertData")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite","root","12345");
			Statement stmt=con.createStatement();
			
			String btn=request.getParameter("sub");
			if(btn.equals("Register")) {
			
			String rname=request.getParameter("rname");
			String rpass=request.getParameter("rpass");
			String remail=request.getParameter("remail");
			String rcity=request.getParameter("rcity");
			stmt.executeUpdate("insert into register (rname,rpass,remail,rcity) values('"+rname+"','"+rpass+"','"+remail+"','"+rcity+"')");
			out.print("<script>alert('Registeration done');window.location='Main.jsp'</script>");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
