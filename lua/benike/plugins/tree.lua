return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
    },
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      filters = {
        dotfiles = false,
      },
      view = {
        width = 30,
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
    },
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  }
}
