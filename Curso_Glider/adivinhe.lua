--FUNÇÃO DE ABERTURA DO JOGO, mostra somente as informações básicas.
function abertura_do_jogo()
    print("\nBem Vindo ao jogo Advinhe o Número!\
Este jogo foi criado por Lucas Nobre Ferreira Martins\
        \nA licença desse código é GPL3.0")
end
--FUNÇÃO MANUAL - Mostra o funcionamento do jogo.
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
--FUNÇÃO PARA RETORNAR NUMERO ALEATÓRIO - o numero que vai ser advinhado pelo jogador.
function cria_numero_aleatorio()
    numero = math.random(50)
    return numero
end
--FUNÇÃO PARA CAPTURAR OS PALPITES DO JOGADOR.
--essa função recebe o palpite, e transforma a STRING em NUMERO.
--essa função tambem verifica se o jogador esta digitando um numero valido para o palpite.
function captura_palpite()
    print("\nDigite um palpite: ")
    while true do
        palpite = io.read()
        if type(tonumber(palpite)) == "number" then
            palpite = tonumber(palpite)
            if palpite > 100 or palpite < 1 then
                print("Seu palpite foi inválido, use um numero entre 1 e 100")
            else
                return palpite
            end
        else
            print("Amigo, por favor digite UM NÚMERO")
        end
    end
end
--FUNÇÃO QUE COMPARA O PALPITE DO JOGADOR E O NUMERO DO COMPUTADO.
function compara_palpite(num_do_computador, palpite)
    if num_do_computador == palpite then
        return true
    else
        return false
    end
end
--FUNÇÃO QUE MOSTRA O RESULTADO DAS TENTATIVAS DO JOGADOR.
--Se o resultado da função RESULTADO DA TENTATIVA for TRUE, vc ganha o jogo.
function imprime_interacao(numero, resultado_da_tentativa)
    if resultado_da_tentativa then
        print("PARABÉNS eu realmente estava pensando no número "..numero)
    else
        print("Não, não é esse o número que pensei =( ")
        print("que tal tentar novamente?")
    end
    return not resultado_da_tentativa
end
--FUNÇÃO QUE CHAMA A CAPTURA DE PALPITE DO JOGADOR E RETORNA ......
function partida(numero_secreto)
    palpite = captura_palpite()
    return imprime_interacao(numero_secreto, compara_palpite(numero_secreto, palpite))
end

--CHAMANDO A FUNÇÃO DE ABERTURA DO JOGO
abertura_do_jogo()
--CHAMANDO A FUNÇÃO PARA VER O MANUAL DO JOGO COM AS INSTRUIÇÕES.
manual()
--VARIAVEL que armazena o numero aleatório.
numero_secreto = cria_numero_aleatorio()

--REPETE O LOOPING enquando o CONTINUA JOGANDO for TRUE.
continua_jogando = true
while continua_jogando do
    continua_jogando = partida(numero_secreto)
end

