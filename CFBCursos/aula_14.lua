print("\n\nLoop FOR para percorrer listas")

num={10,5,1,3,7,8,4,6,2,9}

print("\nFOR tradicional:")
for i=1,10 do
    print(num[i])
end

print("\nFOR para cada elemento da Lista:")
for i=1, #num do
    print(num[i])
end


print("\nSOMANDO com FOR para cada elemento da Lista:")
soma=0
for i=1, #num do
    soma=soma+num[i]
end
print(soma)
