canal="CFB Cursos"
curso1='Curso de Lua 1'
curso2='"Curso de Lua 2"'
curso3="'Curso de Lua 3'"
outro="Programacao"
aux=nil
print("----------------------------------")
print(type(canal))
print(type(curso1))
print("----------------------------------")
print(curso1)
print(curso2)
print(curso3)
print(outro)
print("\n----------------------------------")
print("\nSem concatenação\n")
print(curso1, curso2, curso3, outro)
print("\nCom Concatenação\n")
print(curso1 .. curso2 .. curso3 .. outro)

--Cometario de linha simples

--[[ este é um comentario em bloco
Entende multiplas linhas e espaçamento

    \a campainha
    \b Backspace
    \f Alinhamento de formulario
    \n quebra de linha
    \r retorno de carro
    \t tabulação
    \v tabulação vertical
    \\ barra invertida
    \' apostrofo
    \" aspas

--]]


print("\n----------------------------------")
print("Pega o conteudo de uma variavel e substitui por outra definida.\n")
aux=string.gsub(curso1,"Lua",outro)
print(aux)

print("\n----------------------------------")
print("Operador que mostra tamanho da string:")
print(#aux)

print("\n----------------------------------")
print(curso1.."\nCampainha do canal:"..canal.."\a")
print("\n----------------------------------")

site=[[
<html>
    <head>
        <title>CFB Cursos</title>
    </head>
    <body>
        <h1>Curso de Lua</h1>
    </body>
</html>
]]

print(site)
io.write(site)

print("\n----------------------------------")
print("Conta = 15 + 5")
print("15" + 5 )
print(tonumber("15" + 5))
print(15 .. 5)

print("\n----------------------------------")
print("Digite um Numero:")
ler=io.read()
print(tonumber(ler)*2)
