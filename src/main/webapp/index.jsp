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
                                    <li><a href="#">Editar Perfil</a></li>
                                    <li><a href="#">Publicar Productos</a></li>
                                </ul>
                                </li>
                            <% } %>
                            <li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Mi carrito</a></li>
                            <% if(sessionOk != null && sessionOk.getAttribute("username") != null){%>
                                <li><a href="salir.jsp"><i class="fa fa-lock"></i> Salir </a></li>
                            <% }else {%>
                                <li><a href="/login"><i class="fa fa-lock"></i> Login</a></li>
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
                            <li><a href="/contact">Contáctanos</a></li>
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

<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>e</span>-subasta</h1>
                                <h2>De las mejores Marcas</h2>
                                <p>Encuentra los mejores productos a precios muy cómodos.</p>
                                <button type="button" class="btn btn-default get">Empieza ahora</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="./resources/img/home/girl1.jpg" class="girl img-responsive" alt="" />
                                <img src="./resources/img/home/pricing.png"  class="pricing" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>e</span>-subasta</h1>
                                <h2>Únete</h2>
                                <p>A la mejor experiencia de compra online</p>
                                <button type="button" class="btn btn-default get">Empieza ahora</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="./resources/img/home/girl2.jpg" class="girl img-responsive" alt="" />
                                <img src="./resources/img/home/pricing.png"  class="pricing" alt="" />
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>e</span>-subasta</h1>
                                <h2>De las mejores Marcas</h2>
                                <p>Encuentra los mejores productos a precios muy cómodos.</p>
                                <button type="button" class="btn btn-default get">Empieza ahora</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="./resources/img/home/girl3.jpg" class="girl img-responsive" alt="" />
                                <img src="./resources/img/home/pricing.png" class="pricing" alt="" />
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
<div class="container">
<div class="row">
<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Categoría</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                            Zapatillas
                        </a>
                    </h4>
                </div>
                <div id="sportswear" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="#">Nike </a></li>
                            <li><a href="#">Adidas </a></li>
                            <li><a href="#">Puma</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                            Hombres
                        </a>
                    </h4>
                </div>
                <div id="mens" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="#">Fendi</a></li>
                            <li><a href="#">Guess</a></li>
                            <li><a href="#">Valentino</a></li>
                            <li><a href="#">Dior</a></li>
                            <li><a href="#">Versace</a></li>
                            <li><a href="#">Armani</a></li>
                            <li><a href="#">Prada</a></li>
                            <li><a href="#">Dolce and Gabbana</a></li>
                            <li><a href="#">Chanel</a></li>
                            <li><a href="#">Gucci</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                            Mujeres
                        </a>
                    </h4>
                </div>
                <div id="womens" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="#">Fendi</a></li>
                            <li><a href="#">Guess</a></li>
                            <li><a href="#">Valentino</a></li>
                            <li><a href="#">Dior</a></li>
                            <li><a href="#">Versace</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Niños</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Moda</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Hogar</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Celulares</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Electrodomésicos</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Carteras</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="#">Zapatos</a></h4>
                </div>
            </div>
        </div><!--/category-products-->

        <div class="shipping text-center"><!--shipping-->
            <img src="./resources/img/home/shipping.jpg" alt="" />
        </div><!--/shipping-->

    </div>
</div>

<div class="col-sm-9 padding-right">
<div class="features_items"><!--features_items-->
    <h2 class="title text-center">Novedades</h2>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product1.jpg" alt="" />
                    <h2>S/. 56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>S/. 56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product2.jpg" alt="" />
                    <h2>S/. 56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>S/. 56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product3.jpg" alt="" />
                    <h2>S/. 56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>S/. 56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product4.jpg" alt="" />
                    <h2>S/. 56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>S/. 56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
                <img src="./resources/img/home/new.png" class="new" alt="" />
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product5.jpg" alt="" />
                    <h2>S/. 56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
                <img src="./resources/img/home/sale.png" class="new" alt="" />
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="./resources/img/home/product6.jpg" alt="" />
                    <h2>$56</h2>
                    <p>Easy Polo Black Edition</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2>S/. 56</h2>
                        <p>Easy Polo Black Edition</p>
                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                    </div>
                </div>
            </div>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                    <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                </ul>
            </div>
        </div>
    </div>

</div><!--features_items-->

<div class="recommended_items"><!--recommended_items-->
    <h2 class="title text-center">Productos recomendados</h2>

    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="item active">
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend1.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend2.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend3.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend1.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend2.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="./resources/img/home/recommend3.jpg" alt="" />
                                <h2>S/. 56</h2>
                                <p>Easy Polo Black Edition</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Comprar</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="fa fa-angle-left"></i>
        </a>
        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="fa fa-angle-right"></i>
        </a>
    </div>
</div><!--/recommended_items-->

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