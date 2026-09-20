<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Iniciar sesión | Pure Beauty</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #F6E8DA;
        }

        .login-container {
            width: 380px;
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
        }

        .logo {
            text-align: center;
            color: #880024;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #880024;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 13px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            outline: none;
        }

        input:focus {
            border-color: #880024;
        }

        button {
            width: 100%;
            padding: 13px;
            background: #880024;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #6d001d;
        }

        .error {
            background: #f8d7da;
            color: #842029;
            padding: 10px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
        }

    </style>
</head>

<body>

<div class="login-container">

    <div class="logo">Pure Beauty</div>

    <p class="subtitle">Inicia sesión en tu cuenta</p>

    <% if (request.getAttribute("error") != null) { %>

    <div class="error">
        <%= request.getAttribute("error") %>
    </div>

    <% } %>

    <form action="LoginServlet" method="post">

        <label for="correo">Correo electrónico</label>

        <input
                type="email"
                id="correo"
                name="correo"
                placeholder="Ingresa tu correo"
                required
        >

        <label for="contrasena">Contraseña</label>

        <input
                type="password"
                id="contrasena"
                name="contrasena"
                placeholder="Ingresa tu contraseña"
                required
        >

        <button type="submit">
            Iniciar sesión
        </button>

    </form>

</div>

</body>
</html>