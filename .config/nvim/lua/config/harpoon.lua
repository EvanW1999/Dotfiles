local harpoon = require("harpoon")
-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<M-m>", function() harpoon:list():add() end)
vim.keymap.set("t", "<M-m>", function() harpoon:list():add() end)
vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("t", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

local function select_and_feed_a(buffer_number)
  harpoon:list():select(buffer_number)
  vim.api.nvim_feedkeys('a', 'n', true)
end

vim.keymap.set("n", "<M-J>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-K>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-L>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-:>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<M-\">", function() harpoon:list():select(5) end)
vim.keymap.set("t", "<M-J>", function() harpoon:list():select(1) end)
vim.keymap.set("t", "<M-K>", function() harpoon:list():select(2) end)
vim.keymap.set("t", "<M-L>", function() harpoon:list():select(3) end)
vim.keymap.set("t", "<M-:>", function() harpoon:list():select(4) end)
vim.keymap.set("t", "<M-\">", function() harpoon:list():select(5) end)

