<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 05/07/2015
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="contact-page" class="container">
    <% if(request.getParameter("mensaje") != null){ %>
    <div class="row">
        <div class="col-sm-12">
            <% if (request.getParameter("mensaje").equals("ok")){ %>
            <div class="alert alert-success" role="alert">
                <strong>El mensaje se envio con éxito!</strong></div>
            <% }else if(request.getParameter("mensaje").equals("error")){ %>
            <div class="alert alert-danger" role="alert">Hubo un error al enviar. Por favor intente nuevamente.</div>
            <%} %>
        </div>
    </div>
    <% } %>
    <div class="bg">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="title text-center">Contáctanos</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3827.221063325465!2d-71.53330343523041!3d-16.413595432175462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91424afae28c167b%3A0x5cc9b904a531ae5f!2sUniversidad+Nacional+de+San+Agust%C3%ADn!5e0!3m2!1ses-419!2spe!4v1436135342502" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-8">
                <div class="contact-form">
                    <h2 class="title text-center">Formulario</h2>
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                        <div class="form-group col-md-6">
                            <input type="text" name="nombres" class="form-control" required="required" placeholder="Nombre">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="asunto" class="form-control" required="required" placeholder="Motivo">
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="mensaje" required="required" class="form-control" rows="8" placeholder="Mensaje"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" name="Enviar" class="btn btn-primary pull-right" value="Submit">
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-info">
                    <h2 class="title text-center">Información</h2>
                    <address>
                        <p>e-subasta</p>
                        <p>Urbanización Lambrabani A - 15</p>
                        <p>Ciudad Arequipa</p>
                        <p>Teléfono: +2346 17 38 93</p>
                        <p>Fax: 1-714-252-0026</p>
                        <p>Email: info@e-subasta.com</p>
                    </address>
                    <div class="social-networks">
                        <h2 class="title text-center">Redes sociales</h2>
                        <ul>
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-youtube"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--/#contact-page-->
