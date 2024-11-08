package br.com.fiap.ffw.techffw.model;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import static br.com.fiap.ffw.techffw.util.CriptografiaUtils.criptografar;

public class Usuario {
    private int id;
    private String nome;
    private String login;
    private String senha;
    private String cpf;
    private float limiteDisponivel;
    private String proximoPagamento;
    private int saldo;
    private int agencia, contaCorrente;
    private Endereco endereco;



    public Usuario(int id, String nome, String login, String senha, String cpf) {
        this.id = id;
        this.nome = nome;
        this.login = login;
        setSenha(senha);
        this.cpf = cpf;
        this.limiteDisponivel = 10000;
        this.proximoPagamento = "24 Dez";
        this.saldo = 1000;
        this.agencia = 1234-5;
        this.contaCorrente = 123456;
        this.endereco = null;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public float getLimiteDisponivel() {
        return limiteDisponivel;
    }

    public String getProximoPagamento() {
        return proximoPagamento;
    }

    public int getSaldo() {
        return saldo;
    }

    public int getAgencia() {
        return agencia;
    }

    public int getContaCorrente() {
        return contaCorrente;
    }

    public Usuario(String email, String senha) {
        this.login = email;
        setSenha(senha);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        try {
            this.senha = criptografar(senha);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}
