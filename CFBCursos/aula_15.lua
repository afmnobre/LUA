print("\n\nCriando Funções\n")

function ola()
    print("+ -----------------+")
    print("|  Seja bem vindo  |")
    print("|   Curso de Lua   |")
    print("|    CDB Cursos    |")
    print("+------------------+")
end

function soma(n1, n2)
    res=n1+n2
    print("+------------------------------------------------+")
    print("A soma de "..n1.." com "..n2.." é igual a "..res)
    print("+------------------------------------------------+")
end

function subtracao(n1, n2)
    res=n1-n2
    return res
end

function calc(n1,n2)
    soma=n1+n2
    multiplicacao=n1*n2
    subtracao=n1-n2
    divisao=n1/n2
    return soma,multiplicacao,subtracao,divisao
end


ola()

print("Digite o Valor 1")
num1=io.read()
print("Digite o Valor 2")
num2=io.read()

print("\nFunção SOMA sem RETURN")
soma(num1,num2)


print("\nFunção SUBTRAÇÃO com RETURN")
print("+--------------------------------------------------+")
print("A subtração de "..num1.." com "..num2.." é igual a "..subtracao(num1,num2))
print("+--------------------------------------------------+")

print("\nFunção com retorno MULTIPLO")
--Para cada retorno uma variavel é declarada.
soma,multiplicacao,subtracao,divisao=calc(num1,num2)
print("--SOMA------------")
print(soma)
print("--MULTIPLICAÇÃO---")
print(multiplicacao)
print("--SUBTRAÇÃO-------")
print(subtracao)
print("--DIVISÃO---------")
print(divisao)

