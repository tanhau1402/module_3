package com.example.listcustomer;

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

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Customer> customers = new ArrayList<>();
        customers.add(new Customer("bao anh", "02/03/2003", "Usa", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZy5B0aQFMu6GMUaO-V1_zZ1BawONriTPSbQ&usqp=CAU"));
        customers.add(new Customer("kiet IS", "11/09/2003", "Iran", "https://media.vov.vn/sites/default/files/styles/large/public/2021-09/1_photos-of-the-terrorist-attacks-september-11-2001_piximus.net_.jpg"));

        request.setAttribute("customers", customers);
        try {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}