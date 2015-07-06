package org.ivica.servlet;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.ivica.entity.Message;
import org.ivica.model.MessageModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by mirakel on 05/07/2015.
 */
public class ContactServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TilesContainer container = TilesAccess.getContainer(
                request.getSession().getServletContext());
        container.render("contact", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Message contacto = new Message();

        contacto.setNombres(request.getParameter("nombres"));
        contacto.setEmail(request.getParameter("email"));
        contacto.setAsunto(request.getParameter("asunto"));
        contacto.setContenido(request.getParameter("mensaje"));

        MessageModel message  = new MessageModel();

        try {
            message.save(contacto);
            request.setAttribute("saved", true);
            request.setAttribute("Message", "Hubo un error al enviar. Por favor intente nuevamente.");
            request.getRequestDispatcher("views/web/contact.jsp").forward(request, response);

        } catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        }

    }
}
