<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Segurança</title>
  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <link rel="stylesheet" href="../styles/style.css">
  <link rel="stylesheet" href="../styles/confi.css">
</head>
<body>
    <header class="d-flex header">
        <a href="configuracoes.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1 class="titulo">SEGURANÇA</h1>
    </header>
    <div class="d-lg-flex justify-content-evenly">

        <div class="area-confi">
            <a class="area-link d-flex align-items-center text-decoration-none text-dark"  href="./mudar-senha.jsp">
                <div class=" link-1 icone me-1"><img   width="40" src="../assets/icons/alterar-senha.svg"></div>
                <div class=" link-2 me-1">
                    <label class="texto-conf fs-2">Alterar Senha</label>
                </div>
                <div class="link-3"><img class="" width="12" src="../assets/icons/dir.svg"></div>
            </a>
        </div>

        <div class="area-confi">
            <a class="area-link d-flex align-items-center text-decoration-none text-dark" href="#">
                <div class=" link-1 icone me-1"><img width="40"  src="../assets/icons/faceid.svg"></div>
                <div class=" link-2 me-1">
                    <label class="texto-conf fs-2">Ativar FaceId</label>
                </div>
                <div class="fs-3 form-check form-switch">
                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                </div>
            </a>
        </div>
    </div>
</body>
</html>
