require("nvim-options.config.options")
local plugin = require("lazy.core.config").spec.plugins["nvim-options"]
if plugin then
	vim.opt.rtp:append(plugin.dir)
end

return {
	{ "folke/lazy.nvim", version = "*" },
	{ "oncomouse/nvim-options", opts = {}, lazy = false, cond = true, version = "*" }
}
