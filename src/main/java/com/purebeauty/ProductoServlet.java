package com.purebeauty;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;


@WebServlet("/ProductoServlet")
public class ProductoServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {


        String nombre = request.getParameter("nombre");

        String categoria = request.getParameter("categoria");

        String precio = request.getParameter("precio");


        request.setAttribute("nombre", nombre);
        request.setAttribute("categoria", categoria);
        request.setAttribute("precio", precio);


        request.getRequestDispatcher("resultado.jsp")
                .forward(request, response);

    }



    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws IOException {


        response.getWriter()
                .println("Servlet funcionando con GET");


    }

}