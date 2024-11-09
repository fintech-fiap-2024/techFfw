<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    Usuario user = (Usuario) session.getAttribute("user");
    int saldo = user.getSaldo();
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
        <h2>Qual é o valor da transferência?</h2>
        <p class="saldo">Saldo disponível de <span class="saldo-valor">R$<%=saldo%></span></p>
        <input type="number" placeholder="R$" name="valorTransferencia">
        <h2>Para quem você quer transferir?</h2>
        <input type="text" placeholder="Nome, CPF/CNPJ ou chave Pix" name="destinatarioTransferencia">

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
        
        <a class="d-flex align-content-end avancar" href="transferir2.jsp">
            <img src="../assets/icons/avancar.svg">
        </a>
    </main>

</body>
</html>
