<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String nomeAplicacao = request.getParameter("nomeAplicacao"); // Recebe o nome da aplicação da página anterior
    String aplicacaoMinima = request.getParameter("aplicacaoMinima"); // Recebe o valor mínimo de aplicação
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
            <form action="investir-aprovado.jsp" method="post" onsubmit="return validarAplicacao()">
                <label for="valorAplicacao">Valor para aplicar:</label>
                <input type="number" id="valorAplicacao" name="valorAplicacao" placeholder="Mínimo: R$ <%= aplicacaoMinima %>" required>
                <input type="hidden" id="aplicacaoMinima" value="<%= aplicacaoMinima %>">
                <a class="transferir d-flex justify-content-center" >
                    <button class="btn" type="submit">Aplicar</button>
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

            if (parseFloat(valorAplicacao) < parseFloat(aplicacaoMinima)) {
                alert("O valor para aplicar deve ser maior ou igual ao mínimo: R$ " + aplicacaoMinima);
                return false;
            }
            return true;
        }
    </script>
</body>
</html>