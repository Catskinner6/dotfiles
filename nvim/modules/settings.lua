-- ---------------------------------------------------------------------------------------
-- Settings for Appearance and Function of Neovim
-- ---------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------

-- NetRW Settings
vim.g.netrw_banner = 1			-- No NetRW banner when in file explorer, etc.
vim.g.netrw_browse_split = 3	-- Selected File Opens in new tab, not a split pane
vim.g.netrw_altv = 1			-- From Left to Right Splitting Panes
vim.g.netrw_liststyles = 3		-- Tree Style NetRW or File Tree


-- Editor: Tabs, Lines, & Numbering
vim.wo.number = true			-- Display Line Numbers as Default
vim.opt.relativenumber = true	-- Line #'s relative to cursor position
vim.o.tabstop = 4			    -- Set tab size in file
vim.o.softtabstop = 4			-- Set tab size when editing
vim.o.shiftwidth = 4			-- Auto-Indent Size
vim.o.expandtab = true			-- Tabs are made of Spaces
vim.o.smartindent = true		-- Auto-Indent for C programs
vim.o.wrap = false			    -- Does not Wrap lines
vim.o.colorcolumn = '100'		-- Colored Column for reference of line length
vim.opt.signcolumn = "auto"     -- 
vim.opt.syntax = "ON"           --
vim.opt.laststatus = 2			-- always show statusline
vim.opt.showtabline = 2	        -- always show the tab line
vim.opt.cmdheight = 3           -- height for messages and command line
vim.opt.showmode = true         -- show VIM mode [insert, normal, visual, execute(":")]


-- Colors
vim.opt.termguicolors = true	-- Terminal must support this option


-- Search Options
vim.o.hlsearch = false			-- Does not leave searched terms highlighted
vim.o.incsearch = true			-- Matches highlighted while typing search pattern
vim.o.ignorecase = true			-- Case-Insensitive searches UNLESS \C or capital in search
vim.o.smartcase = true			-- In Combo with ignorecase
vim.cmd('set path+=**')			-- search current directory recursively


-- AutoComplete & Menus
vim.o.completeopt = 'menuone,noselect'	-- Turn on AutoComplete
vim.cmd('set wildmenu')			-- Enable Wild Menu (tab complete in cmd line w/popup options
vim.opt.pumheight = 10			-- number of items in popup menu


-- SWAP Files, Clipboard  & Undo
vim.o.swapfile = false			-- No SWAP file for buffers (removes auto-save problems)
vim.o.backup = false            -- Does not keep a file copy when overwriting files
vim.o.updatetime = 50           -- Flushes SWAP file after xx milliseconds
vim.o.undofile = false          -- Disables persistent Undo
vim.o.clipboard = 'unnamedplus' -- Neovim Clipboard synced with OS
--vim.o.isfname:append("@-@")     -- Characters specified are  included in file names '@'
vim.opt.fileencoding = "utf-8"	-- encoding set to utf-8


-- Cursor & Mouse
vim.o.guicursor = ''            -- Cursor does not change for modes
vim.o.mouse = 'a'               -- Enables mouse in all modes
vim.opt.scrolloff = 8			-- scroll page when cursor is 8 lines from top/bottom
vim.opt.sidescrolloff = 8		-- scroll page when cursor is 8 spaces from left/right


-- Auto generate a template when a new bash script or markdown document is opened.
vim.cmd(':autocmd BufNewFile *.sh 0r ~/.config/nvim/skeleton.sh')
vim.cmd(':autocmd BufNewFile *.md 0r ~/.config/nvim/skeleton.md')
