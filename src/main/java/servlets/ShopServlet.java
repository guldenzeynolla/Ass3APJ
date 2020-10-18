package servlets;

import domain.Product;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;

@WebServlet( name = "ProfileServlet")
public class ShopServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);

        if(session!= null){//если есть сессия
            Cookie cookie[]= request.getCookies();
            if(cookie!= null){//есть куки
                String number = cookie[0].getValue();
                if(!number.equals("") || number!=null){

                    response.sendRedirect("jsp/shop.jsp");//отпр  шоп

                }
            }

        }else {
            response.sendRedirect("jsp/login.jsp");
        }
    }
}
