<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Adicionar conta</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir-conta.css">
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
        <input type="text" placeholder="Ingresse o pix de destino">

        <a class="transferir d-flex justify-content-center" href="transferir3.jsp">
            <button class="btn" type="submit">Confirmar</button>
        </a>
    </main>
    <footer class="rodape d-flex justify-content-around align-items-center">
        <a class="link-footer" href="menu.jsp">
            <img class="img-footer" src="../assets/icons/menu.svg">
        </a>
        <img class="footer-logo ms-2" src="../assets/images/logo.svg">
    </footer>
</body>
</html>
