return {
    s({
        trig = "ifi",
        dscr = "If function with single argument",
    },
    {
        t("if("), i(1, "condition"), t(")"),
        t({ "", "\t" }), i(0),
    }),
    s({
        trig = "if",
        dscr = "If function with multiple arguments",
    },
    {
        t("if("), i(1, "condition"), t(") {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" })
    }),
    s({
        trig = "while",
        dscr = "While function with single argument",
    },
    {
        t("while("), i(1, "condition"), t(")"),
        t({ "", "\t" }), i(0),
    }),
    s({
        trig = "mwhile",
        dscr = "While function with multiple arguments",
    },
    {
        t("while("), i(1, "condition"), t(") {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" })
    })
}
