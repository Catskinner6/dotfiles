-- Config for Mason and Built-In LSP
return {
    "williamboman/mason.nvim",
    lazy = false,
    cmd = 'Mason',
    config = {
        ui = {
            icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
            }
        }
    } 
}
