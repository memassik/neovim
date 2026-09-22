vim.pack.add({
	"https://github.com/ellisonleao/gruvbox.nvim",
})

require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		emphasis = false,
		comments = false,
		operators = false,
		folds = false,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true,
	contrast = "hard",
	palette_overrides = {},
	overrides = {
        NonText = {link = "GruvboxYellow"},
    },
	dim_inactive = false,
	transparent_mode = false,
})

vim.cmd.colorscheme("gruvbox")
