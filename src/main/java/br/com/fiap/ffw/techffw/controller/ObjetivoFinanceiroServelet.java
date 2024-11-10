package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
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

@WebServlet ("/objetivo")
public class ObjetivoFinanceiroServelet extends HttpServlet {

    private ObjetivoFinanceiroDao dao;

    public ObjetivoFinanceiroServelet(){
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
        int userId = 0;
        if(session != null){
            Usuario usuario = (Usuario) session.getAttribute("user");
            userId = usuario.getId();

        }

        String descricao = req.getParameter("descricao");
        double valor = Double.parseDouble(req.getParameter("valor"));
        LocalDate data = LocalDate.parse(req.getParameter("data"));

        ObjetivoFinanceiro objetivo = new ObjetivoFinanceiro(0,userId,descricao,valor,data);

        try {
            dao.criarObjetivo(objetivo, userId);
            req.setAttribute("objetivo", "objetivo cadastrado com sucesso");
            resp.sendRedirect("pages/objetivo-financeiro.jsp");
        }catch (DBException e){
            e.printStackTrace();
            req.setAttribute("msgErro", "erro ao cadastrar objetivo");
        }
    }


}
