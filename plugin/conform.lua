local map = vim.keymap.set

vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

map("n", "<leader>cf", function()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, { desc = "Format buffer" })
