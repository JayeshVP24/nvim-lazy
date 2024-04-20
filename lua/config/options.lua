-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local o = vim.o

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.scrolloff = 8
o.signcolumn = "yes"

o.ignorecase = true
o.smartcase = true

o.hlsearch = false
o.incsearch = true

o.wrap = true

vim.filetype.add({
  extension = {
    pcss = "css",
  },
})
