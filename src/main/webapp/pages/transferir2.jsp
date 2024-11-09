<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Transferir2</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/transferir2.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="transferir1.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Transferir</h1>
        </div>
    </header>
    <main>
        <p class="destinatario">Para Pedro Mendes</p>
        <h2>Transferindo R$200,00</h2>

        <div class="pb-5">
            <a href="transferir3.jsp" class="santander d-flex justify-content-around align-items-center m-3">
                <div class="icon d-flex">
                    <img src="../assets/icons/instituicao.svg">
                    <div class="d-flex flex-column ms-2">
                        <p class="fw-bold mb-0">Santander LTDA</p>
                        <p>AG 1 - 00000000 - 5</p>
                    </div>
                </div>
                <img src="../assets/icons/dir.svg">
            </a>
            <a href="transferir-conta.jsp" class="plus d-flex justify-content-around align-items-center m-3">
                <div class="icon d-flex">
                    <img src="../assets/icons/plus.svg">
                    <div class="d-flex flex-column justify-content-center ms-4 pt-2">
                        <p class="fw-bold">Adicionar conta</p>
                    </div>
                </div>
                <img src="../assets/icons/dir.svg">
            </a>
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
