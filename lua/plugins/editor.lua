return {
  {
    "rmagatti/goto-preview",
    event = "BufEnter", -- Load the plugin when a buffer is entered
    config = true, -- Enable default configuration
    keys = {
      {
        "gpd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        noremap = true, -- Do not allow remapping
        desc = "goto preview definition", -- Description for the keybinding
      },
      {
        "gpD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        noremap = true,
        desc = "goto preview declaration",
      },
      {
        "gpi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        noremap = true,
        desc = "goto preview implementation",
      },
      {
        "gpy",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        noremap = true,
        desc = "goto preview type definition",
      },
      {
        "gpr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        noremap = true,
        desc = "goto preview references",
      },
      {
        "gcc",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        noremap = true,
        desc = "close all preview windows",
      },
    },
  },
  {
    "junegunn/vim-easy-align",
    event = "VeryLazy",
    config = function()
      vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", {})
      vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", {})
    end,
  },
  {
    "b0o/incline.nvim",
    config = function()
      require("incline").setup({

        highlight = {
          groups = {
            InclineNormal = {
              guibg = "#733aad",
              guifg = "#cdd6f4",
            },
          },
        },
      })
    end,
    -- Optional: Lazy load Incline
    event = "VeryLazy",
  },
}
