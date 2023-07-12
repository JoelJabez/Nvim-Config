vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>oi", function()
    require('jdtls').organize_imports()
end)

vim.keymap.set("n", "<leader>evf", function()
    require('jdtls').extract_variable()
end)

vim.keymap.set("n", "<leader>evt", function()
    require('jdtls').extract_variable(true)
end)

vim.keymap.set("n", "<leader>ecf", function()
    require('jdtls').extract_constant()
end)

vim.keymap.set("n", "<leader>ect", function()
    require('jdtls').extract_constant(true)
end)

vim.keymap.set("n", "<leader>emt", function()
    require('jdtls').extract_method(true)
end)

--" If using nvim-dap
--" This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
--nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
--nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-p>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
