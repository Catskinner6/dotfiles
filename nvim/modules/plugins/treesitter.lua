-- -----------------------------------------------------------------------------
-- Treesitter gives a lot of default hightlighting, etc... langiage parser.
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    "nvim-treesitter/nvim-treesitter",

    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
            "json",
            "vimdoc",
            "c",
            "rust",
            "go",
            "python",
            "julia",
            "toml",
            "javascript",
            "html",
            "css",
            "markdown",
            "markdown_inline",
            "bash",
            "lua",
            "vim",
            "gitignore",
            "query",
            "bibtex",
            "latex",
            "zig",
        },
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      })
    end,
}
