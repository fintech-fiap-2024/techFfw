package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Despesa extends MovimentacaoFinanceira {
    private String nomeDestinatario;
    private String descricaoDespesa;
    private int quantidadeParcelas;

    public Despesa(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria, String nomeDestinatario, String descricaoDespesa, int quantidadeParcelas) {
        super(codMovimentacao, codConta, identificadorExterno, valorMovimentacao, dataMovimentacao, tipoMovimentacao, categoria);
        this.nomeDestinatario = nomeDestinatario;
        this.descricaoDespesa = descricaoDespesa;

        this.quantidadeParcelas = quantidadeParcelas;
    }

    // Getters
    public String getNomeDestinatario() {
        return nomeDestinatario;
    }

    public String getDescricaoDespesa() {
        return descricaoDespesa;
    }

    public int getQuantidadeParcelas() {
        return quantidadeParcelas;
    }

    @Override
    public void processarMovimentacao() {
        System.out.println("----------------------------------");
        System.out.println("Processando despesa:");
        System.out.println("Código da Movimentação: " + getCodMovimentacao());
        System.out.println("Código da br.com.fintech.model.Conta: " + getCodConta());
        System.out.println("Identificador Externo: " + getIdentificadorExterno());
        System.out.println("Valor da br.com.fintech.model.Despesa: R$ " + getValorMovimentacao());
        System.out.println("Data da Movimentação: " + getDataMovimentacao());
        System.out.println("Tipo de Movimentação: " + getTipoMovimentacao());
        System.out.println("Categoria: " + getCategoria());
        System.out.println("Nome do Destinatário: " + getNomeDestinatario());
        System.out.println("Descrição da br.com.fintech.model.Despesa: " + getDescricaoDespesa());
        System.out.println("Quantidade de Parcelas: " + getQuantidadeParcelas());
        System.out.println("----------------------------------");
    }

}



