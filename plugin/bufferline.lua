local kmap = vim.keymap

vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim",
})

require("bufferline").setup({
	options = {
		themable = true,
		offsets = {
			{ filetype = "NvimTree", highlight = "NvimTreeNormal" },
		},
	},
})

kmap.set("n", "gb", "<cmd>BufferLinePick<cr>", { desc = "Bufferline Pick" })
