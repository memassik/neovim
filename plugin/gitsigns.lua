local kmap = vim.keymap

vim.pack.add({
	"https://github.com/lewis6991/gitsigns.nvim",
})

require("gitsigns").setup({
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},
	trouble = false,
})

kmap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "BlameLine" })

-- toggles
kmap.set("n", "<leader>ugl", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Line Blame" })
kmap.set("n", "<leader>ugs", "<cmd>Gitsigns toggle_signs<CR>", { desc = "Signs" })
kmap.set("n", "<leader>ugw", "<cmd>Gitsigns toggle_word_diff<CR>", { desc = "Word Diff" })

-- hunks
kmap.set("n", "<leader>g[", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous Hunk" })
kmap.set("n", "<leader>g]", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
kmap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Diff This" })
kmap.set("n", "<leader>gq", "<cmd>Gitsigns setqflist<CR>", { desc = "Quickfix" })
