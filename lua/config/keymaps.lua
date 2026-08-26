-- project / netrw
vim.keymap.set("n", "<leader>E", "<cmd>Ex<CR>", { desc = "Open netrw" })

-- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
