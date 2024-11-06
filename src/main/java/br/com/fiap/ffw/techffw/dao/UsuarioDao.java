package br.com.fiap.ffw.techffw.dao;

import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.model.Usuario;

import java.util.List;

public interface UsuarioDao {

    void cadastrar(Usuario usuario) throws DBException;
    void atualizar(Usuario usuario) throws DBException;
    void remover(int id) throws DBException;
    Usuario buscarPorNome(String nome);
    List<Usuario> listar();

}
