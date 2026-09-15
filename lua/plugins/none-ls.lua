return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvimtools/none-ls-extras.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				require("none-ls.diagnostics.ruff"),
				null_ls.builtins.formatting.mix,
				null_ls.builtins.diagnostics.credo,
				--null_ls.builtins.diagnostics.sqlfluff.with({
				--	extra_args = { "--dialect", "postgres" },
				--}),
				--null_ls.builtins.formatting.sqlfluff.with({
				--	extra_args = { "--dialect", "postgres" },
				--}),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
