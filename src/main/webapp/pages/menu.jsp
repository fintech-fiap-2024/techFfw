<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    double saldo = user.getSaldo();
    float limiteDisponivel = user.getLimiteDisponivel();
    double faturaAtual = 1500.00;

%>

<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/menu.css">
</head>
<body>
    <header>
        <img class="img-logo" src="../assets/images/logo.svg">
        <h1 class="fs-5">Olá, <%= user != null ? user.getNome() : "Visitante"%></h1>
        <div class="header-icons">
            <a class="header-icon" href="../pages/configuracoes.jsp">
                <img src="../assets/icons/configurar.svg">
            </a>
            <a class="header-icon" href="../index.jsp">
                <img src="../assets/icons/sair.svg">
            </a>
        </div>
    </header>
    <main>

        <div class="saldo">
            <p>Saldo</p>
            <img src="../assets/icons/olho-branco.svg">
        </div>
        <p class="valor">$ <%=saldo%></p>
        <div class="menu-icons d-flex flex-row justify-content-between justify-content-lg-around">
            <div class="d-flex flex-column align-items-center">
                <a class="menu-icon" href="movimentos.jsp">
                    <img src="../assets/icons/movimentos.svg">
                </a>
                <p>Movimentos</p>
            </div>
            <div class="d-flex flex-column align-items-center">
                <a class="menu-icon" href="transferir1.jsp">
                    <img src="../assets/icons/transferir.svg">
                </a>
                <p>Transferir</p>
            </div>
            <div class="d-flex flex-column align-items-center">
                <a class="menu-icon" href="depositar.jsp">
                    <img src="../assets/icons/depositar.svg">
                </a>
                <p>Depositar</p>
            </div>
            <div class="d-flex flex-column align-items-center">
                <a class="menu-icon" href="investir.jsp">
                    <img src="../assets/icons/investir.svg">
                </a>
                <p>Investir</p>
            </div>
        </div>
        <a class="meu-cartao" href="cartao.jsp">
            <img src="../assets/icons/cartao.svg">
            <p>Meus cartões</p>
        </a>
        <div class="cartao-credito">
            <p class="titulo">Cartão de Crédito</p>
            <p>Fatura atual</p>
            <p class="valor-fatura">R$<%=faturaAtual%></p>
            <p class="limite">Limite disponível de R$ <%=limiteDisponivel%></p>
            <p class="proximo-pagamento">Próximo pagamento: <%=user.getProximoPagamento()%></p>
            <hr>
        </div>
        <a href="objetivo-financeiro.jsp" class="investimentos">
            <img src="../assets/icons/investimentos.svg">
            <p>Objetivo Financeiro</p>
        </a>
        <p class="novas-funcionalidades">Novas funcionalidades</p>
        <div class="d-md-flex flex-md-row align-items-md-center justify-content-around mb-md-5">
            <img class="calendario text-lg-end" src="../assets/images/calendar.svg">
            <p class="fs-4">Programe compromissos <br> diretamente na agenda <strong>FFW</strong></p>
        </div>
        <div class="d-md-flex flex-md-row align-items-md-center justify-content-around">
            <p class="fs-4 mt-2 text-end">Visualize relatórios <br> de desempenho por projeto</p>
            <img class="relatorio" src="../assets/images/relatorios.svg">
        </div>
    </main>
</body>
</html>
