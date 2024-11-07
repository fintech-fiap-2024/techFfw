<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Transferir3</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir3.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="transferir2.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Transferir</h1>
            <a>
                <img class="logo-img d-md-none" src="../assets/icons/qrcode.svg">
            </a>
        </div>
    </header>
    <main>
        <p class="m-2 fs-3">Transferindo</p>
        <h1 class="m-2">R$200,00</h1>

        <p class="quem">REMETENTE</p>
        <div class="info-remetente">
            <p><span class="fw-bold">Nome: </span> Jackie Tequila</p>
            <p><span class="fw-bold">CPF: </span> ***.280.788-**</p>
            <p><span class="fw-bold">Instituição: </span> FFW Fintech</p>
        </div>

        <p class="quem">BENEFICIÁRIO</p>
        <div class="info-beneficiario">
            <p><span class="fw-bold">Nome: </span> João do Santo Cristo</p>
            <p><span class="fw-bold">CPF: </span> ***.444.058-**</p>
            <p><span class="fw-bold">Instituição: </span> Santander LTDA</p>
        </div>



    </main>
</body>
</html>
