print("\nEstruturas de controle: IF\n")

n1=10
n2=5

if n1>n2 then
    print("O valor de n1 é maior que n2")
end

if n1<n2 then
    print("O valor de n1 é menor que n2")
end


print("\n\n++++++++++++++++++++++++++++++++\n")

print("Digite um valor para N1")
N1=io.read()
print("Digite um valor para N2")
N2=io.read()
print("Digite uma operação")
OP=io.read()


if OP=="+" then
   RES=N1+N2
   print("Soma:"..RES)
elseif OP=="-" then
   RES=N1-N2
   print("Subtração:"..RES)
elseif OP=="*" then
   RES=N1*N2
   print("Multiplicação:"..RES)
elseif OP=="/" and N2 ~= "0" and N1 ~= "0" then
   RES=N1/N2
   print("Divisão:"..RES)
else
   print("Operação inválida!")
end
