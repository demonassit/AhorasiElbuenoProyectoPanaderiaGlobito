<%-- 
    Document   : MostrarPanes
    Created on : 10/09/2020, 06:06:02 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*, Controlador.*"
        session="true"%>

<%
String usuario = "";
//sesion del usuario
HttpSession sesionuser = request.getSession();
//verficar el usuario
if(sesionuser.getAttribute("usuario") == null){
%>

<jsp:forward page="inicio.jsp" >
    <jsp:param name="error" value="Es obligatorio autenticarse con una sesion válida" />
</jsp:forward>
<%  
    }else{
        usuario = (String)sesionuser.getAttribute("usuario");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>PanaderiaGlobito</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <a href="perfil.jsp" >Perfil</a>
            </nav>
        </header>
        <section class="globito" >
            <h2>Pan artesanal, escoja el que mas le guste uwu</h2>
            <img src="./img/globito.jpg" alt="Globito" >
        </section>
        <h2 class="titutlo-p" >Pan Artesanal</h2>
        <section class="pan" >
            
            <% //obtener la lista de los productos, panes
                
                Vector<MPan> vecpan = new MPan().listaPanes();
                
                //recorrer toda la lista de panes
                //estamos instanciando un objeto de MPan y vamos a recorrer
                //el tamaño del vector de los panes que estan adentro
                for(MPan pan :vecpan){
            %>
            
            
        </section>
        <section class="hide" >
            
        </section>
        <footer class="footer" >
            <p>Desarrollado por demoñoño </p>
        </footer>
        <script src="./js/anima.js" ></script>
    </body>
</html>
