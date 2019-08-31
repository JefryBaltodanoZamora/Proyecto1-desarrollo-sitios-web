<%-- 
    Document   : contactenos
    Created on : Aug 24, 2019, 3:01:22 PM
    Author     : jbaltoda
--%>
<%@page import="java.util.List"%>
<%@page import="Dominio.LogicaContactenos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Contactenos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="./">Proyecto1</a>
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
                    <li class="nav-item">
                        <a class="nav-link" href="./acerca-de.jsp">Acerca de</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./contactenos.jsp">Contáctenos <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="content col-xs-12 col-sm-12 col-md-9 col-lg-9">
                <form class="contact" action="${pageContext.request.contextPath}/Servlet" method="post">
                    <div class="form-row">
                        <div class="col-md-5 mb-3">
                            <label for="validationDefault01">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="validationDefault02">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-5 mb-3">
                            <label for="validationDefault03">Pais</label>
                            <input type="text" class="form-control" id="pais" name="pais" placeholder="Pais" required>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="validationDefault04">Correo</label>
                            <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 mb-12">
                            <label for="validationDefault04">Comentarios</label>
                            <textarea class="form-control rounded-0" id="comentario" name="comentario" placeholder="Comentarios" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-10 mb-10">
                            <button class="btn btn-primary" type="submit" name="btnEnviar" value="Button 1">Enviar</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="sidebar col-xs-12 col-sm-12 col-md-2 col-lg-2">
                <div class="categories">
                    <h2>Productos recomendados</h2>
                    <div class="product">
                        <h4>Nintendo Switch</h4>
                        <img src="imagenes/s1.png" alt="Image" class="imgSidebar">
                    </div>
                    <div class="product">
                        <h4>Xbox One</h4>
                        <img src="imagenes/s2.png" alt="Image" class="imgSidebar">
                    </div>
                    <div class="product">
                        <h4>Play Station 4</h4>
                        <img src="imagenes/s3.png" alt="Image" class="imgSidebar">
                    </div>
                </div>
            </div>
        </div>
        <div class="footer col-sm-12 col-md-12 col-lg-12">
            <div class="copyright">
                Copyright by Universidad Nacional de Costa Rica<br>2019
            </div>
        </div>
    </body>
    <script>
        function submitForm(x) {
            if (x.id == 'enviar') {
                alert("dede");
            }
            document.forms[0].submit();
        }
    </script>
</html>

