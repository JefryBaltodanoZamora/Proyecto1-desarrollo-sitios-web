<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    session=request.getSession(false);
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("./");
    }

%>
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
            <table>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Imagen</th>
                    <th>Precio</th>
                    <th>Comprar</th>
                </tr>
                <c:forEach items="${productos}" var="usr">
                    <tr>
                        <td>${usr.id}</td>
                        <td>${usr.nombre}</td> 
                        <td> <img src=${usr.imagen} alt="Image" class="imgTable"></td> 
                        <td>$${usr.precio}</td> 
                        <td><form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
                                <input type="hidden" name="cmd" value="_s-xclick">
                                <input type="hidden" name="hosted_button_id" value=${usr.paypal}>
                                <input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal, la forma más segura y rápida de pagar en línea.">
                                <img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="footer col-sm-12 col-md-12 col-lg-12">
            <div class="copyright">
                Copyright by Universidad Nacional de Costa Rica<br>2019
            </div>
        </div>
    </body>
</html>