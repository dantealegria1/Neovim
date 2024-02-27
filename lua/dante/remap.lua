vim.g.mapleader = " "
-- Keymap.set es para hacer los atajos del teclado
-- Se pone el modo, el atajo, y lo que hace
vim.keymap.set("n","C-o",':Ex<CR>')
vim.api.nvim_set_keymap('n', '<C-n>', ':set nu<CR>', { noremap = true, silent = true })
-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
-- Agrega esto a tu archivo de configuración de Neovim en Lua (generalmente init.lua)
vim.api.nvim_set_keymap('n', '<C-q>', ':Startify<CR>', { noremap = true, silent = true })
-- Agrega esto a tu archivo de configuración de Neovim en Lua (generalmente init.lua)
vim.api.nvim_set_keymap('n', '<C-z>', ':Neotree<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-Q>', ':Dashboard<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-1>', ':tabprevious<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-2>', ':tabnext<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-3>', ':tabfirst<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-4>', ':tablast<CR>', { noremap = true, silent = true })
-- Reemplaza `<Space>` con `<Space>t` para ejecutar el comando cuando presionas Espacio y luego "t"
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm<CR>", {noremap = true, silent = true})


