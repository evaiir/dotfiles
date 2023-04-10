-- 
-- Graphic settings
    -- Best theme u w u
vim.opt.termguicolors = true
vim.cmd.colorscheme('melange')
vim.cmd [[set background=dark]]
    -- Cursor configuration (not in the mood rn)
-- vim.opt.guicursor = ''
    -- Set the column with current line number and relative numbers to that line
vim.opt.number = true
vim.opt.relativenumber = true
    -- Turn off showing mode on command line as lualine already shows it
vim.cmd [[set noshowmode]]
    -- Highlight current cursor position
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- vim.cmd [[hi CursorLineNr guifg=#ffffff]]
    -- Highlight the 80th column for good coding visualization
vim.opt.colorcolumn = '80'
vim.cmd [[autocmd WinLeave * set colorcolumn=0]]
vim.cmd [[autocmd WinEnter * set colorcolumn=+0]]
vim.cmd [[set textwidth=80]]
    -- Why this isn't the default?
vim.opt.splitright = true
vim.opt.splitbelow = true
    -- Fix the perma highlight after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--
-- Formating settings
    -- Width for autoindents
vim.opt.shiftwidth = 4
    -- Converts tabs to spaces
vim.opt.expandtab = true
    -- Recognizes four spaces as a tab, so you can <BS> the whole indentation
vim.opt.softtabstop = 4
    -- C indentation helper
vim.opt.smartindent = true
    -- Wraping lines
vim.opt.wrap = true
    -- Bash-like completion
vim.cmd [[set wildmode=longest,list]]
    -- Limit for bottomline
vim.opt.scrolloff = 8

--
-- Fuck mouse users
vim.cmd [[set mouse=]]

-- Testing grounds
vim.cmd [[set encoding=utf-8]]
vim.cmd [[set fileencoding=utf-8]]
vim.cmd [[set virtualedit=block]]
