local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    return
end

local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

-- enable comment
comment.setup({
    pre_hook = ts_context_commentstring.create_pre_hook(),
})