package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.ecommerce.entidades.Pagamento;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class PagamentoRepositorioTests {

    @Autowired
    private PagamentoRepositorio pagamentoRepositorio;

    @Test
    public void deveBuscarUmPagamentoPorId() {
        Pagamento pagamento = pagamentoRepositorio.findById(1).orElseThrow();

        assertNotNull(pagamento);
        assertEquals(3500.00, pagamento.getValor().doubleValue());
        assertEquals("APROVADO", pagamento.getStatus().toString());
        assertEquals("PIX", pagamento.getTipo().toString());
       assertEquals(3500.00, pagamento.getPedido().getValorTotal().doubleValue());
    }

    @Test
    public void deveListarPagamentos() {
        var pagamentos = pagamentoRepositorio.findAll();

        assertNotNull(pagamentos);
        assertEquals(5, pagamentos.size());
    }
}