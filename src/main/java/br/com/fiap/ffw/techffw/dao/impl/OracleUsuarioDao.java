package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.EnderecoDao;
import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Endereco;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;
import br.com.fiap.ffw.techffw.model.Usuario;


import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static br.com.fiap.ffw.techffw.util.CriptografiaUtils.criptografar;


public class OracleUsuarioDao implements UsuarioDao {
    private Connection conexao;

    @Override
    public boolean validarUsuario(Usuario usuario) {

        PreparedStatement stmt = null;
        ResultSet rs = null;

        System.out.println("Buscando usuario: " + usuario.getLogin() + " senha: " + usuario.getSenha());

        try {
            conexao = ConnectionManager.getInstance().getConnection();
            String sql = "SELECT * FROM T_FFW_USUARIO WHERE login = ? AND senha = ?";

            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, usuario.getLogin());
            stmt.setString(2, usuario.getSenha());
            rs = stmt.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                stmt.close();
                rs.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public void cadastrar(Usuario usuario) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "INSERT INTO T_FFW_USUARIO (cod_usuario, nome_completo, login, senha, cpf, telefone, data_nasc) VALUES (SQ_TB_USUARIO.NEXTVAL,?,?,?,?,?,?)";

        System.out.println("Adicionando usuario: " + usuario.getLogin() + " senha: " + usuario.getSenha());

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getLogin());
            stmt.setString(3, usuario.getSenha());
            stmt.setString(4, usuario.getCpf());
            stmt.setString(5, "00000000");
            stmt.setDate(6, new java.sql.Date(new Date().getTime()));
            stmt.executeUpdate();

            System.out.println("Usuario registrado com sucesso");

        } catch (SQLException e) {
            throw new DBException(e);
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void atualizar(Usuario usuario) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "UPDATE T_FFW_USUARIO SET " +
                "nome_completo = ?, login = ?, senha = ?, cpf = ? WHERE cod_usuario = ?";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getLogin());
            stmt.setString(3, usuario.getSenha());
            stmt.setString(4, usuario.getCpf());
            stmt.setInt(5, usuario.getId());
            stmt.executeUpdate();

            System.out.println("Usuário atualizado com sucesso");


        } catch (SQLException e) {
            e.printStackTrace();
            throw new DBException("Erro ao atualizar usuario.");
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void atualizarSenha(Usuario usuario, String novaSenha){
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "UPDATE T_FFW_USUARIO SET " +
                "senha = ? WHERE cod_usuario = ?";


        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, novaSenha);
            stmt.setInt(2, usuario.getId());
            stmt.executeUpdate();

            System.out.println("Senha atualizada com sucesso");


        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void remover(int id) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "DELETE FROM T_FFW_USUARIO WHERE cod_usuario = ?";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            System.out.println("Usuário removido com sucesso");

        } catch (SQLException e) {
            e.printStackTrace();
            throw new DBException("Erro ao remover usuario.");
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public Usuario buscarPorNome(String nome) {
        Usuario user = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        Connection connection = ConnectionManager.getInstance().getConnection();

        try {
            String sql = "SELECT * FROM T_FFW_USUARIO WHERE login = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nome);
            rs = stmt.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("cod_usuario");
                String nomeCompleto = rs.getString("nome_completo");
                String login = rs.getString("login");
                String senha = rs.getString("senha");
                String cpf = rs.getString("cpf");
                double saldo = rs.getDouble("saldo");
                String telefone = rs.getString("telefone");
                LocalDate dataNasc = rs.getDate("data_nasc").toLocalDate();
                user = new Usuario(id, nomeCompleto, login, senha, cpf,saldo, telefone, dataNasc);

                ObjetivoFinanceiroDao objetivoFinanceiroDao = DaoFactory.getObjetivoFinanceiroDao();
                List<ObjetivoFinanceiro> objetivoFinanceiros = objetivoFinanceiroDao.buscarObjetivos(id);
                user.setObjetivoFinanceiros(objetivoFinanceiros);

                EnderecoDao enderecoDao = DaoFactory.getEnderecoDao();
                Endereco temp = enderecoDao.buscarEndereco(user.getId());
                user.setEndereco(temp);

                System.out.println("Usuário encontrado com sucesso");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (DBException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                stmt.close();
                rs.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user;
    }

    @Override
    public List<Usuario> listar() {
        List<Usuario> usuarios = new ArrayList<Usuario>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        Connection connection = ConnectionManager.getInstance().getConnection();

        try {
            String sql = "SELECT * FROM T_FFW_USUARIO";
            stmt = connection.prepareStatement(sql);
            rs = stmt.executeQuery();
            System.out.println("Busca realizada com sucesso");


            while (rs.next()) {
                int id = rs.getInt("cod_usuario");
                String nomeCompleto = rs.getString("nome_completo");
                String login = rs.getString("login");
                String senha = rs.getString("senha");
                String cpf = rs.getString("cpf");
                Usuario usuario = new Usuario(id, nomeCompleto, login, senha, cpf);
                usuarios.add(usuario);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                rs.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return usuarios;
    }

    @Override
    public void realizarSaque(Usuario usuario, double valor) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "UPDATE T_FFW_USUARIO SET " +
                "saldo = saldo - ? WHERE cod_usuario = ?";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setDouble(1, valor);
            stmt.setInt(2, usuario.getId());
            stmt.executeUpdate();

            usuario.decrementarSaldo(valor);

            System.out.println("Saque realizado com sucesso");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void realizarDeposito(Usuario usuario, double valor) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "UPDATE T_FFW_USUARIO SET " +
                "saldo = saldo + ? WHERE cod_usuario = ?";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setDouble(1, valor);
            stmt.setInt(2, usuario.getId());
            stmt.executeUpdate();

            usuario.incrementarSaldo(valor);

            System.out.println("Deposito realizado com sucesso");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
