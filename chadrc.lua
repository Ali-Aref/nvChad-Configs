local M = {}

-- Path to overriding theme and highlights files
local themes = require "custom.overidden_themes"
local highlights = require "custom.highlights"

-- onedark, one_light, aquarium, ayu
M.ui = {
  transparency = true,
  theme_toggle = { "nightowl", "jellybeans" },
  theme = "monekai",
  changed_themes = themes,
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
