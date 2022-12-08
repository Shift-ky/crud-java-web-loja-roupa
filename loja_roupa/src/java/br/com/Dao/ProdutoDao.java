/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.Dao;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import br.com.Model.Produto;
import com.sun.source.tree.TryTree;
import javax.swing.JOptionPane;
/**
 *
 * @author famil
 */
public class ProdutoDao {
    Connection conexao;
    PreparedStatement pstm;
    ResultSet result;
    ArrayList<Produto> listaProduto = new ArrayList<>();
    
    public ProdutoDao(){
         conexao = new ConnectionFactory().getConexao();
    }
    
   public void cadastraProduto(Produto produto) {
        String sql = "insert into produto(nome, tamanho, cor, valor) values(?,?,?,?)";
        try {

            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, produto.getNome());
            pstm.setString(2, produto.getTamanho());
            pstm.setString(3, produto.getCor());
            pstm.setDouble(4, produto.getPreco());

            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }
   
   public ArrayList<Produto> readyProduto() {

        String sql = "select * from produto";

        try {
            pstm = conexao.prepareStatement(sql);
            result = pstm.executeQuery();

            while (result.next()) {
                Produto produto = new Produto();
                produto.setId(result.getInt("id"));
                produto.setNome(result.getString("nome"));
                produto.setCor(result.getString("cor"));
                produto.setTamanho(result.getString("tamanho"));
                produto.setPreco(result.getDouble("valor"));

                listaProduto.add(produto);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return listaProduto;
    }
   
   public void updateProduto(Produto produto) {
        String sql = "update produto set nome = ?, tamanho =?, cor = ?, valor= ? where id = ?";
        
        try {
            pstm = conexao.prepareStatement(sql);
            
            pstm.setString(1, produto.getNome());
            pstm.setString(2, produto.getTamanho());
            pstm.setString(3, produto.getCor());
            pstm.setDouble(4, produto.getPreco());
            pstm.setInt(5, produto.getId());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Update Produto" + e);
        }
    }
   
    public Produto getRegistroById(int id){
         Produto produto = null;
       
        String sql = "select * from produto where id=?";
        try {
     
            pstm = conexao.prepareStatement(sql);
            
            pstm.setInt(1, id);
            result = pstm.executeQuery();
 
            
            while(result.next()){
                produto = new Produto();
                
                produto.setId(result.getInt("id"));
                produto.setNome(result.getString("nome"));
                produto.setTamanho(result.getString("tamanho"));
                produto.setCor(result.getString("cor"));
                produto.setPreco(result.getDouble("valor"));
                
                
            }
        } catch (SQLException e) {
            System.out.println(e);
 
        }
        return produto;
    }

    

    
}