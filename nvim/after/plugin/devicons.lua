require'nvim-web-devicons'.setup {
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "Zsh"
		}
	};
	-- globally enable different highlight colors per icon
	-- if set to false all icons will have the default icon's color
	color_icons = true;
	-- globally enable default icons (default to false)
	default = true;
}

