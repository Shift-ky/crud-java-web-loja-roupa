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
/**
 *
 * @author famil
 */
public class ProdutoDao {
    Connection conexao;
    PreparedStatement pstm;
    
    public ProdutoDao(){
         conexao = new ConnectionFactory().getConexao();
    }
    
    public void create(Produto produto){
        String sql = "INSERT INTO PRODUTO(nome,cor,tamanho,preco) value(?,?,?,?)";
     
        try {
            pstm = conexao.prepareStatement(sql);
            
        } catch (Exception e) {
        }
    }
    
}