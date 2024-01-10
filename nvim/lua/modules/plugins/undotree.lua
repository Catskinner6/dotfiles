-- -----------------------------------------------------------------------------
-- UndoTree opens a side pane with all the most recent undo's.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    'mbbill/undotree',
--    lazy = true,
    config = function()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

    end,
}

