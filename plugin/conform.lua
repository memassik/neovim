local kmap = vim.keymap

vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

kmap.set({"n", "v"}, "<leader>cf", function()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, { desc = "Format buffer" })
