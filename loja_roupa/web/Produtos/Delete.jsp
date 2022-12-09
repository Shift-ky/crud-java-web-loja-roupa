<%-- 
    Document   : Delete
    Created on : 8 de dez. de 2022, 20:38:19
    Author     : famil
--%>

<%@page import="br.com.Dao.ProdutoDao"%>
<%@page import="br.com.Model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            Produto produto = new Produto();
         
            produto.setId(Integer.parseInt(request.getParameter("id")));
            
            ProdutoDao objProduto = new ProdutoDao();
            
            objProduto.excluirProduto(produto);
        %>
    </body>
</html>
