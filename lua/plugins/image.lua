return {
  "3rd/image.nvim",
  enabled = false,

  event = "VeryLazy",
  opts = {
    rocks = {
      hererocks = true, -- Habilita hererocks para un entorno aislado
    },
  },
  config = function()
    require("image").setup({
      backend = "kitty", -- o "ueberzug"
      processor = "magick_rock", -- o "magick_cli"
      integrations = {
        markdown = { enabled = true },
        neorg = { enabled = true },
        typst = { enabled = true },
      },
    })
  end,
}
