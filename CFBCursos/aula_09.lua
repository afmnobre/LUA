print("\n\nLoop While e Repeat em Lua\n")


print("Comando WHILE - Faz ENQUANTO a condição ser verdadeira")
num=0
while num<10 do
    print(num)
    num=num+1
end

print("\nComando REPEAT - Faz ATÉ a condição ser verdadeira")
num=0
repeat
    print(num)
    num=num+1
until num>10

print("\n\n+++++++++++++++++++++++++++++++++++++++++++++++++++++")
print("++++++++++++++++++++++JOGO+++++++++++++++++++++++++++")
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++")

math.randomseed(os.time())

valor=math.random(10)
tentativas=1

print("Advinhe o Valor")
CHUTE=io.read("*number")

while CHUTE ~= valor do
    tentativas=tentativas+1
    if(CHUTE<valor)then
        print("Seu CHUTE foi menor")
    elseif(CHUTE>valor)then
        print("Seu CHUTE foi maior")
    end
    print("Digite o valor")
    CHUTE=io.read("*number")
end

print("Vocẽ acertou em "..tentativas.." CHUTES")
