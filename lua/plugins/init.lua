require("config.options")

return {
	{ "folke/lazy.nvim", version = "*" },
	{ "oncomouse/nvim-options", priority = 10000, lazy = false, config = true, cond = true, version = "*" }
}
