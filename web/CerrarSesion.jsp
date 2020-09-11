<%-- 
    Document   : CerrarSesion
    Created on : 10/09/2020, 08:05:37 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>

<%
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    
    HttpSession sesionuser = request.getSession();
    sesionuser.invalidate();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" 
              rel="stylesheet">
        <link rel="stylesheet" href="./css/style.css"/>
        <link rel="shortcut icon" href="./img/logo.jpg" type="image/x-icon"/>
    </head>
    <body>
        <header class="header" >
            <div class="logo" >
                <h1>Panederia el Globito</h1>
                <img src="./img/logo.jpg" alt="logo">       
            </div>
            <nav class="menu" >
                <a href="#">Principal</a>
                <a href="#">Nosotros</a>
                <a href="#">Productos</a>
                <a href="#">Contacto</a>
                <a href="registro.jsp" >Registrarse</a>
            </nav>
        </header>
        <section class="globito" >
            <h2>La panadería el globito, hace pan artesanal desde 1842, y ahora esta en la nube
            compre su panecito aqui *w* nwn (*w*)</h2>
            <img src="./img/globito.jpg" alt="Globito" >
        </section>
        <h2 class="titutlo-p" >Pan Artesanal</h2>
        
        <section class="hide" >
            
        </section>
        <section class="iniciosesion" >
           
        </section>
        <footer class="footer" >
            <p>Desarrollado por demoñoño </p>
        </footer>
        
        
    </body>
</html>
