local kmap = vim.keymap

vim.pack.add({
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/folke/todo-comments.nvim",
})

require("todo-comments").setup({
	signs = false,
})

kmap.set("n", "<leader>sT", "<cmd>TodoQuickFix<CR>", { desc = "TODOs" })
