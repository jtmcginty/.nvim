-- ============================================================================
-- Treesitter: Advanced Syntax Highlighting
-- ============================================================================

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    local ok, configs = pcall(require, 'nvim-treesitter.configs')
    if not ok then
      return
    end
    configs.setup({
      ensure_installed = { 'lua', 'python', 'javascript', 'typescript', 'rust', 'go', 'bash', 'markdown', 'json', 'yaml' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      
      -- Text objects for functions, classes, parameters, etc.
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Automatically jump forward to textobj
          keymaps = {
            -- Functions
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            -- Classes
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            -- Parameters/arguments
            ['aa'] = '@parameter.outer',
            ['ia'] = '@parameter.inner',
            -- Conditionals
            ['ai'] = '@conditional.outer',
            ['ii'] = '@conditional.inner',
            -- Loops
            ['al'] = '@loop.outer',
            ['il'] = '@loop.inner',
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- Add to jumplist
          goto_next_start = {
            [']m'] = '@function.outer',  -- Changed from ]f to avoid future conflicts
            [']k'] = '@class.outer',     -- Changed from ]c to avoid conflicts
            [']p'] = '@parameter.inner', -- Changed from ]a
          },
          goto_next_end = {
            [']M'] = '@function.outer',
            [']K'] = '@class.outer',
          },
          goto_previous_start = {
            ['[m'] = '@function.outer',
            ['[k'] = '@class.outer',
            ['[p'] = '@parameter.inner',
          },
          goto_previous_end = {
            ['[M'] = '@function.outer',
            ['[K'] = '@class.outer',
          },
        },
      },
    })
  end,
}
