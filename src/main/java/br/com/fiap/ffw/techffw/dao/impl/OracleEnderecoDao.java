package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.EnderecoDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Endereco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OracleEnderecoDao implements EnderecoDao {

    private Connection connection;

    @Override
    public void criarEndereco(Endereco endereco) throws DBException {
        PreparedStatement stmt = null;

        connection = ConnectionManager.getInstance().getConnection();

        try {
            String sql = "INSERT INTO T_FFW_ENDERECO (id_usuario, cod_endereco, logradouro, bairro, cidade, estado, numero, cep) "+
                    "VALUES (?,SQ_TB_ENDERECO.NEXTVAL,?,?,?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1,endereco.getCodUsuario());
            stmt.setString(2,endereco.getLogradouro());
            stmt.setString(3,endereco.getNomeBairro());
            stmt.setString(4,endereco.getNomeCidade());
            stmt.setString(5,endereco.getNomeEstado());
            stmt.setString(6,endereco.getNumeroCasa());
            stmt.setString(7,endereco.getCep());
            stmt.executeUpdate();

            System.out.println("Endereco criado com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private boolean existeEndereco(int userId) throws DBException {
        String sql = "SELECT * FROM T_FFW_ENDERECO WHERE id_usuario = ?";
        try {
            connection = ConnectionManager.getInstance().getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public void cadastrarEndereco(Endereco endereco,int userId) throws DBException {
        if(existeEndereco(userId)){
            atualizarEndereco(endereco);
        }else{
            criarEndereco(endereco);
        }
    }

    @Override
    public void atualizarEndereco(Endereco endereco) throws DBException {
        PreparedStatement stmt = null;

        connection = ConnectionManager.getInstance().getConnection();

        try {
            String sql = "UPDATE T_FFW_ENDERECO SET logradouro=? , bairro =?, cidade =?, estado = ?, numero =?, cep = ?"+
                    " WHERE cod_endereco = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1,endereco.getLogradouro());
            stmt.setString(2,endereco.getNomeBairro());
            stmt.setString(3,endereco.getNomeCidade());
            stmt.setString(4,endereco.getNomeEstado());
            stmt.setString(5,endereco.getNumeroCasa());
            stmt.setString(6,endereco.getCep());
            stmt.setInt(7,endereco.getCodEndereco());
            stmt.executeUpdate();

            System.out.println("Endereco atualizado com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                stmt.close();
                connection.close();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public Endereco buscarEndereco(int userId) throws DBException{
        PreparedStatement stmt = null;

        connection = ConnectionManager.getInstance().getConnection();
        Endereco endereco = null;
        try {
            String sql = "SELECT * FROM T_FFW_ENDERECO WHERE id_usuario = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                String logradouro = rs.getString("logradouro");
                String bairro = rs.getString("bairro");
                String cidade = rs.getString("cidade");
                String estado = rs.getString("estado");
                String numero = rs.getString("numero");
                String cep = rs.getString("cep");
                int id_endereco = rs.getInt("cod_endereco");
                int id_usuario = rs.getInt("id_usuario");

                endereco = new Endereco(id_endereco,id_usuario,logradouro,bairro,cidade,estado,numero,cep);
                System.out.println("Endereco buscado com sucesso!");

            } else {
                endereco = null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return endereco;
    }
}
