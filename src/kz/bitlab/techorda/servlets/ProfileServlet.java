package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kz.bitlab.techorda.db.DBConection;
import kz.bitlab.techorda.db.Items;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession();
        String text= (String) session.getAttribute("userName");
        System.out.println(text);

    response.setContentType("text/html");
    ArrayList<Items> items= DBConection.getItems();
    request.setAttribute("items", items);
    request.getRequestDispatcher("/index.jsp").forward(request,response
    );
    }
}
