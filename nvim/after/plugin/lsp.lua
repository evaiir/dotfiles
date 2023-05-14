require('mason.settings').set({
    ui = {
        border = 'rounded'
    }
})

local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = '│',
        warn  = '│',
        hint  = '│',
        info  = '│'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = {
        buffer = bufnr,
        remap = false
    }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-n>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-p>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})
lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

local lspkind = require('lspkind')

local cmp_config = lsp.defaults.cmp_config({
    window = {
        completion = cmp.config.window.bordered({
            border = {
                "◈",
                "—",
                "◈",
                " ",
                "◈",
                "—",
                "◈",
                " ",
            }
        }),
    },

    sources = {
        {name = "nvim_lsp", keyword_length = 2},
        {name = "luasnip", keyword_length = 2},
        {name = "path", keyword_length = 2},
        {name = "buffer", keyword_length = 3},
        {name = "nvim_lua", keyword_length = 2},
    },
    formatting = {
        fields = {"menu", "abbr", "kind"},
        format = lspkind.cmp_format({
            maxwidth = 20,
            ellipsis_char = '...',

            before = function (entry, vim_item)
                local final = "()"
                vim_item.abbr = vim_item.abbr:match("[^(]+")
                vim_item.abbr = vim_item.abbr:gsub("%s+","")

                if vim_item.kind == "Function" or  vim_item.kind == "Method" then
                    vim_item.abbr = vim_item.abbr:gsub("%s+","") .. final
                end
                vim_item.menu = ""
                return vim_item
            end
        }),
    },

    sorting = {
        comparators = {
            cmp.config.compare.exact,
            cmp.config.compare.locality,
        }
    }
})

cmp.setup(cmp_config)

vim.diagnostic.config({
    virtual_text = false,
})
