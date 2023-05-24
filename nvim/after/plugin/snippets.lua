local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local ms = ls.multi_snippet
local fmt = require("luasnip.extras.fmt").fmt

require("luasnip.loaders.from_lua").lazy_load { paths = "~/.config/nvim/after/snippets/" }
require("luasnip/loaders/from_vscode").lazy_load()
require("luasnip/loaders/from_vscode").load({ paths = {"/home/zaurak/.config/nvim/after/snippets/" } })
