-- -----------------------------------------------------------------------------
-- Multiple Colorscheme plugins are loaded here that can be switched on/off
-- in the initial init.lua file
-- Recommmended that colorschemes are not lazyloaded, and have a high priority.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    {
    "romainl/Apprentice",
    name = "apprentice",
    lazy = false,
    priority = 1000,
    config = function()
    end,
    },
    {
    'yorickpeterse/happy_hacking.vim',
    name = 'happy_hacking',
    lazy = false,
    priority = 1000,
    },
    {
    'CatskinnerTech/slacking.vim',
    name = 'slacking',
    lazy = false,
    priority = 1000,
    },
-- ---------------------------------------------------------
-- Shows the actual color around a hex color code.
-- Lazy loaded as only ocasionally used
    {
    'norcalli/nvim-colorizer.lua',
    lazy = true,
    cmd = "ColorizerToggle",
    config = function()
        local setup = require("colorizer").setup()
    end,
    },
}


