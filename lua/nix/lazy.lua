require("nix.globals")
require("nix.options")
require("nix.keymaps")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazyrepo = "https://github.com/folke/lazy.nvim.git"


if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local out = vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "--branch=stable",
            lazyrepo,
            lazypath })

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo(
            {
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			    { out, "WarningMsg" },
			    { "\nPress any key to exit..." },
		    }, true, {}
        )
		vim.fn.getchar()
		os.exit(1)
	end
end

O.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import plugins
		{ import = "nix.plugins" },
	},
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = {
        enabled = true,
        notify = false
    },
    change_detection = {
        notify = false,
    },
})
