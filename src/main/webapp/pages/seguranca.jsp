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

<c:set var="headerTitle" value="SEGURANÇA"/>
<%@include file="header.jsp"%>

<div class="d-lg-flex justify-content-evenly">

    <div class="area-confi">
        <a class="area-link d-flex align-items-center text-decoration-none text-dark" href="#">
            <div class=" link-1 icone me-2"><img  class="" width="100" src="../assets/icons/alterar-senha.svg"></div>
            <div class=" link-2 me-2">
                <label class="texto-conf fs-1">Alterar Senha</label>
            </div>
            <div class="link-3"><img class="" width="30" src="../assets/icons/dir.svg"></div>
        </a>
    </div>

    <div class="area-confi">
        <a class="area-link d-flex align-items-center text-decoration-none text-dark" href="#">
            <div class=" link-1 icone me-2"><img  class="" width="100" src="../assets/icons/faceid.svg"></div>
            <div class=" link-2 me-2">
                <label class="texto-conf fs-1">Ativar FaceId</label>
            </div>
            <div class="link-3"><img class="" width="30" src="../assets/icons/dir.svg"></div>
        </a>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>
</html>
