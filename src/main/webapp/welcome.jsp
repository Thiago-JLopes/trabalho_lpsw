<%-- 
    Document   : welcome
    Created on : 30 de set. de 2023, 16:24:41
    Author     : thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>

        <style>
            ul li {
                list-style: none;
            }
        </style>
    </head>
    <body>

        <h1>Welcome</h1>
        <h2>Usuario Logado <%= session.getAttribute("usuario") %></h2>

        <br>

        <h3>Listas de Recursos</h3>
        <ul>
            <li> <h4>Maven</h4> </li>
            <li> <h4>Welcome Servelet (web.xml)</h4> </li>
            <li> <h4>Session Timeout</h4> </li>
            <li> <h4>Controle de sessão</h4> </li>
            <li> <h4>Atributo de sessão</h4> </li>
            <li> <h4>Servlet config</h4> </li>
        </ul>
        <br/>
        <a href="menu.jsp">voltar</a> 
       
    </body>
</html>
