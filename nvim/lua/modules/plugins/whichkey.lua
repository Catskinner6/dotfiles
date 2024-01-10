-- -----------------------------------------------------------------------------
-- WhichKey will bring up a pop-up menu showing all possible keys which can be
-- used in combination with the <leader> or other mod keys if there is a pause.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
