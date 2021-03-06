package com.camelo.camelobackend.interactors;

import com.camelo.camelobackend.domain.Cartao;
import com.camelo.camelobackend.ports.CartaoPort;
import com.camelo.camelobackend.ports.UserPort;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class AdicionarFormaDePagamentoUseCase {

    private final UserPort userPort;
    private final CartaoPort cartaoPort;

    public AdicionarFormaDePagamentoUseCase(UserPort userPort, CartaoPort cartaoPort) {
        this.userPort = userPort;
        this.cartaoPort = cartaoPort;
    }

    public Cartao executar(Cartao cartaoDomain) {
        var userSS = UserService.authenticated();

        if (Objects.nonNull(userSS)) {
            var usuario = userPort.buscarPor(userSS.getUsername());
            cartaoDomain.setUser(usuario);

            var cartaoSalvo = cartaoPort.salvar(cartaoDomain);

            usuario.adicionarCartao(cartaoSalvo);

            return cartaoSalvo;
        }

        throw new RuntimeException("ERRO AO SALVAR CARTAO");
    }
}
