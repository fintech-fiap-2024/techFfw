<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page import="br.com.fiap.ffw.techffw.model.Endereco" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    String nome = user.getNome();
    Endereco endereco = null;
    if(user.getEndereco()!=null){
        endereco = user.getEndereco();
    }
%>

<html>
<head>
    <title>Perfil</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/perfil.css">
</head>
<body>
    <div class="profile-header">
        <div class="profile-icon">
            <a href="URL_DO_DESTINO">
                <img src="../assets/icons/camera.svg" alt="Icone da Câmera">
            </a>
        </div>
        <h1><%=nome%></h1>
        <p>Ag. 1234-5 - Cc. 12345-6</p>
    </div>
    <div class="container my-4">
        <div class="form-section">
            <h2>DADOS DO USUÁRIO</h2>
            <form action="" method="post">
                <div class="mb-3">
                    <label class="form-label">Nome:</label>
                    <label><%= nome%></label>
                    <input type="hidden" class="form-control" placeholder="<%= nome%>">
                </div>
                <div class="mb-3">
                    <label class="form-label">CPF:</label>
                    <label><%= user.getCpf()%></label>
                    <input type="hidden" class="form-control" placeholder="CPF">
                </div>
                <div class="mb-3">
                    <label class="form-label">E-mail:</label>
                    <label><%= user.getLogin()%></label>
                    <input type="hidden" class="form-control" placeholder="E-mail">
                </div>
                <div class="mb-3">
                    <label class="form-label">Telefone:</label>
                    <input type="tel" class="form-control" placeholder="Telefone">
                </div>
                <div class="mb-3">
                    <label class="form-label">Data de Nascimento:</label>
                    <input type="date" class="form-control">
                </div>
                <button class="btn">Salvar Dados</button>
            </form>
        </div>
    </div>

    <div class="container my-4">
        <div class="form-section">
            <h2>ENDEREÇO DO USUÁRIO</h2>
            <form action="/techFfw/usuarios" method="post">
                <div class="mb-3">
                    <label class="form-label">Logradouro:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getLogradouro() : "Logradouro" %>" name="logradouro">
                </div>
                <div class="mb-3">
                    <label class="form-label">Bairro:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getNomeBairro() : "Bairro" %>" name="bairro">
                </div>
                <div class="mb-3">
                    <label class="form-label">Cidade:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getNomeCidade() : "Cidade" %>" name="cidade">
                </div>
                <div class="mb-3">
                    <label class="form-label">Estado:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getNomeEstado() : "Estado" %>" name="estado">
                </div>
                <div class="mb-3">
                    <label class="form-label">Número:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getNumeroCasa() : "Número" %>" name="numero">
                </div>
                <div class="mb-3">
                    <label class="form-label">Cep:</label>
                    <input type="text" class="form-control" placeholder="<%= endereco!=null ? endereco.getCep() : "CEP" %>" name="cep">
                </div>
                <input type="hidden" name="acaoUsuario" value="alterarEndereco">
                <button class="btn">Atualizar Endereço</button>
            </form>
        </div>
    </div>
    <p class="dir-reservados">© 2024 Todos os direitos reservados</p>
    <footer>
        <div class="rodape d-flex justify-content-between align-items-center">
            <a class="link-footer" href="menu.jsp">
                <img class="img-footer" src="../assets/icons/menu.svg">
            </a>
            <img class="footer-logo ms-2" src="../assets/images/logo.svg">
        </div>
    </footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
