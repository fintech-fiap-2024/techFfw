package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.TransacaoDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Transacao;
import br.com.fiap.ffw.techffw.model.Usuario;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/transferir")
public class TransferirServlet extends HttpServlet {
    private TransacaoDao dao;
    private UsuarioDao usuarioDao;

    public TransferirServlet() {
        dao = DaoFactory.getTransacaoDao();
        usuarioDao = DaoFactory.getUsuarioDao();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        dao = DaoFactory.getTransacaoDao();
        usuarioDao = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        int userId = 0;
        String nomeRemetente = "";
        Usuario user = (Usuario) session.getAttribute("user");
        userId = user.getId();
        nomeRemetente = user.getNome();


        double valorTransacao = Double.parseDouble(req.getParameter("valorTransacao"));
        String destinatario = req.getParameter("destinatarioTransacao");
        LocalDate data = LocalDate.now();

        Transacao transacao = new Transacao(0, userId, "Transferência Bancária", nomeRemetente, destinatario, valorTransacao, data);

        try {
            dao.criarTransacao(transacao, userId);
            usuarioDao.realizarSaque(user,valorTransacao);//Chamando realizar saque pois o usuario tem que decrementar o saldo
            req.setAttribute("valorTransacao", valorTransacao);
            req.setAttribute("destinatarioTransacao", destinatario);
            req.setAttribute("transferenciaSuccess", "Transferencia realizada com sucesso");
            resp.sendRedirect(req.getContextPath()+"/pages/transferir-aprovado.jsp");
        } catch (DBException e) {
            e.printStackTrace();
            req.setAttribute("transferenciaError", "Erro ao criar transacao");
        }


    }
}
