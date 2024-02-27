require("dante.remap")
vim.api.nvim_exec([[
  autocmd VimEnter * set rnu
]], false)
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_exec([[
  autocmd VimEnter * Alpha
]], false)

vim.opt.laststatus=2
vim.opt.showtabline=2
vim.opt.termguicolors = true

