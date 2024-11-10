<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String nomeAplicacao = request.getParameter("nomeAplicacao"); // Recebe o nome da aplicação da página anterior
    String aplicacaoMinima = request.getParameter("aplicacaoMinima"); // Recebe o valor mínimo de aplicação
    session.setAttribute("nomeAplicacao",nomeAplicacao);
    Usuario usuario = (Usuario) session.getAttribute("user");

%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplicação - <%= nomeAplicacao %></title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/aplicar-investimento.css">
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
        <div class="container">
            <h1><%= nomeAplicacao %></h1>
            <form action="/techFfw/investimento" method="post">
                <label for="valorAplicacao">Valor para aplicar:</label>
                <input type="number" id="valorAplicacao" name="valorAplicacao" placeholder="Mínimo: R$ <%= aplicacaoMinima %>" step="0.01" oninput="validarAplicacao()" required>
                <input type="hidden" id="aplicacaoMinima" value="<%= aplicacaoMinima %>">
                <input type="hidden" name="tipoAplicacao" value="<%=nomeAplicacao%>">
                <a class="transferir d-flex justify-content-center" >
                    <button class="btn disabled" type="submit" id="aplicar" disabled>Aplicar</button>
                </a>
            </form>
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

    <script>
        function validarAplicacao() {
            const valorAplicacao = document.getElementById("valorAplicacao").value;
            const aplicacaoMinima = document.getElementById("aplicacaoMinima").value;
            const botaoAplicar = document.getElementById("aplicar");
            const saldo=<%=usuario.getSaldo()%>;


            if (parseFloat(valorAplicacao) >= parseFloat(aplicacaoMinima) &&(parseFloat(valorAplicacao)<saldo)) {
                botaoAplicar.disabled=false;
                botaoAplicar.classList.remove("disabled");
            }else{
                botaoAplicar.disabled=true;
                botaoAplicar.classList.add("disabled");
            }

        }
    </script>
</body>
</html>