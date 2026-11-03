local kmap = vim.keymap

vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
	skip_confirm_for_simple_edits = true,
	watch_for_changes = true,
	keymaps = {
		["q"] = { "actions.close", mode = "n" },
	},
})

kmap.set("n", "<leader>o", "<cmd>Oil<cr>", { desc = "Oil" })
