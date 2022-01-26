<%@page import="MODEL.Produto"%>
<%@page import="java.util.ArrayList"%>
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
        
        
    <center> 
        <h1>Pet Shop Premium</h1>
        
                <%
            try {
                    
                DAOProduto objDAOCliente = new DAOProduto();
                ArrayList<Produto> lista_pro = objDAOCliente.ConsultarProduto();
                
                for(int num = 0; num < lista_pro.size() ; num ++){
                
                    out.print("Codigo: " + lista_pro.get(num).getId_produto() + "<br>");
                    out.print("Produto: " + lista_pro.get(num).getNome_produto() + "<br>");
                
                   out.print("<a href='ExcluirProduto.jsp?id="
                    + lista_pro.get(num).getId_produto() + "&nome="
                    + lista_pro.get(num).getNome_produto() + "'> Excluir </a>"); 
                    
                    
                %> <Br><Br> <%
                    
                }
                
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro ao listar Produto: "+erro);
                }
            
            
            
            
            
            %>
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
</html>
