<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Ingresar usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="./"><img src="imagenes/logo.png" alt="Image" class="imgLogo">Zona D-Pad</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="./">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./historia.jsp">Historia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./mision-vision.jsp">Misión y Visión</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./acerca-de.jsp">Acerca de</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./contactenos.jsp">Contáctenos</a>
                    </li>
                    <%
                        if (session != null) {
                            if (session.getAttribute("usuario") != null) {
                                out.println("<li class='nav-item'><a class='nav-link' href='./ServletObtenerProductos'>Comprar productos</a></li>");
                            }
                        }
                    %>
                </ul>
            </div>
            <div class="topnav-right">
                <div class="collapse navbar-collapse" id="navbarNav">     
                    <%
                        if (session != null) {
                            if (session.getAttribute("usuario") != null) {
                                String usuario = (String) session.getAttribute("usuario");
                                out.println("<ul class='navbar-nav'><li class='nav-item saludo'>Hola " + usuario + " </li>");
                                out.println("<li class='nav-item'><form action='" + request.getContextPath() + "/ServletSalidaUsuario' method='post'><input class='btn btn-primary' type='submit' name='btnCerrar' value='Cerrar sesión'></form></li></ul>");
                            } else {
                                out.println("<ul class='navbar-nav'><li class='nav-item'><form action='./login.jsp'><input class='btn btn-primary' type='submit' name='btnIniciar' value='Iniciar sesión'></form></li></ul>");
                            }
                        } else {
                            out.println("<ul class='navbar-nav'><li class='nav-item'><form action='./login.jsp'><input class='btn btn-primary' type='submit' name='btnIniciar' value='Iniciar sesión'></form></li></ul>");
                        }
                    %>
            </div>
        </nav>
        <div class="row col-sm-12 col-md-12 col-lg-12">
            <div class="col-sm-1 col-md-1 col-lg-1"></div>
            <div class="registerform col-sm-4 col-md-4 col-lg-4">
                <h3>Registrar</h3>
                <form class="contact" action="${pageContext.request.contextPath}/ServletCrearUsuario" method="post">
                    <div class="form-row">
                        <label for="validationDefault01">Usuario</label>
                        <input type="text" class="form-control" id="Rusuario" name="Rusuario" placeholder="Usuario" required>
                    </div>
                    <div class="form-row">
                        <label for="validationDefault02">Contraseña</label>
                        <input type="password" class="form-control" id="Rcontrasena" name="Rcontrasena" placeholder="Contrasena" required>
                    </div>
                    <div class="form-row">
                        <label for="validationDefault03">Nombre</label>
                        <input type="text" class="form-control" id="Rnombre" name="Rnombre" placeholder="Nombre">
                    </div>
                    <div class="form-row">
                        <label for="validationDefault04">Cuenta</label>
                        <input type="number" class="form-control" id="Rcuenta" name="Rcuenta" placeholder="Cuenta">
                    </div> 
                    <div class="form-row">
                        <div class="col-md-12 mb-12">
                            <button class="btn btn-primary btn-large" type="submit" name="btnRegistrar" value="btnRegistrar">Registrar</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-2 col-md-2 col-lg-2"></div>
            <div class="loginform col-sm-4 col-md-4 col-lg-4">
                <h3>Ingresar</h3>
                <form class="contact" action="${pageContext.request.contextPath}/ServletVerificarUsuario" method="post">
                    <div class="form-row">
                        <label for="validationDefault01">Usuario</label>
                        <input type="text" class="form-control" id="Iusuario" name="Iusuario" placeholder="usuario" required>
                    </div>
                    <div class="form-row">
                        <label for="validationDefault02">Contraseña</label>
                        <input type="password" class="form-control" id="Icontrasena" name="Icontrasena" placeholder="Contrasena" required>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 mb-12">
                            <button class="btn btn-primary btn-large" type="submit" name="btnIngresar" value="btnIngresar">Ingresar</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-1 col-md-1 col-lg-1"></div>
        </div>
    </div>
    <div class="footer col-sm-12 col-md-12 col-lg-12">
        <div class="copyright">
            Copyright by Universidad Nacional de Costa Rica<br>2019
        </div>
    </div>
</body>
</html>