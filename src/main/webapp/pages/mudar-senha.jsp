<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Mudar Senha</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/altera-senha.css"> <!-- Link para o CSS externo -->
</head>
<body>
    <header class="d-flex header">
        <a href="seguranca.jsp">
            <img class="voltar" src="../assets/icons/esq.svg">
        </a>
        <h1 class="fs-1">ALTERAR SENHA</h1>
    </header>
    <div class="area-form">
        <form action="/techFfw/atualizarSenha" method="post">
            <div class=" d-flex flex-column justify-content-center align-items-center">
                <label class="label-altera" for="senha">Digite a nova senha</label>
                <input  class="input-altera" type="text" id="senha" name="novaSenha" placeholder="Nova senha" required>
            </div>
            <div class="d-flex flex-column justify-content-center align-items-center">
                <button class="btn botao-altera" type="submit">Salvar</button>
            </div>
        </form>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>

</html>

