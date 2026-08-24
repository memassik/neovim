local kmap = vim.keymap

vim.pack.add({
	"https://github.com/NMAC427/guess-indent.nvim",
})

require("guess-indent").setup({
	auto_cmd = false,
})

kmap.set("n", "<leader>ci", "<cmd>GuessIndent<cr>", { desc = "Guess Indent" })
