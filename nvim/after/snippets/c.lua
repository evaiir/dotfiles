return {
    s({
        trig = "sst",
        dscr = "Standard code starter",
    },
    {
        t({ "#include <stdio.h>", "#include <stdlib.h>", "" }),
        t({ "", "int main(int argc, char *argv[]) {", "\t" }), i(0),
        t({ "", "", "\treturn 0;", "}" }),
    }),

    s({
        trig = "cmt",
        dscr = "Simple comment block",
    },
    {
        t("/* "), i(0), t(" */"),
    }),

    s({
        trig = "lcmt",
        dscr = "Long comment block",
    },
    {
        t({ "/*", " * " }), i(0), t({ "", " */" }),
    }),

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
    }),

    s({
        trig = "mlc",
        dscr = "Allocate a memory dinamically",
    },
    {
        t("if(! ("), i(1, "ptr"), t(" = malloc(sizeof("), i(2, "int"),
        t("))))"), t({ "", "\treturn " }), i(3, "NULL"), t(";"),
    }),

    s({
        trig = "clc",
        dscr = "Allocate a block of memory dinamically",
    },
    {
        t("if(! ("), i(1, "ptr"), t(" = calloc("), i(2, "1"), t(", sizeof("),
        i(3, "int"), t("))))"), t({ "", "\treturn " }), i(4, "NULL"), t(";"),
    }),

    s({
        trig = "#inc",
        dscr = "Include a <library>",
        priority = 2000,
    },
    {
        t("#include <"), i(1, "stdio.h"), t(">"),
    }),

    s({
        trig = "#inc",
        dscr = "Include a \"library\"",
    },
    {
        t("#include \""), i(1, "mylib.h"), t("\""),
    }),

    s({
        trig = "null",
        dscr = "Writes NULL in full caps.",
    },
    {
        t("NULL"),
    }),

    s({
        trig = "return",
        dscr = "Prepare a return value.",
    },
    {
        t("return "), i(1, "NULL"), t(";"),
    }),
}
