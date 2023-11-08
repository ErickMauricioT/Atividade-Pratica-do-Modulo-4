<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NordesteViagens</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <!-- Navegação -->
  <nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">
        <h1><strong>Nordeste Viagens</strong></h1>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
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

<!-- Inicio Fale Conosco -->
  <main class="bg-light, " style="background-color: #E9F8F1;">
    <div id="section4" class="container main-content">
      <center>
        <h2>Cadastro de Contato Fale Conosco</h2>
      </center><br>
      <form form name="contato" action="FaleConosco" method="post">
        <center>
        <div class="mb-3 w-75">
          <label for="nomeCompleto" name="nome" class="form-label">Nome Completo</label>
          <input type="text" class="form-control" id="nomeCompleto" placeholder="Nome completo">
        </div>

        <div class="mb-3 w-25" >
          <label for="telefone" name="telefone" class="form-label">Telefone de contato</label>
          <input type="tel" class="form-control" id="telefone" placeholder="(xx) xxxxx-xxxx">
        </div>

        <div class="mb-3 w-50">
          <label for="email" name="email" class="form-label">E-mail</label>
          <input type="email" class="form-control" id="email" placeholder="exemplo@example.com">
        </div>
</center>
        <div class="mb-3">
          <center>
          <label for="mensagem" name="mensagem" class="form-label">Mensagem</label>
          <textarea class="form-control" id="mensagem" placeholder="Escreva sua mensagem aqui" rows="7"></textarea>
          </center>
        </div>
        <button type="button" class="btn btn-primary">Enviar</button>
      </form>
    </div>

    <div class="container mt-4">
      <center>
        <h6><b>Precisa de Ajuda? Fale conosco!</b></h6>
        <p><b>Atendimento através do Telefone &#9742 &#9990 :(xx) xxxx-xxxx</b></p>
        <p><b>Ligue e Faça Uma Reserva</b></p>
      </center>
    </div>
  </main>
<!-- Fim Fale Conosco -->

<!-- Footer -->
<footer class="g-font">
  <div class="container">
    <div class="row">
      <div class="col">
        <h5>Redes sociais e Contato</h5>
          <i class="ri-twitter-line"></i>
          <i class="ri-facebook-circle-line"></i>
          <i class="ri-instagram-line"></i>
          <i class="ri-whatsapp-line"></i>
          <i class="ri-google-line"></i>
      </div>
      <div class="col">
        <h1 class="text-center m-0">Visite o Nordeste</h1>
        <img src="img/nordeste.png" width="100px" alt="mapa">
      </div>
    </div>
  </div>
</footer>
<div class="mt-1" style="background-color:#007BFF;">
  <footer class="text-center py-2">
    <strong>
      <p class="m-0">Nordeste Viagens &copy;2023</p>
    </strong>
  </footer>
</div>
<!-- Fim Footer -->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>