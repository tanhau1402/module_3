package com.example.ss9;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/calculator")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/hello-servlet");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String description = request.getParameter("pd");
        float price = Float.parseFloat(request.getParameter("lp"));
        float discount_percent = Float.parseFloat(request.getParameter("dp"));

        float discount_amount = (float) (price * discount_percent * 0.01);
        float discount_price =price + discount_amount;
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h1>List Price: " + price + "</h1>");
        printWriter.println("<h1>Discount Percent: " + discount_percent + "</h1>");
        printWriter.println("<h1>Discount Amount: " + discount_amount + "</h1>");

        printWriter.println("</html>");
    }
}