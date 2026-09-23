return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				elixir = { "mix" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", function()
			conform.format({ lsp_fallback = true, timeout_ms = 1000 })
		end, {})
	end,
}
