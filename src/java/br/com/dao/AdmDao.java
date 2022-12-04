/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.dao;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author famil
 */
public class AdmDao {
    Adm adm = new Adm();
    
    Connection conexao;
    PreparedStatement pstm;
    
    public AdmDao(){
        conexao = new Connecao().getConexao();
        
    }
    
    public void cadastrarUsuario(Adm adm){
        String sql = "insert into usuario(nome,senha) values(?,?)";
        
        try {
        pstm = conexao.prepareStatement(sql);
        pstm.setString(1, usuario.getNome());
        pstm.setString(2,usuario.getSenha());
        pstm.execute();
        pstm.close();
        } catch (Exception e) {
        }
        
    }
    
    
    
    
    
    
}
