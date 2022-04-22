local status, catppuccin = pcall(require, "catppuccin")
if not status then
    vim.notify("没有找到 catppuccin")
  return
end

catppuccin.setup({
    transparent_background = true,
    term_colors = true,
})