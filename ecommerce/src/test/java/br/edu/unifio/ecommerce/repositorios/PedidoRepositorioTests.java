package br.edu.unifio.ecommerce.repositorios;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.ecommerce.entidades.Pedido;

@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class PedidoRepositorioTests {

    @Autowired
    private PedidoRepositorio pedidoRepositorio;

    @Test
    public void deveBuscarUmPedidoPorId() {
        Pedido pedido = pedidoRepositorio.findById(1).orElseThrow();

        assertNotNull(pedido);
        assertEquals("PENDENTE", pedido.getStatus().toString());
        assertEquals(3500.00, pedido.getValorTotal().doubleValue());
        assertEquals("Ana Silva", pedido.getCliente().getNome());
    }

    @Test
    public void deveListarPedidos() {
        var pedidos = pedidoRepositorio.findAll();

        assertNotNull(pedidos);
        assertEquals(5, pedidos.size());
    }
}