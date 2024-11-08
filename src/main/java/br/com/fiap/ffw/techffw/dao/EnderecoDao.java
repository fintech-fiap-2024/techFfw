package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Endereco;

public interface EnderecoDao {
    void criarEndereco(Endereco endereco)throws DBException;
    void atualizarEndereco(Endereco endereco)throws DBException;
    void remover(int id) throws DBException;
    Endereco buscarEndereco(int id) throws DBException;
}
