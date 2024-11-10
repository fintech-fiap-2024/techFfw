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
        Connection connection = null;
        try {
            connection = ConnectionManager.getInstance().getConnection();
            connection.setAutoCommit(false); // Iniciar transação

            // Inserir dados na tabela de Movimentação Financeira
            String mvSql = "INSERT INTO T_FIN_MOVIMENTACAO_FINANCEIRA(CD_MOVIMENTACAO, T_FIN_USUARIO_CD_USUARIO, IDENTIFICADOR_EXTERNO, VL_MOVIMENTACAO, DT_MOVIMENTACAO, TIPO_MOVIMENTACAO, CATEGORIA) " +
                    "VALUES (COD_MOV.NEXTVAL, ?, ?, ?, ?, ?, ?)";
            int mvID = -1;

            try (PreparedStatement stmpMov = connection.prepareStatement(mvSql, new String[]{"CD_MOVIMENTACAO"})) {
                stmpMov.setInt(1, receita.getCodConta());
                stmpMov.setInt(2, receita.getIdentificadorExterno());
                stmpMov.setDouble(3, receita.getValorMovimentacao());
                stmpMov.setDate(4, java.sql.Date.valueOf(receita.getDataMovimentacao()));
                stmpMov.setString(5, receita.getTipoMovimentacao());
                stmpMov.setString(6, receita.getCategoria());

                int rowsAffected = stmpMov.executeUpdate();
                if (rowsAffected == 0) {
                    throw new SQLException("Falha ao inserir na tabela MOVIMENTACÃO FINANCEIRA, nenhuma linha afetada.");
                }

                // Obter o ID gerado automaticamente
                try (ResultSet rs = stmpMov.getGeneratedKeys()) {
                    if (rs.next()) {
                        mvID = rs.getInt(1); // Agora ele deve retornar o ID correto da sequência
                    } else {
                        throw new SQLException("Falha ao obter ID gerado para MOVIMENTAÇÃO FINANCEIRA");
                    }
                }



            }

            if (mvID == -1) {
                throw new SQLException("ID gerado para Mov não é válido.");
            }

            // Inserir dados na tabela Receita
            String receitaSql = "INSERT INTO T_FIN_RECEITA ( CD_MOVIMENTACAO,CD_USUARIO, NM_MANDATARIO, DS_RECEITA) VALUES (?, ?, ?, ?)";
            try (PreparedStatement stmtReceita = connection.prepareStatement(receitaSql)) {
                stmtReceita.setInt(1, mvID);
                stmtReceita.setInt(2, receita.getCodUsuario());
                stmtReceita.setString(3, receita.getNomeMandatario());
                stmtReceita.setString(4, receita.getDescricaoReceita());
                // Verificar o CD_USUARIO por que ou o banco não tem um relacionamento ou não está dando de passar o CD_USUARIO
                int rowsAffected = stmtReceita.executeUpdate();
                if (rowsAffected == 0) {
                    throw new SQLException("Falha ao inserir na tabela RECEITA, nenhuma linha afetada.");
                }
            }

            // Confirmar transação
            connection.commit();
        } catch (SQLException e) {
            // Reverter a transação em caso de erro
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException rollbackEx) {
                    System.err.println("Erro ao tentar reverter transação: " + rollbackEx.getMessage());
                }
            }
            throw new DBException("Erro ao criar Receita", e);
        } finally {
            if (connection != null) {
                try {
                    connection.setAutoCommit(true); // Restaurar auto-commit para o padrão
                    connection.close(); // Fechar a conexão
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
