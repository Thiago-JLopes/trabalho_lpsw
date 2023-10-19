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

        <!-- CSS do Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <title>Semana 07</title>

        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 90vh;
                padding: 20px;
                background: #f0efe4;
            }

            .formulario {
                align-items: center;
                width: 100%;
                max-width: 500px;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
                padding: 7px;
                background: #eeecec;
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
        </style>
    </head>

    <!-- Body -->
    <body>
        <div class="form-login">

            <div class="formulario">
                <h1 class="text-center">Exercico de LPSW</h1>
                <h2 class="text-center">Semana 7 - 2023.3</h2>

                <% 
                    String errorMessage = (String) session.getAttribute("msg");
                    if (errorMessage != null) { 
                %>
                <div style="color: red; text-align: center">
                    <%= errorMessage %>
                </div>
                <% session.removeAttribute("msg"); %>
                <% } %>

                <form class="mt-4 mb-4" action="Controller2" method="post">
                    <input type="hidden" name="operacao" value="login">

                    <div class="form-group">
                        <label for="userName">Usuário</label>
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Informe o seu primeiro nome">
                    </div>

                    <div class="form-group">
                        <label for="password">Senha</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Informe a sua senha">
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary ">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
