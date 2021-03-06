package org.ivica.servlet;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mirakel on 08/07/2015.
 */
public class ListProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TilesContainer container = TilesAccess.getContainer(
                request.getSession().getServletContext());
        container.render("listproducts", request, response);

    }

}
