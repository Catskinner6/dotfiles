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

-- ---------------------------------------------------------
-- Configures the vim Status Bar
    {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        local colors = {
          blue = "#0f0668",
          green = "#008000",
          gold = "#ff5f00",
          yellow = "#ffaf00",
          red = "#F05E48",
          fg = "#c3ccdc",
          bg = "#292929",
          inactive_bg = "#2c3043",
        }

        local my_lualine_theme = {
            normal = {
                a = { bg = colors.blue, fg = colors.fg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.fg },
                c = { bg = colors.bg, fg = colors.fg },
            },
            insert = {
                a = { bg = colors.green, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.fg },
                c = { bg = colors.bg, fg = colors.fg },
            },
            visual = {
                a = { bg = colors.gold, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.fg },
                c = { bg = colors.bg, fg = colors.fg },
            },
            command = {
                a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.fg },
                c = { bg = colors.bg, fg = colors.fg },
            },
            replace = {
                a = { bg = colors.red, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.fg },
                c = { bg = colors.bg, fg = colors.fg },
            },
            inactive = {
                a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
                b = { bg = colors.inactive_bg, fg = colors.semilightgray },
                c = { bg = colors.inactive_bg, fg = colors.semilightgray },
            },
        }

        -- configure lualine with modified theme
        lualine.setup({
        options = {
        theme = my_lualine_theme,
        },
        sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
        },
        })
        end,
    },
}


