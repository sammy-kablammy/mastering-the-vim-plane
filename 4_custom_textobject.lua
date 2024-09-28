-- Entire buffer text object. For example, yank everything with ygG

--    :help :map-operator

-- Use this method if you have a simple expression made of vim motions
vim.keymap.set("v", "gG", "VggoG")

-- Use this method if you want to use Lua code to compute the start/end of the
-- text object
vim.keymap.set("v", "gG", function()
    local textobj_start_line = 1
    local textobj_end_line = #vim.api.nvim_buf_get_lines(0, 0, -1, false)
    vim.api.nvim_buf_set_mark(0, "<", textobj_start_line, 0, {})    -- :h '<
    vim.api.nvim_buf_set_mark(0, ">", textobj_end_line, 999999, {}) -- :h '>
    vim.api.nvim_feedkeys("gv", "n", true)                          -- :h gv
end)

-- Operator-pending mode mapping that piggybacks off of the visual mode mapping
vim.keymap.set("o", "gG", ":normal vgG<cr>")
