package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleUsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Usuario;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/deposito")
public class DepositoServlet extends HttpServlet {

    private UsuarioDao dao;

    public DepositoServlet() {
        dao = DaoFactory.getUsuarioDao();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        dao = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double valor = Double.parseDouble(req.getParameter("valor"));

        HttpSession session = req.getSession(false);
        String nome="";
        if (session != null) {
            Usuario usuario = (Usuario) session.getAttribute("user");
            nome = usuario.getNome();

        }

        UsuarioDao userLoggedDAO = new OracleUsuarioDao();
        Usuario userLogged = userLoggedDAO.buscarPorNome(nome);
        try {
            dao.realizarDeposito(userLogged, valor);
            req.setAttribute("depositSuccess", "Deposito de R$"+valor+" realizado com sucesso.");
        } catch (DBException e) {
            req.setAttribute("depositError", "Erro ao depositar.");
            e.printStackTrace();
        }
        req.getRequestDispatcher("pages/menu.jsp").forward(req, resp);



    }
}
