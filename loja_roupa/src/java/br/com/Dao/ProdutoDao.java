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
import br.com.Model.UsuarioAdm;
/**
 *
 * @author famil
 */
public class UsuarioAdmDao {
    Connection conexao;
    //ResultSet rs;
    PreparedStatement pstm;
    //ArrayList<Cliente> clientes = new ArrayList<>();
    
    public UsuarioAdmDao(){
        conexao = new ConnectionFactory().getConexao();
    }
    
    public void cadastraAdm(UsuarioAdm adm){
        String sql = "INSERT INTO usuarioadm(login, senha) VALUES (?,?)";
        
        try {
             pstm = conexao.prepareStatement(sql);
            pstm.setString(1, adm.getLogin());
            pstm.setString(2,adm.getSenha());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    }
    
}
