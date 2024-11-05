<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="./resources/css/bootstrap.css">
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="stylesheet" href="./styles/index.css">
</head>
<body>
<img class="img-logo mt-4" src="assets/images/logo.svg">
<h1 class="mt-2 fs-4"><%= "Secure and Simple" %></h1>
<div class="mx-3">
    <h2 class="fw-bold mt-4 fs-4 m-auto">Acesse</h2>
    <p class="my-4">Com e-mail e senha para entrar</p>
    <form action="/enviar" method="POST">
        <div class="input-container">
            <label class="mb-2" for="nome">Digite seu e-mail:</label>
            <input class="p-1 fs-5 rounded-2" type="text" id="nome" name="nome" placeholder="E-mail" required>
        </div>
        <div class="input-container">
            <label class="my-2" for="senha">Digite sua senha:</label>
            <input class="p-1 fs-5 rounded-2" type="password" id="senha" name="senha" placeholder="Senha" required>
        </div>
        <div class="recordar-senha my-2 fs-6">
            <label>
                <input type="checkbox" id="lembrar">
                Lembrar senha
            </label>
            <a class="esqueci-senha" href="#">Esqueci a senha</a>
        </div>
        <div class="botoes my-4">
            <button class="btn" type="submit">Acessar</button>
            <button class="btn" type="submit">Cadastrar</button>
        </div>
    </form>
</div>

<p>Ou acesse com</p>

<a href="hello-servlet">Hello Servlet</a>
</body>
</html>