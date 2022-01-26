package DAO;

import MODEL.Cliente;
import MODEL.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOProduto {
    
   private Connection conn;
   private PreparedStatement stmt;
   ResultSet rs_pro;
    ArrayList<Produto> lista_pro = new ArrayList<>();
   
           //criar construtor da conexão
            public DAOProduto(){
                conn = new Conexao().getConexao();
    
    
    }
   
            //Criar metodo Inserir Cliente
             public void InserirProduto(Produto produto){
                 //Criar uma variavel para receber a instrucao SQL
                 String sql = "INSERT INTO tb_produto (nome_produto, qtd_produto) VALUES (?, ?)";
                 //Criar um try catch para verificar erro
                 try {
                     //Qual conexão utilizar e qual comando executar
                     stmt = conn.prepareStatement(sql);
                     //passar os valores dos parâmetros
                     stmt.setString(1, produto.getNome_produto());
                     stmt.setString(2, produto.getQtd_produto());
                     //executar instrução
                     stmt.execute();
                     //fechar conexão
                     stmt.close();
                 } catch (Exception erro) {
                     throw new RuntimeException("Erro inserir produto: "+erro);
                 }
                 
             }
   
             
             public ArrayList<Produto> ConsultarProduto(){ 
             
              String sql = "SELECT * FROM tb_produto";
              conn = new Conexao().getConexao();
              
               try {
                   stmt = conn.prepareStatement(sql);
                   rs_pro = stmt.executeQuery(sql);
                   
                   
                   while (rs_pro.next()){
                      Produto objProduto = new Produto();
                      objProduto.setId_produto(rs_pro.getInt("id_produto"));
                      objProduto.setNome_produto(rs_pro.getString("nome_produto"));
                      
                      lista_pro.add(objProduto);
                      
                   }
                   
                   
               } catch (Exception erro) {
                   throw new RuntimeException("Erro na consulta do produto: "+erro);
               }
 
              return lista_pro;
              
           } 
           
                        //Criar metodo Excluir Produto
             public void executar_ExcluirProduto(Produto produto){
                 //Criar uma variavel para receber a instrucao SQL
                 String sql = "DELETE FROM tb_produto where id_produto = ?";
                 conn = new Conexao().getConexao();
                 //Criar um try catch para verificar erro
                 try {
                     //Qual conexão utilizar e qual comando executar
                     stmt = conn.prepareStatement(sql);
                     //passar os valores dos parâmetros
                     stmt.setInt(1, produto.getId_produto());

                     //executar instrução
                     stmt.execute();
                     //fechar conexão
                     stmt.close();
                 } catch (Exception erro) {
                     throw new RuntimeException("Erro ao excluir Produto: "+erro);
                 }
                 
             }
             
             
             
             
             
             
}
