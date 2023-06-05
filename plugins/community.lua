return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  
  -- ColorSchemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.gruvbox"},
  { import = "astrocommunity.colorscheme.everforest"},
  -- { import = "astrocommunity.colorscheme.oxocarbon"},
  -- { import = "astrocommunity.colorscheme.poimandres"},
  { import = "astrocommunity.colorscheme.rose-pine"},

  -- Copilot
  { import = "astrocommunity.completion.copilot-lua", enabled = true},
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = "<C-;>",
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C-/>",
        },
      },
    },
  },
  
  -- Top bar
  { import = "astrocommunity.bars-and-lines.lualine-nvim", enabled = true},  
  { import = "astrocommunity.bars-and-lines.bufferline-nvim", enabled = true},
  { import = "astrocommunity.bars-and-lines.scope-nvim", enabled = true},
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar", enabled = true},

  -- Indentation
  -- { import = "astrocommunity.indent.indent-blankline-nvim"},
  -- { import = "astrocommunity.indent.mini-indentscope"},
}
