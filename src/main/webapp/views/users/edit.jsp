<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 08/07/2015
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Editar Perfil</h2>
                    <!-- Formulario -->
                    <form action="/perfil" class="contact-form row" method="post">
                        <div class="form-group col-md-12">
                            <input type="text" name="nombres" class="form-control" required="required">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" name="apellidos" class="form-control" required="required">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="email" name="email" class="form-control" required="required">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" name="telefono" class="form-control" required="required">
                        </div>
                        <div class="form-group col-md-4">
                            <label>Sexo</label>
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
