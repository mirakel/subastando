package org.ivica.servlet;

import org.ivica.clases.Producto;
import org.ivica.modelos.ModelProducto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by mirakel on 30/06/2015.
 */
public class products extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Producto producto = new Producto();


        producto.setNombre(request.getParameter("nombre"));
        producto.setPrecio(Double.parseDouble(request.getParameter("precio")));
        producto.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        producto.setEstado(request.getParameter("estado"));
        producto.setDescripcion(request.getParameter("descripcion"));
        producto.setCategoria(Integer.parseInt(request.getParameter("categoria")));

        ModelProducto model = new ModelProducto();

        try {
            model.save(producto);

            response.sendRedirect("listado.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }

       }
}
