return {
  "echasnovski/mini.pairs",
  event = "VeryLazy",
  opts = {
    modes = { insert = true, command = true, terminal = false },
    skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
    skip_ts = { "string" },
    skip_unbalanced = true,
    markdown = true,
  },
  config = function(_, opts)
    require('mini.pairs').setup(opts)  -- Use the standalone setup function
  end,
}
