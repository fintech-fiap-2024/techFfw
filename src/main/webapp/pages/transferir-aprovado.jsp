<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Transferência aprovada</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir-aprovado.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="transferir1.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Transferir</h1>
            <a>
                <img class="logo-img d-md-none" src="../assets/icons/qrcode.svg">
            </a>
        </div>
    </header>
    <main>
        <div class="d-flex justify-content-center align-items-center">
            <img class="icon me-4 my-5" src="../assets/icons/check.svg">
            <h2 class="my-5">Transferência <br> Aprovada</h2>
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mt-4 mx-4 fs-2">
            <p class="fw-bold">Valor</p>
            <p class="fw-light">R$200,00</p>
        </div>
        <div class="d-flex justify-content-between justify-content-md-around mx-4 fs-2">
            <p class="fw-bold">Instituição</p>
            <p class="fw-light">Santander LTDA</p>
        </div>
    </main>


</body>
</html>
