<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Nordeste Viagens</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
 <link rel="stylesheet" href="css/style.css">
</head>

<body>

 <!-- Navegação -->
 <nav class="navbar navbar-expand-lg navbar-light">
  <div class="container">
   <a class="navbar-brand" href="index.jsp">
    <h1><strong>Nordeste Viagens</strong></h1>
   </a>
   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
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

 <main style="background-image: url('img/04.jpg');">
  <!-- Login -->
  <div class="container main-content">
   <div class="row justify-content-center">
    <div class="col-md-4">
     <form name="login" action="ConectaLogin" method="post" class="login-form">
      <h2 class="text-center">Faça Login</h2>
      <div class="mb-3">
       <label for="inputEmail" name="email" class="form-label">Email</label>
       <input type="email" class="form-control" id="inputEmail" placeholder="Seu email" required>
      </div>
      <div class="mb-3">
       <label for="inputPassword" name="senha" class="form-label">Senha</label>
       <input type="password" class="form-control" id="inputPassword" placeholder="Sua senha" required>
      </div>
      <button type="submit" class="btn btn-primary btn-block" onclick="validar_log()">Entrar</button>
      <p>

       <p>OU</p>
       <a class="cadlogin" href="cadastro.jsp">Cadastre-se</a>
      </p>

     </form>
    </div>
   </div>
  </div>
  <!-- Fim Login -->

  <!-- Destinos -->
  <div class="container main-content">
   <div class="row mt-5">
    <div class="col-md-12">
     <h2 class="text-center">Descubra o Nordeste Conosco</h2>
     <h3 class="text-center">Sua jornada, nossa paixão!</h3>
     <p> <strong> Bem-vindo à Nordeste Viagens! Somos uma equipe apaixonada por viagens, dedicada a tornar seus sonhos de explorar o mundo uma realidade inesquecível. Com início de carreira no setor, nossa agência é sua parceira confiável para criar as melhores experiências de viagem, personalizadas de acordo com suas preferências e interesses.</p>
      <p>Ao escolher nossa agência, você terá acesso a uma extensa rede de parceiros, incluindo hotéis, resorts, operadoras de passeios e atividades, garantindo que você desfrute de uma experiência de viagem de alta qualidade, com conforto e segurança em todos os momentos.</p>
      <p>Nossa missão é proporcionar a você um serviço excepcional, desde o planejamento até o retorno da sua viagem. Nossos especialistas em viagens estão sempre prontos para ouvir suas ideias, desejos e orçamento, para criar um itinerário sob medida que atenda a todas as suas expectativas.</p>
      <p>Seja uma escapada romântica, uma aventura em família, uma jornada de descoberta cultural ou uma busca por adrenalina, estamos prontos para planejar cada detalhe para que você possa aproveitar ao máximo sua experiência. </strong></p>
     </div>
    </div>

    <!-- inicio Carousel -->


    <section class="row row-cols-1 row-cols-md-3 g-4">
     <article class="col">
      <div class="card h-100">
       <div id="carouselExample01" class="carousel slide ">

        <!-- carousel 1 -->

        <div class="carousel-inner">
         <div class="carousel-item active">
          <img src="img/pernambuco.jpg" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/portoDeGalinhas.jpg" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/reant.jpeg" class="d-block w-100" alt="...">
         </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample01" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample01" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
        </button>
       </div>
       <div class="card-body">
        <h5 class="card-title text-center">Pernambuco</h5>
       </div>
      </div>
     </article>

     <!-- carousel 2 -->

     <article class="col">
      <div class="card h-100">
       <div id="carouselExample02" class="carousel slide">

        <div class="carousel-inner">
         <div class="carousel-item active">
          <img src="img/alag1.jfif" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/alag2.jpeg" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/alag3.jfif" class="d-block w-100" alt="...">
         </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample02" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample02" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
        </button>
       </div>
       <div class="card-body">
        <h5 class="card-title text-center">Alagoas</h5>
       </div>
      </div>
     </article>

     <!-- carousel 3 -->

     <article class="col">
      <div class="card h-100">
       <div id="carouselExample03" class="carousel slide">

        <div class="carousel-inner">
         <div class="carousel-item active">
          <img src="img/serg1.jfif" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/serg2.jfif" class="d-block w-100" alt="...">
         </div>
         <div class="carousel-item">
          <img src="img/serg3.jfif" class="d-block w-100" alt="...">
         </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample03" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample03" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
        </button>
       </div>
       <div class="card-body">
        <h5 class="card-title text-center">Sergipe</h5>
       </div>
      </div>
     </article>

    </section>
   </div>
  </main>
  <!-- fim carousel -->

  <!-- Footer -->
  <footer class="g-font">
   <div class="container">
    <div class="row">
     <div class="col">
      <h5>Redes sociais e <a href="contato.jsp" style="text-decoration: none; color: #F8F4F4;">Contato</a></h5>
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

  <script src="js/val_login.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
  crossorigin="anonymous"></script>
 </body>

 </html>