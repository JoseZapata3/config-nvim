return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  keys = {
    { "<leader>do", "<cmd>DiffviewOpen<CR>", desc = "Open git diff view" },
    { "<leader>dc", "<cmd>DiffviewClose<CR>", desc = "Close git diff view" },
    { "<leader>dh", "<cmd>DiffviewFileHistory<CR>", desc = "Git file history (repo)" },
    { "<leader>df", "<cmd>DiffviewFileHistory %<CR>", desc = "Git file history (current file)" },
  },
  config = function()
    require("diffview").setup()
  end,
}
