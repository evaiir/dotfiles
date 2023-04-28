vim.cmd [[packadd packer.nvim]] -- packadd packer module

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- this is essential.

    -- Colorschemes --
    use 'savq/melange'
    use 'junegunn/seoul256.vim'

    -- Plugins --
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'nvim-treesitter/nvim-treesitter-context'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'

    use {"akinsho/toggleterm.nvim", tag = '*'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

--    use 'Yggdroot/indentLine'
    use 'lukas-reineke/indent-blankline.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins                            
    if packer_bootstrap then
        require('packer').sync()
    end

end)
