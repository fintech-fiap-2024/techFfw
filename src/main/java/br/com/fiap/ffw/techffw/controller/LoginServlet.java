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

@WebServlet ("/login")
public class LoginServlet extends HttpServlet {

    private UsuarioDao user;

    public LoginServlet() {
        user = DaoFactory.getUsuarioDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("email");
        String password = req.getParameter("senha");

        Usuario temp = new Usuario(username, password);

        if(user.validarUsuario(temp)) {
            HttpSession session = req.getSession();
            session.setAttribute("user", username);
            resp.sendRedirect("perfil.jsp");
        }else {
            req.setAttribute("erro","Usuario e/ou senha incorretos");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }


    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }
}