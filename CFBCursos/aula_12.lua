print("\n\nComando GO TO\n")
::ini::
print("Digite um Numero:")
num=io.read()
print("O numero digitado é: "..num)
print("\nDigitar outro numero?")
resp=io.read()

if resp=="s" then
    goto ini
end

print("\n\nPROGRMA SOL E LUA\n")

print("Como esta o dia? Ensolarado?")
RESPOSTA=io.read()

if RESPOSTA=="s" then
    goto SOL
elseif RESPOSTA=="n" then
    goto CHUVA
end


::SOL::
print("QUE DIA BOM, PEGUE  BRONZEADOR")
goto FIM

::CHUVA::
print("PEGUE O GUARDACHUVA")
goto FIM

::FIM::
print("FIM DA PROGRAMAÇÃO")
