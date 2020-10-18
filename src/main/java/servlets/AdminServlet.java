package servlets;

import db.ProductRepository;
import domain.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdminServlet")
public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        try(PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            int id;
            Product product;
            String filename = null;
            ProductRepository productRepository = new ProductRepository();
            if (action == null || action.equals("")){
                request.setAttribute("LIST_INFORM", productRepository.getLs());
                request.getRequestDispatcher("view-admin.jsp").forward(request, response);
                return;
            }
           switch (action){
                case "AddOrEdit":
                    id = Integer.parseInt(request.getParameter("productid"));
                    product = productRepository.findByID(id);
                    if(product == null){
                        request.setAttribute("PRODUCT", new Product(
                                 id,
                                "",
                                "",
                                "",
                                ""));
                    }
                    request.setAttribute("PRODUCT", product);
                    request.setAttribute(("ACTION"), "SaveOrUpdate");
                    request.getRequestDispatcher("jsp/admin.jsp").forward(request, response);
                    break;
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
