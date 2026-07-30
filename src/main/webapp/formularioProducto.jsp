<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>

<head>
    <title>Registro de producto</title>
</head>


<body>

<h1>Registrar producto</h1>


<form action="ProductoServlet" method="POST">


    Nombre del producto:

    <input type="text" name="nombre">

    <br><br>


    Categoría:

    <input type="text" name="categoria">

    <br><br>


    Precio:

    <input type="number" name="precio">


    <br><br>


    <button type="submit">
        Guardar
    </button>


</form>


</body>

</html>