package com.purebeauty;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        // Validar que los campos no estén vacíos
        if (correo == null || correo.trim().isEmpty()
                || contrasena == null || contrasena.trim().isEmpty()) {

            request.setAttribute(
                    "error",
                    "Por favor, completa todos los campos."
            );

            request.getRequestDispatcher("login.jsp")
                    .forward(request, response);

            return;
        }

        // Validar usuario en la base de datos
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = usuarioDAO.validarUsuario(correo, contrasena);

        if (usuario != null) {

            // Crear sesión
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", usuario);

            // Ir a la página de inicio
            response.sendRedirect("inicio.jsp");

        } else {

            // Usuario o contraseña incorrectos
            request.setAttribute(
                    "error",
                    "Correo o contraseña incorrectos."
            );

            request.getRequestDispatcher("login.jsp")
                    .forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws IOException {

        response.sendRedirect("login.jsp");
    }
}