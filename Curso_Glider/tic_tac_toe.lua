
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








abertura_jogo()

SETA_BAIXO, SETA_DIREITA, POS_VAZIA = checa_SO()
print("\t"..SETA_BAIXO)
print("\t"..SETA_DIREITA)
print("\t"..POS_VAZIA)

tabuleiro = cria_tabuleiro(POS_VAZIA)
jogadores = recebe_nomes()

imprimir_tabuleiro(tabuleiro, SETA_BAIXO, SETA_DIREITA)








pula_linha(10)


for _ = 1, 3 do
    for __ = 1, 3 do
        tabuleiro[_][__] = __
    end
end

for _ = 1, 3 do
    for __ = 1, 3 do
        io.write(tabuleiro[_][__])
    end
    print()
end



