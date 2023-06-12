return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
 use { "catppuccin/nvim", as = "catppuccin" }
 use { "neovim/nvim-lspconfig", as = "lspconfig" }
 use { "hrsh7th/nvim-cmp", as = "cmp" }
 use { "hrsh7th/cmp-nvim-lsp", as = "cmp_nvim_lsp" }
 use { "hrsh7th/cmp-buffer" }
 use { "hrsh7th/cmp-path" }
 use { "hrsh7th/cmp-cmdline" }
 end)