<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Depositar</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/depositar.css">
</head>
<body>

<div class="deposit-header">
    <i class="bi bi-arrow-left"></i> Depositar
</div>

<div class="container-fluid deposit-container">
    <h2>Qual valor do depósito?</h2>
    <p class="balance-info">Saldo disponível de <span>R$5234,67</span></p>

    <input type="text" id="deposit-input" class="deposit-input" placeholder="R$ 0,00">

    <button class="copy-btn">Copiar Código</button>

    <div class="qr-code-container">
        <p>Ou</p>
        <img src="../assets/icons/qrcode.svg" alt="QR Code">
    </div>
</div>

<div class="nav-icons">
    <i class="bi bi-house-door-fill"></i>
    <i class="bi bi-qr-code"></i>
    <i class="bi bi-arrow-left-right"></i>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const input = document.getElementById('deposit-input');

    input.addEventListener('input', (e) => {

        let value = e.target.value.replace(/\D/g, "");
        value = (value / 100).toFixed(2);
        e.target.value = "R$ " + value.replace(".", ",");
    });
</script>
</body>
</html>