package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Receita;

public interface ReceitaDao {
    void criarReceita(Receita receita) throws DBException;
    Receita buscarReceita(int id) throws DBException;
}
