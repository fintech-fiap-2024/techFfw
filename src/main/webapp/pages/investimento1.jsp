<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Investimento CDB</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investimento1.css">

</head>
<body>

<div class="container my-4">
    <div class="header">
        <a href="investir.jsp" class="back-button">
            <img src="../assets/icons/esq.svg">
        </a>
        <h1 class="title">Investir</h1>
    </div>

    <div class="investment-card">
        <a href="#" class="apply">
            <img src="../assets/icons/dir.svg">
        </a>
        <h2 class="investment-title">CDB Limite Garantido</h2>
        <div class="investment-info">
            <div class="info-item">
                <span class="label">Rentabilidade</span>
                <span class="value">103.5% CDI</span>
            </div>
            <div class="info-item">
                <span class="label">Resgate</span>
                <span class="value">Disponibilidade Diária</span>
            </div>
            <div class="info-item">
                <span class="label">Aplicação mínima</span>
                <span class="value">R$ 30,00</span>
            </div>
        </div>
    </div>

    <div class="investment-card">
        <a href="#" class="apply">
            <img src="../assets/icons/dir.svg">
        </a>
        <h2 class="investment-title">CDB Pós-fixada</h2>
        <div class="investment-info">
            <div class="info-item">
                <span class="label">Rentabilidade</span>
                <span class="value">105.5% CDI</span>
            </div>
            <div class="info-item">
                <span class="label">Resgate</span>
                <span class="value">Em 2 dias úteis</span>
            </div>
            <div class="info-item">
                <span class="label">Aplicação mínima</span>
                <span class="value">R$ 10,00</span>
            </div>
        </div>
    </div>

    <div class="investment-card">
        <a href="#" class="apply">
            <img src="../assets/icons/dir.svg">
        </a>
        <h2 class="investment-title">CDB Resgate Automático</h2>
        <div class="investment-info">
            <div class="info-item">
                <span class="label">Rentabilidade</span>
                <span class="value">100% CDI</span>
            </div>
            <div class="info-item">
                <span class="label">Resgate</span>
                <span class="value">Disponibilidade Diária</span>
            </div>
            <div class="info-item">
                <span class="label">Aplicação mínima</span>
                <span class="value">R$ 3000,00</span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
