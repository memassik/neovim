local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- options ------------------------------------------
g.mapleader = " "
g.maplocalleader = "\\"

o.laststatus = 3
o.showmode = false
o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
o.cursorline = true

o.shiftwidth = 4
o.smartindent = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4

o.ignorecase = true
o.smartcase = true
o.mouse = ""
-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true
opt.whichwrap:append("<>[]hl")
g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- Hide deprecation warnings
g.deprecation_warnings = false

opt.autowrite = true -- Enable auto write
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
opt.foldlevel = 16
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.jumpoptions = "view"
opt.linebreak = true
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.pumblend = 15
opt.pumheight = 15
opt.relativenumber = true
opt.scrolloff = 8
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true
opt.sidescrolloff = 8
opt.spelllang = { "en", "ru" }
opt.splitkeep = "screen"
opt.termguicolors = true
opt.guicursor = ""
opt.undolevels = 1000
opt.updatetime = 500
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
opt.winminwidth = 5
opt.wrap = false
opt.colorcolumn = "+1"

-- disable some default providers
g.loaded_perl_provider = 0
g.loaded_node_provider = 0

-- USER DEFINED VARIABLES
g.diagnostic_float = true
g.enable_diagnostic_at_start = true
---------------------------

opt.langmap =
	"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
