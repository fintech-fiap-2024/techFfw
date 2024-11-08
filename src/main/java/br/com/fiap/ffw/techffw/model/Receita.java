package br.com.fiap.ffw.techffw.model;


import java.time.LocalDate;

public class Receita extends MovimentacaoFinanceira {
    private String nomeMandatario;
    private String descricaoReceita;

    public Receita(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria, String nomeMandatario, String descricaoReceita) {
        super(codMovimentacao, codConta, identificadorExterno, valorMovimentacao, dataMovimentacao, tipoMovimentacao, categoria);
        this.nomeMandatario = nomeMandatario;
        this.descricaoReceita = descricaoReceita;
    }

    // Getters
    public String getNomeMandatario() {
        return nomeMandatario;
    }

    public String getDescricaoReceita() {
        return descricaoReceita;
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
