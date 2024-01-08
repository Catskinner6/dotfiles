-- --------------------------------------------------------------------------
-- --------------------------------------------------------------------------
-- Null-LS reformats code (go-lang) on save...
-- --------------------------------------------------------------------------
-- --------------------------------------------------------------------------
-- local null_ls = require("null-ls")
-- local opts = {
--     sources = {
--         null_ls.builtins.formatting.gofmt,
--         null_ls.builtins.formatting.gofmt,
--     },
-- }
return {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    ft = "go",
--[[     opts = opts, ]]
    dependencies = { 'nvim-lua/plenary.nvim' },
}
