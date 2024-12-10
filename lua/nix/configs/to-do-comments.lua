local status_ok, to_do_comment = pcall(require, "todo-comments")
if not status_ok then
    return
end

    -- set keymaps
local keymap = vim.keymap -- for conciseness

keymap.set(
    "n",
    "]t",
    function()
        to_do_comment.jump_next()
    end,
    {
        desc = "Next todo comment"
    }
)

keymap.set(
    "n",
    "[t", 
    function()
        to_do_comment.jump_prev()
    end,
    {
        desc = "Previous todo comment"
    }
)

to_do_comment.setup()