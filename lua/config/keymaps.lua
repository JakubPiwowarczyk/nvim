-- project / netrw
vim.keymap.set("n", "<leader>E", "<cmd>Ex<CR>", { desc = "Open netrw" })

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gf", vim.lsp.buf.format, {})

vim.keymap.set("v", "\"", 'c"<C-r>""<Esc>', { noremap = false, silent = true, desc = "Encloses marked text in qoutes" })
vim.keymap.set("n", "<leader>if", 'gg=G', { noremap = false, silent = true, desc = "Intend file" })
