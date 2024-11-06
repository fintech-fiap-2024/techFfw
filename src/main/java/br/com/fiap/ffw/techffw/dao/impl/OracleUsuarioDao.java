package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class OracleUsuarioDao implements UsuarioDao {

    @Override
    public void cadastrar(Usuario usuario) throws DBException {
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "INSERT INTO T_FFW_USUARIO (cod_usuario, nome_completo, login, senha, cpf) VALUES (SQ_TB_USUARIO.NEXTVAL,?,?,?,?)";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getLogin());
            stmt.setString(3, usuario.getSenha());
            stmt.setString(4, usuario.getCpf());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try{
                stmt.close();
                connection.close();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

    @Override
    public void atualizar(Usuario usuario) throws DBException {

    }

    @Override
    public void remover(Usuario usuario) throws DBException {

    }

    @Override
    public Usuario buscarPorNome(String nome) {
        return null;
    }

    @Override
    public List<Usuario> listar() {
        return List.of();
    }
}
