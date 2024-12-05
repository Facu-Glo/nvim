return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      keymaps = {
        ["g?"] = "actions.show_help", -- Show help
        ["<CR>"] = "actions.select", -- Select entry
        ["L"] = "actions.select", -- Select entry
        ["<C-M-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" }, -- Open entry in vertical split
        ["<C-d>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" }, -- Open entry in horizontal split
        ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" }, -- Open entry in new tab
        ["<C-p>"] = "actions.preview", -- Preview entry
        ["q"] = "actions.close", -- Close oil.nvim
        ["<C-l>"] = "actions.refresh", -- Refresh oil.nvim
        ["-"] = "actions.parent", -- Go to parent directory
        ["H"] = "actions.parent", -- Go to parent directory
        ["_"] = "actions.open_cwd", -- Open current working directory
        ["`"] = "actions.cd", -- Change directory
        ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" }, -- Change directory for the current tab
        ["gs"] = "actions.change_sort", -- Change sorting method
        ["gx"] = "actions.open_external", -- Open entry with external application
        ["g."] = "actions.toggle_hidden", -- Toggle hidden files
        ["g\\"] = "actions.toggle_trash", -- Toggle trash
      },
      use_default_keymaps = false,

      float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 150,
        max_height = 30,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
        -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
        get_win_title = nil,
        -- preview_split: Split direction: "auto", "left", "right", "above", "below".
        preview_split = "right",
      },
    })

    -- -- Autocomando para activar previsualización automática
    -- vim.api.nvim_create_autocmd("CursorMoved", {
    --   pattern = "oil://*",
    --   callback = function()
    --     local oil = require("oil")
    --     local entry = oil.get_cursor_entry()
    --     if entry then
    --       oil.open_preview()
    --     end
    --   end,
    -- })
  end,
}
