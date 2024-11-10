package br.com.fiap.ffw.techffw.model;


import java.time.LocalDate;

public class Receita extends MovimentacaoFinanceira {

    private int codUsuario;
    private String nomeMandatario;
    private String descricaoReceita;

    public Receita(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria, int codUsuario ,String nomeMandatario, String descricaoReceita) {
        super(codMovimentacao, codConta, identificadorExterno, valorMovimentacao, dataMovimentacao, tipoMovimentacao, categoria);
        this.codUsuario = codConta;
        this.nomeMandatario = nomeMandatario;
        this.descricaoReceita = descricaoReceita;
    }

    @Override
    public int getCodMovimentacao() {
        return codMovimentacao;
    }

    public void setCodMovimentacao(int codMovimentacao) {
        this.codMovimentacao = codMovimentacao;
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getNomeMandatario() {
        return nomeMandatario;
    }

    public void setNomeMandatario(String nomeMandatario) {
        this.nomeMandatario = nomeMandatario;
    }

    public String getDescricaoReceita() {
        return descricaoReceita;
    }

    public void setDescricaoReceita(String descricaoReceita) {
        this.descricaoReceita = descricaoReceita;
    }

    @Override
    public void processarMovimentacao() {
        System.out.println("----------------------------------");
        System.out.println("Processando receita:");
        System.out.println("Código da Movimentação: " + getCodMovimentacao());
        System.out.println("Código da br.com.fintech.model.Conta: " + getCodConta());
        System.out.println("Identificador Externo: " + getIdentificadorExterno());
        System.out.println("Valor da br.com.fintech.model.Receita: R$ " + getValorMovimentacao());
        System.out.println("Data da Movimentação: " + getDataMovimentacao());
        System.out.println("Tipo de Movimentação: " + getTipoMovimentacao());
        System.out.println("Categoria: " + getCategoria());
        System.out.println("Nome do Mandatário: " + getNomeMandatario());
        System.out.println("Descrição da br.com.fintech.model.Receita: " + getDescricaoReceita());
        System.out.println("----------------------------------");
    }
}
