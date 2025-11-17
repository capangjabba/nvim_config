local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fs',builtin.grep_string, { desc = 'Telescope grep file' })
require('telescope').setup{
        defaults = {
          file_ignore_patterns = { "node_modules", ".git/" },
        },
      }
