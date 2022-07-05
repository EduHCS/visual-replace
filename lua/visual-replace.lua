local M = {}

local function getRange()
    local range = {}
    range.start = vim.api.nvim_buf_get_mark(0, "<")
    range.ending = vim.api.nvim_buf_get_mark(0, ">")

    return range
end

function M.replace()
    local match = vim.fn.input("match: ")
    local replacer = vim.fn.input("replace: ")
    local range = getRange()
    vim.api.nvim_feedkeys(":" .. range.start[1] .. ',' .. range.ending[1] .. "s/" .. match .. "/" .. replacer .. "/g | nohlsearch", "i", false)
end

return M
