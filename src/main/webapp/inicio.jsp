<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    com.purebeauty.Usuario usuario =
            (com.purebeauty.Usuario) session.getAttribute("usuario");
%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Inicio | Pure Beauty</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background: #F6E8DA;
        }

        header {
            background: #880024;
            color: white;
            padding: 20px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
        }

        .usuario {
            font-size: 15px;
        }

        .contenido {
            max-width: 900px;
            margin: 60px auto;
            padding: 20px;
            text-align: center;
        }

        .tarjeta {
            background: white;
            padding: 45px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.10);
        }

        h1 {
            color: #880024;
            margin-bottom: 15px;
        }

        p {
            color: #555;
            font-size: 17px;
            margin-bottom: 10px;
        }

        .rol {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #F0C6C7;
            color: #880024;
            border-radius: 20px;
            font-weight: bold;
        }

        .cerrar {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 25px;
            background: #880024;
            color: white;
            text-decoration: none;
            border-radius: 10px;
        }

        .cerrar:hover {
            background: #6d001d;
        }

    </style>

</head>

<body>

<header>

    <div class="logo">
        Pure Beauty
    </div>

    <div class="usuario">
        Hola, <%= usuario.getNombre() %> 💗
    </div>

</header>

<div class="contenido">

    <div class="tarjeta">

        <h1>¡Bienvenida a Pure Beauty!</h1>

        <p>
            Has iniciado sesión correctamente.
        </p>

        <p>
            Correo: <strong><%= usuario.getCorreo() %></strong>
        </p>

        <div class="rol">
            Rol: <%= usuario.getRol() %>
        </div>

        <br>

        <a href="login.jsp" class="cerrar">
            Cerrar sesión
        </a>

    </div>

</div>

</body>

</html>