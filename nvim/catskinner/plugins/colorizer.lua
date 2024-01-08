return {
    'norcalli/nvim-colorizer.lua',
    lazy = true,
    cmd = "ColorizerToggle",
    config = function()
        local setup = require("colorizer").setup()
    end,
}


