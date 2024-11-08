package br.com.fiap.ffw.techffw.model;

import java.time.LocalDate;

public class Transacao extends MovimentacaoFinanceira {
    private String instituicaoFinanceira;
    private String descricao;
    private String nomeRemetente;
    private String nomeBeneficiario;
    private String contaOrigem;
    private String contaDestino;
    private String statusTransacao;

    public Transacao(int codMovimentacao, int codConta, int identificadorExterno, double valorMovimentacao, LocalDate dataMovimentacao, String tipoMovimentacao, String categoria, String instituicaoFinanceira, String descricao, String nomeRemetente, String nomeBeneficiario, String contaOrigem, String contaDestino, String statusTransacao) {
        super(codMovimentacao, codConta, identificadorExterno, valorMovimentacao, dataMovimentacao, tipoMovimentacao, categoria);
        this.instituicaoFinanceira = instituicaoFinanceira;
        this.descricao = descricao;
        this.nomeRemetente = nomeRemetente;
        this.nomeBeneficiario = nomeBeneficiario;
        this.contaOrigem = contaOrigem;
        this.contaDestino = contaDestino;
        this.statusTransacao = statusTransacao;
    }

    public String getInstituicaoFinanceira() {
        return instituicaoFinanceira;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getNomeRemetente() {
        return nomeRemetente;
    }

    public String getNomeBeneficiario() {
        return nomeBeneficiario;
    }

    public String getContaOrigem() {
        return contaOrigem;
    }

    public String getContaDestino() {
        return contaDestino;
    }

    public String getStatusTransacao() {
        return statusTransacao;
    }

    @Override
    public void processarMovimentacao() {
        System.out.println("----------------------------------");
        System.out.println("Processando transação:");
        System.out.println("Código da Movimentação: " + getCodMovimentacao());
        System.out.println("Código da br.com.fintech.model.Conta: " + getCodConta());
        System.out.println("Identificador Externo: " + getIdentificadorExterno());
        System.out.println("Valor da Transação: R$ " + getValorMovimentacao());
        System.out.println("Data da Movimentação: " + getDataMovimentacao());
        System.out.println("Tipo de Movimentação: " + getTipoMovimentacao());
        System.out.println("Categoria: " + getCategoria());
        System.out.println("Instituição Financeira: " + getInstituicaoFinanceira());
        System.out.println("Descrição: " + getDescricao());
        System.out.println("Nome do Remetente: " + getNomeRemetente());
        System.out.println("Nome do Beneficiário: " + getNomeBeneficiario());
        System.out.println("br.com.fintech.model.Conta de Origem: " + getContaOrigem());
        System.out.println("br.com.fintech.model.Conta de Destino: " + getContaDestino());
        System.out.println("Status da Transação: " + getStatusTransacao());
        System.out.println("----------------------------------");
    }
}
