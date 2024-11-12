package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.UsuarioDao;
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
import java.security.NoSuchAlgorithmException;

import static br.com.fiap.ffw.techffw.util.CriptografiaUtils.criptografar;

@WebServlet ("/atualizarSenha")
public class AtualizarSenhaServelet extends HttpServlet {
    private UsuarioDao usuarioDao;

    public AtualizarSenhaServelet() {
        usuarioDao = DaoFactory.getUsuarioDao();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        usuarioDao = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        Usuario user = (Usuario) session.getAttribute("user");
        String senha = req.getParameter("novaSenha");

        try {
            senha = criptografar(senha);
            usuarioDao.atualizarSenha(user, senha);
            user.setSenha(senha);
            session.setAttribute("usuario", user);
            session.setAttribute("senhaAlterada","Senha alterada com sucesso");
            resp.sendRedirect(req.getContextPath() + "/pages/menu.jsp");
        } catch (RuntimeException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }
}
