-- -----------------------------------------------------------
-- Mason-LSPConfig.Nvim
local opts = {
    ensure_installed = {
        "gopls",
    	"bashls",
    	"lua_ls",
        "efm",
        "taplo",    -- TOML?
        "yamlls",
        "sqlls",
        "pyright",
        "ltex",
        "tsserver",
        "jsonls",
        "html",
        "julials",
        "marksman",
        "matlab_ls",
        "dockerls",
        "clangd",
    },
    automatic_installation = true,
}
-- -----------------------------------------------------------
-- LSP Config - Mason, KDL plugin, etc...
return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        cmd = 'Mason',
        opts = {
            ui = {
                icons = {
				    package_installed = "✓",
				    package_pending = "➜",
				    package_uninstalled = "✗",
                }
            }
        },
        config = function()
          require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = opts,
        event = "BufReadPre",
        dependencies = "williamboman/mason.nvim",
    },
    {
        -- KDL Syntax and Highlighting (Zellij Config)
        "imsnif/kdl.vim",
        lazy = false,
        config = function()
        end,
    },
    {
        "creativenull/efmls-configs-nvim",
        version = 'v1.4.0', -- version is optional, but recommended
        dependencies = { 'neovim/nvim-lspconfig' },
    },
    {
        "j-hui/fidget.nvim",
        opts = {
        -- options
        },
    },
    {
        "folke/neodev.nvim", opts = {}
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            local util = require 'lspconfig.util'
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
                cmd = {'gopls'},
                filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
                root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
            })
            lspconfig.julials.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.sqlls.setup({
                capabilities = capabilities
            })
            lspconfig.taplo.setup({
                capabilities = capabilities
            })
            lspconfig.yamlls.setup({
                capabilities = capabilities
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.marksman.setup({
                capabilities = capabilities
            })
            lspconfig.ltex.setup({
                capabilities = capabilities
            })
            lspconfig.matlab_ls.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
