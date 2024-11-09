<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Investimento CDB</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investimento1.css">

</head>
<body>
    <header>
        <div class="menu-header">
            <a href="investir.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Investir</h1>
        </div>
    </header>
    <main>
        <div class="container my-4">
            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=CDB Limite Garantido&aplicacaoMinima=30.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">CDB Limite Garantido</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">103.5% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">Disponibilidade Diária</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 30,00</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=CDB Pós-fixada&aplicacaoMinima=10.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">CDB Pós-fixada</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">105.5% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">Em 2 dias úteis</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 10,00</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=CDB Resgate Automático&aplicacaoMinima=3000.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">CDB Resgate Automático</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">100% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">Disponibilidade Diária</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 3000,00</span>
                    </div>
                </div>
            </div>
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
