return {
    s({
        trig = "ifndef",
        dscr = "Inclusion guard",
    },
    {
        t("#ifndef __"), i(1),
        t({"", "#define __"}), rep(1),
        t({"", ""}), i(0),
        t({"", "#endif"}),
    }),
}
