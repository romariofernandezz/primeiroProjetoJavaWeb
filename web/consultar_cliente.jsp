<%@page import="MODEL.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOCliente"%>
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
                    
                DAOCliente objDAOCliente = new DAOCliente();
                ArrayList<Cliente> lista = objDAOCliente.ConsultarCliente();
                
                for(int num = 0; num < lista.size() ; num ++){
                
                    out.print("Codigo: " + lista.get(num).getId_cliente() + "<br>");
                    out.print("Nome: " + lista.get(num).getNome_cliente() + "<br>");
                
                    
                    out.print("<a href='ExcluirCliente.jsp?id="
                    + lista.get(num).getId_cliente() + "&nome="
                    + lista.get(num).getNome_cliente() + "'> Excluir </a>");
                    
                  
                    
                %> <Br><Br> <%
                    
                }
                
                
                } catch (Exception erro) {
                    throw new RuntimeException("Erro ao listar Cliente: "+erro);
                }
            
            
            
            
            
            %>
        
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style> 
</html>
