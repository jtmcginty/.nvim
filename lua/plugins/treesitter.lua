-- ============================================================================
-- Treesitter: Advanced Syntax Highlighting
-- ============================================================================

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
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
    })
  end,
}
