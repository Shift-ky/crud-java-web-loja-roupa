/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author famil
 */
public class Connecao {
    Connection connection;
    
    public Connecao(){
        
    }
    
    public Connection getConnection(){
        connection = null;
        try {
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/loja_roupa","root", "");
        } catch (SQLException e) {
            System.out.println("ConexãoDao" + e);
        }
        
        
        return connection;
    }
    
}
