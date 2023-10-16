print("\nVariações do LOOP FOR\n")

print("FOR NUMERICO: incrementando de 2 em 2")

for i=0,9,2 do
    print(i)
end

print("\nDias da Semana:")
dias={"domingo","segunda","terça","quarta","quinta","sexta","sabado"}

for i=1,7 do
    print(dias[i])
end

print("\nPercorrendo ARRAY com FOR sem identificar os numeros")

for k,v in pairs(dias) do
    print(k.." - "..v)
end

print("\nPercorrendo STRING com FOR sem identificar os numeros")
nome="Lucas Nobre Ferreira"
for v in string.gmatch(nome,".") do
    print(v)
end


