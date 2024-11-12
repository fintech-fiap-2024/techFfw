package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.InvestimentoDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Investimento;
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

@WebServlet ("/investimento")
public class InvestimentoServlet extends HttpServlet {

    private InvestimentoDao dao;
    private UsuarioDao usuarioDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        dao = DaoFactory.getInvestimentoDao();
        usuarioDao = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        Usuario usuario = (Usuario) session.getAttribute("user");

        String tipoInvestimento = req.getParameter("tipoAplicacao");
        double valor = Double.parseDouble(req.getParameter("valorAplicacao"));
        LocalDate data = LocalDate.now();
        Investimento investimento = new Investimento(0, usuario.getId(), tipoInvestimento,"Investimento", valor, data );


        try {
            dao.criarInvestimento(investimento, usuario.getId());
            usuarioDao.realizarSaque(usuario,valor);
        } catch (DBException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect(req.getContextPath() + "/pages/menu.jsp");
    }
}
