<%@page import="javax.management.RuntimeErrorException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
    </head>
    
    <body>
        
        
    <center> 
    

<%
  
    Cliente cli = new Cliente();
    DAOCliente clid = new DAOCliente();
    try {
           //pegar os valores passado pelo navegador via metodo POST
           String nome = request.getParameter("nome");
           String email = request.getParameter("email");
           String telefone = request.getParameter("telefone");
           //Passar os valores para a MODEL
           cli.setNome_cliente(nome);
           cli.setEmail_cliente(email);
           cli.setTelefone_cliente(telefone);
           
           clid.InserirCliente(cli);

        } catch (Exception erro) {
            throw new RuntimeException("Erro executar inserir cliente: "+erro);
        }



%>

<center> 
        <h1>Pet Shop Premium</h1>

        
        <% out.print("Cliente inserido com sucesso!");
           out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>"); %>
        
        
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
</html>