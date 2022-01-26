package MODEL;

public class Produto {
  
    private int id_produto;
    private String nome_produto;
    private String qtd_produto;   
    
    
    // Criar os métodos do Novo Produto

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public String getNome_produto() {
        return nome_produto;
    }

    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public String getQtd_produto() {
        return qtd_produto;
    }

    public void setQtd_produto(String qtd_produto) {
        this.qtd_produto = qtd_produto;
    }
    
    
    
}
