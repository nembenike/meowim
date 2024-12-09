return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required dependency
      "nvim-telescope/telescope-file-browser.nvim", -- File Browser extension
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      -- Load the file browser extension
      telescope.setup {
        defaults = {
          path_display = { "smart" },
        },
        extensions = {
          file_browser = {
            hijack_netrw = true, -- Optional: replace default netrw
          },
        },
      }

      -- Load the extension
      telescope.load_extension("file_browser")

      -- Keymaps for Telescope
      vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live Grep" })
      vim.keymap.set("n", "<leader>e", ":Telescope file_browser<CR>", { desc = "File Browser" })
    end,
  },
}

