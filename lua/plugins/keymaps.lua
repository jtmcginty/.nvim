-- ============================================================================
-- Quality-of-Life Keymaps
-- ============================================================================
-- Essential keybindings that improve the editing experience

return {
  -- This is a "fake" plugin entry to ensure keymaps load with lazy.nvim
  'folke/lazy.nvim',
  config = function()
    -- Clear search highlights on <Esc>
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

    -- Auto-center screen after jumps
    vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump down half page (centered)' })
    vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump up half page (centered)' })
    vim.keymap.set('n', 'G', 'Gzz', { desc = 'Jump to end of file (centered)' })

    -- Move selected lines up/down in visual mode
    vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
    vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

    -- Keep cursor in place when joining lines
    vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines (keep cursor position)' })

    -- Disable Q (prevents accidental macro replay)
    vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disabled' })

    -- Easier terminal exit
    vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
  end,
}
