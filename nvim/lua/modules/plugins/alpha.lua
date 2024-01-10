-- -----------------------------------------------------------------------------
-- Alpha gives you an aesthetic, cusotmizable dashboard when you first open vim
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
--        require'alpha'.setup(require'alpha.themes.startify'.config)
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        vim.keymap.set('n', '<leader>a', "<cmd>Alpha<cr>")
-- Set header: Use ASCI Art Generator:
-- https://patorjk.com/software/taag/#p=display&v=0&f=ANSI%20Shadow&t=NEOVIM
dashboard.section.header.val = {

    "                                                                  ",
    "      ██████╗  █████╗ ██████╗ ██╗  ██╗██╗   ██╗██╗███╗   ███╗     ",
    "      ██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██║   ██║██║████╗ ████║     ",
    "      ██║  ██║███████║██████╔╝█████╔╝ ██║   ██║██║██╔████╔██║     ",
    "      ██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║     ",
    "      ██████╔╝██║  ██║██║  ██║██║  ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║     ",
    "      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝     ",
    "                                                                  ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "a", "  > New File" ,    ":ene <BAR> startinsert <CR>"),
    dashboard.button( "e", "  > File Explorer", ":NvimTreeFindFileToggle<CR>"),
    dashboard.button( "f", "  > Find File",    ":Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   ,    ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" ,    ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM",    ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
    end,
}
