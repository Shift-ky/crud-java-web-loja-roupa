<%@page import="br.com.Dao.ProdutoDao, br.com.Model.Produto"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela Login</title>
    <link rel="stylesheet" href="Produtos/css/StyleAdm.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>
    <Style>
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
  #cancelar{
    margin-top: 20px;
    float: right;
    
  }
  #cancelar a{
    font-size: 0.8em;
    text-transform: uppercase;
    text-decoration: none;
    color: #F2C288;
  }


  #cancelar a:hover{
    padding: 5px;
    box-shadow: 0 0 5px #F2C288 , 0 0 25px #F2C288, 0 0 50px #F2C288, 0 0 100px #F2C288;
    text-decoration: none;
    color: #F2C288;
    transition: 0.5s;
  }
  
  

    </Style>
  
</head>
<body>
    <%
            String id = request.getParameter("id");
           ProdutoDao objProduto = new ProdutoDao();
           
           Produto produto = objProduto.getRegistroById(Integer.parseInt(request.getParameter("id")));
        %>
        
    <div class="login-box">
        <h2>ATUALZAR DADOS</h2>
        <form action="Update.jsp" method="get">
          <div class="box-usuario">
            <input type="hidden" name="id" value="<%=produto.getId()%>">          
          <div class="box-usuario">
            <input type="text" name="nome" value="<%=produto.getNome()%>">
            <label>NOME</label>
          </div>
          <br>
          <div class="box-usuario">
            <input type="text" name="cor" value="<%=produto.getCor()%>">
            <label>COR</label>
          </div>
          <br>
          <div class="box-usuario">
            <input type="text" name="tamanho" value="<%=produto.getTamanho()%>">
            <label>TAMANHO</label>
          </div>
          <br>
              <div class="box-usuario">
            <input type="text" name="preco" value="<%=produto.getPreco()%>">
            <label>PRE?O</label>
          </div>
          <br>
          <br>
       
          <div class="enviar">
            <button type="submit">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              ATUALIZAR
            </button>
          </div>

          <div id="cancelar">
          <a href="Listar.jsp">cancelar</a>
        </div>
        </form> 
          
        </div>
       
    </div>
  </body>
</html>