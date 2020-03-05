<%-- 
    Document   : estudianteBusqueda
    Created on : 3/03/2020, 02:20:47 PM
    Author     : vdaniel.mora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Bienvenido</h1>
        
        <h1> El estudiante con ID: ${estudiante.estudianteId}</h1>
         <h1> De nombre: ${estudiante.nombre}</h1>
         <h1><img src="${estudiante.foto}"></h1>
        
         <h1> Edad: ${estudiante.edad}</h1>
         <h1> Sexo: ${estudiante.sexo}</h1>
         
         
        
    </body>
</html>
