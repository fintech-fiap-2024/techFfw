package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.ReceitaDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Receita;

import java.sql.*;

public class OracleReceitaDao implements ReceitaDao {
    private Connection conexao;
    @Override
    public void criarReceita(Receita receita) throws DBException {

        Connection connection = ConnectionManager.getInstance().getConnection();
        try {
            //inserir dados na tabela M.financeira
            String mvSql = "INSERT INTO T_FIN_MOVIMENTACAO_FINANCEIRA(CD_MOVIMENTACAO, T_FIN_USUARIO_CD_USUARIO ,IDENTIFICADOR_EXTERNO, VL_MOVIMENTACAO, DT_MOVIMENTACAO, TIPO_MOVIMENTACAO,CATEGORIA) VALUES (COD_MOV.NEXTVAL,?,?,?,?,?,?)";
            int mvID = -1;
            try (PreparedStatement stmpMov = connection.prepareStatement(mvSql, Statement.RETURN_GENERATED_KEYS)) {
                stmpMov.setInt(1,receita.getCodConta());
                stmpMov.setInt(2,receita.getIdentificadorExterno());
                stmpMov.setDouble(3,receita.getValorMovimentacao());
                stmpMov.setDate(4,java.sql.Date.valueOf(receita.getDataMovimentacao()));
                stmpMov.setString(5,receita.getTipoMovimentacao());
                stmpMov.setString(6,receita.getCategoria());
                stmpMov.executeUpdate();

                int rowsAffected = stmpMov.executeUpdate();
                if (rowsAffected == 0) {
                    throw new SQLException("Falha ao inserir na tabela Pessoa, nenhuma linha afetada.");
                }

                try (ResultSet rs = stmpMov.getGeneratedKeys()) {
                    if (rs.next()) {
                        mvID = rs.getInt(-1);
                    } else {
                        throw new SQLException("Falha ao obter ID gerado para MOVIMENTACÃO FINANCEIRA");

                    }
                }
            }
            if (mvID == -1) {
                throw new SQLException("ID gerado para Mov não é válido.");
            }

            String receitaSql = "INSERT INTO T_FIN_RECEITA (mvID, NM_MANDARAIO, DS_RECEITA) VALUES (?,?,?)";
            try (PreparedStatement stmtReceita = connection.prepareStatement(receitaSql)){
                stmtReceita.setInt(1, mvID);
                stmtReceita.setString(2,receita.getNomeMandatario());
                stmtReceita.setString(3,receita.getDescricaoReceita());

                int rowsAffected = stmtReceita.executeUpdate();
                if (rowsAffected == 0) {
                    throw new SQLException("Falha ao inserir na tabela Aluno, nenhuma linha afetada.");
                }

            }
            connection.commit();
        }

        catch (SQLException e) {
            // Reverter a transação em caso de erro
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException rollbackEx) {
                    System.err.println("Erro ao tentar reverter transação: " + rollbackEx.getMessage());
                }
            }


        } finally {
            // Restaurar o estado anterior do auto-commit
            if (connection != null) {
                try {
                    connection.setAutoCommit(false);
                } catch (SQLException ex) {
                    System.err.println("Erro ao restaurar o auto-commit: " + ex.getMessage());
                }
            }
        }


    }

    @Override
    public void atualizarReceita(Receita receita) throws DBException {

    }

    @Override
    public Receita buscarReceita(int id) throws DBException {
        return null;
    }
}
