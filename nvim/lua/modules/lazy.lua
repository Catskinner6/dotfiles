-- ---------------------------------------------------------------------------------------
-- Installs the Lazy Plug-In Manager
-- ---------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------

-- Install the Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
----------------------------------------------------
-- Add Plugins:
local plugins = {}  -- Some like to put plugins with no extra settings here.

local opts = {}

require("lazy").setup('modules.plugins')    -- Find plugins in the plugin folder
--require("lazy").setup('modules.lsp')        -- Find plugins in the LSP folder
