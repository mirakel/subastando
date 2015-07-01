<%@ page import="org.ivica.clases.Usuario" %>
<%@ page import="org.ivica.modelos.ModelCategoria" %>
<%@ page import="org.ivica.clases.Categoria" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 29/06/2015
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<% HttpSession sessionOk = request.getSession(); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="mirakel">
    <title>Home | Subastas Online</title>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="./resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="./resources/css/price-range.css" rel="stylesheet">
    <link href="./resources/css/animate.css" rel="stylesheet">
    <link href="./resources/css/main.css" rel="stylesheet">
    <link href="./resources/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="./resources/js/html5shiv.js"></script>
    <script src="./resources/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="./resources/img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="./resources/img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="./resources/img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="./resources/img/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> mirakel1401@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="index.jsp"><img src="./resources/img/home/logo.png" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <% if(sessionOk != null && sessionOk.getAttribute("username") != null ){ %>
                        <div class="inicio">
                            Bienvenido!, <%= sessionOk.getAttribute("fullName")%>
                        </div>
                        <% } %>

                        <ul class="nav navbar-nav">
                            <% if(sessionOk != null && sessionOk.getAttribute("username") != null ){ %>
                            <li class="dropdown"><a href="#"><i class="fa fa-user"></i> Mi cuenta <i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="editar_perfil.jsp">Editar Perfil</a></li>
                                    <li><a href="publicar_producto.jsp">Publicar Productos</a></li>
                                </ul>
                            </li>
                            <% } %>
                            <li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Mi carrito</a></li>
                            <% if(sessionOk != null && sessionOk.getAttribute("username") != null){%>
                            <li><a href="salir.jsp"><i class="fa fa-lock"></i> Salir </a></li>
                            <% }else {%>
                            <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                            <% }%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="index.jsp" class="active">Inicio</a></li>
                            <li><a href="index.jsp">Celulares & Tables</a></li>
                            <li><a href="index.jsp">Electrodomesticos</a></li>
                            <li><a href="index.jsp">Hogar</a></li>
                            <li class="dropdown"><a href="#">Moda<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="index.jsp">Ropa</a></li>
                                    <li><a href="index.jsp">Calzado</a></li>
                                    <li><a href="index.jsp">Accesorios</a></li>
                                </ul>
                            </li>
                            <li><a href="contacto.jsp">Contáctanos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Buscar"/>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->


<section>
<div class="container">
<div class="row">
<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Categoría</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Kids</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Fashion</a></h4>
                </div>
            </div>
        </div><!--/category-products-->

    </div>
</div>

   <%
       ModelCategoria model = new ModelCategoria();
       ArrayList<Categoria> categorias = model.getCategorias();
   %>

<div class="col-sm-9 padding-right">
<div class="features_items"><!--features_items-->
    <h2 class="title text-center">Publicar Producto</h2>
    <!-- Formulario -->
    <form action="/productos" class="contact-form row" method="get" enctype="multipart/form-data">
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
            <input type="text" name="estado" class="form-control" required="required" placeholder="Estado">
        </div>

        <div class="form-group col-md-4">
            <select name="categoria">
                <%  for(Categoria cat : categorias) {%>
                    <option value="<%= cat.getId()%>"><%= cat.getNombre()%></option>
                <% } %>
            </select>
        </div>

        <div class="form-group col-md-12">
            <textarea name="descripcion" required="required" class="form-control" rows="8" placeholder="Descripción del producto"></textarea>
        </div>

        <!-- subir imagen -->
        <div class="form-group col-md-6">
            <input name="imagen" type="file" />
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

<footer id="footer"><!--Footer-->
    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="single-widget">
                        <h2>Servicios</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Ayuda Online</a></li>
                            <li><a href="#">Contáctanos</a></li>
                            <li><a href="#">Ubicación</a></li>
                            <li><a href="#">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="single-widget">
                        <h2>Políticas</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Términos de uso</a></li>
                            <li><a href="#">Pólitica de privacidad</a></li>
                            <li><a href="#">Pólitica de reembolso</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-widget">
                        <h2>Acerca de e-Subasta</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Sobre nosotros</a></li>
                            <li><a href="#">Visión/Misión</a></li>
                            <li><a href="#">Ubicación</a></li>
                            <li><a href="#">Derechos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-widget">
                        <h2>Email</h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="Tu correo electrónico" />
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                            <p>Ingresa tu correo <br />para recibir novedades</p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="center">Copyright © 2015 e-subasta. Todos los derechos reservados</p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->

<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.scrollUp.min.js"></script>
<script src="./resources/js/price-range.js"></script>
<script src="./resources/js/jquery.prettyPhoto.js"></script>
<script src="./resources/js/main.js"></script>
</body>
</html>