<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% HttpSession sessionOk = request.getSession(); %>

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
                        <a href="/home"><img src="resources/img/home/logo.png" alt="" /></a>
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
                            <li><a href="#"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i> Mi carrito</a></li>
                            <% if(sessionOk != null && sessionOk.getAttribute("username") != null){%>
                            <li><a href="#"><i class="fa fa-lock"></i> Salir </a></li>
                            <% }else {%>
                            <li><a href="#"><i class="fa fa-lock"></i> Login</a></li>
                            <% }%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->
