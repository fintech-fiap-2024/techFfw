<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    String nome = user.getNome();
%>

<html>
<head>
    <title>Perfil</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/perfil.css">
</head>
<body>
<!--
    to:do = adicionar botão de salvar e voltar ao final de cada sessão o
    bloquear edição do email, pois como é chave primária não seria interessante alterar
-->
<div class="profile-header">
    <div class="profile-icon">
        <a href="URL_DO_DESTINO">
            <img src="../assets/icons/camera.svg" alt="Icone da Câmera">
        </a>
    </div>
    <h1>NOME DO USUÁRIO</h1>
    <p>Ag. xxxx-x - Cc. xxxxx-x</p>
</div>


<div class="container my-4">
    <div class="form-section">
        <h2>DADOS DO USUÁRIO</h2>
        <form>
            <div class="mb-3">
                <label class="form-label readonly-field">Nome:</label>
                <input type="text" class="form-control" placeholder="<%= nome%>"  readonly>
            </div>
            <div class="mb-3">
                <label class="form-label">Sobrenome:</label>
                <input type="text" class="form-control" placeholder="Sobrenome">
            </div>
            <div class="mb-3">
                <label class="form-label">CPF:</label>
                <input type="text" class="form-control" placeholder="CPF">
            </div>
            <div class="mb-3">
                <label class="form-label">E-mail:</label>
                <input type="email" class="form-control" placeholder="E-mail">
            </div>
            <div class="mb-3">
                <label class="form-label">Telefone:</label>
                <input type="tel" class="form-control" placeholder="Telefone">
            </div>
            <div class="mb-3">
                <label class="form-label">Data de Nascimento:</label>
                <input type="date" class="form-control">
            </div>
        </form>
    </div>
</div>

<div class="container my-4">
    <div class="form-section">
        <h2>ENDEREÇO DO USUÁRIO</h2>
        <form>
            <div class="mb-3">
                <label class="form-label">Logradouro:</label>
                <input type="text" class="form-control" placeholder="Logradouro">
            </div>
            <div class="mb-3">
                <label class="form-label">Bairro:</label>
                <input type="text" class="form-control" placeholder="Bairro">
            </div>
            <div class="mb-3">
                <label class="form-label">Cidade:</label>
                <input type="text" class="form-control" placeholder="Cidade">
            </div>
            <div class="mb-3">
                <label class="form-label">Estado:</label>
                <input type="text" class="form-control" placeholder="Estado">
            </div>
            <div class="mb-3">
                <label class="form-label">Número:</label>
                <input type="text" class="form-control" placeholder="Número">
            </div>
            <div class="mb-3">
                <label class="form-label">Cep:</label>
                <input type="text" class="form-control" placeholder="Cep">
            </div>
        </form>
    </div>
</div>

<div class="nav-icons">
    <i class="bi bi-house-door-fill"></i>
    <i class="bi bi-qr-code"></i>
    <i class="bi bi-arrow-left-right"></i>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
