package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;
import br.com.fiap.ffw.techffw.model.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OracleObjetivoFinanceiroDAO implements ObjetivoFinanceiroDao {
    private Connection connection;

    @Override
    public void criarObjetivo(ObjetivoFinanceiro objetivoFinanceiro, int userId) throws DBException {

        PreparedStatement stmt = null;

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
    public List<ObjetivoFinanceiro> buscarObjetivos(int id) throws DBException {
        List<ObjetivoFinanceiro> objetivoFinanceiros = new ArrayList<ObjetivoFinanceiro>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        connection = ConnectionManager.getInstance().getConnection();
        String sql = "SELECT cod_objetivo, descricao, valor, data_objetivo FROM T_FFW_OBJETIVO WHERE id_usuario = ?";

        try{
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                ObjetivoFinanceiro objetivo = new ObjetivoFinanceiro();
                objetivo.setCodObjetivo(rs.getInt("cod_objetivo"));
                objetivo.setDescricaoObjetivo(rs.getString("descricao"));
                objetivo.setValorObjetivo(rs.getDouble("valor"));
                objetivo.setDataObjetivo(rs.getDate("data_objetivo").toLocalDate());
                objetivoFinanceiros.add(objetivo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try{
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return objetivoFinanceiros;
    }

    @Override
    public void atualizarObjetivo(ObjetivoFinanceiro objetivo) throws DBException {

    }

    @Override
    public void remover(int id) throws DBException {
        PreparedStatement stmt = null;

        connection = ConnectionManager.getInstance().getConnection();
        String sql = "DELETE FROM T_FFW_OBJETIVO WHERE cod_objetivo = ?";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("Objetivo removido com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
