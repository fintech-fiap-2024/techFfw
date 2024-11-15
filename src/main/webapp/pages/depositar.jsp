<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    double saldo = user.getSaldo();
%>
<html>
<head>
    <title>Depositar</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/depositar.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="menu.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Depositar</h1>
        </div>
    </header>
    <main>
        <div class="container-fluid deposit-container">
            <form action="/techFfw/deposito" method="post">
                <h2>Qual valor do depósito?</h2>
                <p class="balance-info">Saldo disponível de <span>R$<%=saldo%></span></p>

                <input type="number" name="valor" id="deposit-input" class="deposit-input" placeholder="R$ 0,00">

                <button class="copy-btn">Depositar</button>

                <div class="qr-code-container">
                    <p>Ou</p>
                    <img src="../assets/icons/qrcode.svg" alt="QR Code">
                </div>
            </form>
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