<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        
    </head>
    
    <body>
        
        
        <%  
        
        try {
             Produto objProduto = new Produto();
             objProduto.setId_produto
             (Integer.parseInt(request.getParameter("id_produto")));
             
             DAOProduto objDAOCliente = new DAOProduto();
             objDAOCliente.executar_ExcluirProduto(objProduto);
            
             
             
            
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar excluir produto: "+erro);
            }
        
     
        
        
       
        %>
        
        
    <center> 
        <h1>Pet Shop Premium</h1>

        
        <% out.print("Produto excluido com sucesso!");
           out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>"); %>
        
        
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
</html>
