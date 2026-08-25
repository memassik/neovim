local kmap = vim.keymap

vim.pack.add({
	"https://github.com/folke/flash.nvim",
})

kmap.set({ "n", "x", "o" }, "<leader>jj", function()
	require("flash").jump()
end, { desc = "Flash" })

kmap.set({ "n", "x", "o" }, "<leader>jJ", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })

kmap.set({ "x", "o" }, "<leader>jk", function()
	require("flash").treesitter_search()
end, { desc = "Treesitter Search" })
