<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Configurar Cartão</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/cartao-config.css">
</head>
<body>
    <header class="d-flex">
        <a href="cartao.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1>Configurar Cartão</h1>
    </header>
    <main>
        <div class="d-flex flex-row align-items-center justify-content-between">
            <p class="fs-3">Compras por aproximação</p>
            <div class="fs-3 form-check form-switch">
                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
            </div>
        </div>
    </main>
</body>
</html>
