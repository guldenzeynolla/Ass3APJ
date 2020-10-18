package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( name = "LogOutServlet")
public class LogOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);
        Cookie cookie = new Cookie("number", "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        session.invalidate();
        response.sendRedirect("jsp/login.jsp");

    }
}
