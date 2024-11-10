<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<html>
<head>
    <title>Cadastro</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/cadastro.css">
</head>
<body>
    <div class="container d-flex flex-column flex-lg-row justify-content-evenly">
        <div class="area-logo">
            <img class="img-logo mt-4" src="../assets/images/card.svg">
        </div>


        <div class="area-login mx-2">
            <h2 class="fw-bold fs-4">Cadastre-se</h2>
            <form method="post" action="/techFfw/usuarios">
                <div class="input-container">
                    <label class="mb-2" for="nome">Digite seu nome completo:</label>
                    <input class="p-1 fs-5 rounded-2" type="text" id="nome" name="nome" placeholder="Nome completo" required>
                </div>
                <div class="input-container">
                    <label class="my-2" for="cpf">Digite seu CPF:</label>
                    <input class="p-1 fs-5 rounded-2" type="number" id="cpf" name="cpf" placeholder="CPF" required>
                </div>
                <div class="input-container">
                    <label class="my-2" for="email">Digite seu e-mail:</label>
                    <input class="p-1 fs-5 rounded-2" type="email" id="email" name="email" placeholder="E-mail" required>
                </div>
                <div class="input-container">
                    <label class="my-2" for="senha">Digite sua senha:</label>
                    <input class="p-1 fs-5 rounded-2" type="password" id="senha" name="senha" placeholder="Senha" required>
                </div>
                <div class="d-flex align-items-center">
                    <a href="../index.jsp">
                        <img src="../assets/icons/esq.svg">
                    </a>
                    <input type="hidden" name="acaoUsuario" value="cadastrar">
                    <input class="btn" type="submit" value="Salvar">
                </div>
                <div class="acesse-com-container">
                    <p class="acesse-com">Ou com</p>
                </div>
                <div class="links">
                    <a href="#">
                        <img class="link-img" src="../assets/icons/google.svg">
                    </a>
                    <a href="#">
                        <img class="link-img" src="../assets/icons/facebook.svg">
                    </a>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
