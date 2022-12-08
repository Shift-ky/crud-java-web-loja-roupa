<%-- 
    Document   : Update
    Created on : 8 de dez. de 2022, 18:47:33
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
        <h1>Hello World!</h1>
        <%
            Produto produto = new Produto();
            produto.setId(Integer.parseInt(request.getParameter("id")));
            produto.setNome(request.getParameter("nome"));
            produto.setTamanho(request.getParameter("tamanho"));
            produto.setCor(request.getParameter("cor"));
            produto.setPreco(Double.parseDouble(request.getParameter("preco")));
            
            ProdutoDao objProduto = new ProdutoDao();
            objProduto.updateProduto(produto);
            
            response.sendRedirect("Listar.jsp");
        %>
    </body>
</html>
