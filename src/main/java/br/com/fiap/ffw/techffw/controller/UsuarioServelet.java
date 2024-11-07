package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Usuario;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import static br.com.fiap.ffw.techffw.util.CriptografiaUtils.criptografar;


@WebServlet("/usuarios")
public class UsuarioServelet extends HttpServlet {

    private UsuarioDao dao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        dao = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String login = req.getParameter("email");
        String senha = req.getParameter("senha");
        String cpf = req.getParameter("cpf");

        Usuario user = new Usuario(0, nome, login, senha, cpf);

        try {
            dao.cadastrar(user);
            req.setAttribute("mensagem", "Usuario cadastrado com sucesso.");
        } catch (DBException e) {
            e.printStackTrace();
            req.setAttribute("erro", "Erro ao cadastrar usuario");
        }
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
