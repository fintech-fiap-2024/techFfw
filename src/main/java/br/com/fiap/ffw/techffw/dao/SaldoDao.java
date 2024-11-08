package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Saldo;

public interface SaldoDao {
    void cadastrar(Saldo saldo) throws DBException;
    void atualizar(Saldo saldo) throws DBException;
    void remover(int id) throws DBException;
    Saldo buscar(int id) throws DBException;

}
