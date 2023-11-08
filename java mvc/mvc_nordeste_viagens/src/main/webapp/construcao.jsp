<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Nordeste Viagens - Site em Construção</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>
    <!-- Navegação -->
    <nav class="navbar navbar-expand-lg navbar-light">
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

    <img src="img/constr.jpg" alt="Site em Construção" />

    <!-- Footer -->
    <footer class="g-font">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h5>
                        Redes sociais e
                        <a href="contato.jsp" style="text-decoration: none; color: #f8f4f4">Contato</a>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>