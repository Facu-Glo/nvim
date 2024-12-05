-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--Terminal
--Abrir terminal y esconder
vim.keymap.set({ "n", "t" }, "<leader>t", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })

--Esconder terminal (otra opcion)
vim.keymap.set("t", "<C-esc>", "<cmd>close<cr>")

--Redimensionar terminal
vim.keymap.set("t", "<C-Up>", "<cmd>resize +2<cr>")
vim.keymap.set("t", "<C-Down>", "<cmd>resize -2<cr>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Ir primer caracter de una linea
vim.keymap.set({ "n", "v" }, "<leader>0", "^", { noremap = true, silent = true })

-- Ir al final de una linea
vim.keymap.set({ "n", "v" }, "<leader>9", "$", { noremap = true, silent = true })

-- Abrir Oil
--vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>o", "<CMD>Oil --float<CR>", { desc = "Open Oil in current directory" })
