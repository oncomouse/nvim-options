local M = {}

M.setup = function()
	require("config.options")
	require("config.tabs")
	require("config.autocmds")
	require("config.commands")
	require("config.keymaps")
end

return M
