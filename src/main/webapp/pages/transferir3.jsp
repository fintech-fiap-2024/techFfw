<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page import="br.com.fiap.ffw.techffw.model.Transacao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    Transacao transacao = (Transacao) session.getAttribute("transacao");
    double valor = transacao.getValor();
%>
<html>
<head>
    <title>Comprovante</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir3.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="transferir1.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Comprovante</h1>
        </div>
    </header>
    <main>
        <p class="m-2 fs-3">Transferência concluída!</p>
        <h1 id="valorTransacao" class="m-2">R$<%=valor%></h1>

        <p class="quem">REMETENTE</p>
        <div class="info-remetente">
            <p><span class="fw-bold">Nome: </span> <%= user.getNome()%></p>
            <p><span class="fw-bold">CPF: </span> <%= user.getCpf()%></p>
            <p><span class="fw-bold">Instituição: </span> FFW Fintech</p>
        </div>

        <p class="quem">BENEFICIÁRIO</p>
        <div class="info-beneficiario">
            <p><span class="fw-bold">Nome: </span> <%= transacao.getNomeDestinatario()%></p>
            <p><span class="fw-bold">CPF: </span> ***.456.789-**</p>
            <p><span class="fw-bold">Instituição: </span> Santander LTDA</p>
        </div>
    </main>
    <footer class="rodape d-flex justify-content-around align-items-center">
        <a class="link-footer" href="menu.jsp">
            <img class="img-footer" src="../assets/icons/menu.svg">
        </a>
        <img class="footer-logo ms-2" src="../assets/images/logo.svg">
    </footer>

</body>
</html>
