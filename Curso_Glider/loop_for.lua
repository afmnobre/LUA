print("\n\n## COMO FUNCIONA O LOOP FOR NA LINGUAGEM LUA ##\n\n")

print("Criei uma lista com a seguinte frase: |Ola| |!| |spc| |Bem Vindo| |spc| |ao curso| |spc | |de lua.|")
lista = { "Ola", "!", " ", "Bem Vindo", " ", "ao curso", " ", "de lua", "\n" }

print("\nSe pedir pra imprimir somente o nome da lista aparece o endereço dela na memmoria.")
print(lista)

print("\nIMPRIMINDO A LISTA POR POSIÇÃO DE 1 ATÉ 7\n")
print("1) campo: "..lista[1])
print("2) campo: "..lista[2])
print("3) campo: "..lista[3])
print("4) campo: "..lista[4])
print("5) campo: "..lista[5])
print("6) campo: "..lista[6])
print("7) campo: "..lista[7])
print("8) campo: "..lista[8])
print("9) campo: "..lista[9])
print("11) campo: ")
print(lista[11])

print("* - O campo 9 apareceu sem nada e com um espaço embaixo porque foi gravado o valor '\\n'")
print("** - O campo 11 apareceu NIL porque não existe nada gravado na lista da posição 10.\n\n\n")

print("    ### EXECUTANDO UM COMANDO FOR ###      \n")

mensagem = { "Ola", "!", " ", "Bem Vindo", " ", "ao curso", " ", "de lua.", " ", "Obrigado!" }

for _ = 1, 10 do
    io.write(mensagem[_])
end

print("\n\n\n    ### INSERINDO UM VALOR NA LISTA E DEPOIS IMPRIMINDO NOVAMENTE ###      \n")

table.insert(mensagem, "\nLucas\nNobre Ferreira.")

for _ = 1, 11 do
    io.write(mensagem[_])
end

