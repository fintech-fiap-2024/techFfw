package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Investimento;

public interface InvestimentoDao {

    void criarInvestimento(Investimento investimento) throws DBException;
    void AtualizarInvestimento(Investimento investimento) throws DBException;
    void remover(int id) throws DBException;
    Investimento buscarInvestimento(int id) throws DBException;
}
