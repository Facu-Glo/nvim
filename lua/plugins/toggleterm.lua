return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        --open_mapping = [[<leader>tf]], -- Atajo para abrir/ocultar el terminal
        size = 18, -- Tamaño del terminal
        direction = "horizontal", -- Dirección del terminal (puede ser "horizontal", "vertical", o "float")
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
      })
    end,
  },
}
