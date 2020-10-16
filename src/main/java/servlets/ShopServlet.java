package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( name = "ProfileServlet")
public class ShopServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);

        if(session!= null){
            Cookie cookie[]= request.getCookies();
            if(cookie!= null){
                String number = cookie[0].getValue();
                if(!number.equals("") || number!=null){
                    out.print("Welcome to profile! Your number: " + number);

                    out.print("<html><a href='./LogOutServlet'> LogOut </a></html>");                }
            }

        }else {
            response.sendRedirect("jsp/login.jsp");
        }
    }
}
