package br.com.fiap.ffw.techffw.test;

import br.com.fiap.ffw.techffw.dao.UsuarioDao;
import br.com.fiap.ffw.techffw.exception.DBException;
import br.com.fiap.ffw.techffw.factory.DaoFactory;
import br.com.fiap.ffw.techffw.model.Usuario;

import java.util.List;

public class UsuarioDaoTest {

    public static void main(String[] args) {

        //Cadastrar
        UsuarioDao dao = DaoFactory.getUsuarioDao();

        Usuario user = new Usuario(
                0,
                "USER",
                "user",
                "user",
                "123456789"
        );

//        try {
//            dao.cadastrar(user);
//        } catch (DBException e) {
//            throw new RuntimeException(e);
//        }


        //Buscar e atualizar
//        user = dao.buscarPorNome(user.getNome());
//        user.setNome("pedro");
//        user.setCpf("98765432100");

//        try {
//            dao.atualizar(user);
//        }catch (DBException e) {
//            e.printStackTrace();
//        }
        //remover
//        try {
//            dao.remover(3);
//        } catch (DBException e) {
//            e.printStackTrace();
//        }

//        //listar
//        List<Usuario> usuarios = dao.listar();
//        for (Usuario usuario : usuarios) {
//            System.out.println("Nome: " + usuario.getNome()+ " login: " + usuario.getLogin() +
//                    " senha: " + usuario.getSenha() + " cpf: " + usuario.getCpf()
//            );
//        }


    }
}
