package br.com.fiap.ffw.techffw.factory;

import br.com.fiap.ffw.techffw.dao.*;
import br.com.fiap.ffw.techffw.dao.impl.*;

public class DaoFactory {
    public static UsuarioDao getUsuarioDao() {
        return new OracleUsuarioDao();
    }
    public static ReceitaDao getReceitaDao() {
        return new OracleReceitaDao();
    }
    public static ObjetivoFinanceiroDao getObjetivoFinanceiroDao() { return new OracleObjetivoFinanceiroDAO();}
    public static TransacaoDao getTransacaoDao() { return new OracleTransacaoDao();}
    public static InvestimentoDao getInvestimentoDao(){return new OracleInvestimentoDao();}
    public static EnderecoDao getEnderecoDao(){return new OracleEnderecoDao();}
}
