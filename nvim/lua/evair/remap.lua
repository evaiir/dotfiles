-- Set space key as leader key.
vim.keymap.set("n", "<Space>", "<NOP>")
vim.g.mapleader = " "

-- Set \ key as local leader key.
vim.cmd [[let maplocalleader = '\']]

-- Explorer.
vim.keymap.set("n", "<leader>e", vim.cmd.Vex)

-- Buffers.
    -- Move between buffers.
vim.keymap.set("n", "<A-1>", ":b1<CR>")
vim.keymap.set("n", "<leader>j", ":bprev<CR>")
vim.keymap.set("n", "<leader>k", ":bnext<CR>")
vim.keymap.set("n", "<A-\'>", ":bprev<CR>")
vim.keymap.set("n", "<A-2>", ":bnext<CR>")
    -- Delete current buffer.
vim.keymap.set("n", "<leader>z", ":bd<CR>")
    -- Write to current file.
vim.keymap.set("n", "<C-s>", ":w<CR>")
    -- Open this file.
vim.keymap.set("n", "ø", ":e ~/.config/nvim/lua/evair/remap.lua<CR>")
vim.keymap.set("n", "þ", ":e ~/.config/nvim/after/snippets/<CR>")

-- Move to line edges
vim.keymap.set("i", "<A-l>", "<Esc>A")
vim.keymap.set({"n", "v"}, "<A-l>", "$")
vim.keymap.set("i", "<A-h>", "<Esc>I")
vim.keymap.set({"n", "v"}, "<A-h>", "^")

-- Move to end of previous word
vim.keymap.set({"n", "v"}, "<A-e>", "ge")
vim.keymap.set({"n", "v"}, "<A-E>", "gE")

-- Move to start/end of last visual selection
vim.keymap.set("n", "<C-,>", "'<")
vim.keymap.set("n", "<C-.>", "'>")

-- Move to function start/end
vim.keymap.set({"n", "v"}, "<A-k>", "?^[^ \\t#/-]<CR>")
vim.keymap.set({"n", "v"}, "<A-j>", "/^[^ \\t#/-]<CR>")

-- Move lines up and down when in visual mode (needs better shortcut).
vim.keymap.set("v", "L", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "H", ":m '<-2<CR>gv=gv")

-- Center the cursor after halfpage jumps.
vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz")
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz")

-- Register management.
    -- Substitute text without writing deleted text to the register.
vim.keymap.set("x", "<leader>p", [["_dP]])
    -- Delete without writing to the register.
vim.keymap.set("n", "<leader>d", [["_d]])
vim.keymap.set("x", "<leader>d", [["_d]])

-- Black magic stuff.
    -- Replace all occurrences of a word in the file.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>]])
    -- Replace all occurrences of a word in the line.
vim.keymap.set({"n", "v"}, "ß", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
    -- Add/remove space between function definition and condition.
vim.keymap.set("n", "<leader>a", [[:%s/\(\a\)(/\1 (/gc<CR>]])
vim.keymap.set("n", "<leader>b", [[:%s/\(\a\) (/\1(/gc<CR>]])

-- Writing.
    -- C pointer arrows.
vim.keymap.set({"i", "t"}, "<C-a>", "->")
    -- Cut/Delete text till parenthesis
vim.keymap.set("n", "©", "ct)")
vim.keymap.set("n", "ð", "dt)")
    -- Cut text till underscore
vim.keymap.set("n", "<C-c>", "ct_")

-- Formatting.
    -- Fix indentation inside a function.
vim.keymap.set("n", "§", "migg=G'izz")

-- Yank to normal register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Folding remaps
vim.keymap.set("n", "za", "zAzt")
vim.keymap.set("n", "zr", "zR")
vim.keymap.set("n", "zR", "zr")
vim.keymap.set("n", "zm", "zM")
vim.keymap.set("n", "zM", "zm")

-- Make J and K part of jumplist
vim.keymap.set({"n", "v"}, "j", [[v:count ? (v:count >=3 ? "m'" . v:count : "") . "j" : "j"]], { expr = true })
vim.keymap.set({"n", "v"}, "k", [[v:count ? (v:count >= 3 ? "m'" . v:count : "") . "k" : "k"]], { expr = true })

-- Temp
vim.keymap.set("i", "<C-z>", "struct file_header_t")
vim.keymap.set("i", "<C-x>", "struct list_t")
