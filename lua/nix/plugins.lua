return {
    {
        -- lua functions that many plugins use
        -- https://github.com/nvim-lua/plenary.nvim
        "nvim-lua/plenary.nvim",
        -- tmux & split window navigation
        -- https://github.com/christoomey/vim-tmux-navigator
        "christoomey/vim-tmux-navigator",
    },
    {
        -- theme
        -- https://github.com/folke/tokyonight.nvim
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},

        config = function()
            require("tokyonight").setup({
                style = "moon",
            })

            vim.cmd([[colorscheme tokyonight]])
        end

    },
    {
        -- which-key
        -- https://github.com/folke/which-key.nvim
        "folke/which-key.nvim",
        event = "VeryLazy",
    },
    {
        -- nvim-tree
        -- https://github.com/nvim-tree/nvim-tree.lua
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        }
    },
    {
        -- telescope
        -- https://github.com/nvim-telescope/telescope.nvim
        "nvim-telescope/telescope.nvim", branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make"
            },
            "nvim-tree/nvim-web-devicons",
            "folke/todo-comments.nvim"
        }
    },
    {
        -- alpha
        -- https://github.com/goolord/alpha-nvim
        "goolord/alpha-nvim",
        lazy = true,
    },
    {
        -- session manager
        -- https://github.com/rmagatti/auto-session
        "rmagatti/auto-session",
    },
    {
        -- bufferline
        -- https://github.com/akinsho/bufferline.nvim
        "akinsho/bufferline.nvim",
        dependencies = {
             "nvim-tree/nvim-web-devicons"
            },
        version = "*",
    },
    {
        -- lualine
        -- https://github.com/nvim-lualine/lualine.nvim
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
    },
    {
        -- dressing
        -- https://github.com/stevearc/dressing.nvim
        "stevearc/dressing.nvim",
        event = "VeryLazy",
    },
    {
        -- split maximizer
        -- https://github.com/szw/vim-maximizer
        "szw/vim-maximizer",
        keys = {
            {
                "<leader>sm",
                "<cmd>MaximizerToggle<CR>",
                desc = "Maximize/minimize a split"
            },
        },
    },
    {
        -- tree-sitter
        -- https://github.com/nvim-treesitter/nvim-treesitter
        "nvim-treesitter/nvim-treesitter",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        build = ":TSUpdate",
        dependencies = {
          "windwp/nvim-ts-autotag",
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        main = "ibl",
        opts = {
            indent = {
                char = "┊"
            },
        },
    },
    {
        -- autocompletion
        -- https://github.com/hrsh7th/nvim-cmp
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*",
                -- install jsregexp (optional!).
                build = "make install_jsregexp",
            },
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
            "onsails/lspkind.nvim",
        },
    },
    {
        -- autopairs
        -- https://github.com/windwp/nvim-autopairs
        "windwp/nvim-autopairs",
        event = {
            "InsertEnter"
        },
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
    },
    {
        -- commenting
        -- https://github.com/numToStr/Comment.nvim
        "numToStr/Comment.nvim",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
    },
    {
        -- to do comments
        -- https://github.com/folke/todo-comments.nvim
        "folke/todo-comments.nvim",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },
    {
        -- mason
        -- https://github.com/williamboman/mason.nvim
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim"
        },
    },
    {
        -- lspconfig
        -- https://github.com/neovim/nvim-lspconfig
        "neovim/nvim-lspconfig",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            {
                "antosha417/nvim-lsp-file-operations",
                config = true
            },
            {
                "folke/neodev.nvim",
                opts = {}
            },
        }
    },
    {
        -- trouble
        -- https://github.com/folke/trouble.nvim
        "folke/trouble.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "folke/todo-comments.nvim"
        },
        opts = {
            focus = true,
        },
        cmd = "Trouble",
        keys = {
            {
                "<leader>xw",
                "<cmd>Trouble diagnostics toggle<CR>",
                desc = "Open trouble workspace diagnostics"
            },
            {
                "<leader>xd",
                "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
                desc = "Open trouble document diagnostics"
            },
            {
                "<leader>xq",
                "<cmd>Trouble quickfix toggle<CR>",
                desc = "Open trouble quickfix list"
            },
            {
                "<leader>xl",
                "<cmd>Trouble loclist toggle<CR>",
                desc = "Open trouble location list"
            },
            {
                "<leader>xt",
                "<cmd>Trouble todo toggle<CR>",
                desc = "Open todos in trouble"
            },
        }
    },
    {
        -- linting
        -- https://github.com/mfussenegger/nvim-lint
        "mfussenegger/nvim-lint",
        event = {
            "BufReadPre",
            "BufNewFile"
        },
    }
}