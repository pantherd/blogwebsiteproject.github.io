import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
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
			String rname=request.getParameter("rname");
			String rpass=request.getParameter("rpass");
			ResultSet rs=stmt.executeQuery("select * from register where rname='"+rname+"' and rpass='"+rpass+"'");
			if(rs.next()) {
				HttpSession session=request.getSession();
				session.setAttribute("ename", rname);
				response.sendRedirect("Welcome.jsp");
				
			}
			else {
				out.print("<h1 style='color:red';>User Name and Password Doesn't match</h1>");
				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
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
