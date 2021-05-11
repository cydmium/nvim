local utils = require('utils')
local actions = require('telescope.actions')

utils.map('n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
utils.map('n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
utils.map('n', '<space>b', '<cmd>lua require("telescope.builtin").buffers()<cr>')
utils.map('n', '<space>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')

require('telescope').setup {
  defaults = {
    mappings = {
      i = { -- Insert mode mappings
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<esc>'] = actions.close,
        ['<cr>'] = actions.select_default + actions.center
      },
      n = { -- Normal mode mappings
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
      }
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    }
  }
}
