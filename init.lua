require("nix.lazy")

local core_path = vim.fn.stdpath("config") .. "/lua/nix/configs"
package.path = package.path .. ";" .. core_path .. "/?.lua"

for file in io.popen('ls "' .. core_path .. '"'):lines() do
    if file:match("%.lua$") then
        require("nix.configs." .. file:gsub("%.lua$", ""))
    end
end