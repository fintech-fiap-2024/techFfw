package br.com.fiap.ffw.techffw.test;

import br.com.fiap.ffw.techffw.dao.ReceitaDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleReceitaDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Receita;

import java.time.LocalDate;

public class receitaTest {
    public static void main(String[] args) {
        ReceitaDao teste = DaoFactory.getReceitaDao();
        Receita receita = new Receita(
                2,1,2,1000, LocalDate.of(2003,10,1), "Receita", "entrada de dinehiro" , "Rodrigo" , "teste1"
        );

        try {
            teste.criarReceita(receita);
        } catch (DBException e) {
            throw new RuntimeException(e);
        }
    }


}
