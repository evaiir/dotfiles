local set = vim.opt
-- Graphic settings
    -- Best theme u w u
set.termguicolors = true
vim.cmd.colorscheme('melange')
vim.cmd [[set background=dark]]
    -- Cursor configuration (not in the mood rn)
-- set.guicursor = ''
    -- Set the column with current line number and relative numbers to that line
set.number = true
set.relativenumber = true
    -- Turn off showing mode on command line as lualine already shows it
vim.cmd [[set noshowmode]]
    -- Highlight current cursor position
set.cursorline = true
set.cursorcolumn = true
-- vim.cmd [[hi CursorLineNr guifg=#ffffff]]
    -- Highlight the 80th column for good coding visualization
set.colorcolumn = '80'
vim.cmd [[autocmd WinLeave * set colorcolumn=0]]
vim.cmd [[autocmd WinEnter * set colorcolumn=+0]]
vim.cmd [[autocmd WinLeave * set nocursorline]]
vim.cmd [[autocmd WinEnter * set cursorline]]
vim.cmd [[autocmd WinLeave * set nocursorcolumn]]
vim.cmd [[autocmd WinEnter * set cursorcolumn]]
vim.cmd [[set textwidth=80]]
    -- Why this isn't the default?
set.splitright = true
set.splitbelow = true
    -- Fix the perma highlight after search
set.hlsearch = false
set.incsearch = true

--
-- Formating settings
    -- Width for autoindents
set.shiftwidth = 4
    -- Converts tabs to spaces
set.expandtab = true
    -- Recognizes four spaces as a tab, so you can <BS> the whole indentation
set.softtabstop = 4
    -- C indentation helper
set.smartindent = true
    -- Wraping lines
set.wrap = true
    -- Bash-like completion
vim.cmd [[set wildmode=longest,list]]
    -- Limit for bottomline
set.scrolloff = 8

--
-- Fuck mouse users
vim.cmd [[set mouse=]]

-- Testing grounds
vim.cmd [[set encoding=utf-8]]
vim.cmd [[set fileencoding=utf-8]]
vim.cmd [[set virtualedit=block]]
set.numberwidth = 3
set.statuscolumn = "%=%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . '  ' : v:lnum) : ''}%=%s"
vim.cmd [[set signcolumn=yes:1]]
