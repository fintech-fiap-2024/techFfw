package br.com.fiap.ffw.techffw.test;

import br.com.fiap.ffw.techffw.util.CriptografiaUtils;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class CriptografiaTeste {
    public static void main(String[] args) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        System.out.println(CriptografiaUtils.criptografar("123456"));
        System.out.println(CriptografiaUtils.criptografar("123456"));
    }
}
