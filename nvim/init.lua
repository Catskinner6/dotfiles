-- My New NEOVIM Config
-- Scott Rice
-- Started: 2023-12-16
-- Updated: 

require('ricevim.lua')

print('Welcome Mr. Rice')
print('Lets... Get... Dangerous!')

vim.cmd('colorscheme slacking')
vim.api.nivm_set_hl(0, 'Normal', { bg = 'none' })
--vim.api.nivm_set_hl(0, 'NormalFloat', { bg = 'none' })

-- --------------------------------------------------
-- Status Bar

