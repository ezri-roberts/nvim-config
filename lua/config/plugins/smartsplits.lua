return {
  'mrjones2014/smart-splits.nvim',

  config = function()
    local splits = require 'smart-splits'
    -- recommended mappings
    -- resizing splits
    -- these keymaps will also accept a range,
    -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
    vim.keymap.set('n', '<A-h>', splits.resize_left)
    vim.keymap.set('n', '<A-j>', splits.resize_down)
    vim.keymap.set('n', '<A-k>', splits.resize_up)
    vim.keymap.set('n', '<A-l>', splits.resize_right)
    -- moving between splits
    vim.keymap.set('n', '<C-h>', splits.move_cursor_left)
    vim.keymap.set('n', '<C-j>', splits.move_cursor_down)
    vim.keymap.set('n', '<C-k>', splits.move_cursor_up)
    vim.keymap.set('n', '<C-l>', splits.move_cursor_right)
    vim.keymap.set('n', '<C-\\>', splits.move_cursor_previous)
    -- swapping buffers between windows
    vim.keymap.set('n', '<leader><A-h>', splits.swap_buf_left)
    vim.keymap.set('n', '<leader><A-j>', splits.swap_buf_down)
    vim.keymap.set('n', '<leader><A-k>', splits.swap_buf_up)
    vim.keymap.set('n', '<leader><A-l>', splits.swap_buf_right)
  end,
}
