<%--
  Created by IntelliJ IDEA.
  User: mirakel
  Date: 27/06/2015
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<% HttpSession sessionOk = request.getSession(); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact | E-Shopper</title>
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
                            Bienvenido! <span> <%= sessionOk.getAttribute("fullName")%> </span>
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


<div id="contact-page" class="container">
    <div class="bg">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="title text-center">Contáctanos</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239.20852258091017!2d-71.51976353187501!3d-16.40773483405857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91424b0138bc34b7%3A0x579257da56ed3580!2sUniversidad+Nacional+de+San+Agust%C3%ADn!5e0!3m2!1ses-419!2spe!4v1435748806375" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
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
                            <input type="text" name="name" class="form-control" required="required" placeholder="Nombre">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="subject" class="form-control" required="required" placeholder="Motivo">
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Mensaje"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
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
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="./resources/js/gmaps.js"></script>
<script src="./resources/js/contact.js"></script>
<script src="./resources/js/price-range.js"></script>
<script src="./resources/js/jquery.scrollUp.min.js"></script>
<script src="./resources/js/jquery.prettyPhoto.js"></script>
<script src="./resources/js/main.js"></script>
</body>
</html>
