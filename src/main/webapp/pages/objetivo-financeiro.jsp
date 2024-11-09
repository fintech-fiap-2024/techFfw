<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a>
                <img class="logo-img d-md-none" src="../assets/icons/qrcode.svg">
            </a>
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
    <footer class="d-flex justify-content-between align-items-center">
        <img class="footer-logo ms-2" src="../assets/images/logo.svg">
        <a href="menu.jsp">
            <img class="img-footer" src="../assets/icons/menu.svg">
        </a>
        <p class="me-2">© 2024 Todos os <br>direitos reservados</p>

    </footer>
</body>
</html>
