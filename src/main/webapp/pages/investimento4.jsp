<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Investimento tesouro direto</title>
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
                <a href="aplicar-investimento.jsp?nomeAplicacao=Selic 5 anos&aplicacaoMinima=354.55" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">Selic 5 anos</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">0.13% ao ano</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">No vencimento</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 354,55</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=IPCA 3 anos&aplicacaoMinima=47.10" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">IPCA 3 anos</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">6.75% ao ano</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">No vencimento</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 47,10</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=IPCA + 1 ano&aplicacaoMinima=150.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">IPCA + 1 ano</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Rentabilidade</span>
                        <span class="value">5.49% ao ano</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">No vencimento</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Aplicação mínima</span>
                        <span class="value">R$ 150,00</span>
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
