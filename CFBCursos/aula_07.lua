print("\nDeclaração de variaveis inline com valor:")
x,y,z=10,5
print("O x é: \n"..x.."\nO y é: \n"..y.."\nO z é: ")
print(z)

print("\n\nInvertendo valores de x e y:")
x,y=y,x
print("O x é: \n"..x.."\nO y é: \n"..y)

print("\n\nTrabalhando com escopo de variaveis:")
notas={n1=10,n2=20,n3=24,n4=33,n5=38}
print(notas.n1)


do
    local soma=(notas.n1+notas.n2)
    print("soma DENTRO do \"do\" = "..soma)
end

soma=(notas.n2+notas.n4)
print("soma FORA   do \"do\" = "..soma)

print("** Ele não reconhece a variavel local dentro do bloco \"do\" de comandos")
