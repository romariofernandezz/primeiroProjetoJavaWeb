<%@page import="javax.management.RuntimeErrorException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
    </head>
    
    <body>
        
        
    <center> 


<%
  
    Produto pro = new Produto();
    DAOProduto prod = new DAOProduto();
    try {
           //pegar os valores passado pelo navegador via metodo POST
           String nome_pro = request.getParameter("nome_pro");
           String quantidade = request.getParameter("quantidade");
           //Passar os valores para a MODEL
           pro.setNome_produto(nome_pro);
           pro.setQtd_produto(quantidade);


           
           prod.InserirProduto(pro);
           
        } catch (Exception erro) {
            throw new RuntimeException("Erro executar inserir produto: "+erro);
        }



%>

<center> 
        <h1>Pet Shop Premium</h1>

        
        <% out.print("Produto inserido com sucesso!");
           out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>"); %>
        
        
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
</html>