<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Movimentos</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/movimentos.css">
</head>
<body>
    <header class="d-flex">
        <a href="menu.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1>Movimentos</h1>
    </header>
    <main>
        <div class="pesquisa">
            <input type="search" placeholder="Buscar...">
            <span class="pesquisa-icon">🔍</span>
        </div>
        
        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <img class="icon" src="../assets/icons/google.svg">
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Google Music</p>
                    <p class="date">02/10/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$12,10</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">JS</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">José da Silva Santos</p>
                    <p class="date">28/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$75,62</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">EG</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Ecilla Galvao</p>
                    <p class="date">28/09/2024</p>
                </div>
            </div>
            <p class="valor-positivo fw-bold">+ R$340,50</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">PM</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Pedro Mendes</p>
                    <p class="date">28/09/2024</p>
                </div>
            </div>
            <p class="valor-positivo fw-bold">+ R$1620,00</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">JR</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Julio Manoel Rodrigues</p>
                    <p class="date">17/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$200,45</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">UL</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Ulisses Neto</p>
                    <p class="date">12/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$17,28</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <img class="icon" src="../assets/icons/ifood.svg">
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">iFood</p>
                    <p class="date">09/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$74,49</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">SM</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Sálvio Moraes</p>
                    <p class="date">07/09/2024</p>
                </div>
            </div>
            <p class="valor-positivo fw-bold">+ R$800,00</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <img class="icon" src="../assets/icons/youtube.svg">
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">YouTube Premium</p>
                    <p class="date">06/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$37,00</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <p class="icon-verde fw-bold">DA</p>
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">Dirceu Alves</p>
                    <p class="date">05/09/2024</p>
                </div>
            </div>
            <p class="fw-bold">- R$650,00</p>
        </div>

        <div class="d-flex justify-content-between align-items-center m-3">
            <div class="d-flex">
                <img class="icon" src="../assets/icons/spacex.svg">
                <div class="d-flex flex-column ms-2">
                    <p class="fw-bold mb-0">SpaceX</p>
                    <p class="date">05/09/2024</p>
                </div>
            </div>
            <p class="valor-positivo fw-bold">+ R$5250,00</p>
        </div>

    </main>
    <footer class="rodape d-flex justify-content-around align-items-center">
        <a class="link-footer" href="menu.jsp">
            <img class="img-footer" src="../assets/icons/menu.svg">
        </a>
        <img class="footer-logo ms-2" src="../assets/images/logo.svg">
    </footer>
</body>
</html>
