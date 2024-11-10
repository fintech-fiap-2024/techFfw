<%@ page import="br.com.fiap.ffw.techffw.model.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Usuario user = (Usuario) session.getAttribute("user");
    List<ObjetivoFinanceiro> objetivos = (List<ObjetivoFinanceiro>) session.getAttribute("objetivoFinanceiroList");

%>

<html>
<head>
    <title>Objetivo Financeiro</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/objetivo-financeiro.css">
</head>
<body>
    <header>
        <div class="menu-header">
            <a href="menu.jsp">
                <img class="voltar" src="../assets/icons/esq.svg">
            </a>
            <h1>Objetivo Financeiro</h1>
        </div>
    </header>
    <main>
        <form class="m-3 m-md-5" action="/techFfw/objetivo" method="post">
            <div class="d-flex flex-column">
                <label class="my-2" for="obj">Descrição do Objetivo</label>
                <textarea id="obj" name="descricao" rows="4" cols="50" maxlength="50"></textarea>
            </div>
            <div class="input-container d-flex flex-column">
                <label class="my-2" for="valor">Valor do seu objetivo:</label>
                <input class="p-1 fs-5 rounded-2" type="number" id="valor" name="valor" required>
            </div>
            <div class="input-container d-flex flex-column">
                <label class="my-2" for="data">Prazo do seu objetivo:</label>
                <input class="p-1 fs-5 rounded-2" type="date" id="data" name="data" required>
            </div>
            <input name="acao" value="cadastrar" type="hidden">
            <div class="d-flex justify-content-center my-4">
                <button class="btn" type="submit">Salvar</button>
            </div>
        </form>
        <div id="objetivos-container">
            <c:forEach items="${objetivoFinanceiroList}" var="objetivo">
                <div class="d-flex flex-row align-items-center justify-content-around m-3 m-md-5">
                    <p class="objetivo-text"><span id="meuParagrafo"> ${objetivo.descricaoObjetivo} </span>|<span class="valor-obj"> R$ ${objetivo.valorObjetivo} </span>| ${objetivo.dataObjetivo}</p>
                    <form action="/techFfw/objetivo" method="post">
                        <input name="acao" value="excluir" type="hidden">
                        <input name="idObjetivo" value="${objetivo.codObjetivo}" type="hidden">
                        <button class="btn-obj" type="submit">
                            <img src="../assets/icons/lixeira.svg">
                        </button>
                    </form>
                </div>
                <p class="align-items-center justify-content-around"></p>
            </c:forEach>
        </div>
    </main>
    <div
            class="modal fade"
            id="excluirModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1
                            class="modal-title fs-5"
                            id="exampleModalLabel">
                        Confirmar Exclusão
                    </h1>
                    <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Você confirma a exclusão deste produto?</h4>
                    <p><strong>Atenção!</strong> Esta ação é irreversível.</p>
                </div>
                <div class="modal-footer">

                    <form action="produtos" method="post">
                        <input
                                type="hidden"
                                name="acao"
                                value="excluir">
                        <input
                                type="hidden"
                                name="codigoExcluir"
                                id="codigoExcluir">
                        <button
                                type="button"
                                class="btn btn-secondary"
                                data-bs-dismiss="modal">
                            Não
                        </button>
                        <button
                                type="submit"
                                class="btn btn-danger">
                            Sim
                        </button>
                    </form>

                </div>
            </div>
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
    <script>
        function quebrarParagrafo(elemento, maxCaracteres) {
            let texto = elemento.textContent;
            let palavras = texto.split('');
            let linhaAtual = '';

            for (let i = 0; i < palavras.length; i++) {
                linhaAtual += palavras[i];
                if ((i + 1) % maxCaracteres === 0) {
                    elemento.innerHTML += linhaAtual + '<br>';
                    linhaAtual = '';
                }
            }

            if (linhaAtual) {
                elemento.innerHTML += linhaAtual;
            }
        }

        quebrarParagrafo(document.getElementById('meuParagrafo'), 24);
    </script>
</body>
</html>
