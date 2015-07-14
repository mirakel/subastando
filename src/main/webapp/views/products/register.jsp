<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 08/07/2015
--%>
<%@ page import="org.ivica.model.CategoryModel" %>
<%@ page import="org.ivica.entity.Category" %>
<%@ page import="java.util.ArrayList" %>
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
                                <h4 class="panel-title"><a href="listproducts">Productos</a></h4>
                            </div>
                        </div>

                    </div><!--/category-products-->

                </div>
            </div>

            <%
                CategoryModel model = new CategoryModel();
                ArrayList<Category> categorias = model.getCategorias();
            %>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Publicar Producto</h2>
                    <!-- Formulario -->
                    <form action="/products" class="contact-form row" method="post" enctype="multipart/form-data">
                        <div class="form-group col-md-12">
                            <input type="text" name="nombre" class="form-control" required="required" placeholder="Nombre producto">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" name="precio" class="form-control" required="required" placeholder="Precio">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" name="cantidad" class="form-control" required="required" placeholder="Cantidad">
                        </div>
                        <div class="form-group col-md-4">
                            <select name="estado">
                                <option value="Nuevo">Nuevo</option>
                                <option value="Seminuevo">Seminuevo</option>
                                <option value="Usado">Usado</option>
                            </select>
                        </div>

                        <div class="form-group col-md-5">
                            <select name="categoria">
                                <%  for(Category cat : categorias) {%>
                                <option value="<%= cat.getId()%>"><%= cat.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>

                        <div class="form-group col-md-12">
                            <textarea name="descripcion" required="required" class="form-control" rows="8" placeholder="Descripción del producto"></textarea>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="file" name="portada"/>
                        </div>

                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn btn-primary pull-right" value="Publicar">
                        </div>
                    </form>

                </div><!--features_items-->


            </div>
        </div>
    </div>
</section>
