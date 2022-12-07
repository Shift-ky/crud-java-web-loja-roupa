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

    
}