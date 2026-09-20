package com.purebeauty;

public class PruebaConexion {

    public static void main(String[] args) {

        UsuarioDAO usuarioDAO = new UsuarioDAO();

        Usuario usuario = usuarioDAO.validarUsuario(
                "admin@purebeauty.com",
                "123456"
        );

        if (usuario != null) {
            System.out.println("¡USUARIO ENCONTRADO!");
            System.out.println("Nombre: " + usuario.getNombre());
            System.out.println("Correo: " + usuario.getCorreo());
            System.out.println("Rol: " + usuario.getRol());
        } else {
            System.out.println("USUARIO NO ENCONTRADO");
        }
    }
}