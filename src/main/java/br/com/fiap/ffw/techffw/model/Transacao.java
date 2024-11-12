package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Transacao {
    private int codigo;
    private int idUsuario;
    private String descricao;
    private String nomeDestinatario;
    private String nomeRemetente;
    private double valor;
    private LocalDate data;

    public Transacao() {}

    public Transacao(int codigo,int idUsuario, String descricao, String nomeDestinatario, String nomeRemetente, double valor, LocalDate data) {
        this.codigo = codigo;
        this.idUsuario = idUsuario;
        this.descricao = descricao;
        this.nomeDestinatario = nomeDestinatario;
        this.nomeRemetente = nomeRemetente;
        this.valor = valor;
        this.data = data;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public String getNomeDestinatario() {
        return nomeDestinatario;
    }

    public void setNomeDestinatario(String nomeDestinatario) {
        this.nomeDestinatario = nomeDestinatario;
    }

    public String getNomeRemetente() {
        return nomeRemetente;
    }

    public void setNomeRemetente(String nomeRemetente) {
        this.nomeRemetente = nomeRemetente;
    }
}
