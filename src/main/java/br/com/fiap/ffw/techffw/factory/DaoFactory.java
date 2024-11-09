package br.com.fiap.ffw.techffw.factory;

import br.com.fiap.ffw.techffw.dao.ObjetivoFinanceiroDao;
import br.com.fiap.ffw.techffw.dao.ReceitaDao;
import br.com.fiap.ffw.techffw.dao.TransacaoDao;
import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleObjetivoFinanceiroDAO;
import br.com.fiap.ffw.techffw.dao.impl.OracleReceitaDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleTransacaoDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleUsuarioDao;

public class DaoFactory {
    public static UsuarioDao getUsuarioDao() {
        return new OracleUsuarioDao();
    }
    public static ReceitaDao getReceitaDao() {
        return new OracleReceitaDao();
    }
    public static ObjetivoFinanceiroDao getObjetivoFinanceiroDao() { return new OracleObjetivoFinanceiroDAO();}
    public static TransacaoDao getTransacaoDao() { return new OracleTransacaoDao();}
}
