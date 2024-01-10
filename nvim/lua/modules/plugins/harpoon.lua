-- -----------------------------------------------------------------------------
-- Harpoon lets you mark upto 4 often needed files to quickly jump between them.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        -- Sets keys for adding files and toggling harppon menu
        vim.keymap.set("n", "<leader>h", mark.add_file)
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        -- sets keys for moving to different files marked by harpoon
        -- allowing you to jump between frequently accessed files.
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end,
}

