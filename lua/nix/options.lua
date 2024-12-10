O = vim.opt


-- show relative line numbers
O.relativenumber = true
-- shows absolute line number on cursor line (when relative number is on)
O.number = true


-- 2 spaces for tabs (prettier default)
O.tabstop = 2
-- 2 spaces for indent width
O.shiftwidth = 2
-- expand tab to spaces
O.expandtab = true
-- copy indent from current line when starting new one
O.autoindent = true


-- disable line wrapping
O.wrap = false


-- ignore case when searching
O.ignorecase = true
-- if you include mixed case in your search, assumes you want case-sensitive
O.smartcase = true


-- highlight the current cursor line
O.cursorline = true


-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
O.termguicolors = true
O.background = "dark"
-- show sign column so that text doesn't shift
O.signcolumn = "yes"


-- allow backspace on indent, end of line or insert mode start position
O.backspace = "indent,eol,start"


-- use system clipboard as default register
O.clipboard:append("unnamedplus")


-- split vertical window to the right
O.splitright = true
-- split horizontal window to the bottom
O.splitbelow = true

-- turn off swapfile
O.swapfile = false