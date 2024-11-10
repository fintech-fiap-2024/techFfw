package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.InvestimentoDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Investimento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OracleInvestimentoDao implements InvestimentoDao {

    private Connection connection;

    @Override
    public void criarInvestimento(Investimento investimento, int userId) throws DBException {
        PreparedStatement stmt = null;

        try{
            connection = ConnectionManager.getInstance().getConnection();
            String sql = "INSERT INTO T_FFW_INVESTIMENTO(cod_investimento, id_usuario,tipo,descricao,valor,data)"+
                    "VALUES(SQ_TB_INVESTIMENTO.NEXTVAL,?,?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1,userId);
            stmt.setString(2,investimento.getTipoInvestimento());
            stmt.setString(3,investimento.getDescricao());
            stmt.setDouble(4,investimento.getValor());
            stmt.setDate(5,java.sql.Date.valueOf(investimento.getDataInicio()));
            stmt.executeUpdate();

            System.out.println("Investimento criado com sucesso!");

        } catch (SQLException e) {
            throw new DBException(e);
        }finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void AtualizarInvestimento(Investimento investimento) throws DBException {

    }

    @Override
    public void remover(int id) throws DBException {

    }

    @Override
    public Investimento buscarInvestimento(int id) throws DBException {
        return null;
    }
}
