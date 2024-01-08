-- Tells Neovim to use the following files in the configuration:

require('modules.keymap')
require('modules.settings')
require('modules.lazy')

--require("lazy").setup('modules.plugins')    -- Find plugins in the plugin folder
--require("lazy").setup('modules.lsp')    -- Find plugins in the plugin folder

print("Test Line that file is getting read")
