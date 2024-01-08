-- My Custom Key Maps
-- Stolen from the Primeagen and Kickstart.nvim
vim.g.mapleader = " "			                    -- Sets leader key to <spacebar> for global
vim.g.maplocalleader = " "		                    -- Leader key as <spacebar> for local

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })	-- If only spacebar is hit, it does nothing

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)        -- [p]ath [v]...

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")        -- Move highlighted line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")        -- Move highlighted line up
vim.keymap.set("n", "J", "mzJ'z")                   -- Append line below to current line & keeps cursor at beginning
vim.keymap.set("n", "<C-d>", "<C-d>zz")             -- Half Page jump-down with cursor in middle of screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")             -- Half Page jump-up with cursor in middle of screen

vim.keymap.set("n", "n", "nzzzv")                   -- Search term stays in the middle ("n" skips down)
vim.keymap.set("n", "N", "Nzzzv")                   -- Same as above (search in command line with / & "N" skips up)

-- Keeps previously yanked in clipboard and deletes current highlight forever to paste over.
--vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])    -- Yanks into system clipboard not just vim
vim.keymap.set("n", "<leader>Y", [["+Y]])           -- Y version of above

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")               -- Remaps <C-c> to be exactly the same as <Esc>

vim.keymap.set("n", "Q", "<nop>")                   -- Never touch <Q>, does nothing

-- Quick Fix Navigation?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start replacing the word you were on for all in file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make files executable? 
vim.keymap.set("n", "<leader>c", "<cmd>!chmod +x %<CR>", { silent = true })

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Comments
vim.keymap.set("n", "C-q", "gc")
vim.api.nvim_set_keymap("n", "<A-c>", "gcc", { noremap = false})
vim.api.nvim_set_keymap("v", "<A-c>", "gc", { noremap = false})

-- ---------------------------------------------------------------------------------
-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- reload config
map("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>")	-- reload neovim config

-- Tab bindings 
map("n", "<leader>t", ":tabnew<CR>")			-- space+t creates new tab
map("n", "<leader>x", ":tabclose<CR>")			-- space+x closes current tab
map("n", "<leader>j", ":tabprevious<CR>")		-- space+j moves to previous tab
map("n", "<leader>k", ":tabnext<CR>")			-- space+k moves to next tab

-- Automatically close brackets, parethesis, and quotes
map("i", "'", "''<left>")
map("i", "\"", "\"\"<left>")
map("i", "(", "()<left>")
map("i", "[", "[]<left>")
map("i", "{", "{}<left>")
map("i", "{;", "{};<left><left>")
map("i", "/*", "/**/<left><left>")

-- Tabout(C-a) for closed quotes and brackets
function EscapePair()
    local closers = {")", "]", "}", ">", "'", '"', "`", ","}
    local line = vim.api.nvim_get_current_line()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local after = line:sub(col + 1, -1)
    local closer_col = #after + 1
    local closer_i = nil
    for i, closer in ipairs(closers) do
        local cur_index, _ = after:find(closer)
        if cur_index and (cur_index < closer_col) then
            closer_col = cur_index            
            closer_i = i
        end    
    end    
    if closer_i then
        vim.api.nvim_win_set_cursor(0, {row, col + closer_col})
    else
        vim.api.nvim_win_set_cursor(0, {row, col + 1})
    end
end

vim.api.nvim_set_keymap('i', '<C-a>', '<cmd>lua EscapePair()<CR>', { noremap = true, silent = true})

-- automatically generate a template when a new bash script or markdown document is opened.
vim.cmd(':autocmd BufNewFile *.sh 0r ~/.config/nvim/skeleton.sh')
vim.cmd(':autocmd BufNewFile *.md 0r ~/.config/nvim/skeleton.md')

