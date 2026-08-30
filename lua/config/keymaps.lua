-- project / netrw
vim.keymap.set("n", "<leader>E", "<cmd>Ex<CR>", { desc = "Open netrw" })

vim.keymap.set("v", "\"", 'c"<C-r>""<Esc>', { noremap = false, silent = true, desc = "Encloses marked text in qoutes" })
vim.keymap.set("n", "<leader>if", 'gg=G', { noremap = false, silent = true, desc = "Intend file" })
