# NEOVIM DARK

A Modular Neovim Configuration for easy changes and clarity

## Setup and Objectives
In linux, place the files and directory below in your ``` ~/.config/nvim/ ``` directory:

```
README.md           -- Optional
init.lua
lua/
    modules/
        init.lua
        settings.lua
        keymap.lua
        lazy.lua
        plugins/
            plugin1.lua
            plugin2.lua
            etc...
```

There are many ways you can structure your neovim config. This one is based off of examples such as the Primeagen and where I first learned. There also projects like Kickstart and such which are very similar to this, but were based on a single init.lua file for simplicity. While this makes your directory simpler, it is harder to keep track of various parts as your config grows. It also is harder to find specific things, as they are now hidden in a giant lua file.

This modular system aims to keep the simplicity of a config like Kickstart, while making it easier to understand during creation and later editing, by separating various components.

## Structure

### Top Level Files and Directories

#### init.lua

Inside your ``` ~/.config/nvim/ ``` directory you need an initial lua file to get things moving. Neovim looks for a ```init.lua``` to start. This is where you can build single file config. However, for our uses we will have first print out a simple string to greet us on login (a quick check that it's reading the file and that an update went through even if there was no obvious visible change like a colorscheme):
```
print("Your Greeting Here")
```

Then it will "require" the custom files and directories located in the "lua/modular" directories:

```
require(modules)
```

The only other thing I place in this file are settings I might change quickly and globally. In my case this is the colorscheme and I like the colorscheme to have it's background overidden to nothing with some degree of transparency. Note that to do this, lua (the scripting language used for neovim configs) needs to call vimscript (the original scripting language for VIM configurations) commands (also note, lua doesn't care if you use single ' ' or double " " quotes): 

```
vim.cmd('colorscheme slacking')
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
```

#### lua/modules/

I do not know exactly where this convention originated, but it is common to simply place all other lua files into the ``` lua/ ``` directory. Then most the custom files are placed into another directory often called ``` core ```, ``` after ```, or my case ``` modules ```. This is because this is where I place the main parts or "modules" of my configuration.

In this configuration you will see 4 lua files and 1 directory within the modules directory:

```
init.lua
keymap.lua
settings.lua
lazy.lua
plugins/
```

### Modules' Lua Files

These are the major files of your configuration. While plugins will be added into the lsp and plugins directories, you do not want to search for these within the long list of 

#### 2nd init file

The init.lua file is the second init file within Neovim Dark. If you remember, the first init.lua file instructed Neovim to look in the modules directory. This 2nd init file now instructs Neovim to look at the three other lua files which create the main or global settings and keymappings, as well as set up the "lazy plugin manager".

#### keymap.lua

This File sets the keymaps or "bindings" for control of NEOVIM which do not rely on a plugin

#### settings.lua

Global settings for behavior and appearance of NEOVIM which do not rely on a plugin

#### lazy.lua

Initializes the Lazy Plugin Manager which will install and update all plugins.

### Plugins

When using the Lazy plugin manager, plugins can be added here as a seperate lua file to include the functions name, settings, and custom key bindings. This makes it simple to find and edit or remove any plugin. Some like to modify this method by placing plugins with no configrations in the lazy.lua file. I prefer all plugins being listed in the plugins folder for easier management.

All plugin files have a header which describes the purpose of the header. YOu can see them listed below in related groupings:

#### Colors
- **colors.lua:** 
