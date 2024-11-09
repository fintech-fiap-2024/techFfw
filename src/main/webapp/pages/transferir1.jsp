<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    Usuario user = (Usuario) session.getAttribute("user");
    double saldo = user.getSaldo();
%>
<html>
<head>
    <title>Transferir</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir1.css">
</head>
<body>
<header>
    <div class="menu-header">
        <a href="menu.jsp">
            <img class="sair" src="../assets/icons/x.svg">
        </a>
        <h1>Transferir</h1>
        <a>
            <img class="logo-img d-md-none" src="../assets/icons/qrcode.svg">
        </a>
    </div>
</header>
<main>
    <form action="/techFfw/transferir" method="post">
        <h2>Qual é o valor da transferência?</h2>
        <p class="saldo">Saldo disponível de <span class="saldo-valor">R$<%=saldo%></span></p>
        <input type="number" placeholder="R$" id="valorTransacao" name="valorTransacao" step="0.01" oninput="verificaValor()" required >
        <h2>Para quem você quer transferir?</h2>
        <input type="text" placeholder="Nome, CPF/CNPJ ou chave Pix" name="destinatarioTransacao" required>

        <p class="contatos">Todos os contatos</p>
        <div class="d-flex ms-4 align-items-center">
            <p class="icon-verde fw-bold">JS</p>
            <div class="d-flex align-items-center ms-4 pb-3">
                <p class="fw-bold mb-0">José da Silva Santos</p>
            </div>
        </div>
        <div class="d-flex ms-4 align-items-center">
            <p class="icon-verde fw-bold">EG</p>
            <div class="d-flex align-items-center ms-4 pb-3">
                <p class="fw-bold mb-0">Ecilla Galvao</p>
            </div>
        </div>
        <div class="d-flex ms-4 align-items-center">
            <p class="icon-verde fw-bold">EG</p>
            <div class="d-flex align-items-center ms-4 pb-3">
                <p class="fw-bold mb-0">Julio Manoel Rodrigues</p>
            </div>
        </div>
        <div class="d-flex ms-4 align-items-center">
            <p class="icon-verde fw-bold">PM</p>
            <div class="d-flex align-items-center ms-4 pb-3">
                <p class="fw-bold mb-0">Pedro Mendes</p>
            </div>
        </div>
        <div class="d-flex ms-4 align-items-center">
            <p class="icon-verde fw-bold">UL</p>
            <div class="d-flex align-items-center ms-4 pb-3">
                <p class="fw-bold mb-0">Ulisses Neto</p>
            </div>
        </div>

        <button class="btn disabled" id="botaoTransferir" disabled>Transferir</button>
    </form>

</main>
<footer class="rodape d-flex justify-content-around align-items-center">
    <a class="link-footer" href="menu.jsp">
        <img class="img-footer" src="../assets/icons/menu.svg">
    </a>
    <img class="footer-logo ms-2" src="../assets/images/logo.svg">
</footer>
<script>

    function verificaValor(){
        const saldoDisponivel = <%=saldo%>
        const valorTransferencia = parseFloat(document.getElementById("valorTransacao").value);
        const botaoTransferir = document.getElementById("botaoTransferir");

        if (!isNaN(valorTransferencia) && valorTransferencia > 0 && valorTransferencia <= saldoDisponivel) {
            botaoTransferir.disabled = false;
            botaoTransferir.classList.remove("disabled");
        } else {
            botaoTransferir.disabled = true;
            botaoTransferir.classList.add("disabled");
        }

    }
</script>
</body>
</html>
