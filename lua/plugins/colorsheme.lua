return {
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- -- you can set set configuration options here
    -- config = function()
    --   vim.g.zenbones_darken_comments = 45
    --   vim.cmd.colorscheme("zenbones")
    -- end,
  },
  {
    "kvrohit/rasmus.nvim",
    -- lazy = false,
    -- config = function()
    --   vim.cmd.colorscheme("rasmus")
    -- end,
  },
  {
    "oskarnurm/koda.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("koda").setup({
    --     on_highlights = function(hl, c)
    --       hl.Visual = { bg = "#3b6670" }
    --     end,
    --   })
    --   vim.cmd.colorscheme("koda-moss")
    -- end,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    config = function()
      vim.cmd.colorscheme("vscode")
    end,
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    -- priority = 1000,
    -- lazy = false,
    -- config = function()
    --   vim.cmd.colorscheme("kanagawa-paper-ink")
    -- end,
  },
  {
    "lifepillar/vim-solarized8",
    branch = "neovim",
    -- lazy = false,
    -- priority = 1000,
    --
    -- config = function()
    --   vim.o.termguicolors = true
    --   vim.o.background = "light"
    --   vim.cmd.colorscheme("solarized8")
    -- end,
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    -- priority = 1000,
    -- lazy = false,
    -- config = function()
    --   vim.cmd.colorscheme("no-clown-fiesta")
    -- end,
  },
  {
    "kdheepak/monochrome.nvim",
  },
  {
    "e-ink-colorscheme/e-ink.nvim",
  },
  {
    "kungfusheep/mfd.nvim",
    -- priority = 1000,
    -- lazy = false,
    -- config = function()
    --   vim.cmd.colorscheme("mfd")
    -- end,
  },
}
