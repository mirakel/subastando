package org.ivica.servlet;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.ivica.entity.User;
import org.ivica.model.UserModel;

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
public class LoginServlet extends HttpServlet {

    User usuario = new User();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TilesContainer container = TilesAccess.getContainer(
                request.getSession().getServletContext());
        container.render("login", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("username");
        String password = request.getParameter("password");
        String conditions = "username= '"+ user + "' AND password= '" + password + "' ";

        UserModel model = new UserModel();

        try {
            ArrayList<User> data = model.getUsuarios(conditions,null,"1");

            if(!data.isEmpty()){
                for (Iterator<User> it = data.iterator(); it.hasNext();) {
                    usuario = it.next();
                }
            }else{
                usuario = null;
                response.sendRedirect("/login?mensaje=lgerror");
              }

            HttpSession session = request.getSession(true);

            session.setAttribute("username",usuario.getUsername());
            session.setAttribute("fullName",usuario.getFullName());
            session.setAttribute("nombres",usuario.getNombres());
            session.setAttribute("apellidos",usuario.getApellidos());
            session.setAttribute("telefono",usuario.getTelefono());
            response.sendRedirect("/home?mensaje=ok");

        } catch (SQLException e) {
            response.sendRedirect("/home?mensaje=error");
            System.out.print("Error: " + e.getMessage());
        }

    }
}
