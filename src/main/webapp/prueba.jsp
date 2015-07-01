<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 28/06/2015
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.ivica.modelos.ModelProducto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.ivica.clases.Producto" %>

<html>
<head>
    <title></title>
</head>
<body>

<table>
   <thead>
   <tr>
       <th>Nombre</th>
       <th>Precio</th>
       <th>Cantidad</th>
       <th>Descripcion</th>
   </tr>
   </thead>
    <tbody>
        <%
            ModelProducto model = new ModelProducto();
            ArrayList<Producto> productos = model.getProductos();
            for(Producto prod : productos) {
        %>
        <tr>
            <td><% out.print(prod.getNombre()); %></td>
            <td><% out.print(prod.getPrecio()); %></td>
            <td><% out.print(prod.getCantidad()); %></td>
            <td><% out.print(prod.getDescripcion()); %></td>
        </tr>
        <%
            }
        %>

    </tbody>

</table>

</body>
</html>
