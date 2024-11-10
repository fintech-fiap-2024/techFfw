package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Endereco;

public interface EnderecoDao {
    void criarEndereco(Endereco endereco)throws DBException;
    void atualizarEndereco(Endereco endereco)throws DBException;
    void cadastrarEndereco(Endereco endereco,int userId) throws DBException;
    Endereco buscarEndereco(int userId) throws DBException;
}
