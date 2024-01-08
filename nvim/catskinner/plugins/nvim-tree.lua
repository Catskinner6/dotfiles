return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.keymap.set('n', '<C-f>', ':NvimTreeFindFileToggle<CR>')
    vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
--    vim.keymap.set('n', '<C-r>', api.tree.change_root_to_parent,        opts('Up'))
--    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  end,
}
