<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    double saldo = user.getSaldo();
%>

<html>
<head>
    <title>Investir</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investir.css">

</head>
<body>
    <header class="d-flex">
        <a href="menu.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1>Investir</h1>
    </header>
    <main>
        <div>
            <p class="saldo">Saldo disponível de <span class="saldo-valor">R$<%=saldo%></span></p>
            <p class="texto-investir">Recomendações de investimento</p>
        </div>
        <div class="grid-links">
            <a href="investimento1.jsp" class="link">CDB</a>
            <a href="investimento2.jsp" class="link">LCI e LCA</a>
            <a href="investimento3.jsp" class="link">Fundo de Invest.</a>
            <a href="investimento4.jsp" class="link">Tesouro Direto</a>
            <a href="investir-bolsa1.jsp" class="link">Bolsa de Valores</a>
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
