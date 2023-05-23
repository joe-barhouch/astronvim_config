return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  -- RULES:
  -- event = "VeryLazy" -> will keep reloading
  -- event = "User AstroFile" -> loads when new file is open 
  -- lazy = false  -> :Lazy laod plugin
  -- lazy = true -> auto load
  -- CODI: live dev
  {
    "metakirby5/codi.vim",
    lazy = false,
  },

  -- Tabout 
  { "abecodes/tabout.nvim",
    -- event = "User AstroFile",
    lazy = false,
    name = "tabout",
    opts = {
      tabKey = '<Tab>',
      backwards_tabkey = '<S-Tab>',
      act_as_tab = true,
      default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
      default_shift_tab = '<C-d>', -- reverse shift default action,
      enable_backwards = true, -- well ...
      completion = true, -- if the tabkey is used in a completion pum
      tabouts = {
        {open = "'", close = "'"},
        {open = '"', close = '"'},
        {open = '`', close = '`'},
        {open = '(', close = ')'},
        {open = '[', close = ']'},
        {open = '{', close = '}'}
      },
      ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    }
  },  
  
   -- Smooth Scroll
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    name = "neoscroll",
    opts = {
     -- All these keys will be mapped to their corresponding default scrolling animation
      mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                  '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
      respect_scrolloff = true,
      cursor_scrolls_alone = false,
      easing_function = "quadratic"
    },
  },

  -- TODOs
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile"
  },

  -- cmd line popup
  {
    "folke/noice.nvim",
    event = "User AstroFile",
    opts = {
    cmdline = {
      enabled = true, -- enables the Noice cmdline UI
      view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      opts = {}, -- global options for the cmdline. See section on views
      format = {
        -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
        -- view: (default is cmdline view)
        -- opts: any options passed to the view
        -- icon_hl_group: optional hl_group for the icon
        -- title: set to anything or empty string to hide
        cmdline = { pattern = "^:", icon = "", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
        help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
        input = {}, -- Used by input()
        -- lua = false, -- to disable a format, set to `false`
        },
      }
    }
  },

  -- tmux control
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy"
  }
}
