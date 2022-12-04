<%-- 
    Document   : cadastrar
    Created on : 4 de dez. de 2022, 11:43:41
    Author     : famil
--%>

<%@page import="br.com.dao.AdmDao"%>
<%@page import="br.com.model.Adm"%>
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
            Adm adm = new Adm();
            adm.setLogin(request.getParameter("login"));
            adm.setSenha(request.getParameter("senha"));
            
            AdmDao objadm = new AdmDao();
            objadm.create(adm);
        %>
    </body>
</html>
