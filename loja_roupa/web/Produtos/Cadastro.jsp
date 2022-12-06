<%-- 
    Document   : cadastrado
    Created on : 24 de nov. de 2022, 18:13:43
    Author     : famil
--%>

<%@page import="br.com.Dao.UsuarioAdmDao, br.com.Model.UsuarioAdm"%>
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
            try {
                UsuarioAdm cliente = new UsuarioAdm();
                cliente.setLogin(request.getParameter("login"));
                cliente.setSenha(request.getParameter("senha"));
            
                UsuarioAdmDao objCliente = new UsuarioAdmDao();
                objCliente.cadastraAdm(cliente);
                } catch (Exception e) {
                }
        %>
    </body>
</html>
