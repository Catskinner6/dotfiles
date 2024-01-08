-- Mason-LSPConfig.Nvim
local opts = {
    ensure_installed = {
        "gopls",
    	"bashls",
    	"lua_ls",
        "efm",
        "taplo",
        "yamlls",
        "sqlls",
        "pyright",
        "ltex",
        "jsonls",
        "html",
        "julials",
        "marksman",
        "matlab_ls",
    },
    automatic_installation = true,
}

return {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = opts,
    event = "BufReadPre",
    dependencies = "williamboman/mason.nvim",
}
