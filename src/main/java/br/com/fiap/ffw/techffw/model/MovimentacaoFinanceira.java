package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

// Classe abstrata
public abstract class MovimentacaoFinanceira {
    protected int codMovimentacao;
    protected int codConta;
    protected int identificadorExterno;
    protected double valorMovimentacao;
    protected LocalDate dataMovimentacao;
    protected String tipoMovimentacao;
    protected String categoria;

    // Construtor
    public MovimentacaoFinanceira() {}

    public MovimentacaoFinanceira(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria) {
        this.codMovimentacao = codMovimentacao;
        this.codConta = codConta;
        this.identificadorExterno = identificadorExterno;
        this.valorMovimentacao = valorMovimentacao;
        this.dataMovimentacao = dataMovimentacao;
        this.tipoMovimentacao = tipoMovimentacao;
        this.categoria = categoria;
    }

    // Getters
    public int getCodMovimentacao() {
        return codMovimentacao;
    }

    public int getCodConta() {
        return codConta;
    }

    public int getIdentificadorExterno() {
        return identificadorExterno;
    }

    public double getValorMovimentacao() {
        return valorMovimentacao;
    }

    public LocalDate getDataMovimentacao() {
        return dataMovimentacao;
    }

    public String getTipoMovimentacao() {
        return tipoMovimentacao;
    }

    public String getCategoria() {
        return categoria;
    }

    // Metodo abstrato
    public abstract void processarMovimentacao();

}
