package servlets;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.ws.rs.ServerErrorException;
import javax.ws.rs.core.Response;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        boolean flag = false;
        try {
/*
            Class.forName("com.postgresql-42.2.17.jar");
*/
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ass1APJ","postgres","068070");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from users");
            while (resultSet.next()){
                if( number!=null && password!=null && number.equals(resultSet.getString(2)) && password.equals(resultSet.getString(4)))
                {
                    session.setAttribute("number", number);
                    flag = true;

                    if(number.equals("87081000000") && password.equals("admin")){

                        response.sendRedirect("jsp/admin.jsp");

                    }
                    response.sendRedirect("ShopServlet");

                }else{
                    out.print("invalid username or password");
                    request.getRequestDispatcher("jsp/login.jsp").include(request, response);

                }
            }
            if(flag == false)
            {
                out.print("invalid username or password");
                request.getRequestDispatcher("jsp/login.jsp").include(request, response);

            }

        }catch (Exception e){
            out.print(e);
        }

    }
}
