return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  
  -- ColorSchemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox"},
  { import = "astrocommunity.colorscheme.everforest"},
  
  -- Copilot
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Lualine
  { import = "astrocommunity.bars-and-lines.lualine-nvim"},  

  -- BufferLine
  { import = "astrocommunity.bars-and-lines.bufferline-nvim"}
}
