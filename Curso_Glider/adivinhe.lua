function abertura_do_jogo()
    print("\nBem Vindo ao jogo Advinhe o Número!\
Este jogo foi criado por Lucas Nobre Ferreira Martins\
        \nA licença desse código é GPL3.0")
end

function manual()
    print("Você deseja ler o manual do jogo? [sim][não] ")
    local resposta = io.read()
    if resposta == "sim" then
        print("\nEste é um jogo de advinhe.\
    \n1) O computador escolherá um numero aleatório e perguntará ao jogador.\
2) O jogador responde qual numero ele acha que o computador escolheu\
3) Se o usuario errar o computador dará dicas.\
4) Caso o jogador acertar, ele ganhará a partida")
    end
end

abertura_do_jogo()
manual()
