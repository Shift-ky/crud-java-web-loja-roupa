<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.Dao.ProdutoDao, br.com.Model.Produto"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Listar.css">
    <title>Document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        @import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css);

html {
    height: 100%
  }
  
  body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: linear-gradient(#F2C288, #A64B29);
  }
  
  .login-box {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    padding: 40px;
    background: #050A0D;
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
    border-radius: 10px;
  }
  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    text-align: center;
    color: #fff;
  }
  .login-box .box-usuario {
    position: relative;
  }

  .login-box .box-usuario input {
    width: 100%;
    padding: 10px 0;
    border: none;
    background: transparent;
    border-bottom: 1px solid #fff;
    font-size: 16px;
    outline: none;
    color: #fff;
  }

  .login-box .box-usuario label {
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: 0.5s;
  }

  .login-box .box-usuario input:focus ~ label,
.login-box .box-usuario input:valid ~ label {
  top: -20px;
  left: 0;
  color: #fbfbfb;
  font-size: 12px;
}

.forgot-senha a {
    font-size: 12px;
    color: #fff;
    letter-spacing: 1px;
    text-decoration: none;
  }

  .forgot-senha a:hover {
    color: #03e9f4;
    transition: 0.5s;
  }

  .enviar button {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #F2C288;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: 0.5s;
    left: 33%;
    margin-top: 30px;
    letter-spacing: 2px;
    background-color: #050A0D;
    border-radius: 10px;
    
  }

  .enviar button:hover {
    background: #050A0D;
    color: rgb(255, 255, 255);
    border-radius: 2px;
    box-shadow: 0 0 5px #F2C288 , 0 0 25px #F2C288, 0 0 50px #F2C288, 0 0 100px #F2C288;
  }
  
  .enviar button span {
    position: absolute;
    display: block;
  }

  .enviar button span:nth-child(1) {
    top: 0;
    left: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg, transparent, #F2C288);
    animation: btn-anim1 1s linear infinite;
  }
  
  @keyframes btn-anim1 {
    0% {
      left: -100%;
    }
    50%,100% {
      left: 100%;
    }
  }
  
  .enviar button span:nth-child(2) {
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg, transparent, #F2C288);
    animation: btn-anim2 1s linear infinite;
    animation-delay: .25s
  }
  
  @keyframes btn-anim2 {
    0% {
      top: -100%;
    }
    50%,100% {
      top: 100%;
    }
  }
  .enviar button span:nth-child(3) {
    bottom: 0;
    right: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg, transparent, #F2C288);
    animation: btn-anim3 1s linear infinite;
    animation-delay: .5s
  }
  
  @keyframes btn-anim3 {
    0% {
      right: -100%;
    }
    50%,100% {
      right: 100%;
    }
  }
  
  .enviar button span:nth-child(4) {
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg, transparent, #F2C288);
    animation: btn-anim4 1s linear infinite;
    animation-delay: .75s
  }
  
  @keyframes btn-anim4 {
    0% {
      bottom: -100%;
    }
    50%,100% {
      bottom: 100%;
    }
  }

  .footer .campo-social {
    padding: 6.5px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 13px;
    width: 100%;
    margin-top: 16px;
  }

  .footer .campo-social a {
    text-decoration: none;
    color: #fff;
    font-size: 15px;
    letter-spacing: 1px;
  }
  
  .footer .campo-social-google {
    background: transparent;
    padding: 10px;
    border-radius: 2px;
    margin-bottom: 20px;
  }

  .footer {
    display: flex;
    flex-direction: row;
    text-align: center;
  }
  
  .footer span {
    color: #fff;
    font-size: 13px;
    text-align: center;
    margin-top: 20px;
  }
  

  .footer .campo-social a {
    text-decoration: none;
    color: #fff;
    font-size: 10px;
    letter-spacing: 1px;
    border: 1px solid black;
    padding: 10px;
  }
  
  .footer .campo-social-google {
    background: transparent;
    padding: 5px;
    border-radius: 2px;
    
    margin-bottom: 20px;
  }
  


  .footer .campo-social-google a:hover{
    padding: 10px;
    background: #050A0D;
    color: rgb(255, 255, 255);
    border-radius: 2px;
    box-shadow: 0 0 5px #F2C288 , 0 0 25px #F2C288, 0 0 50px #F2C288, 0 0 100px #F2C288;
    transition: 1s;
  }
.tabela{
    margin: 40px auto;
    width: 50%;
    background: #050A0D;
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
    border-radius: 10px;
} 

.tabela table{
    color: white;
    border: 1px solid white;
}

.tabela table td{
    border-right: 1px solid white;
}
.tabela table th{
    border-right: 1px solid white;

}
.tabela table tr td a #deletar{
  color: red;

}
.fa-trash{
  color: #F2C288;

}
.fa-trash:hover{
  color: red;
}
.fa-edit{
  color:#F2C288;
}
.fa-edit:hover{
  color: green;
  
}

  
    
    </style>
</head>
<body>
    <%
        ProdutoDao objProduto = new ProdutoDao();
        ArrayList<Produto> lista = new ProdutoDao().readyProduto();
        request.setAttribute("list",lista);
    %>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-transparent">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="luxurious.png" width="100px"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="../index.html">Cadastrar</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="Listar.jsp">Listar</a>
              </li>
          </div>
        </div>
      </nav>
    <!--Fim do navbar-->
    <!--Tabela-->
    <div class="tabela">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">NOME</th>
            <th scope="col">COR</th>
            <th scope="col">TAMANHO</th>
            <th scope="col">PREÇO</th>
            <th>EDITAR</th>
            <th>DELETAR</th>
          </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="produto">
          <tr>  
            <td>${produto.getId()}</td>
            <td>${produto.getNome()}</td>
            <td>${produto.getCor()}</td>
            <td>${produto.getTamanho()}</td>
            <td>${produto.getPreco()}</td>

            <td  align="center"><a href="Editar.jsp?id=${produto.getId()}"><i class='fa fa-edit'></i></a></td>
            <td align="center"><a href="Delete.jsp?id=${produto.getId()}"><i class="fa fa-trash"></i> </a> </td>
          </tr>
          </c:forEach>
        </tbody>
    </table>

    </div>
    <!--Fim da tabela-->
    
</body>
</html>