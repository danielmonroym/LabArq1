<%-- 
    Document   : login
    Created on : 26/02/2020, 05:42:35 AM
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
            <h1>Bienvenido!</h1>
    <c:if test="${param.error==1}">
        <font color="red">Estudiante Invalido. Intentelo de nuevo</font>
    </c:if>     
    <div class="container well " style="font-family:Oswald, sans-serif">
        <div align="center">
            <h1> Contact Information</h1>
         
            <form action="ServletEstudiantes?action=login" method="post">
                <table>
                    <tr>
                        <th><label><b>Nombre estudiante:</b></label></th>
                        <th>
                            <input type="text" placeholder="Ingrese nombre estudiante" class="form-control" name="nombre" required=""/> 
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Contraseña:</b></label></th>
                        <th>
                            <input type="password" placeholder="Ingrese contraseña" class="form-control" name="password" required=""/> 
                        </th>
                    </tr>
                    <div class="break"></div>
                    <tr>
                        <div align="center">
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="action" value="Login">
                             <span class="glyphicon glyphicon-user"></span> 
                            <input class="btn icon-info btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                        </div>
                    </tr>
                </table>     
            </form>
        </div>
    </div>
</body>
</html>
