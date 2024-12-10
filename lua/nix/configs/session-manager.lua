local status_ok, auto_session = pcall(require, "auto-session")
if not status_ok then
 return
end

auto_session.setup({
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
})