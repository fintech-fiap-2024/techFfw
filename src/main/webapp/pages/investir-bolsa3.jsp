<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String acaoId = request.getParameter("acaoId");
    String precoPorUnidade = request.getParameter("preco");
    String saldoDisponivel = request.getParameter("saldoDisponivel");
    Usuario usuario = (Usuario) session.getAttribute("user");


    // Adicionar esses valores como atributos para EL (Expression Language)
    request.setAttribute("acaoId", acaoId);
    request.setAttribute("precoPorUnidade", precoPorUnidade);
    request.setAttribute("saldoDisponivel", saldoDisponivel);
%>

<html>
<head>
    <title>Investir Bolsa - Quantidade</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investir-bolsa3.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="investir-bolsa1.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Investir</h1>
        </div>
    </header>
    <main>
        <div class="investir-container">
            <div class="d-flex flex-column align-items-center">
                <h2 class="mt-5 mb-3">Qual o valor que será investido?</h2>
                <p>Saldo disponível de <strong>R$<%=usuario.getSaldo()%></strong></p>
<%--                <p>Saldo disponível de <strong>R$ <%= saldoDisponivel != null ? saldoDisponivel : "0" %></strong></p>--%>
            </div>

            <form action="processar-investimento.jsp" method="post">
                <input type="hidden" name="acaoId" value="${acaoId}">
                <input type="hidden" name="precoPorUnidade" value="${precoPorUnidade}">

               <div class="d-flex flex-column">
                   <label class="ms-2" for="quantidade">Quantidade de ações</label>
                   <input type="number" id="quantidade" name="quantidade" min="1" value="1" oninput="calcularTotal()">
               </div>

                <p class="fw-bold fs-2 ms-2 mt-4">Total</p>
                <p class="fs-3 ms-2" id="total"> <span id="totalValor"><script>document.getElementById("totalValor").innerText = total.toFixed(2).replace('.', ',');</script></span></p>

                <a class="comprar d-flex justify-content-center" href=investir-bolsa3.jsp?acaoId=${acaoId}&preco=${precoPorUnidade}&saldo=<%=usuario.getSaldo()%>">
                    <button class="btn" type="submit">Comprar</button>
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
        function calcularTotal() {
            let precoPorUnidade = parseFloat(document.getElementById("precoPorUnidade"));
            let unidade = parseFloat(document.querySelector('#precoPorUnidade'))
            let preco = document.getElementById("precoPorUnidade")
            let saldo = <%=usuario.getSaldo()%>;

            console.log(precoPorUnidade)
            console.log(unidade)
            console.log(preco)
            console.log(saldo)


            // Capturar a quantidade digitada pelo usuário
            let quantidade = parseInt(document.getElementById("quantidade").value);
            console.log(quantidade)
            // Se a quantidade não for um número válido, define como 0
            if (isNaN(quantidade) || quantidade < 1) {
                quantidade = 0;
            }

            // Calcula o total
            let total = precoPorUnidade * quantidade;
            console.log(total)

            // Atualizar o valor total no frontend
            document.getElementById("totalValor").innerText = total.toFixed(2).replace('.', ',');
        }



        // Garantir que o total seja calculado ao carregar a página
        window.onload = calcularTotal;
    </script>
</body>
</html>
