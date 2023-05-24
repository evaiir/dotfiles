-- TODO:
-- Arrumar essa sintaxe porca
-- Talvez abrir mão do fmt
-- Mas ts e is também são uma bosta
-- zzzzzz
return {
    s({
        trig = "mwhile",
        dscr = "While function with multiple arguments",
    },
    fmt([[
    while({})
        return {};
        ]], {
            i(1, "cond"), i(2, "VALUE")
        })),
    }

