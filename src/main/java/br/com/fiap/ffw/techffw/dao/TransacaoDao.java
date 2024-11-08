package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Transacao;

public interface TransacaoDao {
    void criarTransacao(Transacao transacao) throws DBException;
    Transacao buscarTransacao(int id) throws DBException;
}
