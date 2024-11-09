<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Fundo de Investimento</title>
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
                <a href="aplicar-investimento.jsp?nomeAplicacao=SPS hawk Privado(FFW)&aplicacaoMinima=1000.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">SPS hawk Privado(FFW)</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Último 12 meses</span>
                        <span class="value">+14.56%</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Primeira aplicação</span>
                        <span class="value">R$ 1000,00</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">47 dias úteis</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=Okland Crédito(FFW)&aplicacaoMinima=200.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">Okland Crédito(FFW)</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Último 12 meses</span>
                        <span class="value">+7.44%</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Primeira aplicação</span>
                        <span class="value">R$ 200,00</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">7 dias úteis</span>
                    </div>
                </div>
            </div>

            <div class="investment-card">
                <a href="aplicar-investimento.jsp?nomeAplicacao=FXTX(FFW)&aplicacaoMinima=500.00" class="apply">
                    <img src="../assets/icons/dir.svg">
                </a>
                <h2 class="investment-title">FXTX(FFW)</h2>
                <div class="investment-info">
                    <div class="info-item">
                        <span class="label">Último 12 meses</span>
                        <span class="value">+10.12%</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Primeira aplicação</span>
                        <span class="value">R$ 500,00</span>
                    </div>
                    <div class="info-item">
                        <span class="label">Resgate</span>
                        <span class="value">60 dias úteis</span>
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
