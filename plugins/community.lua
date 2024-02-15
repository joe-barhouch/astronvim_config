return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  
  -- ColorSchemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  -- { import = "astrocommunity.colorscheme.everforest", enabled = true},
  -- { import = "astrocommunity.colorscheme.oxocarbon-nvim"},
  -- { import = "astrocommunity.colorscheme.poimandres-nvim"},
  -- { import = "astrocommunity.colorscheme.sonokai", enabled = true},
  -- { import = "astrocommunity.colorscheme.rose-pine", enabled = true},

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
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim", enabled = true},
  { import = "astrocommunity.bars-and-lines.scope-nvim", enabled = true},
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar", enabled = true},

  -- Indentation
  -- { import = "astrocommunity.indent.indent-blankline-nvim"},
  -- { import = "astrocommunity.indent.mini-indentscope"},

  -- Oil
  { import = "astrocommunity.file-explorer.oil-nvim", enabled = true},

  -- Rainbow brackets
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled = true},

  -- Cutlass, don't save x and d registers
  { import = "astrocommunity.editing-support.cutlass-nvim", enabled = true},

  -- Hop
  { import = "astrocommunity.motion.hop-nvim", enabled = true},

  -- repl
  -- { import = "astrocommunity.code-runner.sniprun", enabled = true},

  -- Zen mode
  { import = "astrocommunity.editing-support.zen-mode-nvim", enabled = true},
  {
    "zen-mode.nvim",
    opts = {
      window = {
        width = 150,
        options = {
          signcolumn = "yes",
          relativenumber = true,
          cursorline = false,
        },
      },
      plugins = {
        gitsigns = { enabled = true },
      },
    },
  },

  -- Noice
  { import = "astrocommunity.utility.noice-nvim", enabled = true},
  {
    "noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
        bottom_search = false,
      }
    }
  },

  -- Harpoon
  {import = "astrocommunity.motion.harpoon", enabled = true},

  -- Smooth scroll
  {import = "astrocommunity.scrolling.vim-smoothie", enabled = true},
}
