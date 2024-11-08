package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Conta {
    private int codConta;
    private int codUsuario;
    private int numeroConta;
    private String nomeTitular;
    private String tipoConta;
    private int numeroAgencia;
    private double saldoAtual;
    private double limiteCredito;
    private boolean estaAtiva;
    private LocalDate dataCriacao;
    private LocalDate dataEncerramento;
    private String senhaConta;

    public Conta(int codConta, int codUsuario, int numeroConta, String nomeTitular, String tipoConta, int numeroAgencia, double saldoAtual, double limiteCredito, boolean estaAtiva, LocalDate dataCriacao, LocalDate dataEncerramento, String senhaConta) {
        this.codConta = codConta;
        this.codUsuario = codUsuario;
        this.numeroConta = numeroConta;
        this.nomeTitular = nomeTitular;
        this.tipoConta = tipoConta;
        this.numeroAgencia = numeroAgencia;
        this.saldoAtual = saldoAtual;
        this.limiteCredito = limiteCredito;
        this.estaAtiva = estaAtiva;
        this.dataCriacao = dataCriacao;
        this.dataEncerramento = dataEncerramento;
        this.senhaConta = senhaConta;
    }

    public int getCodConta() {
        return codConta;
    }

    public void setCodConta(int codConta) {
        this.codConta = codConta;
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public int getNumeroConta() {
        return numeroConta;
    }

    public void setNumeroConta(int numeroConta) {
        this.numeroConta = numeroConta;
    }

    public String getNomeTitular() {
        return nomeTitular;
    }

    public void setNomeTitular(String nomeTitular) {
        this.nomeTitular = nomeTitular;
    }

    public String getTipoConta() {
        return tipoConta;
    }

    public void setTipoConta(String tipoConta) {
        this.tipoConta = tipoConta;
    }

    public int getNumeroAgencia() {
        return numeroAgencia;
    }

    public void setNumeroAgencia(int numeroAgencia) {
        this.numeroAgencia = numeroAgencia;
    }

    public double getSaldoAtual() {
        return saldoAtual;
    }

    public void setSaldoAtual(double saldoAtual) {
        this.saldoAtual = saldoAtual;
    }

    public double getLimiteCredito() {
        return limiteCredito;
    }

    public void setLimiteCredito(double limiteCredito) {
        this.limiteCredito = limiteCredito;
    }

    public boolean isEstaAtiva() {
        return estaAtiva;
    }

    public void setEstaAtiva(boolean estaAtiva) {
        this.estaAtiva = estaAtiva;
    }

    public LocalDate getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(LocalDate dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    public LocalDate getDataEncerramento() {
        return dataEncerramento;
    }

    public void setDataEncerramento(LocalDate dataEncerramento) {
        this.dataEncerramento = dataEncerramento;
    }

    public String getSenhaConta() {
        return senhaConta;
    }

    public void setSenhaConta(String senhaConta) {
        this.senhaConta = senhaConta;
    }
}
