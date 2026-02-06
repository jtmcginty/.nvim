-- ============================================================================
-- Conform: Auto-formatting
-- ============================================================================
-- Format code on save using external formatters

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_fallback = true })
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        -- JavaScript/TypeScript
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        json = { 'prettier' },
        jsonc = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },
        markdown = { 'prettier' },
        yaml = { 'prettier' },

        -- Python
        python = { 'black' },

        -- Go
        go = { 'gofmt' },

        -- Rust
        rust = { 'rustfmt' },

        -- Java
        java = { 'google-java-format' },

        -- Lua
        lua = { 'stylua' },

        -- Shell
        sh = { 'shfmt' },
        bash = { 'shfmt' },
      },

      -- Format on save
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },

      -- Formatters configuration
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2' }, -- 2 space indent
        },
      },
    })
  end,
}
