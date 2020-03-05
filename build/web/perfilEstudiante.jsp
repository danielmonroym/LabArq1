<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      
    
            
         
           <h1 class="well"> El estudiante con ID: ${estudiante.estudianteId}</h1>
          
           
         <h1 class="well text-uppercase"> De nombre: ${estudiante.nombre}</h1>
       
         <h1 class="well"><img src="${estudiante.foto}"></h1>
         
         <h1 class="well"> Edad: ${estudiante.edad}</h1>
         
         <h1 class="well"> Sexo: ${estudiante.sexo}</h1>
        
         <h1 class="well"> Facultad: ${estudiante.facultad}</h1>
 
    </body>
</html>
