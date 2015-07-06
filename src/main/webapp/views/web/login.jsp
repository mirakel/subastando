<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section id="form"><!--form-->
    <div class="container">
      <% if(request.getParameter("mensaje") != null){ %>
        <div class="row">
            <div class="col-sm-12">
            <% if (request.getParameter("mensaje").equals("ok")){ %>
                 <div class="alert alert-success" role="alert">
                <strong>Usted se registro con éxito!</strong> Ahora puede ingresar con su usuario y contraseña.</div>
            <% }else if(request.getParameter("mensaje").equals("error")){ %>
                <div class="alert alert-danger" role="alert">Hubo un error al enviar. Por favor intente nuevamente.</div>
            <%} %>
             </div>
        </div>
       <% } %>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <h2>Ingresa a tu cuenta</h2>
                    <form action="/login" method="post">
                        <input type="text" name="username" placeholder="Usuario" />
                        <input type="password" name="password" placeholder="Contraseña" />
							<span>
								<input type="checkbox" class="checkbox">
								Recuérdame
							</span>
                        <button type="submit" class="btn btn-default">Ingresar</button>
                    </form>
                </div><!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">O</h2>
            </div>

            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>Registro Gratuito</h2>
                    <form action="/register" method="post">
                        <input type="text" name="nombres" placeholder="Tu nombre"/>
                        <input type="text" name="apellidos" placeholder="Tu apellidos"/>
                        <input type="email" name="email" placeholder="Tu email"/>
                        <input type="text" name="usuario" placeholder="Elige un usuario"/>
                        <input type="password" name="password" placeholder="Elige un password"/>
                        <button type="submit" class="btn btn-default">Registrate</button>
                    </form>
                </div><!--/sign up form-->
            </div>
        </div>
    </div>
</section><!--/form-->
