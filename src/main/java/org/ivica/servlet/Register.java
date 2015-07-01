package org.ivica.servlet;

import org.ivica.clases.Usuario;
import org.ivica.modelos.ModelUsuario;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Register extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Usuario usuario = new Usuario();
        usuario.setNombres(request.getParameter("nombres"));
        usuario.setApellidos(request.getParameter("apellidos"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setUsername(request.getParameter("usuario"));
        usuario.setPassword(request.getParameter("password"));

        ModelUsuario model = new ModelUsuario();
        try {
            model.save(usuario);
            response.sendRedirect("Mensaje");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
