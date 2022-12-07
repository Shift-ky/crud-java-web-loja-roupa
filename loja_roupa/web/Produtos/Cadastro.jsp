<%-- 
    Document   : cadastrado
    Created on : 24 de nov. de 2022, 18:13:43
    Author     : famil
--%>

<%@page import="br.com.Dao.ProdutoDao, br.com.Model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cliente Cadastrado</h1>
        
        <%
            Produto produto = new Produto();
            produto.setNome(request.getParameter("nome"));
            produto.setCor(request.getParameter("cor"));
            produto.setPreco(Double.parseDouble(request.getParameter("preco")));
            produto.setTamanho(request.getParameter("tamanho"));
            
           
        %>
    </body>
</html>
