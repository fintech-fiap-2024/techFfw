<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Bloquear Cartão</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/cartao-bloquear.css">
</head>
<body>
    <header class="d-flex">
        <a href="cartao.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1>Bloqueio do Cartão</h1>
    </header>
    <main>
        <div class="d-flex flex-row align-items-center justify-content-between">
            <p class="fs-3">Bloquear cartão</p>
            <div class="fs-3 form-check form-switch">
                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
            </div>
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
