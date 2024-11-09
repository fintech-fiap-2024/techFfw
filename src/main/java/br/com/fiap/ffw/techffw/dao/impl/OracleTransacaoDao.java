package br.com.fiap.ffw.techffw.dao.impl;

import br.com.fiap.ffw.techffw.dao.ConnectionManager;
import br.com.fiap.ffw.techffw.dao.TransacaoDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Transacao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OracleTransacaoDao implements TransacaoDao {
    private Connection connection;


    @Override
    public void criarTransacao(Transacao transacao,int userId) throws DBException {
        PreparedStatement stmt = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            String sql = "INSERT INTO T_FFW_TRANSACAO(cod_transacao, id_usuario, nome_remetente, nome_destinatario,valor,data)"+
                    "VALUES(SQ_TB_TRANSACAO.NEXTVAL,?,?,?,?,?)";
            stmt=connection.prepareStatement(sql);
            stmt.setInt(1,userId);
            stmt.setString(2, transacao.getNomeRemetente());
            stmt.setString(3, transacao.getNomeDestinatario());
            stmt.setDouble(4, transacao.getValor());
            stmt.setDate(5,java.sql.Date.valueOf(transacao.getData()));
            stmt.executeUpdate();



            System.out.println("Transacao criada com sucesso!");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                stmt.close();
                connection.close();
            }catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public Transacao buscarTransacao(int id) throws DBException {
        return null;
    }
}
