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
        
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
       
        <title>Menu</title>
    
    </head>
    
    <body>
        <header>
            <nav class="navbar navbar-expand-sm navbar-light bg-primary">
                <div class="container">
                    <div class="collapse navbar-collapse">
                        <ul class="navbar-nav ml-auto">

                            <li class="nav-item">
                                <a class="btn btn-outline-light mr-2" href="xxx.html">ERRO HTML</a>
                            </li>

                            <li class="nav-item">
                                <form class="form-inline" action='Controller2' method='post'>
                                    <input type="hidden" name="operacao" value="erro_java">
                                    <input class="btn btn-outline-light mr-2" type='submit' value='ERRO JAVA'>
                                </form>  
                            </li>

                            <li class="nav-item">
                                <form action='Controller2' method='post'>
                                    <input type="hidden" name="operacao" value="welcome">
                                    <input class="btn btn-outline-light mr-2" type='submit' value='WELCOME'>
                                </form>
                            </li>

                            <li class="nav-item">
                                <form action='Controller2' method='post'>
                                    <input type="hidden" name="operacao" value="sair">
                                    <input class="btn btn-outline-danger mr-2" type='submit' value='SAIR'>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <% int cont = (Integer) session.getServletContext().getAttribute("count");%>
        <div>
            <div style="display: flex; align-items: center; justify-content: space-between">
                <h5>Usuarios Logados: <%=cont%></h5>
            </div>
        </div>
    </body>
</html>
