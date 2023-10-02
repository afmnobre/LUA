
function pula_linha(_)
    for __ =0, _ do print() end
end


function abertura_jogo()
    pula_linha(7)
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
    print("\t=         TIC-TAC_TOE         =")
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
end

function checa_SO()
    home = os.getenv("HOME")
    if home == nil then return "|", "--", " " end
    return "↓", "→", " "
end

function cria_tabuleiro(_)
    return { {_, _, _}, {_, _, _}, {_, _, _} }
end

function recebe_nomes()
    jogs = {}

    for _ = 1, 2 do
        msg = "Digite o Nome do Jogador %s: "
        io.write(msg:format(_))
        table.insert(jogs, io.read())
    end
    return jogs
end

function imprimir_tabuleiro(T, SB, SD)
    abertura_jogo()
    pula_linha(2)

    print(string.format("\t\t    A B C\n\t\t    %s %s %s", SB, SB, SB))

    for _ = 1, 3 do
        io.write(string.format("\t\t %s%s", _, SD))
        print(table.concat(T[_], " "))
    end
    pula_linha(5)
end


function le_jogada(JOGADORES, X)
    --jogada = {}
    checa_jogada = function(jog)
        coluna = string.byte(jog:upper()) - 64
        linha  = tonumber(jog:sub(2,2))
        if coluna >= 1 and coluna <= 3 and linha >= 1 and linha <= 3 then
            return coluna, linha
        else
            print("Sua Jogada foi inválida, Por Favor, jogue novamente...")
            le_jogada(JOGADORES, X)
        end
    end

    io.write(string.format("%s, digite sua jogada (Ex: B3, A1, C2...):", JOGADORES[X]))

    return checa_jogada(io.read())
end

function preenche_tabuleiro(tabuleiro, POS_VAZIA, PECA, jogadores, _, COL, LIN)
    if tabuleiro[LIN][COL] == POS_VAZIA then
        tabuleiro[LIN][COL] = PECA
    else
        msg = "%s, Você tentou uma posição ja preenchida, jogue novamente!"
        print(msg:format(jogadores[_]))
        preenche_tabuleiro(tabuleiro, POS_VAZIA, PECA, jogadores, _, le_jogada(jogadores, _))
    end
    return tabuleiro
end

function checa_tabuleiro(PECAS, TABULEIRO, JOGADORES, POS_VAZIA)
    vitoria = false
    vitorioso = ""
    cont_diag = 0

    for _ , PECA in ipairs(PECAS) do
        for i = 1, 3 do
            if TABULEIRO[i][1] == PECA and TABULEIRO[i][2] == PECA and TABULEIRO[i][3] then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
            end
            if TABULEIRO[1][i] == PECA and TABULEIRO[2][i] == PECA and TABULEIRO[3][i] then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
            end
        end
        if TABULEIRO[1][1] == PECA and TABULEIRO[2][2] == PECA and TABULEIRO[3][3] then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
        elseif  TABULEIRO[1][3] == PECA and TABULEIRO[2][2] == PECA and TABULEIRO[3][1] then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
        end
    end
    return vitioria, vitorioso
end

function checa_velha(TABULEIRO)
    contador = 0
    for _ in ipairs(TABULEIRO) do
        for __ in ipairs(TABULEIRO[_]) do
            if TABULEIRO[_][__] == POS_VAZIA then
                contador = contador + 1
            end
        end
    end
    if contador > 0 then return false end
    return true

end

abertura_jogo()
SETA_BAIXO, SETA_DIREITA, POS_VAZIA = checa_SO()

tabuleiro = cria_tabuleiro(POS_VAZIA)
jogadores = recebe_nomes()
PECAS = {"X", "O"}


imprimir_tabuleiro(tabuleiro, SETA_BAIXO, SETA_DIREITA)
for _ in pairs(jogadores) do
    tabuleiro = preenche_tabuleiro(tabuleiro, POS_VAZIA, PECAS[_], jogadores, _, le_jogada(jogadores, _))
    vitoria, vitorioso = checa_tabuleiro(PECAS, tabuleiro, jogadores, POS_VAZIA)
    velha = checa_velha(tabuleiro, POS_VAZIA)
end
imprimir_tabuleiro(tabuleiro, SETA_BAIXO, SETA_DIREITA)
