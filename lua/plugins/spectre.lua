-- ============================================================================
-- Spectre: Project-wide Search and Replace
-- ============================================================================
-- Visual search and replace with preview

return {
  'nvim-pack/nvim-spectre',
  enabled = true, -- Set to false to disable for testing
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>sr', '<cmd>lua require("spectre").toggle()<cr>', desc = 'Search and Replace (Spectre)' },
    { '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<cr>', desc = 'Search current Word (Spectre)' },
    { '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<cr>', desc = 'Search in current file (Spectre)' },
  },
  config = function()
    require('spectre').setup({
      open_cmd = 'vnew',
      live_update = false, -- Auto-execute search on typing (can be slow)
      line_sep_start = '┌-----------------------------------------',
      result_padding = '¦  ',
      line_sep       = '└-----------------------------------------',
      highlight = {
        ui = 'String',
        search = 'DiffChange',
        replace = 'DiffDelete',
      },
    })
  end,
}
