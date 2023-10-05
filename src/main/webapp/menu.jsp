<%-- 
    Document   : menu
    Created on : 30 de set. de 2023, 19:57:20
    Author     : thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class='container'>
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
