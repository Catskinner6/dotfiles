-- -------------------------------------------------------------------------------------
-- 
-- NEOVIM DARK
-- 
-- This is a modular slimmed down neovim config.
-- Unlike Kickstart, the plugins are all stored in seperate files so that
-- they can more easily be seen, edited, removed or added.
-- All Plugin Specific KEYMAPS and SETTINGS are stored in their plugin file.
-- Global settings and keymaps are stored in their own respective files.
--
-- By: 		Scott Rice - 2024 JAN
-- License:	GNU/APACHE?
-- Blah blah blah...
-- -------------------------------------------------------------------------------------
-- INIT.LUA:
-- Tells your neovim which folders to find your config in and 
-- quick global settings (such as which colorscheme).
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
--
-- Prints a few lines to the screen to let you know that you neovim is reading your config.
print("Let's... get... Dangerous...")

-- Custom Config Folder to Use
require("modules")

-- Set Colorscheme and Background
vim.cmd('colorscheme slacking')
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none})

