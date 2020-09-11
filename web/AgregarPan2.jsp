<%-- 
    Document   : AgregarPan2
    Created on : 10/09/2020, 06:39:01 PM
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
            
            <% //Crear la instancia del pan, para poder buscar la pieza de pan que se quiere comprar
                
                MPan pan = new MPan().buscarPan(Integer.parseInt(request.getParameter("cod")));
                
               
            %>
            
            <table width="100%" border="0" >
                <form name="agregarpan" method="post" action="AgregarPanCarrito" >
                    <table width="100%" border="0" >
                        <tr>
                            <td>Codigo:</td>
                            <td> <input type="text" name="id" id="id" readonly="readonly"
                                        value="<%=pan.getId_pan() %>"> </td>
                        </tr>
                        <tr>
                            <td>Nombre del Pan:</td>
                            <td> <input type="text" name="pan" id="pan" readonly="readonly"
                                        value="<%=pan.getNom_pan() %>"> </td>
                        </tr>
                        <tr>
                            <td>Precio del Pan:</td>
                            <td> <input type="text" name="precio" id="precio" readonly="readonly"
                                        value="<%=pan.getPre_pan() %>"> </td>
                        </tr>
                        <tr>
                            <td>Stock del Pan:</td>
                            <td> <input type="text" name="stock" id="stock" readonly="readonly"
                                        value="<%=pan.getStock_pan() %>"> </td>
                        </tr>
                        <tr>
                            <td>Cantidad:</td>
                            <td> <input type="text" name="cantidad" id="cantidad" 
                                        value="1"> </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="comprar" value="Registrar Compra" ></td>
                        </tr>
                    </table>
                </form>
            </table>
            
            
            
            
        </section>
        <section class="hide" >
            
        </section>
        <section class="menu" >
            <a href="MostrarPanes.jsp" >Mostrar todos los Panes</a>
            <a href="AgregarPan1.jsp" >Agregar al Carrito de Compras</a>
            <a href="CerrarSesion" >Cerrar Sesión</a>
        </section>
        <footer class="footer" >
            <p>Desarrollado por demoñoño </p>
        </footer>
        <script src="./js/anima.js" ></script>
    </body>
</html>
