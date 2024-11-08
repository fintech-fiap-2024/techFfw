package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Investimento extends MovimentacaoFinanceira {
    private LocalDate dataVencimento;
    private String instituicaoFinanceira;

    public Investimento(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria, LocalDate dataVencimento, String instituicaoFinanceira) {
        super(codMovimentacao, codConta, identificadorExterno, valorMovimentacao, dataMovimentacao, tipoMovimentacao, categoria);
        this.dataVencimento = dataVencimento;
        this.instituicaoFinanceira = instituicaoFinanceira;
    }

    // Getters
    public LocalDate getDataVencimento() {
        return dataVencimento;
    }

    public String getInstituicaoFinanceira() {
        return instituicaoFinanceira;
    }

    @Override
    public void processarMovimentacao() {
        System.out.println("----------------------------------");
        System.out.println("Processando investimento:");
        System.out.println("Código da Movimentação: " + getCodMovimentacao());
        System.out.println("Código da br.com.fintech.model.Conta: " + getCodConta());
        System.out.println("Identificador Externo: " + getIdentificadorExterno());
        System.out.println("Valor do br.com.fintech.model.Investimento: R$ " + getValorMovimentacao());
        System.out.println("Data da Movimentação: " + getDataMovimentacao());
        System.out.println("Tipo de Movimentação: " + getTipoMovimentacao());
        System.out.println("Categoria: " + getCategoria());
        System.out.println("Data de Vencimento: " + getDataVencimento());
        System.out.println("Instituição Financeira: " + getInstituicaoFinanceira());
        System.out.println("----------------------------------");
    }
}
