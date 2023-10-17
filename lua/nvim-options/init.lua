local M = {}

M.setup = function()
	require("nvim-options.config.autocmds")
	require("nvim-options.config.commands")
	require("nvim-options.config.keymaps")
end

return M
