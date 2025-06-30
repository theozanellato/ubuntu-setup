return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        print("DAP config loaded!")

        dap.adapters.cppdbg = {
            id = "cppdbg",
            type = "executable",
            command = "/home/theo/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
            options = {
                detached = false,
            },
        }

        dap.configurations.cpp = {
            {
                name = "Launch with gdb",
                type = "cppdbg",
                request = "launch",
                program = function()
                    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                end,
                cwd = "${workspaceFolder}",
                stopAtEntry = true,
                setupCommands = {
                    {
                        text = "-enable-pretty-printing",
                        description = "Enable GDB pretty printing",
                        ignoreFailures = false,
                    },
                },
                miMode = "gdb",
                miDebuggerPath = "/usr/bin/gdb", -- or your gdb path
            },
        }

        -- Optional: use the same config for C and Rust
        dap.configurations.c = dap.configurations.cpp
        dap.configurations.rust = dap.configurations.cpp
    end,
}
