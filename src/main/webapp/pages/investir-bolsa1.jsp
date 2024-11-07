<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Investir Bolsa</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investir-bolsa1.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="transferir1.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Investir</h1>
            <a>
                <img class="logo-img d-md-none" src="../assets/icons/qrcode.svg">
            </a>
        </div>
    </header>
    <main>
        <div class="d-flex justify-content-center">
            <h2 class="my-4">Ações Brasileiras</h2>
        </div>


        <div class="ms-3 me-3">
            <div class="d-flex justify-content-between align-items-center m-3">
                <a class="acao d-flex" href="#">
                    <div class="icon">
                        <img src="../assets/icons/itau.svg">
                    </div>
                    <div class="d-flex flex-column ms-3">
                        <p class="fs-3 fw-bold mb-0">Itaú</p>
                        <p class="info">ITUB4</p>
                    </div>
                </a>
                <p class="fw-bold">R$ 35,30</p>
            </div>
            <div class="d-flex justify-content-between align-items-center m-3">
                <a class="acao d-flex" href="#">
                    <div class="icon">
                        <img src="../assets/icons/vale.svg">
                    </div>
                    <div class="d-flex flex-column ms-3">
                        <p class="fs-3 fw-bold mb-0">Vale</p>
                        <p class="info">VALE3</p>
                    </div>
                </a>
                <p class="fw-bold">R$ 61,73</p>
            </div>
            <div class="d-flex justify-content-between align-items-center m-3">
                <a class="acao d-flex" href="#">
                    <div class="icon">
                        <img src="../assets/icons/petrobras.svg">
                    </div>
                    <div class="d-flex flex-column ms-3">
                        <p class="fs-3 fw-bold mb-0">Petrobras</p>
                        <p class="info">PTR4</p>
                    </div>
                </a>
                <p class="fw-bold">R$ 35,90</p>
            </div>
            <div class="d-flex justify-content-between align-items-center m-3">
                <a class="acao d-flex" href="#">
                    <div class="icon">
                        <img src="../assets/icons/banco-do-brasil.svg">
                    </div>
                    <div class="d-flex flex-column ms-3">
                        <p class="fs-3 fw-bold mb-0">Banco B.</p>
                        <p class="info">BBDC4</p>
                    </div>
                </a>
                <p class="fw-bold">R$ 14,93</p>
            </div>
            <div class="d-flex justify-content-between align-items-center m-3">
                <a class="acao d-flex" href="#">
                    <div class="icon">
                        <img src="../assets/icons/b3.svg">
                    </div>
                    <div class="d-flex flex-column ms-3">
                        <p class="fs-3 fw-bold mb-0">B3 Brasil</p>
                        <p class="info">B3SA3</p>
                    </div>
                </a>
                <p class="fw-bold">R$ 10,71</p>
            </div>
        </div>
    </main>
</body>
</html>
