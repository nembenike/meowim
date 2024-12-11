return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required dependency
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      -- Load the file browser extension
      telescope.setup {
        defaults = {
          path_display = { "smart" },
        },
      }

      -- Keymaps for Telescope
      vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live Grep" })
    end,
  },
}

