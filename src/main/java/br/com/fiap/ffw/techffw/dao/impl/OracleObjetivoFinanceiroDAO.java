package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;

import java.sql.*;

public class OracleObjetivoFinanceiroDAO implements ObjetivoFinanceiroDao {
    private Connection connection;

    @Override
    public void criarObjetivo(ObjetivoFinanceiro objetivoFinanceiro, int userId) throws DBException {

        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            String sql = "INSERT INTO T_FFW_OBJETIVO(cod_objetivo, id_usuario, descricao, valor, data_objetivo)"+
                    "VALUES(SQ_TB_OBJETIVO.NEXTVAL, ?,?,?,?)";
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, userId);
            stmt.setString(2, objetivoFinanceiro.getDescricaoObjetivo());
            stmt.setDouble(3,objetivoFinanceiro.getValorObjetivo());
            stmt.setDate(4, java.sql.Date.valueOf(objetivoFinanceiro.getDataObjetivo()));
            stmt.executeUpdate();

            System.out.println("Objetivo inserido com sucesso!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
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
    public void atualizarObjetivo(ObjetivoFinanceiro objetivo) throws DBException {

    }

    @Override
    public void remover(int id) throws DBException {

    }

    @Override
    public ObjetivoFinanceiro buscarObjetivo(int id) throws DBException {
        return null;
    }
}
