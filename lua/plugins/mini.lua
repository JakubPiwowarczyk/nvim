return {
  'nvim-mini/mini.map',
  version = false,
  config = function ()
    local map = require('mini.map')
    map.setup({
      integrations = {
        map.gen_integration.builtin_search(),
        map.gen_integration.diagnostic(),
        map.gen_integration.gitsigns(),
      }
    })
    vim.keymap.set('n', '<leader>mm', MiniMap.toggle, { desc = 'Toggle minimap' })
  end
}
