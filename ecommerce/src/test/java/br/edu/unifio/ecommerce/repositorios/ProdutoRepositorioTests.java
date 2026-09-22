package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.ecommerce.entidades.Produto;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class ProdutoRepositorioTests {

    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Test
    public void deveBuscarUmProdutoPorId() {
        Produto produto = produtoRepositorio.findById(1).orElseThrow();

        assertNotNull(produto);
        assertEquals("Notebook", produto.getDescricao());
        assertEquals(3500.00, produto.getPreco().doubleValue());
    }

    @Test
    public void deveListarProdutos() {
        var produtos = produtoRepositorio.findAll();

        assertNotNull(produtos);
        assertEquals(5, produtos.size());
    }
}