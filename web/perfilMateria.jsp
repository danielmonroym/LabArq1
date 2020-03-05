<%-- 
    Document   : perfilMateria
    Created on : 29/02/2020, 11:47:24 AM
    Author     : mateo.baena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>test perfil ${materia.nombre}</h1>
        <form>
            <a>${materia.nombreProfesor}</a>
            <br>
            <a>${materia.creditos}</a>
        </form>
    </body>
</html>