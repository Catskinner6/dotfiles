-- -----------------------------------------------------------------------------
-- Telescope config - mostly keymaps and grep_string for "fuzzy search"?
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>gr', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set("n","<leader>f", "<cmd>lua require 'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ prevoewer = false }))<cr>", opts)
        vim.keymap.set("n", "<C-l>", "<cmd>Telescope live_grep<cr>", opts);
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand('<cword>')
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand('<cWORD>')
            builtin.grep_string({ search = word })
        end)
    end,
}
