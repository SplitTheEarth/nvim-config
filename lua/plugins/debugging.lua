return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>d", group = "Debug" }, -- group
      })
      local dapui, dap = require("dapui"), require("dap")

      require("dapui").setup()
      require("dap-python").setup("/home/aydan/.config/nvim/.virtualenvs/debugpy/bin/python")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "[Debug] Toggle Breakpoint" })
      vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "[Debug] Start Debuffing" })
    end,
  },
}
