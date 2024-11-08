package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Saldo {
    private int codSaldo;
    private int codConta;
    private double valorSaldo;
    private LocalDate dataAtualizacao;

    public Saldo(){}

    public Saldo(int codSaldo, int codConta, double valorSaldo, LocalDate dataAtualizacao) {
        this.codSaldo = codSaldo;
        this.codConta = codConta;
        this.valorSaldo = valorSaldo;
        this.dataAtualizacao = dataAtualizacao;
    }

    public Saldo( int codConta, double valorSaldo, LocalDate dataAtualizacao) {
        this.codConta = codConta;
        this.valorSaldo = valorSaldo;
        this.dataAtualizacao = dataAtualizacao;
    }

    public int getCodSaldo() {
        return codSaldo;
    }

    public int getCodConta() {
        return codConta;
    }

    public double getValorSaldo() {
        return valorSaldo;
    }

    public LocalDate getDataAtualizacao() {
        return dataAtualizacao;
    }
}
