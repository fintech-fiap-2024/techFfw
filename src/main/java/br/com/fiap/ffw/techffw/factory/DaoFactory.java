package br.com.fiap.ffw.techffw.factory;

import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.dao.impl.OracleUsuarioDao;

public class DaoFactory {
    public static UsuarioDao getUsuarioDao() {
        return new OracleUsuarioDao();
    }
}
