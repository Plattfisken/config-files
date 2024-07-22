-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- buffer management 
vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Go to next buffer" })                    -- go to next buffer
vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" })                -- go to previous buffer
vim.keymap.set("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Delete buffer (close file)" })           -- close buffer

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window
--                   <leader>sm                                                                     -- maximize current split (vim-maximizer plugin)

-- mappings for navigating split windows & tmux panes (vim-tmux-navigator plugin):
-- <CTRL-h> <CTRL-j> <CTRL-k> <CTRL-l>

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     -- go to next tab (same as gt)
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 -- go to previous tab (same as gT)
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- move current buffer to new tab

-- diagnostic management
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })

-- moving lines like vs-code (I should find a better way to do this)
-- for combinations with option key the character generated from the combination is used, e.g. <opt+j> ==> √
vim.keymap.set("n", "ª", ":m -2<CR>", { desc = "Move line up" })     -- <opt+k>, move line up
vim.keymap.set("n", "√", ":m +1<CR>", { desc = "Move line down" })   -- <opt+j>, move line down

-- run scripts if they don't exist the shell will display an error
vim.keymap.set("n", "<leader>sb", ":! ./build.sh<CR>", { desc = "Run build script if exists" })     -- run build.sh
vim.keymap.set("n", "<leader>sr", ":! ./run.sh<CR>", { desc = "Run run script if exists" })         -- run run.sh

