package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Investimento {
    private int codInvestimento;
    private int codUsuario;
    private String tipoInvestimento;
    private String descricao;
    private double valor;
    private LocalDate dataInicio;

    public Investimento(int codInvestimento, int codUsuario, String tipoInvestimento, String descricao, double valor, LocalDate dataInicio) {
        this.codInvestimento = codInvestimento;
        this.codUsuario = codUsuario;
        this.tipoInvestimento = tipoInvestimento;
        this.descricao = descricao;
        this.valor = valor;
        this.dataInicio = dataInicio;
    }

    public int getCodInvestimento() {
        return codInvestimento;
    }

    public void setCodInvestimento(int codInvestimento) {
        this.codInvestimento = codInvestimento;
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getTipoInvestimento() {
        return tipoInvestimento;
    }

    public void setTipoInvestimento(String tipoInvestimento) {
        this.tipoInvestimento = tipoInvestimento;
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

    public LocalDate getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(LocalDate dataInicio) {
        this.dataInicio = dataInicio;
    }
}
