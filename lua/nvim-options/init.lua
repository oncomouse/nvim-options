local M = {}

M.setup = function()
	if not vim.g.nvim_options_loaded then
		require("nvim-options.config.options")
	end
	require("nvim-options.config.autocmds")
	require("nvim-options.config.commands")
	require("nvim-options.config.keymaps")
end

return M
