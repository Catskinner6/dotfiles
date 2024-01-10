-- -----------------------------------------------------------------------------
-- Fugitive allows you to open a pane within nvim to show git information for the
-- directory, and the status for each file.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    'tpope/vim-fugitive',

    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    end,
}
