<%-- 
    Document   : index
    Created on : 30 de set. de 2023, 16:15:03
    Author     : thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Semana 06</title>

        <style>
            .text {
                display: block;
                margin-bottom: 25px;
                width: 230px;
                height: 30px;
            }

            .input-group {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .submit-btn {
                display: flex;
                justify-content: center;
            }

            #form {
                margin-top: 5px;
            }
        </style>
    </head>
    <body>
        <div style="text-align: center; margin-top: 30px; padding-bottom: 15px; margin-top: 10px;">
            <h1>Exercico de LPSW</h1>
            <h2>Semana 6 - 2023.3</h2>
        </div>

        <% 
            String errorMessage = (String) session.getAttribute("msg");
            if (errorMessage != null) { 
        %>
        <div style="color: red; text-align: center">
            <%= errorMessage %>
        </div>
        <% session.removeAttribute("msg"); %>
        <% } %>

        <div id="form">
            <form action="Controller2" method="post">
                <input type="hidden" name="operacao" value="login">
                <div class="input-group">
                    <input class="text" type="text" placeholder="Informe o seu primeiro nome" name="userName">
                </div>

                <div class="input-group">
                    <input class="text" type="password" placeholder="informe a sua senha" name="password">
                </div>

                <div class="input-group">
                    <input type="submit" value="submit">
                </div>
            </form>

        </div>
    </body>
</html>
