-- Markdown Preview
-- Live preview markdown files in your browser
return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
  keys = {
    { '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', desc = 'Markdown Preview' },
  },
  config = function()
    vim.g.mkdp_auto_close = 0 -- Don't auto-close preview when switching buffers
  end,
}
