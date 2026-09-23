return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "ruff" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			elixir = { "credo" },
		}

		vim.g.lint_disabled = true
		local lint_augroup = vim.api.nvim_create_augroup("nvim-lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				if not vim.g.lint_disabled then
					lint.try_lint()
				end
			end,
		})

		vim.keymap.set("n", "<leader>tl", function()
			vim.g.lint_disabled = not vim.g.lint_disabled
			print("Linting " .. (vim.g.lint_disabled and "disabled" or "enabled"))
		end, { desc = "Toggle linting" })
	end,
}
