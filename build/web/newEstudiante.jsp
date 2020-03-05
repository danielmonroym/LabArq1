<%-- 
    Document   : newEstudiante
    Created on : 26/02/2020, 05:43:40 AM
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
        <h1>Registro estudiante</h1>
        <div class="container well">
            <div align="center">
                <form action="ServletEstudiantes?action=insert" method="post">
                    <table>
                          <tr>
                            <th><label><b>Documento identidad:</b></label></th>
                            <th>
                                <input type="text" placeholder="Ingrese documento identidad" class="form-control" name="id" required=""/>
                            </th>
                        </tr>                  
                        <tr>
                            <th><label><b>Nombre:</b></label></th>
                            <th>
                                <input type="text" placeholder="Nombre estudiante" class="form-control" name="nombre" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Contraseña:</b></label></th>
                            <th>
                                <input type="password" placeholder="Contraseña" class="form-control" name="password" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Foto:</b></label></th>
                            <th>
                                <input type="text" placeholder="URL imagen" class="form-control" name="foto" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Edad:</b></label></th>
                            <th>
                                <input type="text" placeholder="Edad" class="form-control" name="edad" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Sexo:</b></label></th>
                            <th>
                                <input type="text" placeholder="Sexo (M / F)" class="form-control" name="sexo" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Semestre:</b></label></th>
                            <th>
                                <input type="text" placeholder="Semestre" class="form-control" name="semestre" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Facultad:</b></label></th>
                            <th>
                                <input type="text" placeholder="Facultad" class="form-control" name="facultad" required=""/>
                            </th>
                        </tr>
                        <div class="break"></div>
                        <tr>
                            <td colspan="2">
                                <input class="btn icon-btn btn-success" type="submit" name="action" value="Insert">
                                <span class="glyphicon glyphicon-ok-sign"></span>
                                <input class="btn icon-btn btn-lg" type="reset" name="action" value="Reset">
                                <span class="glyphicon glyphicon-remove"></span>
                            </td>
                        </tr>
                    </table>    
                </form> 
            </div>
            <br>
        </div>
    </body>
</html>
