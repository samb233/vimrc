local packer = require("packer")
packer.startup({
  function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- nvim-tree
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })

    -- telescope
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }

    -- comment
    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

    -- autopairs
    use 'windwp/nvim-autopairs'

    -- 主题
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- lualine
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")

    -- bufferline
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})

  end,
  config = {
    -- 并发数限制
    max_jobs = 3,

    -- 自定义源
    git = {
      default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },

    -- 以浮动窗口打开安装列表
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})
