<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Investimento tesouro direto</title>
  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <link rel="stylesheet" href="../styles/style.css">
  <link rel="stylesheet" href="../styles/investimento4.css">

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
    <h2 class="investment-title">Selic 5 anos</h2>
    <div class="investment-info">
      <div class="info-item">
        <span class="label">Rentabilidade</span>
        <span class="value">0.13% ao ano</span>
      </div>
      <div class="info-item">
        <span class="label">Resgate</span>
        <span class="value">No vencimento</span>
      </div>
      <div class="info-item">
        <span class="label">Aplicação mínima</span>
        <span class="value">R$ 354,55</span>
      </div>
    </div>
  </div>

  <div class="investment-card">
    <a href="#" class="apply">
      <img src="../assets/icons/dir.svg">
    </a>
    <h2 class="investment-title">IPCA 3 anos</h2>
    <div class="investment-info">
      <div class="info-item">
        <span class="label">Rentabilidade</span>
        <span class="value">6.75% ao ano</span>
      </div>
      <div class="info-item">
        <span class="label">Resgate</span>
        <span class="value">No vencimento</span>
      </div>
      <div class="info-item">
        <span class="label">Aplicação mínima</span>
        <span class="value">R$ 47,10</span>
      </div>
    </div>
  </div>

  <div class="investment-card">
    <a href="#" class="apply">
      <img src="../assets/icons/dir.svg">
    </a>
    <h2 class="investment-title">IPCA + 1 ano</h2>
    <div class="investment-info">
      <div class="info-item">
        <span class="label">Rentabilidade</span>
        <span class="value">5.49% ao ano</span>
      </div>
      <div class="info-item">
        <span class="label">Resgate</span>
        <span class="value">No vencimento</span>
      </div>
      <div class="info-item">
        <span class="label">Aplicação mínima</span>
        <span class="value">R$ 150,00</span>
      </div>
    </div>
  </div>
</div>
</body>
</html>
