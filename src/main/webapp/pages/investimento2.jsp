<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Investimento LCA/LCI</title>
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
                <a href="aplicar-investimento.jsp?nomeAplicacao=LCI 3 anos&aplicacaoMinima=100.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">LCI 3 anos</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">94.5% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">No vencimento</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 100,00</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=LCA&aplicacaoMinima=500.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">LCA</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">100% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">Em 15 dias úteis</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 500,00</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=LCI 3 meses&aplicacaoMinima=5.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">LCI 3 meses</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">100% CDI</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">No vencimento</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 5,00</span>
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
