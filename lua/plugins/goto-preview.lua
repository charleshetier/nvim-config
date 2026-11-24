return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  event = "BufEnter",
  config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
  opts = {
    default_mappings = true,
    references = { provider = "snacks" }, -- match your picker
  },
  config = function(_, opts)
    require("goto-preview").setup(opts)
    require("which-key").add({
      { "gp", group = "preview" },
      { "gpd", desc = "Preview definition" },
      { "gpt", desc = "Preview type definition" },
      { "gpi", desc = "Preview implementation" },
      { "gpD", desc = "Preview declaration" },
      { "gpr", desc = "Preview references" },
      { "gP", desc = "Close all previews" },
    })
  end,
}
