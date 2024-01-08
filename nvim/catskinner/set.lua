
-- My Neovim Settings
-- ------------------------------------------------------------------------
-- Net RW Settings --
vim.g.netrw_banner = 0			    -- gets rid of the annoying banner for netrw
vim.g.netrw_browse_split=3		    -- open in prior window
vim.g.netrw_altv = 1			    -- change from left splitting to right splitting
vim.g.netrw_liststyle=3		    	-- tree style view in netrw

vim.wo.number = true 		    	-- Make line numbers default
vim.opt.relativenumber = true		-- Numbered lines are relative to the cursor position

vim.o.hlsearch = false		    	-- Set highlight for search
vim.opt.incsearch = true	    	-- Highlights matches while tying search pattern
vim.o.ignorecase = true             -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true              -- In combination with above

vim.o.completeopt = 'menuone,noselect' -- Turn on Autocomplete
vim.cmd('set wildmenu')                -- Enable wild menu (tab complete in command line with pop-up options)

vim.opt.tabstop = 4		    	    -- Set tab size in file 
vim.opt.softtabstop = 4			    -- Set tab size when editing
vim.opt.shiftwidth = 4			    -- Autoindent size
vim.opt.expandtab = true	    	-- tabs are made of spaces
vim.opt.smartindent = true	    	-- Autoindent for c programs
vim.opt.wrap = false		    	-- Does not wrap lines in vim
vim.opt.colorcolumn = "90"         --  Screen column highlighted (for aligning text)-- see 'hl-ColorColumn'


vim.opt.swapfile = false            -- No swap file for buffers (fixes problem of autosaved file?)
vim.opt.backup = false              -- Does not keep a file copy when overwriting files
vim.opt.updatetime = 50             -- Flushes swap file after 50 milliseconds
vim.opt.undofile = false            -- Disables persistent Undo

vim.opt.guicursor = ""              -- Cursor changes for modes
vim.opt.mouse = 'a'		    	    -- Enable mouse for all modes


vim.opt.clipboard = 'unnamedplus' 	-- Clipboard synced between OS and Neovim
-- vim.opt.breakindent = true       -- Wrapped lines (turned off see- 'wrap') repeat indent
vim.opt.isfname:append("@-@")       -- The characters specified are included in file names (@)

vim.cmd('set path+=**')				-- search current directory recursively
vim.opt.syntax = "ON"
vim.opt.fileencoding = "utf-8"		-- encoding set to utf-8
vim.opt.signcolumn = "auto"

vim.opt.scrolloff = 8				-- scroll page when cursor is 8 lines from top/bottom
vim.opt.sidescrolloff = 8			-- scroll page when cursor is 8 spaces from left/right

vim.opt.splitbelow = true			-- split go below
vim.opt.splitright = true			-- vertical split to the right


vim.opt.termguicolors = true		-- Terminal must support this option
vim.opt.pumheight = 10				-- number of items in popup menu
vim.opt.laststatus = 2				-- always show statusline
vim.opt.showtabline = 2	            -- always show the tab line
vim.opt.showcmd = true              -- display what commands are typed
vim.opt.cmdheight = 2               -- height for messages and command line
vim.opt.showmode = true             -- show VIM mode [insert, normal, visual, execute(":")]


