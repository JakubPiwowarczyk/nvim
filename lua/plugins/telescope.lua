return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require('telescope.builtin')

    -- file pickers
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

    -- vim pickers
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

    -- lsp pickers
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
    vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, { desc = 'Telescope implementations' })
    vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope references' })
  end
}
