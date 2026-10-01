-- Outrun colorscheme for Neovim.
--
--   require('outrun').setup({ ... })
--   vim.cmd.colorscheme('outrun')

local M = {}

local palette = require('outrun.palette')

local defaults = {
  transparent = false,
  dim_inactive = false,
  styles = {},
  on_highlights = nil,
  integrations = {},
  palette_overrides = {},
  terminal = true,
}

local config = vim.deepcopy(defaults)

function M.palette()
  return palette
end

function M.setup(opts)
  config = vim.tbl_deep_extend('force', vim.deepcopy(defaults), opts or {})
  return M
end

local function valid_names()
  local names = {}
  for name in pairs(palette) do
    names[#names + 1] = name
  end
  table.sort(names)
  return names
end

local function resolve(name)
  local p = palette[name]
  if not p then
    error(
      string.format(
        "colorscheme '%s' not found. Valid names: %s",
        name,
        table.concat(valid_names(), ', ')
      )
    )
  end
  local overrides = config.palette_overrides[name]
  if overrides then
    p = vim.tbl_deep_extend('force', p, overrides)
  end
  return p
end

function M.load(name)
  local p = resolve(name)

  vim.o.background = p.mode
  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end
  vim.o.background = p.mode
  vim.g.colors_name = name

  require('outrun.groups').apply(p, config)

  if config.terminal then
    for i = 0, 15 do
      vim.g['terminal_color_' .. i] = p.term[i + 1]
    end
  else
    for i = 0, 15 do
      vim.g['terminal_color_' .. i] = nil
    end
  end
end

return M
