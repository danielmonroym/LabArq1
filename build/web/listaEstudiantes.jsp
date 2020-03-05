<%-- 
    Document   : listaEstudiantes
    Created on : 26/02/2020, 05:42:05 AM
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

        <center>
            <form action="ServletEstudiantes?action=buscar" method="post">
                <table>
                    <tr>
                        <th><label><b>Numero de Documento</b></label></th>
                        <th>
                            <input type="text" placeholder="id" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Buscar">

                        </td>
                    </tr>
                </table>  
            </form>
        </center>
        <ul>           
        <c:forEach var="a" items="${estudiantes}">
            <li><a href="ServletEstudiantes?action=show&id=${a.estudianteId}">|${a.estudianteId}|</a> |${a.nombre}| |${a.edad}| |${a.sexo}| |${a.semestre}| |${a.facultad}|</li>
            <a onclick="return confirm('Esta seguro?')" href="ServletEstudiantes?action=delete&id=${a.estudianteId}">Borrar</a>        
            <hr/>

        </c:forEach>        
    </ul>


</body>
</html>

