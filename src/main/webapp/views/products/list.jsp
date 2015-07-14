<%@ page import="org.ivica.model.ProductModel" %>
<%@ page import="org.ivica.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 08/07/2015
  Time: 6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Menu</h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="/listproducts">Productos</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="/products">Agregar</a></h4>
                            </div>
                        </div>

                    </div><!--/category-products-->

                </div>
            </div>

            <% ///out.print(request.getAttribute("id"));%>
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Listado de productos</h2>

                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            ProductModel model = new ProductModel();
                            ArrayList<Product> productos = model.getProductos();
                            for(Product prod : productos) {
                        %>
                        <tr>
                            <td><% out.print(prod.getNombre()); %></td>
                            <td>S/. <% out.print(prod.getPrecio()); %></td>
                            <td><% out.print(prod.getCantidad()); %></td>
                            <td>
                                <a href="#" alt="agregar imagenes" title="Agregar imagen"><span class="glyphicon glyphicon-picture" aria-hidden="true"></span></a>
                                <a href="#" alt="Editar" title="Editar"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                <a href="#" alt="Eliminar" title="Eliminar"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                        <%
                            }
                        %>

                        </tbody>
                    </table>


                </div><!--features_items-->

            </div>
        </div>
    </div>
</section>