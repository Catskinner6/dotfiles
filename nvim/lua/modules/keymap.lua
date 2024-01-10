-- ---------------------------------------------------------------------------------------
-- Map Keys for desired controls and shortcuts
-- ---------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------

-- Leader Key 
vim.g.mapleader = ' '				-- Sets Leader key to <SPACEBAR> for global
vim.g.maplocalleader = ' '			-- Sets Leader key to <SAPCEBAR> for local
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })	-- Nothing happens if only <SPACE> is hit 


-- File Explorer & Search
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)	-- Opens/Closes File Explorer [p]ath [v]...
vim.keymap.set("n", "n", "nzzzv")               -- Search term stays in the middle ("n" skips down)
vim.keymap.set("n", "N", "Nzzzv")               -- Same as above (search in command line with / & "N" skips up)


-- Behavior Keys
vim.keymap.set('n', '<leader>r', ':source ~/.config/nvim/init.lua<CR>') -- Reload Config/Source 1st init.lua file
vim.keymap.set("i", "<C-c>", "<Esc>")           -- Remaps <C-c> to be exactly the same as <Esc>
vim.keymap.set("n", "Q", "<nop>")               -- Never touch <Q>, does nothing


-- Copy, Paste, and Text Manipulation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")    -- Move highlighted line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")    -- Move highlighted line up
vim.keymap.set("n", "J", "mzJ'z")               -- Append line below to current line & keeps cursor at beginning
vim.keymap.set("x", "<leader>p", [["_dP]])      -- Keeps previously yanked in clipboard and deletes current highlight forever to paste over.
vim.keymap.set("x", "P", [["_dP]])              -- Same as above
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])    -- Start replacing the word you were on for all in file


-- Tab bindings 
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")			-- space+t creates new tab
vim.keymap.set("n", "<leader>x", ":tabclose<CR>")		-- space+x closes current tab
vim.keymap.set("n", "<leader>j", ":tabprevious<CR>")	-- space+j moves to previous tab
vim.keymap.set("n", "<leader>k", ":tabnext<CR>")		-- space+k moves to next tab


-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")


-- Make files executable? 
vim.keymap.set("n", "<leader>c", "<cmd>!chmod +x %<CR>", { silent = true })


-- Start replacing the word you were on for all in file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Comments
vim.api.nvim_set_keymap("n", "<A-c>", "gcc", { noremap = false})
vim.api.nvim_set_keymap("v", "<A-c>", "gc", { noremap = false})


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


-- Next thing
