package DAO;

import MODEL.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOCliente {
    
   private Connection conn;
   private PreparedStatement stmt;
   ResultSet rs;
    ArrayList<Cliente> lista = new ArrayList<>();
   
           //criar construtor da conexão
            public DAOCliente(){
                conn = new Conexao().getConexao();
    
    
    }
   
            //Criar metodo Inserir Cliente
             public void InserirCliente(Cliente cliente){
                 //Criar uma variavel para receber a instrucao SQL
                 String sql = "INSERT INTO tb_cliente (nome_cliente, email_cliente, telefone_cliente) VALUES (?, ? ,?)";
                 //Criar um try catch para verificar erro
                 try {
                     //Qual conexão utilizar e qual comando executar
                     stmt = conn.prepareStatement(sql);
                     //passar os valores dos parâmetros
                     stmt.setString(1, cliente.getNome_cliente());
                     stmt.setString(2, cliente.getEmail_cliente());
                     stmt.setString(3, cliente.getTelefone_cliente());
                     //executar instrução
                     stmt.execute();
                     //fechar conexão
                     stmt.close();
                 } catch (Exception erro) {
                     throw new RuntimeException("Erro inserir cliente: "+erro);
                 }
                 
             }
                //Criar metodo Consultar Cliente
           public ArrayList<Cliente> ConsultarCliente(){ 
             
              String sql = "SELECT * FROM tb_cliente";
              conn = new Conexao().getConexao();
              
               try {
                   stmt = conn.prepareStatement(sql);
                   rs = stmt.executeQuery(sql);
                   
                   
                   while (rs.next()){
                      Cliente objCliente = new Cliente();
                      objCliente.setId_cliente(rs.getInt("id_cliente"));
                      objCliente.setNome_cliente(rs.getString("nome_cliente"));
                      
                      lista.add(objCliente);
                      
                   }
                   
                   
               } catch (Exception erro) {
                   throw new RuntimeException("Erro na consulta do cliente: "+erro);
               }
 
              return lista;
              
           }       
           
           
                       //Criar metodo Excluir Cliente
             public void executar_ExcluirCliente(Cliente cliente){
                 //Criar uma variavel para receber a instrucao SQL
                 String sql = "DELETE FROM tb_cliente where id_cliente = ?";
                 conn = new Conexao().getConexao();
                 //Criar um try catch para verificar erro
                 try {
                     //Qual conexão utilizar e qual comando executar
                     stmt = conn.prepareStatement(sql);
                     //passar os valores dos parâmetros
                     stmt.setInt(1, cliente.getId_cliente());

                     //executar instrução
                     stmt.execute();
                     //fechar conexão
                     stmt.close();
                 } catch (Exception erro) {
                     throw new RuntimeException("Erro ao excluir Cliente: "+erro);
                 }
                 
             }
           
           
           
           
           
           
           
           
           
             
}
