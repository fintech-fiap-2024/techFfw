<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    List<ObjetivoFinanceiro> objetivos = user.getObjetivoFinanceiros();
%>

<html>
<head>
    <title>Objetivo Financeiro</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/objetivo-financeiro.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="menu.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Objetivo Financeiro</h1>
        </div>
    </header>
    <main>
        <form class="m-3 m-md-5" action="/techFfw/objetivo" method="post">
            <div class="d-flex flex-column">
                <label class="my-2" for="obj">Descrição do Objetivo</label>
                <textarea id="obj" name="descricao" rows="4" cols="50"></textarea>
            </div>
            <div class="input-container d-flex flex-column">
                <label class="my-2" for="valor">Valor do seu objetivo:</label>
                <input class="p-1 fs-5 rounded-2" type="number" id="valor" name="valor" required>
            </div>
            <div class="input-container d-flex flex-column">
                <label class="my-2" for="data">Prazo do seu objetivo:</label>
                <input class="p-1 fs-5 rounded-2" type="date" id="data" name="data" required>
            </div>
            <div class="d-flex justify-content-center my-4">
                <button class="btn" type="submit">Salvar</button>
            </div>
        </form>
    </main>
    <footer class="rodape d-flex justify-content-around align-items-center">
        <a class="link-footer" href="menu.jsp">
            <img class="img-footer" src="../assets/icons/menu.svg">
        </a>
        <img class="footer-logo ms-2" src="../assets/images/logo.svg">
    </footer>
</body>
</html>
