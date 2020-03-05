<%-- 
    Document   : listaMaterias
    Created on : 29/02/2020, 12:00:51 PM
    Author     : mateo.baena
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
        <h1>Registro</h1>
        <ul>
        <c:forEach var="a" items="${materias}">
            <li><a href="ServletMaterias?action=show&id=${a.idMateria}">|${a.idMateria}|</a> |${a.nombre}| |${a.nombreProfesor}| |${a.creditos}|</li>
           <a onclick="return confirm('Esta seguro?')" href="ServletMaterias?action=delete&id=${a.idMateria}">Borrar</a>        
           <hr/>
        </c:forEach>        
        </ul>
        
    </body>
</html>