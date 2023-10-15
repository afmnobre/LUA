print("\nArray e Tabelas\n")
a={}
a[0]="Curso de Lua"
a[1]=1987
a[2]="Lucas Nobre Ferreira Martins"
print(a)
print("Imprimindo Array por elemento:")
print(a[0])
print(a[1])
print(a[2])

print("\n----------------------------------------\n")
print("Inserindo variável como índice de um array:")
b={}
item="Macarrão"
b[item]="200KL"

print(b[item])

print("\n----------------------------------------\n")
print("Quando se cria inserindo valores no array, ele não inicia com ZERO(0):")

notas={23,20,33,56,75}

print(notas[1])
print(notas[2])
print(notas[3])
print(notas[4])
print(notas[5])

print("\n----------------------------------------\n")
print("Criando um array como se fosse um JSON:")

dados={
    nome="Lucas",
    tipo="soldado",
    posicao={x=10,y=50,z=0},
    mochila={corda=1,pederneira=1,medicamento=5}
}

print(dados.nome)
print(dados.posicao.x)
print(dados.posicao.y)
print(dados.posicao.z)
print(dados.mochila.medicamento)
