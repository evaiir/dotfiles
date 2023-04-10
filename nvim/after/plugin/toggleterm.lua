require("toggleterm").setup {
	direction = "float",
	float_opts = {
		border = "curved",
	}
}

-- Terminal inside nvim shortcut
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>")
vim.keymap.set("t", "<C-t>", [[<C-\><C-n>:ToggleTerm<CR>]])
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
