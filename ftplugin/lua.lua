require("nvim-treesitter").install({
	"lua",
})

vim.treesitter.start()

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})
