vim.g.mapleader = " " -- Ensure <leader> is set
vim.api.nvim_set_keymap('n', '<leader>e', ':Telescope file_browser<CR>', { noremap = true, silent = true })
