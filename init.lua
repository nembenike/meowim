require("benike")


-- Yank to clipboard
vim.keymap.set('v', '<leader>y', '"+y')


-- File creation
vim.api.nvim_set_keymap('n', '<leader>n', ':lua CreateNewFile()<CR>', { noremap = true, silent = true })

function CreateNewFile()
  local path = vim.fn.input("New file: ")
  vim.cmd("e " .. path)
end
