-- set leader key to space
vim.g.mapleader = " "

-- general keymaps that I've shamelessly stolen and haven't decided on myself

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "x", '"_x')

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     -- go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 -- go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- move current buffer to new tab

-- my own vim.keymaps

-- for combinations with option key the character generated from the combination is used, e.g. <opt+j> ==> √
vim.keymap.set("n", "ª", ":m -2<CR>", { desc = "Move line up" })     -- <opt+k>, move line up
vim.keymap.set("n", "√", ":m +1<CR>", { desc = "Move line down" })   -- <opt+j>, move line down

vim.keymap.set("n", "<leader>sb", ":! ./build.sh<CR>", { desc = "Run build script if exists" })
vim.keymap.set("n", "<leader>sr", ":! ./run.sh<CR>", { desc = "Run run script if exists" })

