local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>", "Exit Insert Mode" },
    ["jk"] = { "<ESC>", "Exit Insert Mode" },
  },
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    -- switch between windows
    ["<A-h>"] = { "<C-w>h", "window left" },
    ["<A-l>"] = { "<C-w>l", "window right" },
    ["<A-j>"] = { "<C-w>j", "window down" },
    ["<A-k>"] = { "<C-w>k", "window up" },
  },
}

-- more keybinds!

return M

