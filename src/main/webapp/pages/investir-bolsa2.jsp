<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Investir Bolsa - Detalhes</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/investir-bolsa2.css">
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
        <div class="detalhes-acao">
            <%
                // Captura o parâmetro "acao" da URL
                String acaoId = request.getParameter("acao");

                // Dados das ações para exibir dinamicamente
                HashMap<String, String[]> acoes = new HashMap<>();
                acoes.put("ITUB4", new String[]{"Itaú Unibanco", "R$ 35,30", "Ação brasileira", "Preferencial"});
                acoes.put("VALE3", new String[]{"Vale", "R$ 61,73", "Ação brasileira", "Ordinária"});
                acoes.put("PTR4", new String[]{"Petrobras", "R$ 35,90", "Ação brasileira", "Ordinária"});
                acoes.put("BBDC4", new String[]{"Banco do Brasil", "R$ 14,93", "Ação brasileira", "Preferencial"});
                acoes.put("B3SA3", new String[]{"B3 Brasil", "R$ 10,71", "Ação brasileira", "Ordinária"});

                // Obtém os detalhes da ação selecionada
                String[] acaoDetalhes = acoes.get(acaoId);
                if (acaoDetalhes == null) {
                    acaoDetalhes = new String[]{"Desconhecido", "N/A", "N/A", "N/A"};
                }
            %>

            <div class="d-flex justify-content-center">
                <%
                    // Mapeia os ícones específicos para cada ação
                    HashMap<String, String> icones = new HashMap<>();
                    icones.put("ITUB4", "itau.svg");
                    icones.put("VALE3", "vale.svg");
                    icones.put("PTR4", "petrobras.svg");
                    icones.put("BBDC4", "banco-do-brasil.svg");
                    icones.put("B3SA3", "b3.svg");

                    // Recupera o nome do ícone com base no acaoId
                    String iconPath = "../assets/icons/" + icones.getOrDefault(acaoId, "default.svg");
                %>
                <img class="icone" src="<%= iconPath %>" alt="Ícone da Ação" onerror="this.src='../assets/icons/default.svg';">
            </div>

            <h2 class="text-center"><%= acaoId %> - <%= acaoDetalhes[0] %></h2>

            <div class="info-acao">
                <p>Preço por unidade</p>
                <p class="preco fw-bold"><%= acaoDetalhes[1] %></p>
            </div>

            <h3>Sobre <%= acaoId %></h3>

            <div class="info-acao d-flex justify-content-between ms-2 me-2">
                <p><span class="fw-bold">Tipo de ativo:</span> </p>
                <p><span><%= acaoDetalhes[2] %></span></p>
            </div>

            <div class="info-acao d-flex justify-content-between ms-2 me-2">
                <p><span class="fw-bold">Tipo de ação:</span> </p>
                <p><span><%= acaoDetalhes[3] %></span></p>
            </div>

            <%
                String saldoDisponivel = request.getParameter("saldo");
                if (saldoDisponivel == null) {
                    saldoDisponivel = "0";
                }
            %>

            <a class="comprar d-flex justify-content-center" href="investir-bolsa3.jsp?acaoId=<%= acaoId %>&preco=<%= acaoDetalhes[1] %>&saldo=<%= saldoDisponivel %>">
                <button class="btn" type="submit">Continuar</button>
            </a>
        </div>
    </main>
</body>
</html>
