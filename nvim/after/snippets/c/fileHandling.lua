return {
    s({
        trig = "fopen",
        dscr = "Open a file to manipulate",
    },
    {
        i(1, "file_ptr"), t(" = fopen("), i(2, "const char *filename"), t(", "),
        i(3, "const char *mode"), t({ ");", "if(! " }), rep(1), t({ ") {",
        "\tfprintf(stderr, \"Erro ao abrir arquivo.\");", 
        "\texit(EXIT_FAILURE);", "}" }),
    }),

    s({
        trig = "fclose",
        dscr = "Close a previously opened file",
    },
    {
        t("fclose("), i(1, "file_ptr"), t({ ");", "" }), rep(1), 
        t(" = NULL;"),
    }),

    --TODO: fread, fwrite, fclose (autotrigger, maybe?), move fprintf here
}
