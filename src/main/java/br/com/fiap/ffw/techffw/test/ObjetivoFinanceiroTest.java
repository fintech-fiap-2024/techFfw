package br.com.fiap.ffw.techffw.test;

import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.ObjetivoFinanceiro;

import java.time.LocalDate;

public class ObjetivoFinanceiroTest {
    public static void main(String[] args) {
        ObjetivoFinanceiroDao dao = DaoFactory.getObjetivoFinanceiroDao();
        LocalDate data = LocalDate.now();
        ObjetivoFinanceiro obj = new ObjetivoFinanceiro(
                0,
                27,
                "descricao",
                1500,
                data
        );

        try{
            dao.criarObjetivo(obj,27);
        } catch (DBException e) {
            throw new RuntimeException(e);
        }

    }
}
