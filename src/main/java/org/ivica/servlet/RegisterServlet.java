package org.ivica.servlet;

import org.ivica.entity.User;
import org.ivica.model.UserModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by mirakel on 28/06/2015.
 */
public class RegisterServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User usuario = new User();

        usuario.setNombres(request.getParameter("nombres"));
        usuario.setApellidos(request.getParameter("apellidos"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setUsername(request.getParameter("usuario"));
        usuario.setPassword(request.getParameter("password"));

        UserModel registro = new UserModel();

        try {
            registro.save(usuario);
            response.sendRedirect("/login?mensaje=ok");

        } catch (SQLException e) {
            response.sendRedirect("/login?mensaje=error");
            System.out.print("Error: " + e.getMessage());
        }
    }
}
