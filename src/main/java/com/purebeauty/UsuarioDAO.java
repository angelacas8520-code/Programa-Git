package com.purebeauty;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    public Usuario validarUsuario(String correo, String contrasena) {

        String sql = "SELECT id, nombre, correo, contrasena, rol " +
                "FROM usuarios " +
                "WHERE correo = ? AND contrasena = ?";

        try (Connection conexion = Conexion.conectar();
             PreparedStatement statement = conexion.prepareStatement(sql)) {

            statement.setString(1, correo);
            statement.setString(2, contrasena);

            ResultSet resultado = statement.executeQuery();

            if (resultado.next()) {

                return new Usuario(
                        resultado.getInt("id"),
                        resultado.getString("nombre"),
                        resultado.getString("correo"),
                        resultado.getString("contrasena"),
                        resultado.getString("rol")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}