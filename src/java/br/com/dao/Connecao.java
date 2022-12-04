package br.com.dao;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author robsonPaiva
 */
public class Connecao {
    
  Connection conexao;

public Connection getConexao(){
    try {
        conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/loja_roupa", "root", "");
       
    } catch (SQLException e) {
        System.out.println(e);
    }
        return conexao;
    }  
}