<%-- 
    Document   : menu
    Created on : 26/02/2020, 05:41:45 AM
    Author     : mateo.baena
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty login}">
<!--|<a href="login.jsp">Login</a>|
|<a href="newEstudiante.jsp">Register</a>|-->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="login.jsp">Universidad LIS</a>
    </div>
    <ul class="nav navbar-nav">

      <li class="active"><a href="login.jsp">LOGIN</a></li>
      <li><a href="newEstudiante.jsp">REGISTRO</a></li>
      <li><a href="about.jsp">ACERCA DE</a></li>
    </ul>
  </div>
</nav>

</c:if>
<c:if test="${not empty login}">
 <nav class="navbar navbar-default bg-">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="login.jsp">Universidad LIS</a>
    </div>
    <ul class="nav navbar-nav">

      <li><a href="ServletEstudiantes?action=logout">LOGOUT</a></li>
      <li><a href="ServletEstudiantes?action=list">LISTA ESTUDIANTES</a></li>
      <li><a href="ServletMaterias?action=create">MATERIA</a></li>
      <li><a href="ServletMaterias?action=list">LISTA MATERIAS</a></li>
    </ul>
  </div>
</nav>
<!--|<a href="ServletEstudiante?action=logout">Logout</a>|
|<a href="ServletEstudiante?action=list">Lista estudiantes</a>|
|<a href="ServletMateria?action=create">Materia</a>|
|<a href="ServletMateria?action=list">Lista Materias</a>|-->
</c:if>

<hr/>