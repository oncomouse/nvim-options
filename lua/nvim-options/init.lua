local M = {}

M.setup = function()
	require("config.autocmds")
	require("config.commands")
	require("config.keymaps")
end

return M
