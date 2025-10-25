vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set cursorlineopt=number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set whichwrap+=<,>,[,]")
vim.cmd("set wrap")
vim.cmd("set linebreak")
vim.cmd("set expandtab")
vim.cmd("set clipboard+=unnamedplus")
-- Navigate vim panes better
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.diagnostic.config({ virtual_text = true })

