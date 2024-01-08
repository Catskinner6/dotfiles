return {
    "andrewferrier/wrapping.nvim",
    lazy = true,   
    -- opts = {
    -- create_commands = true,
    -- create_keymaps = true,
    -- },
    config = function()
        require("wrapping").setup()
        -- local wrap = require("wrapping").setup{}
        -- vim.keymap.set("n", "<leader>w", wrap.soft_wrap_mode)    
    end,
}
