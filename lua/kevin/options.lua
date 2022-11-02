local set = vim.opt
vim.cmd("autocmd!")
vim.scriptencoding = "utf-8"

set.clipboard = "unnamedplus"
set.encoding = "utf-8"
set.fileencoding = "utf-8"
set.title = true
set.number = true
set.relativenumber = true
set.autoindent = true
set.smartindent = true
set.hlsearch = true
set.backup = false
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.expandtab = true
set.scrolloff = 10
set.shell = "zsh"
set.backupskip = { "/tmp/*", "/private/tmp/*" }
set.inccommand = "split"
set.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
set.smarttab = true
set.breakindent = true
set.shiftwidth = 4
set.tabstop = 4
set.wrap = false -- No Wrap lines
set.backspace = { "start", "eol", "indent" }
set.path:append({ "**" }) -- Finding files - Search down into subfolders
set.wildignore:append({ "*/node_modules/*" })
set.backup = false
set.completeopt = { "menuone", "noselect" }
set.conceallevel = 0
set.fileencoding = "utf-8"
set.showmode = false
set.showtabline = 0
set.smartcase = true
set.smartindent = true
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.timeoutlen = 1000
set.undofile = true
set.updatetime = 50
set.writebackup = false
set.expandtab = true
set.autoindent = true
set.laststatus = 3
set.showcmd = false
set.numberwidth = 4
set.signcolumn = "yes"
set.scrolloff = 8
set.sidescrolloff = 8
set.colorcolumn = "80"
set.fillchars.eob = ""
set.shortmess:append("c")
set.formatoptions:append({ "r" })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- Add asterisks in block comments
set.formatoptions:append({ "r" })

vim.g.vimwiki_list = { { path = "~/vimwiki", syntax = "markdown", ext = ".md" } } -- Vimwiki markdown syntax
