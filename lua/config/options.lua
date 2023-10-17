vim.opt.lazyredraw = true -- Don't redraw between macro runs (may make terminal flicker)

-- Line Numbering:
vim.opt.relativenumber = true

-- Folds:
vim.opt.foldlevel = 99
vim.opt.foldmethod = "indent"

-- Set Leader:
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Use split for search/replace preview:
vim.opt.inccommand = "split"

-- Height Of The Preview Window:
vim.opt.previewheight = 14

-- <C-z> expands wildcards in command mode
vim.opt.wildcharm = vim.api.nvim_replace_termcodes("<C-z>", true, true, true):byte()
vim.opt.wildignore = "*.o,*.obj,*~" -- stuff to ignore when tab completing
vim.opt.wildignore:append("*vim/backups*")
vim.opt.wildignore:append("*sass-cache*")
vim.opt.wildignore:append("*DS_Store*")
vim.opt.wildignore:append("vendor/rails/**")
vim.opt.wildignore:append("vendor/cache/**")
vim.opt.wildignore:append("node_modules/**")
vim.opt.wildignore:append("*.gem")
vim.opt.wildignore:append("log/**")
vim.opt.wildignore:append("tmp/**")
vim.opt.wildignore:append("*.png,*.jpg,*.gif")

-- Set path to current file direction and pwd:
vim.opt.path = ".,,"

-- Use better grep, if available:
if vim.fn.executable("rg") == 1 then
	vim.opt.grepprg = "rg --vimgrep --smart-case"
	vim.opt.grepformat = "%f:%l:%c:%m"
elseif vim.fn.executable("ag") == 1 then
	vim.opt.grepprg = "ag --vimgrep"
	vim.opt.grepformat = "%f:%l:%c:%m"
else
	vim.opt.grepprg = "grep -rn"
end

-- Linewrap:
vim.opt.wrap = true
vim.opt.showbreak = "↳ " -- Show a line has wrapped

vim.opt.dictionary = "/usr/share/dict/words"

-- Minimal Statusbar:
vim.opt.statusline = " %0.45f%m%h%w%r%= %y %l:%c "

-- Clipboard:
if vim.fn.has("clipboard") == 1 then
	vim.opt.clipboard = "unnamed"
	if vim.fn.has("unnamedplus") == 1 then
		vim.opt.clipboard:prepend("unnamedplus")
	end
end

-- Cmdheight=0 options:
vim.opt.cmdheight = 1
if vim.fn.has("nvim-0.9") == 1 and vim.opt.cmdheight == 0 then
	vim.opt.showcmdloc = "statusline"
end
vim.opt.showmode = false

-- Enable termguicolors by default
vim.opt.termguicolors = true
