return {
  --
  -- RULES:
  -- event = "VeryLazy" -> will keep reloading
  -- event = "User AstroFile" -> loads when new file is open 
  -- lazy = false  -> :Lazy laod plugin
  -- lazy = true -> auto load

  -- CODI: live dev
  {
    "metakirby5/codi.vim",
    name = "codi",
    lazy = false,
  },

  -- TODOs
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile"
  },

  -- -- Multi Cursor
  -- {
  --   "mg979/vim-visual-multi",
  --   event = "User AstroFile",
  -- },
  
  -- Solarized osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- tmux control
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy"
  },
}
