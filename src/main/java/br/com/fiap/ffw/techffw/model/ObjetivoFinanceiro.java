package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class ObjetivoFinanceiro {
    private int codObjetivo;
    private int codConta;
    private String descricaoObjetivo;
    private double valorObjetivo;
    private LocalDate dataObjetivo;

    public ObjetivoFinanceiro() {}

    public ObjetivoFinanceiro(int codObjetivo, int codConta, String descricaoObjetivo, double valorObjetivo, LocalDate dataObjetivo) {
        this.codObjetivo = codObjetivo;
        this.codConta = codConta;
        this.descricaoObjetivo = descricaoObjetivo;
        this.valorObjetivo = valorObjetivo;
        this.dataObjetivo = dataObjetivo;
    }
    public ObjetivoFinanceiro(int codConta, String descricaoObjetivo, double valorObjetivo, LocalDate dataObjetivo) {
        this.codConta = codConta;
        this.descricaoObjetivo = descricaoObjetivo;
        this.valorObjetivo = valorObjetivo;
        this.dataObjetivo = dataObjetivo;
    }

    public ObjetivoFinanceiro(String descricaoObjetivo, double valorObjetivo, LocalDate dataObjetivo) {

        this.descricaoObjetivo = descricaoObjetivo;
        this.valorObjetivo = valorObjetivo;
        this.dataObjetivo = dataObjetivo;
    }
    public int getCodObjetivo() {
        return codObjetivo;
    }

    public void setCodObjetivo(int codObjetivo) {
        this.codObjetivo = codObjetivo;
    }

    public int getCodConta() {
        return codConta;
    }

    public void setCodConta(int codConta) {
        this.codConta = codConta;
    }

    public String getDescricaoObjetivo() {
        return descricaoObjetivo;
    }

    public void setDescricaoObjetivo(String descricaoObjetivo) {
        this.descricaoObjetivo = descricaoObjetivo;
    }

    public double getValorObjetivo() {
        return valorObjetivo;
    }

    public void setValorObjetivo(double valorObjetivo) {
        this.valorObjetivo = valorObjetivo;
    }

    public LocalDate getDataObjetivo() {
        return dataObjetivo;
    }

    public void setDataObjetivo(LocalDate dataObjetivo) {
        this.dataObjetivo = dataObjetivo;
    }
}

