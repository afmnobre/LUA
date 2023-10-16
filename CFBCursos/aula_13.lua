::sala1:: do
    print("\n\nVocê esta ma sala 1")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()
    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3" then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala Inválida!")
        goto sala1
    end
end

::sala2:: do
    print("\n\nVocê esta ma sala 2")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()
    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3" then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala Inválida!")
        goto sala2
    end
end

::sala3:: do
    print("\n\nVocê esta ma sala 3")
    print("Ir para qual sala? [1,2,3,4]")
    local sala=io.read()
    if sala=="1" then
        goto sala1
    elseif sala=="2" then
        goto sala2
    elseif sala=="3" then
        goto sala3
    elseif sala=="4" then
        goto sala4
    else
        print("Sala Inválida!")
        goto sala3
    end
end

::sala4:: do
    print("\n\nVocê esta ma sala 4, que é a saida.")
    print("Fim de Jogo!")
end
