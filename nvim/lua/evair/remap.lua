-- Set leader key to space key.
vim.g.mapleader = " "

-- Explorer.
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Buffers.
    -- Move between buffers.
vim.keymap.set("n", "<leader>j", ":bprev<CR>")
vim.keymap.set("n", "<A-\'>", ":bprev<CR>")
vim.keymap.set("n", "<leader>k", ":bnext<CR>")
vim.keymap.set("n", "<A-2>", ":bnext<CR>")
vim.keymap.set("n", "<A-1>", ":b1<CR>")
    -- Delete current buffer.
vim.keymap.set("n", "<leader>z", ":bd<CR>")
    -- Write to current file.
vim.keymap.set("n", "<C-s>", ":w<CR>")
    -- Open this file.
vim.keymap.set("n", "ø", ":e ~/.config/nvim/lua/evair/remap.lua<CR>")

-- Move to line edges
vim.keymap.set("i", "<A-l>", "<Esc>A")
vim.keymap.set({"n", "v"}, "<A-l>", "$")
vim.keymap.set("i", "<A-h>", "<Esc>I")
vim.keymap.set({"n", "v"}, "<A-h>", "^")

-- Move to function begin and end
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
vim.keymap.set("n", "ß", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
    -- Add/remove space between function definition and condition.
vim.keymap.set("n", "<leader>a", [[:%s/\(\a\)(/\1 (/gc<CR>]])
vim.keymap.set("n", "<leader>b", [[:%s/\(\a\) (/\1(/gc<CR>]])

-- Writing.
    -- C pointer arrows.
vim.keymap.set("i", "<C-a>", "->")
    -- Cut/Delete text till parenthesis
vim.keymap.set("n", "©", "ct)")
vim.keymap.set("n", "ð", "dt)")

-- Formatting.
    -- Fix indentation inside a function.
vim.keymap.set("n", "§", "migg=G'izz")

-- Yank to normal register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Temp
vim.keymap.set("i", "<C-z>", "struct tNo")
vim.keymap.set("n", "za", "zAzt")
