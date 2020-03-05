<%-- 
    Document   : newMateria
    Created on : 29/02/2020, 11:34:59 AM
    Author     : mateo.baena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">    
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Registro materia</h1>
        <div class="container well">
            <div align="center">
                <form action="ServletMaterias?action=insert" method="post">
                    <table>
                        <tr>
                            <th><label><b>Nombre materia:</b></label></th>
                            <th>
                                <input type="text" placeholder="Nombre materia" class="form-control" name="nombre" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Nombre profesor:</b></label></th>
                            <th>
                                <input type="text" placeholder="Nombre profesor" class="form-control" name="nombreProfesor" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Creditos:</b></label></th>
                            <th>
                                <input type="text" placeholder="Creditos" class="form-control" name="creditos" required=""/>
                            </th>
                        </tr>
                        <div class="break"></div>
                        <tr>
                            <td colspan="2">
                                <input class="btn icon-btn btn-success" type="submit" name="action" value="Insert">
                                <span class="glyphicon glyphicon-ok-sign"></span>
                            </td>
                        </tr>
                    </table>    
                </form> 
            </div>
            <br>
        </div>
    </body>
</html>
