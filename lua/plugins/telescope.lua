return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.6,
          },
          vertical = {
            prompt_position = "top",
          },
        },
        sorting_strategy = "ascending",
        prompt_prefix = " ",
      },
    })
    --
    -- configuracion de colores
    --
    -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#1e1e2e", fg = "#cdd6f4" })
    -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#1e1e2e", fg = "#89b4fa" })
    -- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "#313244" })
    -- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "#313244", fg = "#313244" })
    -- vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "#313244", fg = "#f38ba8" })
    -- vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "#1e1e2e", fg = "#89b4fa" })
    -- vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "#1e1e2e", fg = "#a6e3a1" })
    -- vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#45475a", fg = "#ffffff" })
  end,
}
