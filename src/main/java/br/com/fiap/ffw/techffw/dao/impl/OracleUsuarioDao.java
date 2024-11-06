package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Usuario;

import java.sql.*;
import java.util.ArrayList;
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

            System.out.println("Usuário registrado com sucesso");

        } catch (SQLException e) {
            throw new DBException(e);
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
        PreparedStatement stmt = null;

        Connection connection = ConnectionManager.getInstance().getConnection();
        String sql = "UPDATE T_FFW_USUARIO SET "+
                "nome_completo = ?, login = ?, senha = ?, cpf = ? WHERE cod_usuario = ?";

        try{
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getLogin());
            stmt.setString(3, usuario.getSenha());
            stmt.setString(4, usuario.getCpf());
            stmt.setInt(5, usuario.getId());
            stmt.executeUpdate();

            System.out.println("Usuário atualizado com sucesso");


        }catch (SQLException e){
            e.printStackTrace();
            throw new DBException("Erro ao atualizar usuario.");
        } finally {
            try{
                stmt.close();
                connection.close();
            }catch (SQLException e){
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
            try{
                stmt.close();
                connection.close();
            } catch (SQLException e){
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

        try{
            String sql = "SELECT * FROM T_FFW_USUARIO WHERE nome_completo = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nome);
            rs = stmt.executeQuery();

            if(rs.next()){
                int id = rs.getInt("cod_usuario");
                String nomeCompleto = rs.getString("nome_completo");
                String login = rs.getString("login");
                String senha = rs.getString("senha");
                String cpf = rs.getString("cpf");
                user = new Usuario(id, nomeCompleto, login, senha, cpf);
                System.out.println("Usuário encontrado com sucesso");

            }

        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try {
                stmt.close();
                rs.close();
                connection.close();
            }catch (SQLException e){
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

        try{
            String sql = "SELECT * FROM T_FFW_USUARIO";
            stmt = connection.prepareStatement(sql);
            rs = stmt.executeQuery();
            System.out.println("Busca realizada com sucesso");


            while (rs.next()){
                int id = rs.getInt("cod_usuario");
                String nomeCompleto = rs.getString("nome_completo");
                String login = rs.getString("login");
                String senha = rs.getString("senha");
                String cpf = rs.getString("cpf");
                Usuario usuario = new Usuario(id, nomeCompleto, login, senha, cpf);
                usuarios.add(usuario);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try{
                stmt.close();
                rs.close();
                connection.close();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
        return usuarios;
    }
}
