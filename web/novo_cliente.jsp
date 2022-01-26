<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center> 
        <h1>Pet Shop Premium</h1>
        
        <form method="POST" action="executar_inserir_cliente.jsp">
            
            <label for="nome">Nome</label><br>
            <input type="text" name="nome"/><br>
            
            <label for="email">E-mail</label><br>
            <input type="email" name="email"/><br>
            
            <label for="telefone">Telefone</label><br>
            <input type="text" name="telefone"/><br><br>
            
            <input type="submit" value="ENVIAR"/>
            
        </form>

        
    </center>
    </body>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
    
</html>
