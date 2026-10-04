-- project / netrw
vim.keymap.set("n", "<leader>E", "<cmd>Ex<CR>", { desc = "Open netrw" })

vim.keymap.set("v", "\"", 'c"<C-r>""<Esc>', { noremap = false, silent = true, desc = "Encloses marked text in qoutes" })
vim.keymap.set("n", "<leader>if", 'gg=G', { noremap = false, silent = true, desc = "Intend file" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })
