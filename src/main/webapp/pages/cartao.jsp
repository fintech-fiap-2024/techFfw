<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");

%>

<html>
<head>
    <title>Meus cartões</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/cartao.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="menu.jsp">
                <img class="sair" src="../assets/icons/x.svg">
            </a>
            <img class="logo-img" src="../assets/images/logo.svg">
        </div>
    </header>
    <main>
        <h1>Meus cartões</h1>
        <div class="cartao d-flex flex-column justify-content-center align-items-center">
            <h2>Cartão físico</h2>
            <img class="cartao-fisico" src="../assets/images/cartao-fisico.svg">
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mt-4 mx-4 fs-3 fw-bold">
            <p>Nome</p>
            <p>Validade</p>
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mx-4 fs-3">
            <p>Jackie Tequila</p>
            <p>07/27</p>
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mt-4 mx-4 fs-3 fw-bold">
            <p>Mastercard</p>
            <p>Função</p>
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mx-4 fs-3">
            <p>Gold</p>
            <p>Débito e Crédito</p>
        </div>
        <hr class="my-5">
        <div class="d-flex flex-row justify-content-evenly">
            <div class="d-flex flex-column align-items-center">
                <a href="cartao-bloquear.jsp" class="icon mb-2">
                    <img src="../assets/icons/bloquear.svg">
                </a>
                <p class="fs-4">Bloquear</p>
            </div>
            <div class="d-flex flex-column align-items-center">
                <a href="cartao-config.jsp" class="icon mb-2">
                    <img src="../assets/icons/configurar.svg">
                </a>
                <p class="fs-4 mb-5">Configurar</p>
            </div>
        </div>
    </main>
    <p class="dir-reservados">© 2024 Todos os direitos reservados</p>
    <footer>
        <div class="rodape d-flex justify-content-between align-items-center">
            <a class="link-footer" href="menu.jsp">
                <img class="img-footer" src="../assets/icons/menu.svg">
            </a>
            <img class="footer-logo ms-2" src="../assets/images/logo.svg">
        </div>
    </footer>
</body>
</html>
