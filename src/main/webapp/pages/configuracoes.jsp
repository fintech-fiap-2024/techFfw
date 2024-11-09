<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Configuração</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/confi.css">

</head>
<body>
    <header class="d-flex header">
        <a href="menu.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1 class="fs-1">CONFIGURAÇÕES</h1>
    </header>

    <div class="d-lg-flex justify-content-evenly">
        <div class="area-confi">
            <a class="area-link d-flex align-items-center text-decoration-none text-dark" href="./perfil.jsp">
                <div class=" link-1 icone me-2"><img  width="60"  src="../assets/icons/dados-pessoais.svg"></div>
                <div class=" link-2 me-2">
                    <label class="texto-conf fs-1">Dados Pesoais</label>
                    <br>
                    <label class="texto-conf fs-2">Informações gerais do usuário</label>
                </div>
                <div class="link-3"><img class="" width="20" src="../assets/icons/dir.svg"></div>
            </a>
        </div>
        <div class="area-confi">
            <a class="area-link d-flex align-items-center text-decoration-none text-dark" href="./seguranca.jsp">
                <div class=" link-1 icone me-2"><img  width="60" src="../assets/icons/seguranca.svg"></div>
                <div class=" link-2 me-2">
                    <label class="texto-conf fs-1">Segurança</label>
                    <br>
                    <label class="texto-conf fs-2">Informações gerais do usuário</label>
                </div>
                <div class="link-3"><img class="" width="20" src="../assets/icons/dir.svg"></div>
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>
</html>
