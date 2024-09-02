local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>sd', ":lua require('telescope.builtin').find_files({ find_command = {'find', '.', '-type', 'd', '-print'}, prompt_title = 'Find Directories' })<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>sg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ss', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>st', builtin.treesitter, {})
vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})
vim.api.nvim_set_keymap('n', '<leader>sw', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gr', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
