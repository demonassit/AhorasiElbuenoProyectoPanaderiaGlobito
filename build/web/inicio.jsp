<%-- 
    Document   : inicio.jsp
    Created on : 3/09/2020, 08:26:43 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <table width="800" border="0" aling="center" >
                <tr>
                    <td colspan="2" ><h2>Inicio de Sesion</h2></td>
                </tr>
                <tr>
                    <td>
                <from method="post" name="formulario" action="VerificarUsuario" >
                    <table width="620" border="0" >
                        <tr>
                            <td>Usuario:</td>
                            <td> <input type="text" name="user" id="user" > </td>        
                        </tr>
                        <tr>
                            <td>Contraseña:</td>
                            <td> <input type="password" name="pass" id="pass" > </td>        
                        </tr>
                        <tr>
                            <td><a href="registro.jsp" >Nueva Cuenta</a></td>
                            <td><input type="submit" value="Entrar" 
                                       name="inicio" ></td>
                        </tr>
                    </table>
                </from>
                    </td>        
                </tr>
            </table>
        </section>
        <footer class="footer" >
            <p>Desarrollado por demoñoño </p>
        </footer>
        
        
    </body>
</html>
