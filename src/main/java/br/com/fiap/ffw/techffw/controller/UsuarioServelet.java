package br.com.fiap.ffw.techffw.controller;

import br.com.fiap.ffw.techffw.dao.EnderecoDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Endereco;
import br.com.fiap.ffw.techffw.model.Usuario;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Objects;


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

        String acaoUsuario = req.getParameter("acaoUsuario");

        if(Objects.equals(acaoUsuario, "cadastrar")) {
            String nome = req.getParameter("nome");
            String login = req.getParameter("email");
            String senha = req.getParameter("senha");
            String cpf = req.getParameter("cpf");

            Usuario user = new Usuario(0, nome, login, senha, cpf);
            String resultado = null;
            try {
                dao.cadastrar(user);
                resultado = "sucesso=true";
            } catch (DBException e) {
                e.printStackTrace();
                resultado = "sucesso=false";
            }
            resp.sendRedirect(req.getContextPath() + "?" + resultado);
        } else if (Objects.equals(acaoUsuario, "alterarEndereco")) {
            HttpSession session = req.getSession();
            Usuario user = (Usuario) session.getAttribute("user");

            String logradouro = req.getParameter("logradouro");
            String numero = req.getParameter("numero");
            String bairro = req.getParameter("bairro");
            String cidade = req.getParameter("cidade");
            String estado = req.getParameter("estado");
            String cep = req.getParameter("cep");

            Endereco endereco = new Endereco(0, user.getId(),logradouro,bairro,cidade,estado,numero,cep);

            EnderecoDao enderecoDao = DaoFactory.getEnderecoDao();
            try {
                enderecoDao.cadastrarEndereco(endereco, user.getId());
                user.setEndereco(endereco);
            } catch (DBException e) {
                throw new RuntimeException(e);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

            resp.sendRedirect(req.getContextPath()+"/pages/menu.jsp");
        } else if (Objects.equals(acaoUsuario, "atualizarDados")) {
            HttpSession session = req.getSession();
            Usuario user = (Usuario) session.getAttribute("user");
            String telefone = req.getParameter("telefone");
            user.setDataNasc(LocalDate.parse(req.getParameter("dataNasc")));

            user.setTelefone(telefone);

            dao.atualizarDados(user);
            resp.sendRedirect(req.getContextPath()+"/pages/menu.jsp");

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
}
