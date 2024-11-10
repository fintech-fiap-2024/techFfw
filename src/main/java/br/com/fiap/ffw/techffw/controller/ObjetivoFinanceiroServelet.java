package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;
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
import java.util.List;
import java.util.Objects;

@WebServlet("/objetivo")
public class ObjetivoFinanceiroServelet extends HttpServlet {

    private ObjetivoFinanceiroDao dao;

    public ObjetivoFinanceiroServelet() {
        dao = DaoFactory.getObjetivoFinanceiroDao();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        dao = DaoFactory.getObjetivoFinanceiroDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        String acao = req.getParameter("acao");

        int userId = 0;

        Usuario usuario = (Usuario) session.getAttribute("user");
        userId = usuario.getId();



        if (Objects.equals(acao, "cadastrar")) {

            String descricao = req.getParameter("descricao");
            double valor = Double.parseDouble(req.getParameter("valor"));
            LocalDate data = LocalDate.parse(req.getParameter("data"));

            ObjetivoFinanceiro objetivo = new ObjetivoFinanceiro(0, userId, descricao, valor, data);

            try {
                dao.criarObjetivo(objetivo, userId);
                req.setAttribute("objetivo", "objetivo cadastrado com sucesso");
                resp.sendRedirect("pages/objetivo-financeiro.jsp");
            } catch (DBException e) {
                e.printStackTrace();
                req.setAttribute("msgErro", "erro ao cadastrar objetivo");
            }
        }else if(Objects.equals(acao, "excluir")) {
            int idObjetivo = Integer.parseInt(req.getParameter("idObjetivo"));
            try {
                dao.remover(idObjetivo);
                usuario.removerObjetivo(idObjetivo);
                resp.sendRedirect("pages/menu.jsp");
            } catch (DBException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Usuario user = (Usuario) req.getSession().getAttribute("user");
        HttpSession session = req.getSession(false);
        int userId = user.getId();
        try {
            List<ObjetivoFinanceiro> objetivoFinanceiroList = dao.buscarObjetivos(userId);
            session.setAttribute("objetivoFinanceiroList", objetivoFinanceiroList);
            resp.sendRedirect("pages/objetivo-financeiro.jsp");
        } catch (DBException e) {
            throw new RuntimeException(e);
        }
    }
}
