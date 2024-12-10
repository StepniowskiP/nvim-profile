local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

local opts = {
    options = {
        mode = "tabs",
        separator_style = "slant",
    },
}

bufferline.setup(opts)