/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.Dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author famil
 */
public class ConnectionFactory {
    Connection conexao;
    
    public Connection getConexao(){
        try {
            conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/loja_roupa", "root", "");
        } catch (Exception e) {
        }
        return conexao;
    }
    
}
