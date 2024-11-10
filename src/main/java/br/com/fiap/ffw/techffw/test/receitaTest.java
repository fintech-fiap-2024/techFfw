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
                2,1,3,2355, LocalDate.of(2024,11,13), "Receita", "Pix" , 1 , "Paulo", "Teste"
        );

        try {
            teste.criarReceita(receita);
        } catch (DBException e) {
            throw new RuntimeException(e);
        }
    }


}
