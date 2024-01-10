-- -----------------------------------------------------------------------------
-- Lexima includes autopairs closing parens, brackets, 
-- braces and quotes as desired with customization
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
return {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recomended as each new version will have breaking changes
    opts={
        --Config goes here
    },
    -- <C-a> used to escape pairs, see Keymap: Independant of plugins
}
