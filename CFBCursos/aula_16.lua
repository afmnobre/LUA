print("\n\nFunções VARIADICAS")

function SOMA(...)
    local s=0

    for i, v in pairs{...} do
        s=s+v
    end
    return s
end


print("Soma: "..SOMA(1,2,3,4,5,6,7))




