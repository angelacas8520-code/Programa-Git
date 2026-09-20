package com.purebeauty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static final String URL =
            "jdbc:mysql://localhost:3306/pure_beauty";

    private static final String USUARIO = "root";

    private static final String CONTRASENA = "angela2030";

    public static Connection conectar() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(
                    "No se encontró el controlador de MySQL.",
                    e
            );
        }

        return DriverManager.getConnection(
                URL,
                USUARIO,
                CONTRASENA
        );
    }
}