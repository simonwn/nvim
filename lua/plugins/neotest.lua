return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "lawrence-laz/neotest-zig",
    {
      "nvim-treesitter/nvim-treesitter", -- Optional, but recommended
      branch = "main",                   -- NOTE; not the master branch!
      build = function()
        vim.cmd(":TSUpdate go")
      end,
    },
    {
      "fredrikaverpil/neotest-golang",
      version = "*",                                                            -- Optional, but recommended; track releases
      build = function()
        vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait() -- Optional, but recommended
      end,
    },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        -- Registration
        require("neotest-zig")({
          dap = {
            adapter = "lldb",
          }
        }),
      }
    })
  end,
  keys = {
    { "<leader>t",  "",                                                                                 desc = "+test" },
    { "<leader>ta", function() require("neotest").run.attach() end,                                     desc = "Attach to Test (Neotest)" },
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end,                      desc = "Run File (Neotest)" },
    { "<leader>tT", function() require("neotest").run.run(vim.uv.cwd()) end,                            desc = "Run All Test Files (Neotest)" },
    { "<leader>tr", function() require("neotest").run.run() end,                                        desc = "Run Nearest (Neotest)" },
    { "<leader>tl", function() require("neotest").run.run_last() end,                                   desc = "Run Last (Neotest)" },
    { "<leader>ts", function() require("neotest").summary.toggle() end,                                 desc = "Toggle Summary (Neotest)" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output (Neotest)" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end,                            desc = "Toggle Output Panel (Neotest)" },
    { "<leader>tS", function() require("neotest").run.stop() end,                                       desc = "Stop (Neotest)" },
    { "<leader>tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end,                 desc = "Toggle Watch (Neotest)" },
  },
}
