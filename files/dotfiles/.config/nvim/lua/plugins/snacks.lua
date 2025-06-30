-- return {
--     "folke/snacks.nvim",
--     priority = 1000,
--     lazy = false,
--     ---@type snacks.Config
--     opts = {
--         -- your configuration comes here
--         -- or leave it empty to use the default settings
--         -- refer to the configuration section below
--         bigfile = { enabled = false },
--         dashboard = { enabled = false },
--         explorer = {
--             enabled = true,
--         },
--         indent = { enabled = false },
--         input = { enabled = false },
--         picker = {
--             enabled = false,
--             hidden = true,
--             ignored = true,
--             exclude = { ".git" },
--         },
--         notifier = { enabled = false },
--         quickfile = { enabled = false },
--         scope = { enabled = false },
--         scroll = { enabled = false },
--         statuscolumn = { enabled = false },
--         words = { enabled = false },
--     },
-- }
vim.g.snacks_animate = false

local excluded = {
    ".git/",
    "build/",
    "target/",
    ".cache/",

    "package-lock.json",
}

local root_patterns = {
    -- directories
    -- "client",
    -- "server",

    -- version control systems
    -- "_darcs",
    -- ".hg",
    -- ".bzr",
    -- ".svn",
    ".git",
    ".cache",

    -- build tools
    "Makefile",
    "CMakeLists.txt",
    -- "build.gradle",
    -- "build.gradle.kts",
    -- "pom.xml",
    -- "build.xml",

    -- docker
    -- "Dockerfile",
    -- "docker-compose.yml",

    -- node.js and javascript
    -- "package.json",
    -- "package-lock.json",
    -- "yarn.lock",
    -- ".nvmrc",
    -- "gulpfile.js",
    -- "Gruntfile.js",

    -- python
    -- "requirements.txt",
    -- "Pipfile",
    -- "pyproject.toml",
    -- "setup.py",
    -- "tox.ini",

    -- rust
    -- "Cargo.toml",

    -- go
    -- "go.mod",

    -- elixir
    -- "mix.exs",

    -- configuration files
    -- ".prettierrc",
    -- ".prettierrc.json",
    -- ".prettierrc.yaml",
    -- ".prettierrc.yml",
    -- ".eslintrc",
    -- ".eslintrc.json",
    -- ".eslintrc.js",
    -- ".eslintrc.cjs",
    -- ".eslintignore",
    -- ".stylelintrc",
    -- ".stylelintrc.json",
    -- ".stylelintrc.yaml",
    -- ".stylelintrc.yml",
    -- ".editorconfig",
    ".gitignore",

    -- html projects
    -- "index.html",

    -- miscellaneous
    -- "README.md",
    -- "README.rst",
    -- "LICENSE",
    -- "Vagrantfile",
    -- "Procfile",
    -- ".env",
    -- ".env.example",
    -- "config.yaml",
    -- "config.yml",
    -- ".terraform",
    -- "terraform.tfstate",
    -- ".kitchen.yml",
    -- "Berksfile",
}
vim.g.root_spec = { "lsp", root_patterns, "cwd" }

return {
    "folke/snacks.nvim",
    opts = {
        -- need notifier for disabling "No notifications available"
        notifier = { enabled = true },

        image = { enabled = true },

        picker = {
            sources = {
                -- projects = {
                --     dev = {
                --         "~/.config",
                --         "~/dev/hachiko",
                --         "~/dev/raddebugger",
                --         "~/dev/imgui",
                --     },
                --     patterns = root_patterns,
                --     -- <leader>fp will always open picker_files
                --     confirm = "picker_files",
                -- },
                files = {
                    hidden = true,
                    ignored = true,
                },
            },
            -- show hidden files like .env
            hidden = true,
            -- show files ignored by git like node_modules
            ignored = true,

            exclude = excluded,
        },

        --         dashboard = {
        --             preset = {
        --                 header = [[
        --        ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆
        --         ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦
        --               ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄
        --                ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄
        --               ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀
        --        ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄
        --       ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄
        --      ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄
        --      ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄
        --           ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆
        --            ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃
        -- ]],
        --                 keys = {
        --                     {
        --                         icon = " ",
        --                         key = "s",
        --                         desc = "Restore Session",
        --                         action = ':lua require("persistence").load({ last = true })',
        --                     },
        --                     {
        --                         icon = "󰒲 ",
        --                         key = "<leader>l",
        --                         desc = "Lazy",
        --                         action = ":Lazy",
        --                     },
        --                 },
        --             },
        --         },
    },
}
