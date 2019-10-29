<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Inicio</title>
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
        <div class="col-sm-12 col-md-12 col-lg-12">
            <div id="circle" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#circle" data-slide-to="0" class="active"></li>
                    <li data-target="#circle" data-slide-to="1"></li>
                    <li data-target="#circle" data-slide-to="2"></li>
                    <li data-target="#circle" data-slide-to="3"></li>
                    <li data-target="#circle" data-slide-to="4"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="imagenes/banner1.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/banner2.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/banner3.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/banner4.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/banner5.jpg">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#circle" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#circle" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>
        </div>
        <div class="footer col-sm-12 col-md-12 col-lg-12">
            <div class="copyright">
                Copyright by Universidad Nacional de Costa Rica<br>2019
            </div>
        </div>
    </body>
</html>