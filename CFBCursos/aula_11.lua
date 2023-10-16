print("\n\nComandos BREAK e RETURN\n")

print("BREAK não para a execução do programa.\n")
i=0
while i<100 do
    print(i)
    if i>10 then
        break
    end
    i=i+1
end
print("Fim do While")

print("\nRETURN para a execução do programa\n")
i=0
while i<100 do
    print(i)
    if i>10 then
        return
    end
    i=i+1
end
print("Fim do While")

