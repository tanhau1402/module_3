package com.example.customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "helloServlet", value = "")
public class HelloServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Customer> customers = new ArrayList<>();
        customers.add(new Customer("bao anh", "02/03/2003", "usa", "webapp/image/cho.jpg"));
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

}