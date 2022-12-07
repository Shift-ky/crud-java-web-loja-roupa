/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.Dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author famil
 */
public class ConnectionFactory {
    Connection conexao;
    
    public Connection getConexao(){
         String url = "jdbc:mysql://localhost:3306/loja_roupa?user=root&password=";
        try {
           conexao = (Connection) DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return conexao;
    }
    
}
    
    
