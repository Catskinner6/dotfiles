-- LSP Config

return {
    "neovim/nvim-lspconfig",
    config = config,
    lazy = false,
    
    dependencies = {
   -- "windwp/nvim-auopairs",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "creativenull/efmls-configs-nvim"
    },

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
}


