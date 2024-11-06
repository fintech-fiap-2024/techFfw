<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/menu.css">
</head>
<body>
    <header>
        <img class="img-logo" src="../assets/images/logo.svg">
        <h1 class="fs-5">Olá, Jackie</h1>
        <div class="header-icons">
            <a class="header-icon" href="#">
                <img src="../assets/icons/configurar.svg">
            </a>
            <a class="header-icon" href="#">
                <img src="../assets/icons/sair.svg">
            </a>
        </div>
    </header>
    <main>
        <div class="saldo">
            <p>Saldo</p>
            <img src="../assets/icons/olho-branco.svg">
        </div>
        <p class="valor">$ 5234,67</p>
        <div class="d-flex flex-row justify-content-evenly">
            <a href="#">
                <img src="../assets/icons/movimentos.svg">
            </a>
            <a href="#">
                <img src="../assets/icons/transferir.svg">
            </a>
            <a href="#">
                <img src="../assets/icons/depositar.svg">
            </a>
            <a href="#">
                <img src="../assets/icons/investir.svg">
            </a>
        </div>


    </main>
</body>
</html>
