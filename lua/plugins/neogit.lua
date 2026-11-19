return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "folke/snacks.nvim",
  },
  keys = {
    { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
  config = function(_, opts)
    require("neogit").setup(opts)

    local function set_hl()
      local hl = function(name, val)
        vim.api.nvim_set_hl(0, name, val)
      end

      -- Added lines: bright green text on dark green
      hl("NeogitDiffAdd", { fg = "#a6e3a1", bg = "#1e3a28" })
      hl("NeogitDiffAddHighlight", { fg = "#b8f0b3", bg = "#25492f" })
      hl("NeogitDiffAddCursor", { fg = "#d0ffcc", bg = "#2d5a39" })

      -- Removed lines: bright red text on dark red
      hl("NeogitDiffDelete", { fg = "#f38ba8", bg = "#3d1f28" })
      hl("NeogitDiffDeleteHighlight", { fg = "#ffa3ba", bg = "#4d2631" })
      hl("NeogitDiffDeleteCursor", { fg = "#ffc0d0", bg = "#5c2e3a" })

      -- Context lines
      hl("NeogitDiffContext", { fg = "#c0c5d6", bg = "NONE" })
      hl("NeogitDiffContextHighlight", { fg = "#d5d9e8", bg = "#2a2d3a" })
      hl("NeogitDiffContextCursor", { fg = "#ffffff", bg = "#343848" })

      -- Hunk headers (@@ ... @@)
      hl("NeogitHunkHeader", { fg = "#ffffff", bg = "#45475a", bold = true })
      hl("NeogitHunkHeaderHighlight", { fg = "#ffffff", bg = "#585b70", bold = true })
      hl("NeogitHunkHeaderCursor", { fg = "#ffffff", bg = "#6c7086", bold = true })
    end

    set_hl()
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.schedule(set_hl)
      end,
    })
  end,
}
