<%-- 
    Document   : contactenos
    Created on : Aug 24, 2019, 3:01:22 PM
    Author     : jbaltoda
--%>

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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="http://localhost:8084/Proyecto1/">Proyecto1</a>
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
        <div>
            <form>
                <div class="form-row">
                  <div class="col-md-4 mb-3">
                    <label for="validationDefault01">Nombre</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Nombre" required>
                  </div>
                  <div class="col-md-4 mb-3">
                    <label for="validationDefault02">Apellido</label>
                    <input type="text" class="form-control" id="apellido" placeholder="Apellido" required>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-md-6 mb-3">
                    <label for="validationDefault03">Pais</label>
                    <input type="text" class="form-control" id="pais" placeholder="Pais" required>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-md-10 mb-10">
                    <label for="validationDefault04">Comentarios</label>
                    <textarea class="form-control rounded-0" id="commentario" placeholder="Comentarios" rows="10"></textarea>
                  </div>
                </div>
                <button class="btn btn-primary" type="submit">Enviar</button>
            </form>
        </div>
    </body>
</html>

