package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;

public interface ObjetivoFinanceiroDao {
    void criarObjetivo(ObjetivoFinanceiro objetivo, int userId) throws DBException;
    void atualizarObjetivo(ObjetivoFinanceiro objetivo) throws DBException;
    void remover (int id) throws DBException;
    ObjetivoFinanceiro buscarObjetivo(int id) throws DBException;
}
