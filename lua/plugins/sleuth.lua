-- ============================================================================
-- Sleuth: Auto-detect Indentation
-- ============================================================================
-- Automatically detects and sets indentation (tabs vs spaces, width)

return {
  'tpope/vim-sleuth',
  event = { 'BufReadPre', 'BufNewFile' },
}
