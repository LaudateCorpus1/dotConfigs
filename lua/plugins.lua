-- Package manager

local cmd = vim.cmd
local fn = vim.fn


-- Package Manager
cmd [[packadd packer.nvim]]          -- load the package manager


-- PLugins
return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}
  use 'tpope/vim-commentary'          -- https://github.com/tpope/vim-commentary
  use 'machakann/vim-sandwich'        -- https://github.com/machakann/vim-sandwich
  -- use 'shougo/deoplete-lsp'        -- https://github.com/Shougo/deoplete-lsp
  -- use {'shougo/deoplete.nvim', run = function() fn['remote#host#UpdateRemotePlugins'] end} -- https://github.com/Shougo/deoplete.nvim
  use 'nvim-treesitter/nvim-treesitter' -- https://github.com/nvim-treesitter/nvim-treesitter
  -- use 'tjdevries/nlua.nvim'           -- https://github.com/tjdevries/nlua.nvim
  use 'neovim/nvim-lspconfig'         -- https://github.com/neovim/nvim-lspconfig
  use 'Dualspc/spaceodyssey'          -- https://github.com/Dualspc/spaceodyssey
  use {
    'glepnir/galaxyline.nvim',  -- https://github.com/glepnir/galaxyline.nvim
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons', opt = true} -- https://github.com/kyazdani42/nvim-web-devicons
  }
  use 'rhysd/vim-clang-format'        -- https://github.com/rhysd/vim-clang-format
  use 'Yggdroot/indentLine'           -- https://github.com/Yggdroot/indentLine
  use 'psf/black'                     -- https://github.com/psf/black
  use 'ludovicchabant/vim-gutentags'  -- https://github.com/ludovicchabant/vim-gutentags
  use 'liuchengxu/vista.vim'          -- https://github.com/liuchengxu/vista.vim
  use 'kyazdani42/nvim-tree.lua'      -- https://github.com/kyazdani42/nvim-tree.lua
  use 'norcalli/nvim-colorizer.lua'   -- https://github.com/norcalli/nvim-colorizer.lua
  use 'jiangmiao/auto-pairs'          -- https://github.com/jiangmiao/auto-pairs
  use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/popup.nvim',    -- https://github.com/nvim-lua/popup.nvim
                    'nvim-lua/plenary.nvim'}  -- https://github.com/nvim-lua/plenary.nvim
  } -- https://github.com/nvim-telescope/telescope.nvim
  use 'mbbill/undotree'               -- https://github.com/mbbill/undotree
  use 'rafcamlet/nvim-luapad'         -- https://github.com/rafcamlet/nvim-luapad
  use 'lewis6991/gitsigns.nvim'       -- https://github.com/lewis6991/gitsigns.nvim
  use 'SirVer/ultisnips'              -- https://github.com/SirVer/ultisnips
  use 'honza/vim-snippets'            -- https://github.com/honza/vim-snippets
  use 'tpope/vim-fugitive'            -- https://github.com/tpope/vim-fugitive
  use {
        'glacambre/firenvim',
        run = function()
          fn['firenvim#install'](0)
        end
  }                                   -- https://github.com/glacambre/firenvim
  use 'nvim-lua/completion-nvim'      -- https://github.com/nvim-lua/completion-nvim
  use 'voldikss/vim-floaterm'         -- https://github.com/voldikss/vim-floaterm
end)
