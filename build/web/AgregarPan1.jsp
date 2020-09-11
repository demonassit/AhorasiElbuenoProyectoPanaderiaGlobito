<%-- 
    Document   : AgregarPan1
    Created on : 10/09/2020, 06:29:10 PM
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
            
            <table width="100%" border="0" >
                <tr>
                    <th>Nombre del Pan</th>
                    <th>Stock</th>
                    <th>Precio</th>
                    <th>Proceso</th>
                </tr>
            
            
            
            <% //obtener la lista de los productos, panes
                
                Vector<MPan> vecpan = new MPan().listaPanes();
                
                //recorrer toda la lista de panes
                //estamos instanciando un objeto de MPan y vamos a recorrer
                //el tamaño del vector de los panes que estan adentro
                for(MPan pan :vecpan){
                    
                //es cuando el usuario selecciona que pan deseea
                String direccion ="AgregarPan2.jsp?cod="+pan.getId_pan();
            %>
            <p class="img" >
            <table>
                <tr>
                    <td><%=pan.getNom_pan() %></td>
                    <td><%=pan.getStock_pan()  %>  </td>
                    <td><%=pan.getPre_pan()  
                        /*un atributo mas para obtener
                            la url de la imagen correspondiente del pan*/
                        %>  </td>
                    <td> <a href="<%=direccion %>"> Comprar</a></td>
                </tr></table></p>
            <%}%>
        </section>
        
        </table>
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
