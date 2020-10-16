package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

       try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ass1APJ","postgres","068070");
            String sql = "insert into users(number ,email,password) values (?,?,?)";
           PreparedStatement preparedStatement = connection.prepareStatement(sql);
           preparedStatement.setString(1, number);
           preparedStatement.setString(2, email);
           preparedStatement.setString(3, password);
           preparedStatement.execute();
           request.getRequestDispatcher("jsp/login.jsp").include(request, response);

        }catch (Exception e){
            out.print(e);
        }
    }
}
