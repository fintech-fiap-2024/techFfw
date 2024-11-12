package br.com.fiap.ffw.techffw.model;

public class Endereco {
    private int codEndereco;
    private int codUsuario;
    private String logradouro;
    private String nomeBairro;
    private String nomeCidade;
    private String nomeEstado;
    private String numeroCasa;
    private String cep;

    // Construtores
    private Endereco() {}

    public Endereco(int codEndereco, int codUsuario, String logradouro, String nomeBairro, String nomeCidade, String nomeEstado, String numeroCasa, String cep) {
        this.codEndereco = codEndereco;
        this.codUsuario = codUsuario;
        this.logradouro = logradouro;
        this.nomeBairro = nomeBairro;
        this.nomeCidade = nomeCidade;
        this.nomeEstado = nomeEstado;
        this.numeroCasa = numeroCasa;
        this.cep = cep;
    }

    // Métodos úteis
    public void imprimirEndereco() {

        System.out.println("Rua " + logradouro + ", n°" + numeroCasa + ", bairro " + nomeBairro + ", " + nomeCidade + " - " + nomeEstado);
    }

    public int getCodEndereco() {
        return codEndereco;
    }

    public void setCodEndereco(int codEndereco) {
        this.codEndereco = codEndereco;
    }

    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNomeBairro() {
        return nomeBairro;
    }

    public void setNomeBairro(String nomeBairro) {
        this.nomeBairro = nomeBairro;
    }

    public String getNomeCidade() {
        return nomeCidade;
    }

    public void setNomeCidade(String nomeCidade) {
        this.nomeCidade = nomeCidade;
    }

    public String getNomeEstado() {
        return nomeEstado;
    }

    public void setNomeEstado(String nomeEstado) {
        this.nomeEstado = nomeEstado;
    }

    public String getNumeroCasa() {
        return numeroCasa;
    }

    public void setNumeroCasa(String numeroCasa) {
        this.numeroCasa = numeroCasa;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
}

