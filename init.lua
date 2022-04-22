-- 基础配置
require('basic')

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-settings.nvim-tree")
require("plugin-settings.catppuccin")
require("plugin-settings.telescope")
require("plugin-settings.nvim-autopairs")
require("plugin-settings.lualine")
require("plugin-settings.bufferline")
require('Comment').setup()
