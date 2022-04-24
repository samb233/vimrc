local status, catppuccin = pcall(require, "catppuccin")
if not status then
	vim.notify("没有找到 catppuccin")
	return
end

catppuccin.setup({
	transparent_background = false,
	term_colors = false,
	styles = {
		comments = "italic",
		functions = "italic,bold",
		keywords = "italic",
		strings = "NONE",
		variables = "NONE",
	},
})

local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
	return
end

-- vim.cmd[[highlight Normal guibg=NONE ctermbg=None]]
