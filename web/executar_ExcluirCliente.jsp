<%@page import="MODEL.Cliente"%>
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
        
        
        <%  
        
        try {
             Cliente objCliente = new Cliente();
             objCliente.setId_cliente
             (Integer.parseInt(request.getParameter("id")));
             
             DAOCliente objDAOCliente = new DAOCliente();
             objDAOCliente.executar_ExcluirCliente(objCliente);
            
             
             
            
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar excluir cliente: "+erro);
            }
        
     
        
        
       
        %>
        
        
    <center> 
        <h1>Pet Shop Premium</h1>

        
        <% out.print("Cliente excluido com sucesso!");
           out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>"); %>
        
        
        
    </center>
    
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        </style>
</html>
