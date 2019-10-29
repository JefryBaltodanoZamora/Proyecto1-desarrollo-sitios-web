<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Acerca de</title>
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
                    <li class="nav-item">
                        <a class="nav-link" href="./">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./historia.jsp">Historia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./mision-vision.jsp">Misión y Visión</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./acerca-de.jsp">Acerca de <span class="sr-only">(current)</span></a>
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
                                out.println("<li class='nav-item saludo'><form action='" + request.getContextPath() + "/ServletObtenerProductos' method='post'><input class='btn btn-primary' type='submit' name='btnCarrito' value='Ver carrito de compra'></form></li>");
                                out.println("<li class='nav-item saludo'><form action='" + request.getContextPath() + "/ServletSalidaUsuario' method='post'><input class='btn btn-primary' type='submit' name='btnCerrar' value='Cerrar sesión'></form></li></ul>");
                            } else {
                                out.println("<ul class='navbar-nav'><li class='nav-item'><form action='./login.jsp'><input class='btn btn-primary' type='submit' name='btnIniciar' value='Iniciar sesión'></form></li></ul>");
                            }
                        } else {
                            out.println("<ul class='navbar-nav'><li class='nav-item'><form action='./login.jsp'><input class='btn btn-primary' type='submit' name='btnIniciar' value='Iniciar sesión'></form></li></ul>");
                        }
                    %>
            </div>
        </nav>
        <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="content col-xs-12 col-sm-12 col-md-9 col-lg-9">
                <h1>Acerca de</h1>
                <div>
                    Lorem Ipsum is simply dummy text of the printing and typesetting ind
                    ustry. Lorem Ipsum has been the industry's standard dummy text ever 
                    since the 1500s, when an unknown printer took a galley of type and 
                    scrambled it to make a type specimen book. It has survived not only 
                    five centuries, but also the leap into electronic typesetting, rema
                    ining essentially unchanged. It was popularised in the 1960s with th
                    e release of Letraset sheets containing Lorem Ipsum passages, and mo
                    re recently with desktop publishing software like Aldus PageMaker in
                    cluding versions of Lorem Ipsum
                    Lorem Ipsum is simply dummy text of the printing and typesetting ind
                    ustry. Lorem Ipsum has been the industry's standard dummy text ever 
                    since the 1500s, when an unknown printer took a galley of type and 
                    scrambled it to make a type specimen book. It has survived not only 
                    five centuries, but also the leap into electronic typesetting, rema
                    ining essentially unchanged. It was popularised in the 1960s with th
                    e release of Letraset sheets containing Lorem Ipsum passages, and mo
                    re recently with desktop publishing software like Aldus PageMaker in
                    cluding versions of Lorem Ipsum
                </div>
            </div>
            <div class="sidebar col-xs-12 col-sm-12 col-md-2 col-lg-2">
                <div class="categories">
                    <h2>Productos recomendados</h2>
                    <div class="product">
                        <h4>Nintendo Switch</h4>
                        <a href="./ServletObtenerProductos"><img src="imagenes/s1.png" alt="Image" class="imgSidebar"></a>
                    </div>
                    <div class="product">
                        <h4>Xbox One</h4>
                        <a href="./ServletObtenerProductos"><img src="imagenes/s2.png" alt="Image" class="imgSidebar"></a>
                    </div>
                    <div class="product">
                        <h4>Play Station 4</h4>
                        <a href="./ServletObtenerProductos"><img src="imagenes/s3.png" alt="Image" class="imgSidebar"></a>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <footer class="footer col-sm-12 col-md-12 col-lg-12">
        <div class="copyright">
            Copyright by Universidad Nacional de Costa Rica<br>2019
        </div>
    </footer> 
</html>
