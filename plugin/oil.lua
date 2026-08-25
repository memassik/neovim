local kmap = vim.keymap

vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup()

kmap.set("n", "<leader>o", "<cmd>Oil<cr>", { desc = "Oil" })
