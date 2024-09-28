-- Markdown "Listification" operator. For example, listify a line with gll

--    :help map-operator
--    :help 'operatorfunc'
--    :help '[

-- This function isn't called directly by the user; it only exists to be set as
-- the 'operatorfunc'.
function Markdown_listify()
    -- Listification can be a :normal one-liner. (:help :normal)
    vim.cmd("'[,']normal I- ")
end

function Markdown_listify_fancy()
    -- You can get the start/end positions of the selection like this:
    local start_position = vim.api.nvim_buf_get_mark(0, "[")
    local end_position = vim.api.nvim_buf_get_mark(0, "]")
    -- ...then make whatever change you want:
    vim.api.nvim_buf_set_text(...)
    -- or
    vim.api.nvim_buf_set_lines(...)
end

vim.keymap.set("n", "gl", function()
    vim.o.operatorfunc = "v:lua.Markdown_listify" -- Lua callbacks are weird here
    vim.api.nvim_feedkeys("g@", "n", false)
end)
