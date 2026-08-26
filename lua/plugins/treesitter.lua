return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install { 'go' }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'go' },
      callback = function() vim.treesitter.start() end,
    })
  end
}
