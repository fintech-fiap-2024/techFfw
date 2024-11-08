package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Despesa;

public interface DespesaDao {
    void criarDespesa(Despesa despesa) throws DBException;
    Despesa buscarDespesa(int id) throws DBException;
}
