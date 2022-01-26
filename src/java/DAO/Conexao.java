package DAO;
//importar 2 bibliotecas de conexão
import java.sql.DriverManager;
import java.sql.Connection;

public class Conexao {
    //Criando metodo de conexão
    public Connection getConexao(){
        //try - verifica se tem algum erro no código que está dentro dele
        try {
            //Caminho para buscar o driver
            Class.forName("com.mysql.jdbc.Driver");
           //JDBC - Java Database Connectivity
           
           return DriverManager.getConnection("jdbc:mysql://localhost/bdavaliacao","root",""); 
            
            
        } catch (Exception erro) { //caso algum problema no try, executa o catch
            throw new RuntimeException("Erro classe conexão: "+erro); //erro do try
        }
        
    }
        
}
