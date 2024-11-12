package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;

import java.util.List;

public interface ObjetivoFinanceiroDao {
    void criarObjetivo(ObjetivoFinanceiro objetivo, int userId) throws DBException;
    void atualizarObjetivo(ObjetivoFinanceiro objetivo) throws DBException;
    void remover (int id) throws DBException;
    List<ObjetivoFinanceiro> buscarObjetivos(int id) throws DBException;
}
