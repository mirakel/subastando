package org.ivica.servlet;

import org.ivica.clases.Usuario;
import org.ivica.modelos.ModelUsuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * Created by mirakel on 29/06/2015.
 */
public class Login extends HttpServlet {

    Usuario usuario = new Usuario();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("username");
        String password = request.getParameter("password");

        String conditions = "username= '"+ user + "' AND password= '" + password + "' ";

        ModelUsuario model = new ModelUsuario();

        try {
            ArrayList<Usuario> data = model.getUsuarios(conditions,null,"1");

            if(!data.isEmpty()){
                for (Iterator<Usuario> it = data.iterator(); it.hasNext();) {
                    usuario = it.next();
                }
            }else{
                usuario = null;
                String mensaje = "Usuario y/o contraseña incorrecta.";
                response.sendRedirect("login.jsp?mensaje");
              }

            HttpSession session = request.getSession(true);

            session.setAttribute("username",usuario.getUsername());
            session.setAttribute("fullName",usuario.getFullName());

            response.sendRedirect("index.jsp");

        } catch (SQLException e) {

            e.printStackTrace();
        }

    }
}
