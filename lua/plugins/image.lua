return {
  "3rd/image.nvim",
  enabled = false,

  event = "veryLazy",
  opts = {
    rocks = {
      hererocks = true,
    },
  },
  config = function()
    require("image").setup({
      backend = "kitty",
      processor = "magick_rock",
      integrations = {
        markdown = { enabled = true },
        neorg = { enabled = true },
        typst = { enabled = true },
      },
    })
  end,
}
