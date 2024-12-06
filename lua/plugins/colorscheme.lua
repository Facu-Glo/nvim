return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    config = function()
      require("catppuccin").setup()
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup()
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({})
    end,
  },
}
