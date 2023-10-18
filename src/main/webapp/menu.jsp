<%-- 
    Document   : menu
    Created on : 30 de set. de 2023, 19:57:20
    Author     : thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.trabalholpsw.code.Listener1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>

        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            div.container {
                text-align: center;
                width: 80%;
                margin: 0 auto;
            }
            h1 {
                margin-right: auto; 
            }
            a {
                text-decoration: none;
                padding: 5px;
            }
            form {
                margin-top: 15px;
            }
        </style>

    </head>
    <body>
        <% int cont = (Integer) session.getServletContext().getAttribute("count")%>
        <div class='container'>
            <div style="display: flex; align-items: center; justify-content: space-between">
                <h5>Usuarios Logados: <%= Listener1.getCountUser()%></h5>
            </div>
            
            <h1>Menu</h1>
            <a href="xxx.html">ERRO HTML</a>

            <form action='Controller2' method='post'>
                <input type="hidden" name="operacao" value="erro_java">
                <input type='submit' value='ERRO JAVA'>
            </form>  

            <form action='Controller2' method='post'>
                <input type="hidden" name="operacao" value="welcome">
                <input type='submit' value='Welcome'>
            </form>

            <form action='Controller2' method='post'>
                <input type="hidden" name="operacao" value="sair">
                <input type='submit' value='Sair'>
            </form>
        </div>
    </body>
</html>
