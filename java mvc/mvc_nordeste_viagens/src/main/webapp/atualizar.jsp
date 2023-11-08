<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nordeste Viagens - Cadastro</title>
  <link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
  crossorigin="anonymous"
  />
  <link rel="stylesheet" href="css/style.css" />
</head>

<body>
  <!-- Navegação -->
  <nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
      <a class="navbar-brand" href="index.jsp"
      ><h1><strong>Nordeste Viagens</strong></h1>
    </a>
    <button
    class="navbar-toggler"
    type="button"
    data-bs-toggle="collapse"
    data-bs-target="#navbarNavDropdown"
    aria-controls="navbarNavDropdown"
    aria-expanded="false"
    aria-label="Toggle navigation"
    >
    <span class="navbar-toggler-icon"></span>
  </button>
  <div
  class="collapse navbar-collapse justify-content-center"
  id="navbarNavDropdown"
  >
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link active" href="index.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="destinos.jsp">Destinos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="promocoes.jsp">Promoções</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="contato.jsp">Contato</a>
    </li>
  </ul>
</div>
</div>
</nav>
<!-- Fim Navegação -->
<br>


    <div class="container">
   
  

    <form id="cliente-form">
      <a href="cadastro.jsp" class="btn btn-primary" name="cadastrar">Cadastrar Cliente</a>
      <a href="ListarController" class="btn btn-primary" name="procurar">Procurar Clientes</a>

  </form>
    </div>


<!-- cadastro -->
<h2 class="text-center">Atualizar Cliente</h2>

<div class="container main-content">



        <form action="AtualizarController?id=${client.id}" method="post" class="login-form">
            <div class="form-group">
                <label for="id">ID do Cliente </label>
                <input type="text" class="form-control" id="id" name="id" value="${client.id}" disabled>
                </div>
            
  
    <div class="row">
      <div class="col-md-6">
        <div class="mb-3">
          <label for="nome" class="form-label">Nome</label>
          
          <input type="text" class="form-control" id="nome" name="nome" value="${client.nome}"maxlength="30" required>

        </div>
        <div class="mb-3">
          <div class="col-md-4">
            <label for="dataNasc" class="form-label">Data Nasc.</label>
            
            <input type="date" class="form-control" id="bornDate" name="bornDate" value="${client.bornDate}" required>

          </div>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          
          <input type="email" class="form-control" id="email" name="email" value="${client.email}" maxlength="30">

        </div>
        <div class="mb-3">
          <div class="col-md-6">
            <label for="endereco" class="form-label">Endereço</label>
            
            <input type="text" class="form-control" id="adress" name="adress" value="${client.adress}" maxlength="30">

          </div>
        </div>
        <div class="mb-3">
          <div class="col-md-6">
            <label for="inputCPF" class="form-label">CPF</label>
            
            <input type="text" class="form-control" id="cpf" name="cpf" value="${client.cpf}" required pattern="\d{11}">

          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="col-md-8">
          <div class="mb-3">
            <label for="telefone" class="form-label">Telefone</label>
            
            <input type="text" class="form-control" id="tel" name="tel" value="${client.tel}" pattern="\d{1,16}">

          </div>
        </div>
      </div>
    </div>
    <button type="submit" class="btn btn-primary btn-block" onclick="validar_cad()">
      Atualizar
    </button>
  </form>
</div>
<!-- Fim cadastro -->

<div class="text-center mt-3">
        <a href="indexgerenciamento.jsp" class="btn btn-secondary">Voltar</a>
    </div>
<br>
<br>
<!-- Footer -->
<footer class="g-font">
  <div class="container">
    <div class="row">
      <div class="col">
        <h5>
          Redes sociais e
          <a
          href="contato.jsp"
          style="text-decoration: none; color: #f8f4f4"
          >Contato</a
          >
        </h5>
        <i class="ri-twitter-line"></i>
        <i class="ri-facebook-circle-line"></i>
        <i class="ri-instagram-line"></i>
        <i class="ri-whatsapp-line"></i>
        <i class="ri-google-line"></i>
      </div>
      <div class="col">
        <h1 class="text-center m-0">Visite o Nordeste</h1>
        <img src="img/nordeste.png" width="100px" alt="mapa" />
      </div>
    </div>
  </div>
</footer>
<div class="mt-1" style="background-color: #007bff">
  <footer class="text-center py-2">
    <strong>
      <p class="m-0">Nordeste Viagens &copy;2023</p>
    </strong>
  </footer>
</div>
<!-- Fim Footer -->
<script src="js/val_cadastro.js"></script>
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"
></script>
</body>
</html>