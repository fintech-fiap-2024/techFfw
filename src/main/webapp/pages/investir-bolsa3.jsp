<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String acaoId = request.getParameter("acaoId");
    String precoPorUnidade = request.getParameter("preco");
    String saldoDisponivel = request.getParameter("saldo");
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
                <p>Saldo disponível de <strong>R$${saldoDisponivel}</strong></p>
                <p>Saldo disponível de <strong>R$ <%= saldoDisponivel != null ? saldoDisponivel : "0" %></strong></p>
            </div>

            <form action="processar-investimento.jsp" method="post">
                <input type="hidden" name="acaoId" value="${acaoId}">
                <input type="hidden" name="precoPorUnidade" value="${precoPorUnidade}">

               <div class="d-flex flex-column">
                   <label class="ms-2" for="quantidade">Quantidade de ações</label>
                   <input type="number" id="quantidade" name="quantidade" min="1" value="1" oninput="calcularTotal()">
               </div>

                <p class="fw-bold fs-2 ms-2 mt-4">Total</p>
                <p class="fs-3 ms-2" id="total">R$ <span id="totalValor">${precoPorUnidade}</span></p>

                <a class="comprar d-flex justify-content-center" href=investir-bolsa3.jsp?acaoId=${acaoId}&preco=${precoPorUnidade}&saldo=${saldoDisponivel}">
                    <button class="btn" type="submit">Comprar</button>
                </a>
            </form>
        </div>
    </main>

    <script>
        // Garantir que o valor de precoPorUnidade seja numérico
        console.log(<%= precoPorUnidade %>)
        let precoPorUnidade = parseFloat("<%= precoPorUnidade != null ? precoPorUnidade : '0' %>");

        // Função para calcular o total com base na quantidade de ações
        function calcularTotal() {
            let quantidade = parseInt(document.getElementById("quantidade").value);

            // Se a quantidade não for um número válido, define como 0
            if (isNaN(quantidade) || quantidade < 1) {
                quantidade = 0;
            }

            let total = precoPorUnidade * quantidade;

            // Atualizar o valor total no frontend
            document.getElementById("totalValor").innerText = total.toFixed(2);
        }
    </script
</body>
</html>
